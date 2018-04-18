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
# Warmup Iteration   1: 812.468 ops/s
# Warmup Iteration   2: 1514.953 ops/s
# Warmup Iteration   3: 1507.805 ops/s
# Warmup Iteration   4: 1506.338 ops/s
# Warmup Iteration   5: 1506.852 ops/s
# Warmup Iteration   6: 1507.050 ops/s
# Warmup Iteration   7: 1503.612 ops/s
# Warmup Iteration   8: 1526.924 ops/s
# Warmup Iteration   9: 1525.309 ops/s
# Warmup Iteration  10: 1527.912 ops/s
# Warmup Iteration  11: 1527.215 ops/s
# Warmup Iteration  12: 1527.639 ops/s
# Warmup Iteration  13: 1528.016 ops/s
# Warmup Iteration  14: 1527.500 ops/s
# Warmup Iteration  15: 1523.844 ops/s
# Warmup Iteration  16: 1510.890 ops/s
# Warmup Iteration  17: 1525.969 ops/s
# Warmup Iteration  18: 1526.989 ops/s
# Warmup Iteration  19: 1527.006 ops/s
# Warmup Iteration  20: 1526.847 ops/s
Iteration   1: 1526.860 ops/s
Iteration   2: 1526.561 ops/s
Iteration   3: 1527.056 ops/s
Iteration   4: 1524.494 ops/s
Iteration   5: 1528.250 ops/s
Iteration   6: 1527.415 ops/s
Iteration   7: 1528.345 ops/s
Iteration   8: 1528.389 ops/s
Iteration   9: 1528.641 ops/s
Iteration  10: 1528.225 ops/s
Iteration  11: 1528.330 ops/s
Iteration  12: 1509.192 ops/s
Iteration  13: 1511.091 ops/s
Iteration  14: 1510.356 ops/s
Iteration  15: 1510.801 ops/s
Iteration  16: 1510.551 ops/s
Iteration  17: 1510.755 ops/s
Iteration  18: 1510.350 ops/s
Iteration  19: 1510.768 ops/s
Iteration  20: 1518.251 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1520.234 ±(99.9%) 7.357 ops/s [Average]
  (min, avg, max) = (1509.192, 1520.234, 1528.641), stdev = 8.472
  CI (99.9%): [1512.877, 1527.591] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 189916 total address lines.
Perf output processed (skipped 23.229 seconds):
 Column 1: cycles (20448 events)
 Column 2: instructions (20434 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 490 (463 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fd379217c40: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fd379217c44: shl    $0x3,%r10
                       0x00007fd379217c48: cmp    %r10,%rax
                       0x00007fd379217c4b: jne    0x00007fd379045e20  ;   {runtime_call}
                       0x00007fd379217c51: data16 xchg %ax,%ax
                       0x00007fd379217c54: nopl   0x0(%rax,%rax,1)
                       0x00007fd379217c5c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.42%    0.46%       0x00007fd379217c60: mov    %eax,-0x14000(%rsp)
  0.45%    0.31%       0x00007fd379217c67: push   %rbp
  0.21%    0.15%       0x00007fd379217c68: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.26%    0.42%       0x00007fd379217c6c: mov    %edi,0x28(%rsp)
  0.25%    0.11%       0x00007fd379217c70: mov    %r9,0x20(%rsp)
  0.27%    0.16%       0x00007fd379217c75: mov    %r8d,0x1c(%rsp)
  0.27%    0.35%       0x00007fd379217c7a: mov    %rsi,0x8(%rsp)
  0.10%    0.14%       0x00007fd379217c7f: mov    %ecx,0x40(%rsp)
  0.36%    0.10%       0x00007fd379217c83: test   %ecx,%ecx
                       0x00007fd379217c85: je     0x00007fd379218281  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.22%    0.23%       0x00007fd379217c8b: mov    %rdx,0x48(%rsp)
  0.27%    0.29%       0x00007fd379217c90: mov    0x14(%rdx),%r9d    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007fd379218485
  0.11%    0.06%       0x00007fd379217c94: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007fd379218499
  0.45%    0.17%       0x00007fd379217c99: cmp    %r10d,%ecx
                       0x00007fd379217c9c: jae    0x00007fd379218102  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.18%    0.24%       0x00007fd379217ca2: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.22%    0.15%       0x00007fd379217ca5: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.10%    0.13%       0x00007fd379217ca9: lea    (%r12,%r9,8),%rdi
  0.26%    0.30%       0x00007fd379217cad: mov    0x40(%rsp),%r11d
  0.34%    0.25%       0x00007fd379217cb2: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.33%    0.31%       0x00007fd379217cb7: cmp    %r8d,%ebp
                  ╭    0x00007fd379217cba: jl     0x00007fd379217e0f  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.18%    0.21%  │ ↗  0x00007fd379217cc0: mov    %r8d,%r11d
  0.34%    0.06%  │ │  0x00007fd379217cc3: inc    %r11d
  0.22%    0.07%  │ │  0x00007fd379217cc6: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.21%    0.25%  │ │  0x00007fd379217cca: mov    0x40(%rsp),%ebx
  0.26%    0.22%  │ │  0x00007fd379217cce: cmp    %r10d,%ebx
                  │ │  0x00007fd379217cd1: jae    0x00007fd379218141
  0.24%    0.03%  │ │  0x00007fd379217cd7: mov    %r8d,0x10(%rdi,%rbx,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.32%    0.13%  │ │  0x00007fd379217cdc: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fd3792184ad
  0.18%    0.25%  │ │  0x00007fd379217ce1: cmp    %r10d,%r8d
                  │ │  0x00007fd379217ce4: jae    0x00007fd37921818d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.12%    0.12%  │ │  0x00007fd379217cea: lea    (%r12,%rcx,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.26%    0.06%  │ │  0x00007fd379217cee: mov    %r10,0x38(%rsp)
  0.22%    0.26%  │ │  0x00007fd379217cf3: lea    0x10(%r10,%r8,4),%rbp
  0.19%    0.24%  │ │  0x00007fd379217cf8: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.17%    0.10%  │ │  0x00007fd379217cfc: test   %r11d,%r11d
                  │╭│  0x00007fd379217cff: je     0x00007fd379217e42  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.24%    0.16%  │││  0x00007fd379217d05: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.18%    0.28%  │││  0x00007fd379217d09: mov    0x40(%rsp),%r11d
  0.15%    0.22%  │││  0x00007fd379217d0e: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.21%    0.18%  │││  0x00007fd379217d12: mov    0x8(%rsp),%r10
  0.32%    0.15%  │││  0x00007fd379217d17: mov    0x14(%r10),%r10d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.28%    0.32%  │││  0x00007fd379217d1b: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.19%    0.21%  │││  0x00007fd379217d1f: mov    0x14(%r12,%r10,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007fd3792184c1
  0.21%    0.23%  │││  0x00007fd379217d24: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd3792184d5
  0.62%    0.69%  │││  0x00007fd379217d29: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007fd379217d30: jne    0x00007fd379218259
  0.39%    0.32%  │││  0x00007fd379217d36: lea    (%r12,%rbp,8),%r11  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.19%    0.14%  │││  0x00007fd379217d3a: mov    0x10(%r11),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.09%    0.09%  │││  0x00007fd379217d3e: mov    0x40(%rsp),%r10d
  0.31%    0.18%  │││  0x00007fd379217d43: cmp    %ebp,%r10d
                  │││  0x00007fd379217d46: jge    0x00007fd3792182a9  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.41%    0.37%  │││  0x00007fd379217d4c: mov    0x14(%r11),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.16%    0.17%  │││  0x00007fd379217d50: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd3792184e9
  0.64%    0.72%  │││  0x00007fd379217d55: cmp    %r11d,%r10d
                  │││  0x00007fd379217d58: jae    0x00007fd3792181d1
  0.56%    0.33%  │││  0x00007fd379217d5e: lea    (%r12,%rbp,8),%r10
  0.17%    0.12%  │││  0x00007fd379217d62: mov    0x40(%rsp),%r11d
  0.16%    0.13%  │││  0x00007fd379217d67: mov    0x10(%r10,%r11,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.03%    0.08%  │││  0x00007fd379217d6c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd3792184fd
  1.14%    0.81%  │││  0x00007fd379217d71: cmp    $0xf8019844,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007fd379217d78: jne    0x00007fd379218448
  0.37%    0.39%  │││  0x00007fd379217d7e: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.12%    0.09%  │││  0x00007fd379217d82: mov    %r10,0x38(%rsp)
  0.03%    0.05%  │││  0x00007fd379217d87: mov    0x14(%r10),%r11d   ;*getfield op
                  │││                                                ; - com.google.re2j.Inst::op@4 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.40%    0.12%  │││  0x00007fd379217d8b: mov    0xc(%r12,%r11,8),%ebp  ;*getfield ordinal
                  │││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │││                                                ; - com.google.re2j.Inst::op@7 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
                  │││                                                ; implicit exception: dispatches to 0x00007fd37921852d
  1.61%    1.49%  │││  0x00007fd379217d90: cmp    $0xb,%ebp
                  │││  0x00007fd379217d93: jae    0x00007fd3792181f9  ;*iaload
                  │││                                                ; - com.google.re2j.Inst::op@10 (line 44)
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.43%    0.37%  │││  0x00007fd379217d99: mov    %r11,%r10
  0.02%    0.01%  │││  0x00007fd379217d9c: shl    $0x3,%r10
  0.26%    0.29%  │││  0x00007fd379217da0: movabs $0x76dd36790,%r11  ;   {oop([I)}
  0.16%    0.16%  │││  0x00007fd379217daa: mov    0x10(%r11,%rbp,4),%r11d
  1.77%    1.68%  │││  0x00007fd379217daf: dec    %r11d
  0.53%    0.54%  │││  0x00007fd379217db2: movabs $0x76dd29e18,%r8   ;   {oop(a &apos;com/google/re2j/Inst$Op&apos;)}
  0.17%    0.27%  │││  0x00007fd379217dbc: cmp    $0x3,%r11d
  0.61%    0.60%  │││  0x00007fd379217dc0: cmovb  %r8,%r10           ;*invokevirtual ordinal
                  │││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  1.14%    1.27%  │││  0x00007fd379217dc4: mov    0xc(%r10),%ebp     ;*getfield ordinal
                  │││                                                ; - java.lang.Enum::ordinal@1 (line 103)
                  │││                                                ; - com.google.re2j.Machine::add@43 (line 349)
  3.57%    3.82%  │││  0x00007fd379217dc8: cmp    $0xb,%ebp
                  │││  0x00007fd379217dcb: jae    0x00007fd379218221
  0.80%    0.69%  │││  0x00007fd379217dd1: movabs $0x76dd58ca0,%r10  ;   {oop([I)}
                  │││  0x00007fd379217ddb: mov    0x10(%r10,%rbp,4),%r10d  ;*iaload
                  │││                                                ; - com.google.re2j.Machine::add@46 (line 349)
  3.09%    3.34%  │││  0x00007fd379217de0: mov    %r10d,%r8d
  0.04%    0.05%  │││  0x00007fd379217de3: dec    %r8d
  0.82%    0.65%  │││  0x00007fd379217de6: cmp    $0xb,%r8d
                  │││  0x00007fd379217dea: jae    0x00007fd379218249  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.99%    0.57%  │││  0x00007fd379217df0: mov    0x38(%rsp),%r11
                  │││  0x00007fd379217df5: mov    0xc(%r11),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@279 (line 379)
  0.03%    0.06%  │││  0x00007fd379217df9: mov    0x10(%r11),%r9d    ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@217 (line 373)
  0.00%           │││  0x00007fd379217dfd: movslq %r10d,%r10
  0.84%    0.57%  │││  0x00007fd379217e00: movabs $0x7fd379217be0,%r11  ;   {section_word}
                  │││  0x00007fd379217e0a: jmpq   *-0x8(%r11,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@47 (line 349)
  0.03%    0.03%  ↘││  0x00007fd379217e0f: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fd3792185b5
  0.03%    0.01%   ││  0x00007fd379217e14: cmp    %r11d,%ebp
                   ││  0x00007fd379217e17: jae    0x00007fd3792183c5
  0.01%    0.01%   ││  0x00007fd379217e1d: lea    (%r12,%rcx,8),%r11
  0.01%    0.06%   ││  0x00007fd379217e21: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.03%    0.01%   ││  0x00007fd379217e26: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd3792185c5
  0.06%    0.08%   ││  0x00007fd379217e2b: mov    0x40(%rsp),%ebx
  0.01%    0.01%   ││  0x00007fd379217e2f: cmp    %ebx,%r11d
                   │╰  0x00007fd379217e32: jne    0x00007fd379217cc0
                   │   0x00007fd379217e38: mov    0x70(%rsp),%rax
                   │   0x00007fd379217e3d: jmpq   0x00007fd3792180b3
                   ↘   0x00007fd379217e42: mov    0x60(%r15),%rbx
                       0x00007fd379217e46: mov    %rbx,%r10
                       0x00007fd379217e49: add    $0x18,%r10
                       0x00007fd379217e4d: cmp    0x70(%r15),%r10
                       0x00007fd379217e51: jae    0x00007fd379218415
                       0x00007fd379217e57: mov    %r10,0x60(%r15)
                       0x00007fd379217e5b: prefetchnta 0xc0(%r10)
....................................................................................................
 32.58%   29.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (624 bytes) 

                          0x00007fd37921bca6: jge    0x00007fd37921bcb0
                          0x00007fd37921bca8: mov    %r14d,%ecx
                          0x00007fd37921bcab: jmpq   0x00007fd37921c008  ;*if_icmpge
                                                                        ; - com.google.re2j.Machine::step@250 (line 293)
                          0x00007fd37921bcb0: mov    0x8(%rsp),%r11
                          0x00007fd37921bcb5: mov    %r12d,0xc(%r11)    ;*putfield size
                                                                        ; - com.google.re2j.Machine::step@293 (line 300)
                          0x00007fd37921bcb9: mov    0x28(%rsp),%r11
                          0x00007fd37921bcbe: movb   $0x1,0xc(%r11)     ;*putfield matched
                                                                        ; - com.google.re2j.Machine::step@298 (line 302)
  0.00%                   0x00007fd37921bcc3: mov    0x20(%rsp),%ecx    ;*goto
                                                                        ; - com.google.re2j.Machine::step@313 (line 307)
  0.01%    0.03%     ↗    0x00007fd37921bcc7: mov    %r9,0x50(%rsp)     ;*aload
                     │                                                  ; - com.google.re2j.Machine::step@399 (line 327)
  0.16%    0.11%     │    0x00007fd37921bccc: mov    0x28(%rsp),%r11
  0.05%    0.08%     │    0x00007fd37921bcd1: mov    0x20(%r11),%ebp    ;*getfield pool
                     │                                                  ; - com.google.re2j.Machine::step@405 (line 329)
  0.21%    0.26%     │    0x00007fd37921bcd5: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd37921cfd5
  0.01%    0.01%     │    0x00007fd37921bcda: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                     │    0x00007fd37921bce1: jne    0x00007fd37921c721
  0.10%    0.12%     │    0x00007fd37921bce7: lea    (%r12,%rbp,8),%r11  ;*invokeinterface add
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.06%    0.08%     │    0x00007fd37921bceb: mov    0x14(%r11),%edi    ;*getfield elementData
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.23%    0.25%     │    0x00007fd37921bcef: mov    0x10(%r11),%ebp    ;*getfield size
                     │                                                  ; - java.util.ArrayList::add@16 (line 459)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.02%    0.02%     │    0x00007fd37921bcf3: mov    %ebp,%ebx
  0.08%    0.13%     │    0x00007fd37921bcf5: inc    %ebx               ;*iadd
                     │                                                  ; - java.util.ArrayList::add@21 (line 459)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.07%    0.06%     │    0x00007fd37921bcf7: cmp    $0xed9f0db7,%edi   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                     │    0x00007fd37921bcfd: je     0x00007fd37921c485  ;*if_acmpne
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.22%    0.19%     │    0x00007fd37921bd03: mov    %ebx,%esi          ;*aload_0
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.03%    0.02%     │    0x00007fd37921bd05: mov    0xc(%r11),%r9d     ;*getfield modCount
                     │                                                  ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.08%    0.09%     │    0x00007fd37921bd09: inc    %r9d
  0.10%    0.05%     │    0x00007fd37921bd0c: mov    %r9d,0xc(%r11)     ;*putfield modCount
                     │                                                  ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.23%    0.19%     │    0x00007fd37921bd10: mov    0xc(%r12,%rdi,8),%r8d  ;*arraylength
                     │                                                  ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
                     │                                                  ; implicit exception: dispatches to 0x00007fd37921cfe5
  0.02%    0.02%     │    0x00007fd37921bd15: mov    %esi,%edx
  0.06%    0.08%     │    0x00007fd37921bd17: sub    %r8d,%edx
  0.10%    0.02%     │    0x00007fd37921bd1a: test   %edx,%edx
                     │    0x00007fd37921bd1c: jg     0x00007fd37921c1e0  ;*ifle
                     │                                                  ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.22%    0.23%     │    0x00007fd37921bd22: mov    %ebx,0x10(%r11)    ;*putfield size
                     │                                                  ; - java.util.ArrayList::add@22 (line 459)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.03%    0.00%     │    0x00007fd37921bd26: mov    %rdi,%r11
  0.10%    0.07%     │    0x00007fd37921bd29: shl    $0x3,%r11          ;*return
                     │                                                  ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                     │                                                  ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                     │                                                  ; - java.util.ArrayList::add@7 (line 458)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.05%    0.01%     │    0x00007fd37921bd2d: mov    0xc(%r11),%r9d
  0.17%    0.13%     │    0x00007fd37921bd31: cmp    %r9d,%ebp
                     │    0x00007fd37921bd34: jae    0x00007fd37921c6dd
  0.02%    0.01%     │    0x00007fd37921bd3a: mov    0x8(%r11),%r9d
  0.11%    0.06%     │    0x00007fd37921bd3e: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                     │    0x00007fd37921bd45: jne    0x00007fd37921c75d
  0.08%    0.01%     │    0x00007fd37921bd4b: lea    0x10(%r11,%rbp,4),%r10
  0.28%    0.16%     │    0x00007fd37921bd50: mov    0x50(%rsp),%r11
  0.04%    0.00%     │    0x00007fd37921bd55: mov    %r11,%r8
  0.13%    0.04%     │    0x00007fd37921bd58: shr    $0x3,%r8
  0.09%    0.04%     │    0x00007fd37921bd5c: mov    %r8d,(%r10)
  0.20%    0.12%     │    0x00007fd37921bd5f: shr    $0x9,%r10
  0.05%    0.02%     │    0x00007fd37921bd63: movabs $0x7fd374dee000,%r11
  0.10%    0.02%     │    0x00007fd37921bd6d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                  ; - java.util.ArrayList::add@26 (line 459)
                     │                                                  ; - com.google.re2j.Machine::step@410 (line 329)
  0.08%    0.06%     │    0x00007fd37921bd71: xor    %r11d,%r11d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=820}
                     │                                                  ;*goto
                     │                                                  ; - com.google.re2j.Machine::step@419 (line 264)
  0.30%    0.23%    ↗│    0x00007fd37921bd74: test   %eax,0x164e4286(%rip)        # 0x00007fd38f700000
                    ││                                                  ;*goto
                    ││                                                  ; - com.google.re2j.Machine::step@419 (line 264)
                    ││                                                  ;   {poll}
  0.20%    0.16%    ││    0x00007fd37921bd7a: mov    0x8(%rsp),%r10
  0.13%    0.09%    ││    0x00007fd37921bd7f: mov    0xc(%r10),%r11d
  0.17%    0.18%    ││    0x00007fd37921bd83: cmp    %r11d,%r14d
                  ╭ ││    0x00007fd37921bd86: jge    0x00007fd37921be53
  0.24%    0.10%  │ ││    0x00007fd37921bd8c: mov    %ecx,0x20(%rsp)
  0.15%    0.19%  │ ││    0x00007fd37921bd90: mov    %r14d,%r10d        ;*aload_1
                  │ ││                                                  ; - com.google.re2j.Machine::step@21 (line 265)
  0.18%    0.09%  │ ││    0x00007fd37921bd93: mov    0x8(%rsp),%r11
  0.10%    0.16%  │ ││    0x00007fd37921bd98: mov    0x10(%r11),%r8d    ;*getfield dense
                  │ ││                                                  ; - com.google.re2j.Machine::step@22 (line 265)
  0.34%    0.30%  │ ││    0x00007fd37921bd9c: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fd37921cf91
  0.39%    0.31%  │ ││    0x00007fd37921bda1: cmp    %r11d,%r10d
                  │ ││    0x00007fd37921bda4: jae    0x00007fd37921c5b9
  0.22%    0.29%  │ ││    0x00007fd37921bdaa: lea    (%r12,%r8,8),%r11
  0.15%    0.16%  │ ││    0x00007fd37921bdae: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │ ││                                                  ; - com.google.re2j.Machine::step@27 (line 265)
  0.26%    0.45%  │ ││    0x00007fd37921bdb3: mov    0x10(%r12,%r8,8),%r11d  ;*getfield thread
                  │ ││                                                  ; - com.google.re2j.Machine::step@40 (line 269)
                  │ ││                                                  ; implicit exception: dispatches to 0x00007fd37921d005
  0.37%    0.46%  │ ││    0x00007fd37921bdb8: mov    %r10d,%r14d
  0.11%    0.26%  │ ││    0x00007fd37921bdbb: inc    %r14d              ;*iadd
                  │ ││                                                  ; - com.google.re2j.Machine::step@241 (line 293)
  0.18%    0.18%  │ ││    0x00007fd37921bdbe: test   %r11d,%r11d
                  │╭││    0x00007fd37921bdc1: jne    0x00007fd37921bdce  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::step@47 (line 270)
  0.18%    0.16%  ││││    0x00007fd37921bdc3: mov    0x24(%rsp),%r11d
  0.04%    0.09%  ││││    0x00007fd37921bdc8: mov    0x20(%rsp),%ecx
  0.06%    0.05%  ││╰│    0x00007fd37921bdcc: jmp    0x00007fd37921bd74
  0.18%    0.23%  │↘ │    0x00007fd37921bdce: mov    0x24(%rsp),%r9d
  0.14%    0.15%  │  │    0x00007fd37921bdd3: test   %r9d,%r9d
                  │  │    0x00007fd37921bdd6: jne    0x00007fd37921c8c9  ;*ifeq
                  │  │                                                  ; - com.google.re2j.Machine::step@55 (line 273)
  0.11%    0.16%  │  │    0x00007fd37921bddc: mov    0x10(%r12,%r11,8),%r8d  ;*getfield inst
                  │  │                                                  ; - com.google.re2j.Machine::step@107 (line 278)
  0.60%    0.79%  │  │    0x00007fd37921bde1: mov    0x14(%r12,%r8,8),%r9d  ;*getfield op
                  │  │                                                  ; - com.google.re2j.Machine::step@120 (line 280)
                  │  │                                                  ; implicit exception: dispatches to 0x00007fd37921cfb5
  1.48%    2.15%  │  │    0x00007fd37921bde6: mov    0xc(%r12,%r9,8),%ebp  ;*getfield ordinal
                  │  │                                                  ; - java.lang.Enum::ordinal@1 (line 103)
                  │  │                                                  ; - com.google.re2j.Machine::step@123 (line 280)
                  │  │                                                  ; implicit exception: dispatches to 0x00007fd37921cfc5
  1.98%    2.51%  │  │    0x00007fd37921bdeb: cmp    $0xb,%ebp
                  │  │    0x00007fd37921bdee: jae    0x00007fd37921c699
  0.40%    0.51%  │  │    0x00007fd37921bdf4: movabs $0x76dd58ca0,%r9   ;   {oop([I)}
  0.00%    0.01%  │  │    0x00007fd37921bdfe: mov    0x10(%r9,%rbp,4),%ecx  ;*iaload
                  │  │                                                  ; - com.google.re2j.Machine::step@126 (line 280)
  2.05%    2.52%  │  │    0x00007fd37921be03: mov    0x18(%r12,%r8,8),%edi  ;*getfield runes
                  │  │                                                  ; - com.google.re2j.Machine::step@320 (line 310)
  0.02%           │  │    0x00007fd37921be08: mov    0xc(%r12,%r11,8),%edx  ;*getfield cap
                  │  │                                                  ; - com.google.re2j.Machine::step@176 (line 287)
                  │  │    0x00007fd37921be0d: lea    (%r12,%r11,8),%r9  ;*getfield thread
                  │  │                                                  ; - com.google.re2j.Machine::step@40 (line 269)
  0.02%           │  │    0x00007fd37921be11: cmp    $0x3,%ecx
                  │  │    0x00007fd37921be14: jne    0x00007fd37921bab0  ;*tableswitch
                  │  │                                                  ; - com.google.re2j.Machine::step@127 (line 280)
  0.11%    0.12%  │  │    0x00007fd37921be1a: mov    0xc(%r12,%rdi,8),%ecx  ; implicit exception: dispatches to 0x00007fd37921d09d
                  │  │    0x00007fd37921be1f: test   %ecx,%ecx
                  │  │    0x00007fd37921be21: jbe    0x00007fd37921c87d  ;*iaload
                  │  │                                                  ; - com.google.re2j.Machine::step@324 (line 310)
                  │  │    0x00007fd37921be27: mov    0x10(%r12,%rdi,8),%r11d
                  │  │    0x00007fd37921be2c: mov    0x20(%rsp),%ecx
  0.06%    0.13%  │  │    0x00007fd37921be30: cmp    %r11d,%ecx
                  │  ╰    0x00007fd37921be33: jne    0x00007fd37921bcc7  ;*if_icmpne
                  │                                                     ; - com.google.re2j.Machine::step@325 (line 310)
  0.00%    0.00%  │       0x00007fd37921be39: mov    %r10d,0x94(%rsp)
                  │       0x00007fd37921be41: mov    %r14d,0x9c(%rsp)
                  │       0x00007fd37921be49: mov    %edx,%eax
                  │       0x00007fd37921be4b: mov    %r9,%r13
                  │       0x00007fd37921be4e: jmpq   0x00007fd37921bb00  ;*if_icmpge
                  │                                                     ; - com.google.re2j.Machine::step@18 (line 264)
  0.05%    0.05%  ↘       0x00007fd37921be53: mov    0x8(%rsp),%r10
           0.00%          0x00007fd37921be58: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                        ; - com.google.re2j.Machine::step@15 (line 264)
  0.00%    0.00%          0x00007fd37921be5c: add    $0x80,%rsp
  0.03%    0.06%          0x00007fd37921be63: pop    %rbp
  0.04%    0.03%          0x00007fd37921be64: test   %eax,0x164e4196(%rip)        # 0x00007fd38f700000
                                                                        ;   {poll_return}
  0.02%    0.01%          0x00007fd37921be6a: retq   
                          0x00007fd37921be6b: nopl   0x0(%rax,%rax,1)
  0.49%    0.50%      ↗   0x00007fd37921be70: mov    %r8d,%r14d
  0.40%    0.42%      │   0x00007fd37921be73: vmovd  %ebx,%xmm1
  0.38%    0.39%      │   0x00007fd37921be77: mov    %ebx,%r8d
  0.52%    0.50%      │   0x00007fd37921be7a: sub    %r14d,%r8d         ;*isub
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.48%    0.32%      │   0x00007fd37921be7d: mov    %r8d,%r10d
  0.32%    0.27%      │   0x00007fd37921be80: sar    $0x1f,%r10d
  0.43%    0.45%      │   0x00007fd37921be84: shr    $0x1f,%r10d
  0.50%    0.43%      │   0x00007fd37921be88: add    %r8d,%r10d
  0.41%    0.51%      │   0x00007fd37921be8b: sar    %r10d
  0.32%    0.55%      │   0x00007fd37921be8e: mov    %r14d,%ebx
  0.33%    0.42%      │   0x00007fd37921be91: add    %r10d,%ebx         ;*idiv
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.53%    0.46%      │   0x00007fd37921be94: cmp    $0x3f,%ebx
                      │   0x00007fd37921be97: jae    0x00007fd37921c7a1
  0.51%    0.58%      │   0x00007fd37921be9d: movslq %r14d,%r11
  0.43%    0.64%      │   0x00007fd37921bea0: movslq %r10d,%r10
  0.46%    0.48%      │   0x00007fd37921bea3: add    %r10,%r11
  0.61%    0.52%      │   0x00007fd37921bea6: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.47%    0.47%      │   0x00007fd37921beab: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd37921cff5
  0.34%    0.46%      │   0x00007fd37921beb0: test   %r10d,%r10d
                      │   0x00007fd37921beb3: jbe    0x00007fd37921c7f1  ;*iaload
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.54%    0.60%      │   0x00007fd37921beb9: mov    0x10(%r12,%rbp,8),%r10d
  0.59%    0.64%      │   0x00007fd37921bebe: cmp    0x20(%rsp),%r10d
                      │   0x00007fd37921bec3: jl     0x00007fd37921bf78  ;*if_icmpge
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.39%    0.53%      │   0x00007fd37921bec9: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1164}
                      │                                                 ;*goto
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.68%      │   0x00007fd37921becc: test   %eax,0x164e412e(%rip)        # 0x00007fd38f700000
                      │                                                 ;*goto
                      │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                      │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 65)
                      │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                      │                                                 ;   {poll}
  0.44%    0.74%      │   0x00007fd37921bed2: cmp    %ebx,%r8d
                      ╰   0x00007fd37921bed5: jl     0x00007fd37921be70  ;*if_icmpge
                                                                        ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.13%          0x00007fd37921bed7: cmp    $0x3f,%r8d
                          0x00007fd37921bedb: jge    0x00007fd37921cd09  ;*if_icmpge
                                                                        ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.15%          0x00007fd37921bee1: cmp    $0x3f,%r8d
                          0x00007fd37921bee5: jae    0x00007fd37921c9c1
  0.06%    0.05%          0x00007fd37921beeb: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                        ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.06%    0.05%          0x00007fd37921bef0: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd37921d0ed
  0.10%    0.12%          0x00007fd37921bef5: test   %r10d,%r10d
                          0x00007fd37921bef8: jbe    0x00007fd37921ca55
  0.10%    0.17%          0x00007fd37921befe: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                        ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.05%          0x00007fd37921bf03: cmp    0x20(%rsp),%ebp
                          0x00007fd37921bf07: je     0x00007fd37921cd51  ;*if_icmpne
                                                                        ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.07%          0x00007fd37921bf0d: mov    0x20(%rsp),%r11d
  0.11%    0.11%          0x00007fd37921bf12: cmp    $0x7f,%r11d
                          0x00007fd37921bf16: jg     0x00007fd37921cd89  ;*if_icmpgt
                                                                        ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                        ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.13%          0x00007fd37921bf1c: cmp    $0x41,%r11d
                          0x00007fd37921bf20: jl     0x00007fd37921cc05  ;*if_icmpgt
                                                                        ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                        ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                        ; - com.google.re2j.Inst::matchRune@33 (line 65)
                                                                        ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.09%          0x00007fd37921bf26: cmp    $0x5a,%r11d
                       ╭  0x00007fd37921bf2a: jg     0x00007fd37921bf3c  ;*if_icmpgt
                       │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                       │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                       │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.07%       │  0x00007fd37921bf2c: mov    %r11d,%r10d
  0.15%    0.23%       │  0x00007fd37921bf2f: add    $0x20,%r10d        ;*iinc
                       │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                       │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                       │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.15%    0.17%       │  0x00007fd37921bf33: cmp    %r11d,%r10d
                       │  0x00007fd37921bf36: jne    0x00007fd37921c188  ;*if_icmpeq
                       │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                       │                                                ; - com.google.re2j.Inst::matchRune@33 (line 65)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                       ↘  0x00007fd37921bf3c: cmp    $0x61,%r11d
                          0x00007fd37921bf40: jl     0x00007fd37921ce6d  ;*if_icmpgt
....................................................................................................
 26.16%   29.34%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (330 bytes) 

                          0x00007fd37921c07a: mov    %r8d,0x24(%rsp)
                          0x00007fd37921c07f: mov    %ecx,0x30(%rsp)
                          0x00007fd37921c083: mov    %edi,0x34(%rsp)
                          0x00007fd37921c087: callq  0x00007fd3790051a0  ; OopMap{rbp=NarrowOop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop [52]=NarrowOop off=1612}
                                                                        ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
                          0x00007fd37921c08c: callq  0x00007fd38e3edc50  ;*invokeinterface add
                                                                        ; - com.google.re2j.Machine::step@279 (line 297)
                                                                        ;   {runtime_call}
  0.47%    0.79%   ↗      0x00007fd37921c091: mov    %r8d,%r11d
  0.34%    0.60%   │      0x00007fd37921c094: sub    0x20(%rsp),%r11d   ;*isub
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.34%    0.53%   │      0x00007fd37921c099: mov    %r11d,%esi
  0.32%    0.73%   │      0x00007fd37921c09c: sar    $0x1f,%esi
  0.48%    0.55%   │      0x00007fd37921c09f: shr    $0x1f,%esi
  0.35%    0.51%   │      0x00007fd37921c0a2: add    %r11d,%esi
  0.37%    0.53%   │      0x00007fd37921c0a5: sar    %esi               ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.42%    0.69%   │      0x00007fd37921c0a7: add    %esi,%r10d         ;*iadd
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.57%    0.69%   │      0x00007fd37921c0aa: vmovd  %r8d,%xmm2
  0.28%    0.45%   │      0x00007fd37921c0af: mov    %r10d,%r8d         ;*idiv
                   │                                                    ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                    ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.63%   │  ↗   0x00007fd37921c0b2: cmp    $0x3f,%r8d
                   │  │   0x00007fd37921c0b6: jae    0x00007fd37921c5f9
  0.51%    0.76%   │  │   0x00007fd37921c0bc: movslq 0x20(%rsp),%r10
  0.60%    0.91%   │  │   0x00007fd37921c0c1: movslq %esi,%r11
  0.35%    0.49%   │  │   0x00007fd37921c0c4: add    %r11,%r10
  0.45%    0.70%   │  │   0x00007fd37921c0c7: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.69%    1.10%   │  │   0x00007fd37921c0cc: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd37921cfa5
  1.95%    2.59%   │  │   0x00007fd37921c0d1: test   %r10d,%r10d
                   │  │   0x00007fd37921c0d4: jbe    0x00007fd37921c651  ;*iaload
                   │  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                   │  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.97%    1.30%   │  │   0x00007fd37921c0da: mov    0x10(%r12,%rbp,8),%r11d
  0.35%    0.53%   │  │   0x00007fd37921c0df: cmp    %r14d,%r11d
                  ╭│  │   0x00007fd37921c0e2: jl     0x00007fd37921c1ba  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1704}
                  ││  │                                                 ;*goto
                  ││  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.62%    0.98%  ││  │↗  0x00007fd37921c0e8: test   %eax,0x164e3f12(%rip)        # 0x00007fd38f700000
                  ││  ││                                                ;*goto
                  ││  ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  ││  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││  ││                                                ;   {poll}
  0.28%    0.43%  ││  ││  0x00007fd37921c0ee: mov    0x20(%rsp),%r10d
  0.60%    0.86%  ││  ││  0x00007fd37921c0f3: cmp    %r8d,%r10d
                  │╰  ││  0x00007fd37921c0f6: jl     0x00007fd37921c091  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007fd37921c0f8: mov    0x20(%rsp),%r8d
  0.17%    0.18%  │   ││  0x00007fd37921c0fd: cmp    $0x3f,%r10d
                  │   ││  0x00007fd37921c101: jge    0x00007fd37921cadd  ;*if_icmpge
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
           0.01%  │   ││  0x00007fd37921c107: cmp    $0x3f,%r10d
                  │   ││  0x00007fd37921c10b: jae    0x00007fd37921c915
  0.11%    0.22%  │   ││  0x00007fd37921c111: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.00%  │   ││  0x00007fd37921c116: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd37921d0cd
  0.24%    0.28%  │   ││  0x00007fd37921c11b: test   %r10d,%r10d
                  │   ││  0x00007fd37921c11e: jbe    0x00007fd37921c965
  0.07%    0.04%  │   ││  0x00007fd37921c124: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.08%  │   ││  0x00007fd37921c129: cmp    %r14d,%ebp
                  │   ││  0x00007fd37921c12c: je     0x00007fd37921cb2d  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.08%  │   ││  0x00007fd37921c132: mov    %r14d,%r8d
  0.17%    0.10%  │   ││  0x00007fd37921c135: cmp    $0x7f,%r8d
                  │   ││  0x00007fd37921c139: jg     0x00007fd37921cb7d  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.02%  │   ││  0x00007fd37921c13f: cmp    $0x41,%r8d
                  │   ││  0x00007fd37921c143: jl     0x00007fd37921ca8d  ;*if_icmpgt
                  │   ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │   ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.16%  │   ││  0x00007fd37921c149: cmp    $0x5a,%r8d
                  │ ╭ ││  0x00007fd37921c14d: jg     0x00007fd37921c15b  ;*if_icmpgt
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007fd37921c14f: mov    %r8d,%r10d
                  │ │ ││  0x00007fd37921c152: add    $0x20,%r10d        ;*iinc
                  │ │ ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │ ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │ ││  0x00007fd37921c156: cmp    %r8d,%r10d
                  │ │╭││  0x00007fd37921c159: jne    0x00007fd37921c176  ;*if_icmpeq
                  │ ││││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │ ││││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.06%  │ ↘│││  0x00007fd37921c15b: cmp    $0x61,%r8d
                  │  │││  0x00007fd37921c15f: jl     0x00007fd37921cdd5  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.13%  │  │││  0x00007fd37921c165: cmp    $0x7a,%r8d
                  │  │││  0x00007fd37921c169: jg     0x00007fd37921ce21  ;*if_icmpgt
                  │  │││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%  │  │││  0x00007fd37921c16f: mov    %r8d,%r10d
  0.11%    0.10%  │  │││  0x00007fd37921c172: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1846}
                  │  │││                                                ;*goto
                  │  │││                                                ; - com.google.re2j.Inst::matchRune@54 (line 67)
                  │  │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.08%  │  ↘││  0x00007fd37921c176: test   %eax,0x164e3e84(%rip)        # 0x00007fd38f700000
                  │   ││                                                ;*goto
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 67)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││                                                ;   {poll}
  0.08%    0.12%  │   ││  0x00007fd37921c17c: cmp    %ebx,%r10d
                  │   ││  0x00007fd37921c17f: je     0x00007fd37921bf60  ;*if_icmpeq
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 66)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │   ││  0x00007fd37921c185: mov    %ebx,%r11d         ;*iload_1
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 68)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.05%    0.07%  │   ││  0x00007fd37921c188: cmp    %r10d,%ecx
                  │   ││  0x00007fd37921c18b: je     0x00007fd37921c4b1  ;*if_icmpne
                  │   ││                                                ; - com.google.re2j.Inst::matchRune@44 (line 68)
                  │   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.06%  │   ││  0x00007fd37921c191: mov    %r10d,%r14d
  0.08%    0.11%  │   ││  0x00007fd37921c194: mov    %r11d,%ebx
  0.13%    0.18%  │   ││  0x00007fd37921c197: mov    $0x1f,%esi
  0.06%    0.12%  │   ││  0x00007fd37921c19c: mov    $0x1f,%r8d
  0.05%    0.06%  │   ││  0x00007fd37921c1a2: xor    %r10d,%r10d
  0.07%    0.16%  │   ││  0x00007fd37921c1a5: mov    $0x3f,%r11d
  0.12%    0.20%  │   ││  0x00007fd37921c1ab: mov    %r10d,0x20(%rsp)
  0.06%    0.11%  │   ││  0x00007fd37921c1b0: vmovd  %r11d,%xmm2
  0.02%    0.08%  │   ╰│  0x00007fd37921c1b5: jmpq   0x00007fd37921c0b2
  0.22%    0.28%  ↘    │  0x00007fd37921c1ba: inc    %r8d               ;*iadd
                       │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                       │                                                ; - com.google.re2j.Inst::matchRune@50 (line 67)
                       │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.03%    0.03%       │  0x00007fd37921c1bd: mov    %r8d,0x20(%rsp)
  0.14%    0.22%       │  0x00007fd37921c1c2: vmovd  %xmm2,%r8d
  0.02%    0.03%       ╰  0x00007fd37921c1c7: jmpq   0x00007fd37921c0e8
  0.08%    0.06%          0x00007fd37921c1cc: xor    %r11d,%r11d
                          0x00007fd37921c1cf: mov    0x20(%rsp),%ecx
                          0x00007fd37921c1d3: mov    0x9c(%rsp),%r14d
  0.05%    0.05%          0x00007fd37921c1db: jmpq   0x00007fd37921bd74
                          0x00007fd37921c1e0: mov    %r8d,%r9d
                          0x00007fd37921c1e3: sar    %r9d
                          0x00007fd37921c1e6: add    %r8d,%r9d          ;*iadd
                                                                        ; - java.util.ArrayList::grow@10 (line 255)
                                                                        ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                        ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                        ; - java.util.ArrayList::add@7 (line 458)
                                                                        ; - com.google.re2j.Machine::step@410 (line 329)
                          0x00007fd37921c1e9: mov    %r9d,%ebx
                          0x00007fd37921c1ec: sub    %esi,%ebx
....................................................................................................
 14.46%   20.85%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 490 (390 bytes) 

                          0x00007fd379217f2a: mov    %r10,(%rsp)
                          0x00007fd379217f2e: nop
                          0x00007fd379217f2f: callq  0x00007fd379046020  ; OopMap{off=756}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@207 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fd379217f34: jmpq   0x00007fd3792180b3
                  │       0x00007fd379217f39: mov    0x70(%rsp),%rax
                  │╭      0x00007fd379217f3e: jmpq   0x00007fd3792180b3  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@47 (line 349)
  1.19%    0.86%  ││      0x00007fd379217f43: mov    0x8(%rsp),%rsi
                  ││      0x00007fd379217f48: mov    0x48(%rsp),%rdx
                  ││      0x00007fd379217f4d: mov    0x1c(%rsp),%r8d
  0.03%    0.00%  ││      0x00007fd379217f52: mov    0x20(%rsp),%r9
  0.33%    0.18%  ││      0x00007fd379217f57: mov    0x28(%rsp),%edi
                  ││      0x00007fd379217f5b: mov    0x70(%rsp),%r10
                  ││      0x00007fd379217f60: mov    %r10,(%rsp)
  0.00%    0.01%  ││      0x00007fd379217f64: mov    %rsi,%rbp
  0.23%    0.15%  ││      0x00007fd379217f67: callq  0x00007fd379046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=812}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@131 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.01%           ││      0x00007fd379217f6c: mov    0x38(%rsp),%r10
  0.18%    0.09%  ││      0x00007fd379217f71: mov    0x10(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@140 (line 359)
  0.15%    0.24%  ││      0x00007fd379217f75: mov    %rbp,%rsi
                  ││      0x00007fd379217f78: mov    0x48(%rsp),%rdx
  0.02%    0.01%  ││      0x00007fd379217f7d: mov    0x1c(%rsp),%r8d
  0.14%    0.16%  ││      0x00007fd379217f82: mov    0x20(%rsp),%r9
  0.18%    0.25%  ││      0x00007fd379217f87: mov    0x28(%rsp),%edi
           0.00%  ││      0x00007fd379217f8b: mov    %rax,(%rsp)
  0.00%           ││      0x00007fd379217f8f: callq  0x00007fd379046020  ; OopMap{off=852}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@150 (line 359)
                  ││                                                    ;   {optimized virtual_call}
                  ││╭     0x00007fd379217f94: jmpq   0x00007fd3792180b3  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 388)
  2.06%    1.16%  │││     0x00007fd379217f99: mov    0x38(%rsp),%r10
                  │││     0x00007fd379217f9e: mov    %r10,%rcx
                  │││     0x00007fd379217fa1: shr    $0x3,%rcx          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@305 (line 389)
           0.03%  │││     0x00007fd379217fa5: mov    0x70(%rsp),%rbp
  0.46%    0.14%  │││     0x00007fd379217faa: test   %rbp,%rbp
                  │││╭    0x00007fd379217fad: jne    0x00007fd3792180bf  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@299 (line 388)
                  ││││    0x00007fd379217fb3: mov    0x8(%rsp),%r10
                  ││││    0x00007fd379217fb8: mov    0x20(%r10),%ebp    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379217fbc: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd37921854d
  0.48%    0.08%  ││││    0x00007fd379217fc1: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  ││││    0x00007fd379217fc8: jne    0x00007fd37921831d
                  ││││    0x00007fd379217fce: lea    (%r12,%rbp,8),%r9  ;*invokeinterface size
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379217fd2: mov    0x10(%r9),%r8d     ;*getfield size
                  ││││                                                  ; - java.util.ArrayList::size@1 (line 278)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 147)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           ││││    0x00007fd379217fd6: test   %r8d,%r8d
                  ││││    0x00007fd379217fd9: jle    0x00007fd379218371  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@11 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.43%    0.03%  ││││    0x00007fd379217fdf: mov    %r8d,%r10d
                  ││││    0x00007fd379217fe2: dec    %r10d              ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@20 (line 148)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379217fe5: cmp    %r8d,%r10d
                  ││││    0x00007fd379217fe8: jge    0x00007fd379218395  ;*if_icmplt
                  ││││                                                  ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  ││││                                                  ; - java.util.ArrayList::remove@2 (line 492)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.00%           ││││    0x00007fd379217fee: incl   0xc(%r9)           ;*putfield modCount
                  ││││                                                  ; - java.util.ArrayList::remove@12 (line 494)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.39%    0.03%  ││││    0x00007fd379217ff2: mov    0x14(%r9),%ebp     ;*getfield elementData
                  ││││                                                  ; - java.util.ArrayList::elementData@1 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379217ff6: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd37921855d
  0.47%    0.03%  ││││    0x00007fd379217ffb: cmp    %r11d,%r10d
                  ││││    0x00007fd379217ffe: jae    0x00007fd3792182f5  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379218004: mov    %r10d,0x10(%r9)    ;*putfield size
                  ││││                                                  ; - java.util.ArrayList::remove@62 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379218008: lea    (%r12,%rbp,8),%r10
                  ││││    0x00007fd37921800c: mov    0xc(%r10,%r8,4),%ebp  ;*aaload
                  ││││                                                  ; - java.util.ArrayList::elementData@5 (line 418)
                  ││││                                                  ; - java.util.ArrayList::remove@17 (line 495)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.39%    0.21%  ││││    0x00007fd379218011: mov    %r12d,0xc(%r10,%r8,4)  ;*aastore
                  ││││                                                  ; - java.util.ArrayList::remove@66 (line 501)
                  ││││                                                  ; - com.google.re2j.Machine::alloc@21 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
                  ││││    0x00007fd379218016: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd379218571
                  ││││    0x00007fd37921801b: cmp    $0xf8019c51,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  ││││    0x00007fd379218022: jne    0x00007fd379218471
  0.00%    0.00%  ││││    0x00007fd379218028: shl    $0x3,%rbp          ;*checkcast
                  ││││                                                  ; - com.google.re2j.Machine::alloc@26 (line 149)
                  ││││                                                  ; - com.google.re2j.Machine::add@305 (line 389)
  0.40%    0.28%  ││││    0x00007fd37921802c: mov    %ecx,0x10(%rbp)
                  ││││    0x00007fd37921802f: mov    %rbp,%r10
                  ││││    0x00007fd379218032: shr    $0x9,%r10
  0.00%    0.00%  ││││    0x00007fd379218036: movabs $0x7fd374dee000,%r11
  0.42%           ││││    0x00007fd379218040: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@320 (line 393)
  0.01%    0.01%  ││││ ↗  0x00007fd379218044: mov    0x20(%rsp),%rdi
  0.06%    0.03%  ││││ │  0x00007fd379218049: mov    0xc(%rdi),%r10d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@322 (line 393)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007fd37921853d
           0.01%  ││││ │  0x00007fd37921804d: test   %r10d,%r10d
                  ││││ │  0x00007fd379218050: jle    0x00007fd379218356  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@323 (line 393)
  0.39%    0.02%  ││││ │  0x00007fd379218056: mov    0xc(%rbp),%r11d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@328 (line 393)
           0.00%  ││││ │  0x00007fd37921805a: mov    %r11,%r8
  0.07%    0.01%  ││││ │  0x00007fd37921805d: shl    $0x3,%r8
                  ││││ │  0x00007fd379218061: cmp    %rdi,%r8
                  ││││╭│  0x00007fd379218064: je     0x00007fd379218091  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@333 (line 393)
  0.36%    0.04%  ││││││  0x00007fd379218066: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fd37921858d
  0.01%           ││││││  0x00007fd37921806b: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@328 (line 393)
                  ││││││  0x00007fd37921806f: cmp    %r10d,%r9d
                  ││││││  0x00007fd379218072: jb     0x00007fd379218331
  0.01%    0.00%  ││││││  0x00007fd379218078: lea    0x10(%r12,%r11,8),%rsi
  0.46%    0.17%  ││││││  0x00007fd37921807d: add    $0x10,%rdi
                  ││││││  0x00007fd379218081: movslq %r10d,%rdx
                  ││││││  0x00007fd379218084: movabs $0x7fd379052640,%r10
                  ││││││  0x00007fd37921808e: callq  *%r10              ;*aload
                  ││││││                                                ; - com.google.re2j.Machine::add@351 (line 396)
                  ││││↘│  0x00007fd379218091: mov    %rbx,%r10
  0.00%    0.00%  ││││ │  0x00007fd379218094: mov    %rbp,%r11
  0.06%    0.00%  ││││ │  0x00007fd379218097: shr    $0x3,%r11
  0.39%    0.61%  ││││ │  0x00007fd37921809b: mov    %r11d,0x10(%rbx)
                  ││││ │  0x00007fd37921809f: shr    $0x9,%r10
  0.00%    0.01%  ││││ │  0x00007fd3792180a3: movabs $0x7fd374dee000,%r11
  0.06%    0.03%  ││││ │  0x00007fd3792180ad: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  ││││ │                                                ; - com.google.re2j.Machine::add@355 (line 396)
  0.38%    0.66%  ││││ │  0x00007fd3792180b1: xor    %eax,%eax          ;*synchronization entry
                  ││││ │                                                ; - com.google.re2j.Machine::add@-1 (line 341)
  0.41%    0.27%  ↘↘↘│ │  0x00007fd3792180b3: add    $0x60,%rsp
  0.00%    0.00%     │ │  0x00007fd3792180b7: pop    %rbp
  0.54%    0.75%     │ │  0x00007fd3792180b8: test   %eax,0x164e7f42(%rip)        # 0x00007fd38f700000
                     │ │                                                ;   {poll_return}
  0.36%    0.53%     │ │  0x00007fd3792180be: retq   
                     ↘ │  0x00007fd3792180bf: mov    %ecx,0x10(%rbp)
                       │  0x00007fd3792180c2: mov    %rbp,%r10
  0.01%    0.01%       │  0x00007fd3792180c5: shr    $0x9,%r10
  0.03%    0.03%       │  0x00007fd3792180c9: movabs $0x7fd374dee000,%r11
                       │  0x00007fd3792180d3: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@317 (line 391)
                       ╰  0x00007fd3792180d7: jmpq   0x00007fd379218044  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@47 (line 349)
                          0x00007fd3792180dc: mov    0x8(%rsp),%rsi
                          0x00007fd3792180e1: mov    0x48(%rsp),%rdx
                          0x00007fd3792180e6: mov    0x1c(%rsp),%r8d
                          0x00007fd3792180eb: mov    0x20(%rsp),%r9
                          0x00007fd3792180f0: mov    %ebx,%edi
                          0x00007fd3792180f2: mov    0x70(%rsp),%r10
....................................................................................................
 11.62%    7.19%  <total for region 4>

....[Hottest Regions]...............................................................................
 32.58%   29.55%         C2, level 4  com.google.re2j.Machine::add, version 490 (463 bytes) 
 26.16%   29.34%         C2, level 4  com.google.re2j.Machine::step, version 500 (624 bytes) 
 14.46%   20.85%         C2, level 4  com.google.re2j.Machine::step, version 500 (330 bytes) 
 11.62%    7.19%         C2, level 4  com.google.re2j.Machine::add, version 490 (390 bytes) 
  4.57%    5.61%         C2, level 4  com.google.re2j.Machine::match, version 543 (877 bytes) 
  2.90%    1.44%         C2, level 4  com.google.re2j.Machine::step, version 500 (266 bytes) 
  2.78%    1.49%        runtime stub  StubRoutines::jint_disjoint_arraycopy (116 bytes) 
  1.02%    0.92%         C2, level 4  com.google.re2j.Machine::step, version 500 (89 bytes) 
  0.57%    0.57%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.43%    0.56%         C2, level 4  com.google.re2j.Machine::step, version 500 (34 bytes) 
  0.22%    0.19%         C2, level 4  com.google.re2j.Machine::add, version 490 (40 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 547 (109 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (74 bytes) 
  0.09%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 547 (76 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.Machine::step, version 500 (20 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (14 bytes) 
  0.04%    0.15%         C2, level 4  com.google.re2j.Machine::match, version 543 (89 bytes) 
  0.04%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm (44 bytes) 
  1.93%    1.96%  <...other 452 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 45.03%   53.15%         C2, level 4  com.google.re2j.Machine::step, version 500 
 44.42%   36.93%         C2, level 4  com.google.re2j.Machine::add, version 490 
  4.69%    5.80%         C2, level 4  com.google.re2j.Machine::match, version 543 
  2.78%    1.49%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.71%    1.45%   [kernel.kallsyms]  [unknown] 
  0.34%    0.10%         C2, level 4  com.google.re2j.Machine::init, version 547 
  0.08%    0.05%         C2, level 4  com.google.re2j.Matcher::find, version 567 
  0.04%    0.02%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 597 
  0.04%    0.04%      hsdis-amd64.so  decode_instructions 
  0.04%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.00%  libpthread-2.26.so  __libc_write 
  0.04%    0.11%        libc-2.26.so  vfprintf 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.02%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.02%                  interpreter  invoke return entry points  
  0.02%    0.01%              [vdso]  [unknown] 
  0.01%    0.00%           libjvm.so  _ZN13defaultStream4holdEl 
  0.56%    0.34%  <...other 90 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 94.66%   96.07%         C2, level 4
  2.79%    1.49%        runtime stub
  1.71%    1.45%   [kernel.kallsyms]
  0.39%    0.52%           libjvm.so
  0.21%    0.31%        libc-2.26.so
  0.09%    0.05%         interpreter
  0.07%    0.04%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.02%    0.01%              [vdso]
  0.00%             Unknown, level 0
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine       thrpt   20  1520.234 ± 7.357  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN            ---
