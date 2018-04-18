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
# Warmup Iteration   1: 837.687 ops/s
# Warmup Iteration   2: 1689.657 ops/s
# Warmup Iteration   3: 1690.604 ops/s
# Warmup Iteration   4: 1689.457 ops/s
# Warmup Iteration   5: 1690.569 ops/s
# Warmup Iteration   6: 1696.392 ops/s
# Warmup Iteration   7: 1692.655 ops/s
# Warmup Iteration   8: 1695.718 ops/s
# Warmup Iteration   9: 1698.533 ops/s
# Warmup Iteration  10: 1698.089 ops/s
# Warmup Iteration  11: 1698.553 ops/s
# Warmup Iteration  12: 1698.494 ops/s
# Warmup Iteration  13: 1698.564 ops/s
# Warmup Iteration  14: 1674.385 ops/s
# Warmup Iteration  15: 1648.433 ops/s
# Warmup Iteration  16: 1649.337 ops/s
# Warmup Iteration  17: 1696.843 ops/s
# Warmup Iteration  18: 1697.045 ops/s
# Warmup Iteration  19: 1696.650 ops/s
# Warmup Iteration  20: 1696.532 ops/s
Iteration   1: 1692.180 ops/s
Iteration   2: 1679.254 ops/s
Iteration   3: 1679.209 ops/s
Iteration   4: 1679.638 ops/s
Iteration   5: 1680.532 ops/s
Iteration   6: 1680.664 ops/s
Iteration   7: 1680.891 ops/s
Iteration   8: 1680.178 ops/s
Iteration   9: 1690.097 ops/s
Iteration  10: 1696.704 ops/s
Iteration  11: 1696.773 ops/s
Iteration  12: 1696.737 ops/s
Iteration  13: 1697.012 ops/s
Iteration  14: 1696.800 ops/s
Iteration  15: 1696.963 ops/s
Iteration  16: 1691.009 ops/s
Iteration  17: 1690.151 ops/s
Iteration  18: 1688.695 ops/s
Iteration  19: 1693.134 ops/s
Iteration  20: 1691.513 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  1688.907 ±(99.9%) 6.209 ops/s [Average]
  (min, avg, max) = (1679.209, 1688.907, 1697.012), stdev = 7.150
  CI (99.9%): [1682.698, 1695.116] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 195194 total address lines.
Perf output processed (skipped 23.321 seconds):
 Column 1: cycles (20602 events)
 Column 2: instructions (20585 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (377 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007f4bcd210b20: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007f4bcd210b24: shl    $0x3,%r10
                       0x00007f4bcd210b28: cmp    %r10,%rax
                       0x00007f4bcd210b2b: jne    0x00007f4bcd045e20  ;   {runtime_call}
                       0x00007f4bcd210b31: data16 xchg %ax,%ax
                       0x00007f4bcd210b34: nopl   0x0(%rax,%rax,1)
                       0x00007f4bcd210b3c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.50%    0.42%       0x00007f4bcd210b40: mov    %eax,-0x14000(%rsp)
  0.47%    0.41%       0x00007f4bcd210b47: push   %rbp
  0.17%    0.20%       0x00007f4bcd210b48: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 341)
  0.36%    0.43%       0x00007f4bcd210b4c: mov    %edi,0x28(%rsp)
  0.46%    0.38%       0x00007f4bcd210b50: mov    %r9,0x20(%rsp)
  0.17%    0.18%       0x00007f4bcd210b55: mov    %r8d,0x1c(%rsp)
  0.30%    0.38%       0x00007f4bcd210b5a: mov    %rsi,0x8(%rsp)
  0.13%    0.10%       0x00007f4bcd210b5f: mov    %ecx,0x40(%rsp)
  0.35%    0.33%       0x00007f4bcd210b63: test   %ecx,%ecx
                       0x00007f4bcd210b65: je     0x00007f4bcd2110b1  ;*ifne
                                                                     ; - com.google.re2j.Machine::add@1 (line 341)
  0.23%    0.21%       0x00007f4bcd210b6b: mov    %rdx,0x48(%rsp)
  0.33%    0.34%       0x00007f4bcd210b70: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
                                                                     ; implicit exception: dispatches to 0x00007f4bcd2112b1
  0.12%    0.08%       0x00007f4bcd210b73: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd2112c5
  0.41%    0.34%       0x00007f4bcd210b78: cmp    %r10d,%ecx
                       0x00007f4bcd210b7b: jae    0x00007f4bcd210f82  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.17%    0.20%       0x00007f4bcd210b81: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.31%    0.18%       0x00007f4bcd210b85: mov    0xc(%rdx),%r8d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 49)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.10%    0.11%       0x00007f4bcd210b89: lea    (%r12,%rbx,8),%rcx
  0.33%    0.22%       0x00007f4bcd210b8d: mov    0x40(%rsp),%edi
  0.47%    0.26%       0x00007f4bcd210b91: mov    0x10(%rcx,%rdi,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 48)
                                                                     ; - com.google.re2j.Machine::add@9 (line 344)
  0.59%    0.41%       0x00007f4bcd210b95: cmp    %r8d,%ebp
                  ╭    0x00007f4bcd210b98: jl     0x00007f4bcd210c99  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │                                                  ; - com.google.re2j.Machine::add@20 (line 347)
  0.84%    0.69%  │ ↗  0x00007f4bcd210b9e: mov    %r8d,%r11d
  0.03%    0.02%  │ │  0x00007f4bcd210ba1: inc    %r11d
  0.18%    0.09%  │ │  0x00007f4bcd210ba4: mov    0x48(%rsp),%rdi
  0.32%    0.24%  │ │  0x00007f4bcd210ba9: mov    %r11d,0xc(%rdi)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.65%    0.51%  │ │  0x00007f4bcd210bad: mov    0x40(%rsp),%r11d
  0.14%    0.09%  │ │  0x00007f4bcd210bb2: cmp    %r10d,%r11d
                  │ │  0x00007f4bcd210bb5: jae    0x00007f4bcd210fb5
  0.25%    0.19%  │ │  0x00007f4bcd210bbb: mov    %r8d,0x10(%rcx,%r11,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 60)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.74%    0.79%  │ │  0x00007f4bcd210bc0: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f4bcd2112d9
  0.35%    0.39%  │ │  0x00007f4bcd210bc5: cmp    %r11d,%r8d
                  │ │  0x00007f4bcd210bc8: jae    0x00007f4bcd210ffd  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.01%    0.03%  │ │  0x00007f4bcd210bce: lea    (%r12,%r9,8),%r10  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 52)
                  │ │                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.12%    0.17%  │ │  0x00007f4bcd210bd2: mov    %r10,0x38(%rsp)
  0.33%    0.39%  │ │  0x00007f4bcd210bd7: lea    0x10(%r10,%r8,4),%rbp
  0.49%    0.31%  │ │  0x00007f4bcd210bdc: mov    0x0(%rbp),%r11d    ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 61)
                  │ │                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.11%    0.02%  │ │  0x00007f4bcd210be0: test   %r11d,%r11d
                  │╭│  0x00007f4bcd210be3: je     0x00007f4bcd210ccc  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 62)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.13%    0.18%  │││  0x00007f4bcd210be9: lea    (%r12,%r11,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.33%    0.28%  │││  0x00007f4bcd210bed: mov    0x40(%rsp),%r10d
  0.36%    0.46%  │││  0x00007f4bcd210bf2: mov    %r10d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 66)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.52%    0.47%  │││  0x00007f4bcd210bf6: mov    0x8(%rsp),%r10
  0.10%    0.09%  │││  0x00007f4bcd210bfb: mov    0x14(%r10),%r11d   ;*getfield prog
                  │││                                                ; - com.google.re2j.Machine::add@26 (line 348)
  0.23%    0.27%  │││  0x00007f4bcd210bff: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 65)
                  │││                                                ; - com.google.re2j.Machine::add@20 (line 347)
  0.54%    0.29%  │││  0x00007f4bcd210c03: mov    0x14(%r12,%r11,8),%ebp  ;*getfield inst
                  │││                                                ; - com.google.re2j.Prog::getInst@1 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
                  │││                                                ; implicit exception: dispatches to 0x00007f4bcd2112ed
  0.25%    0.31%  │││  0x00007f4bcd210c08: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd211301
  0.47%    0.45%  │││  0x00007f4bcd210c0d: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││  0x00007f4bcd210c14: jne    0x00007f4bcd211089
  0.35%    0.42%  │││  0x00007f4bcd210c1a: lea    (%r12,%rbp,8),%r10  ;*invokeinterface get
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.48%    0.38%  │││  0x00007f4bcd210c1e: mov    0x10(%r10),%ebp    ;*getfield size
                  │││                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.20%    0.19%  │││  0x00007f4bcd210c22: mov    0x40(%rsp),%r8d
  0.02%    0.05%  │││  0x00007f4bcd210c27: cmp    %ebp,%r8d
                  │││  0x00007f4bcd210c2a: jge    0x00007f4bcd2110d9  ;*if_icmplt
                  │││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││                                                ; - java.util.ArrayList::get@2 (line 429)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.50%    0.39%  │││  0x00007f4bcd210c30: mov    0x14(%r10),%ebp    ;*getfield elementData
                  │││                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.35%    0.18%  │││  0x00007f4bcd210c34: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd211315
  1.31%    1.20%  │││  0x00007f4bcd210c39: cmp    %r10d,%r8d
                  │││  0x00007f4bcd210c3c: jae    0x00007f4bcd211051
  0.97%    0.78%  │││  0x00007f4bcd210c42: lea    (%r12,%rbp,8),%r10
  0.08%    0.06%  │││  0x00007f4bcd210c46: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │││                                                ; - java.util.ArrayList::get@7 (line 431)
                  │││                                                ; - com.google.re2j.Prog::getInst@5 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.47%    0.33%  │││  0x00007f4bcd210c4b: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4bcd211329
  2.64%    2.49%  │││  0x00007f4bcd210c50: cmp    $0xf80197c3,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;)}
                  │││  0x00007f4bcd210c57: jne    0x00007f4bcd211275
  0.68%    0.85%  │││  0x00007f4bcd210c5d: lea    (%r12,%rbp,8),%r10  ;*checkcast
                  │││                                                ; - com.google.re2j.Prog::getInst@10 (line 29)
                  │││                                                ; - com.google.re2j.Machine::add@30 (line 348)
  0.02%    0.02%  │││  0x00007f4bcd210c61: mov    %r10,0x38(%rsp)
  0.15%    0.09%  │││  0x00007f4bcd210c66: mov    0xc(%r10),%r11d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@37 (line 349)
  0.73%    0.60%  │││  0x00007f4bcd210c6a: mov    %r11d,%r8d
  0.16%    0.15%  │││  0x00007f4bcd210c6d: dec    %r8d
  0.75%    0.55%  │││  0x00007f4bcd210c70: cmp    $0xb,%r8d
                  │││  0x00007f4bcd210c74: jae    0x00007f4bcd211079  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.76%    0.68%  │││  0x00007f4bcd210c7a: mov    0x14(%r10),%r10d   ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@156 (line 363)
  0.01%    0.00%  │││  0x00007f4bcd210c7e: mov    0x38(%rsp),%r8
  0.14%    0.12%  │││  0x00007f4bcd210c83: mov    0x10(%r8),%ecx     ;*getfield out
                  │││                                                ; - com.google.re2j.Machine::add@193 (line 369)
  1.69%    1.48%  │││  0x00007f4bcd210c87: movslq %r11d,%r11
  0.05%    0.02%  │││  0x00007f4bcd210c8a: movabs $0x7f4bcd210ac0,%r8  ;   {section_word}
  0.02%           │││  0x00007f4bcd210c94: jmpq   *-0x8(%r8,%r11,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@40 (line 349)
  0.07%    0.06%  ↘││  0x00007f4bcd210c99: mov    0xc(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007f4bcd2113d1
  0.02%            ││  0x00007f4bcd210c9e: cmp    %edi,%ebp
                   ││  0x00007f4bcd210ca0: jae    0x00007f4bcd21124c
  0.06%    0.04%   ││  0x00007f4bcd210ca6: lea    (%r12,%r9,8),%r11
  0.01%    0.04%   ││  0x00007f4bcd210caa: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 52)
                   ││                                                ; - com.google.re2j.Machine::add@9 (line 344)
  0.11%    0.11%   ││  0x00007f4bcd210caf: mov    0xc(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007f4bcd2113e1
  0.27%    0.26%   ││  0x00007f4bcd210cb4: mov    0x40(%rsp),%r11d
  0.02%    0.00%   ││  0x00007f4bcd210cb9: cmp    %r11d,%edx
                   │╰  0x00007f4bcd210cbc: jne    0x00007f4bcd210b9e
                   │   0x00007f4bcd210cc2: mov    0x70(%rsp),%rax
                   │   0x00007f4bcd210cc7: jmpq   0x00007f4bcd210f4c
                   ↘   0x00007f4bcd210ccc: mov    0x60(%r15),%rbx
                       0x00007f4bcd210cd0: mov    %rbx,%r10
                       0x00007f4bcd210cd3: add    $0x18,%r10
                       0x00007f4bcd210cd7: cmp    0x70(%r15),%r10
                       0x00007f4bcd210cdb: jae    0x00007f4bcd211219
                       0x00007f4bcd210ce1: mov    %r10,0x60(%r15)
                       0x00007f4bcd210ce5: prefetchnta 0xc0(%r10)
....................................................................................................
 26.55%   23.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (359 bytes) 

                                                                         ; - com.google.re2j.Machine::step@250 (line 293)
                           0x00007f4bcd21fc41: mov    0x8(%rsp),%r10
                           0x00007f4bcd21fc46: mov    %r12d,0xc(%r10)    ;*putfield size
                                                                         ; - com.google.re2j.Machine::step@293 (line 300)
                           0x00007f4bcd21fc4a: mov    0x28(%rsp),%r10
                           0x00007f4bcd21fc4f: movb   $0x1,0xc(%r10)     ;*putfield matched
                                                                         ; - com.google.re2j.Machine::step@298 (line 302)
                           0x00007f4bcd21fc54: mov    0x20(%rsp),%ecx
                           0x00007f4bcd21fc58: jmpq   0x00007f4bcd21f4ee
                           0x00007f4bcd21fc5d: data16 xchg %ax,%ax
  0.46%    0.69%   ↗       0x00007f4bcd21fc60: mov    %r8d,%r11d
  0.49%    0.66%   │       0x00007f4bcd21fc63: sub    0x20(%rsp),%r11d   ;*isub
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.21%    0.32%   │       0x00007f4bcd21fc68: mov    %r11d,%esi
  0.60%    0.71%   │       0x00007f4bcd21fc6b: sar    $0x1f,%esi
  0.45%    0.74%   │       0x00007f4bcd21fc6e: shr    $0x1f,%esi
  0.50%    0.79%   │       0x00007f4bcd21fc71: add    %r11d,%esi
  0.20%    0.38%   │       0x00007f4bcd21fc74: sar    %esi               ;*idiv
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.55%    0.75%   │       0x00007f4bcd21fc76: add    %esi,%r10d         ;*iadd
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@18 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.50%    0.63%   │       0x00007f4bcd21fc79: vmovd  %r8d,%xmm1
  0.48%    0.60%   │       0x00007f4bcd21fc7e: mov    %r10d,%r8d         ;*idiv
                   │                                                     ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                   │                                                     ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │                                                     ; - com.google.re2j.Machine::step@308 (line 306)
  0.30%    0.43%   │   ↗   0x00007f4bcd21fc81: cmp    $0x3f,%r8d
                   │   │   0x00007f4bcd21fc85: jae    0x00007f4bcd2201d1
  0.71%    0.96%   │   │   0x00007f4bcd21fc8b: movslq %esi,%r10
  0.56%    0.70%   │   │   0x00007f4bcd21fc8e: movslq 0x20(%rsp),%r11
  0.48%    0.53%   │   │   0x00007f4bcd21fc93: add    %r10,%r11
  0.32%    0.38%   │   │   0x00007f4bcd21fc96: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  1.05%    1.27%   │   │   0x00007f4bcd21fc9b: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220cc5
  2.38%    3.04%   │   │   0x00007f4bcd21fca0: test   %r10d,%r10d
                   │   │   0x00007f4bcd21fca3: jbe    0x00007f4bcd220229  ;*iaload
                   │   │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                   │   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                   │   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  1.12%    1.44%   │   │   0x00007f4bcd21fca9: mov    0x10(%r12,%rbp,8),%r11d
  0.26%    0.42%   │   │   0x00007f4bcd21fcae: cmp    %r14d,%r11d
                  ╭│   │   0x00007f4bcd21fcb1: jl     0x00007f4bcd21fd85  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2135}
                  ││   │                                                 ;*goto
                  ││   │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   │                                                 ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.86%    1.40%  ││   │↗  0x00007f4bcd21fcb7: test   %eax,0x185b6343(%rip)        # 0x00007f4be57d6000
                  ││   ││                                                ;*goto
                  ││   ││                                                ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  ││   ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  ││   ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  ││   ││                                                ;   {poll}
  0.29%    0.33%  ││   ││  0x00007f4bcd21fcbd: mov    0x20(%rsp),%r10d
  0.71%    0.88%  ││   ││  0x00007f4bcd21fcc2: cmp    %r8d,%r10d
                  │╰   ││  0x00007f4bcd21fcc5: jl     0x00007f4bcd21fc60  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │    ││  0x00007f4bcd21fcc7: mov    0x20(%rsp),%r8d
  0.21%    0.16%  │    ││  0x00007f4bcd21fccc: cmp    $0x3f,%r10d
                  │    ││  0x00007f4bcd21fcd0: jge    0x00007f4bcd220775  ;*if_icmpge
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.02%    0.05%  │    ││  0x00007f4bcd21fcd6: cmp    $0x3f,%r10d
                  │    ││  0x00007f4bcd21fcda: jae    0x00007f4bcd2205bd
  0.16%    0.12%  │    ││  0x00007f4bcd21fce0: mov    0x10(%r9,%r10,4),%ebp  ;*aaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │    ││  0x00007f4bcd21fce5: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220de9
  0.20%    0.25%  │    ││  0x00007f4bcd21fcea: test   %r10d,%r10d
                  │    ││  0x00007f4bcd21fced: jbe    0x00007f4bcd22060d
  0.10%    0.07%  │    ││  0x00007f4bcd21fcf3: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.13%    0.12%  │    ││  0x00007f4bcd21fcf8: cmp    %r14d,%ebp
                  │    ││  0x00007f4bcd21fcfb: je     0x00007f4bcd2207c5  ;*if_icmpne
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.08%  │    ││  0x00007f4bcd21fd01: mov    %r14d,%r8d
  0.11%    0.12%  │    ││  0x00007f4bcd21fd04: cmp    $0x7f,%r8d
                  │    ││  0x00007f4bcd21fd08: jg     0x00007f4bcd220815  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@3 (line 177)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.04%  │    ││  0x00007f4bcd21fd0e: cmp    $0x41,%r8d
                  │    ││  0x00007f4bcd21fd12: jl     0x00007f4bcd220725  ;*if_icmpgt
                  │    ││                                                ; - com.google.re2j.Unicode::toLower@9 (line 178)
                  │    ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.10%  │    ││  0x00007f4bcd21fd18: cmp    $0x5a,%r8d
                  │ ╭  ││  0x00007f4bcd21fd1c: jg     0x00007f4bcd21fd2a  ;*if_icmpgt
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │  ││  0x00007f4bcd21fd1e: mov    %r8d,%r10d
                  │ │  ││  0x00007f4bcd21fd21: add    $0x20,%r10d        ;*iinc
                  │ │  ││                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                  │ │  ││                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                  │ │  ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ │  ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │ │  ││  0x00007f4bcd21fd25: cmp    %r8d,%r10d
                  │ │╭ ││  0x00007f4bcd21fd28: jne    0x00007f4bcd21fd45  ;*if_icmpeq
                  │ ││ ││                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                  │ ││ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │ ││ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.07%  │ ↘│ ││  0x00007f4bcd21fd2a: cmp    $0x61,%r8d
                  │  │ ││  0x00007f4bcd21fd2e: jl     0x00007f4bcd220a6d  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@9 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.11%    0.10%  │  │ ││  0x00007f4bcd21fd34: cmp    $0x7a,%r8d
                  │  │ ││  0x00007f4bcd21fd38: jg     0x00007f4bcd220ab9  ;*if_icmpgt
                  │  │ ││                                                ; - com.google.re2j.Unicode::toUpper@15 (line 167)
                  │  │ ││                                                ; - com.google.re2j.Unicode::simpleFold@83 (line 227)
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.04%    0.04%  │  │ ││  0x00007f4bcd21fd3e: mov    %r8d,%r10d
  0.12%    0.11%  │  │ ││  0x00007f4bcd21fd41: add    $0xffffffe0,%r10d  ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=2277}
                  │  │ ││                                                ;*goto
                  │  │ ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │  │ ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.12%  │  ↘ ││  0x00007f4bcd21fd45: test   %eax,0x185b62b5(%rip)        # 0x00007f4be57d6000
                  │    ││                                                ;*goto
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@54 (line 57)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │    ││                                                ;   {poll}
  0.13%    0.12%  │    ││  0x00007f4bcd21fd4b: cmp    %ebx,%r10d
                  │    ││  0x00007f4bcd21fd4e: je     0x00007f4bcd21f940  ;*if_icmpeq
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@39 (line 56)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
                  │    ││  0x00007f4bcd21fd54: mov    %ebx,%r11d         ;*iload_1
                  │    ││                                                ; - com.google.re2j.Inst::matchRune@42 (line 58)
                  │    ││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.17%  │    ││  0x00007f4bcd21fd57: cmp    %r10d,%ecx
                  │   ╭││  0x00007f4bcd21fd5a: je     0x00007f4bcd21fdc3  ;*if_icmpne
                  │   │││                                                ; - com.google.re2j.Inst::matchRune@44 (line 58)
                  │   │││                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.01%  │   │││  0x00007f4bcd21fd5c: mov    %r10d,%r14d
  0.07%    0.09%  │   │││  0x00007f4bcd21fd5f: mov    %r11d,%ebx
  0.16%    0.33%  │   │││  0x00007f4bcd21fd62: mov    $0x1f,%esi
  0.11%    0.12%  │   │││  0x00007f4bcd21fd67: mov    $0x1f,%r8d
  0.00%           │   │││  0x00007f4bcd21fd6d: xor    %r10d,%r10d
  0.04%    0.09%  │   │││  0x00007f4bcd21fd70: mov    $0x3f,%r11d
  0.21%    0.31%  │   │││  0x00007f4bcd21fd76: mov    %r10d,0x20(%rsp)
  0.08%    0.08%  │   │││  0x00007f4bcd21fd7b: vmovd  %r11d,%xmm1
  0.00%    0.01%  │   │╰│  0x00007f4bcd21fd80: jmpq   0x00007f4bcd21fc81
  0.33%    0.31%  ↘   │ │  0x00007f4bcd21fd85: inc    %r8d               ;*iadd
                      │ │                                                ; - com.google.re2j.Unicode::simpleFold@33 (line 210)
                      │ │                                                ; - com.google.re2j.Inst::matchRune@50 (line 57)
                      │ │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.01%    0.02%      │ │  0x00007f4bcd21fd88: mov    %r8d,0x20(%rsp)
  0.11%    0.15%      │ │  0x00007f4bcd21fd8d: vmovd  %xmm1,%r8d
  0.01%    0.01%      │ ╰  0x00007f4bcd21fd92: jmpq   0x00007f4bcd21fcb7
  0.04%    0.11%      │    0x00007f4bcd21fd97: xor    %r10d,%r10d
                      │    0x00007f4bcd21fd9a: mov    0x20(%rsp),%ecx
                      │    0x00007f4bcd21fd9e: mov    0xac(%rsp),%r14d
  0.07%    0.08%      │    0x00007f4bcd21fda6: jmpq   0x00007f4bcd21f60b
                      │    0x00007f4bcd21fdab: mov    0xb0(%rsp),%ecx
                      │    0x00007f4bcd21fdb2: test   %ecx,%ecx
                      │    0x00007f4bcd21fdb4: jne    0x00007f4bcd21f780  ;*ifne
                      │                                                  ; - com.google.re2j.Machine::step@168 (line 282)
                      │    0x00007f4bcd21fdba: mov    0x20(%rsp),%ecx
                      │    0x00007f4bcd21fdbe: jmpq   0x00007f4bcd21f4ee
  0.01%    0.02%      ↘    0x00007f4bcd21fdc3: mov    %ecx,0x20(%rsp)
  0.04%    0.05%           0x00007f4bcd21fdc7: mov    %edx,%r10d
                           0x00007f4bcd21fdca: jmpq   0x00007f4bcd21f513
                           0x00007f4bcd21fdcf: mov    %r10d,%r9d
                           0x00007f4bcd21fdd2: sar    %r9d
                           0x00007f4bcd21fdd5: add    %r10d,%r9d         ;*iadd
                                                                         ; - java.util.ArrayList::grow@10 (line 255)
                                                                         ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                                         ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                         ; - java.util.ArrayList::add@7 (line 458)
                                                                         ; - com.google.re2j.Machine::step@410 (line 329)
                           0x00007f4bcd21fdd8: mov    %r9d,%r11d
....................................................................................................
 16.57%   21.71%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (224 bytes) 

                      0x00007f4bcd21f815: mov    0x40(%rsp),%rbx    ;*iload
                                                                    ; - com.google.re2j.Machine::step@233 (line 291)
                      0x00007f4bcd21f81a: mov    0x8(%rsp),%rcx
                      0x00007f4bcd21f81f: mov    0xc(%rcx),%edi
                      0x00007f4bcd21f822: cmp    %edi,%r14d
                      0x00007f4bcd21f825: jge    0x00007f4bcd21fc41  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@250 (line 293)
                      0x00007f4bcd21f82b: mov    %r14d,%ecx
                      0x00007f4bcd21f82e: jmpq   0x00007f4bcd21f9fd  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine::step@18 (line 264)
  0.05%    0.04%      0x00007f4bcd21f833: mov    0x8(%rsp),%r10
  0.01%               0x00007f4bcd21f838: mov    %r12d,0xc(%r10)    ;*getfield size
                                                                    ; - com.google.re2j.Machine::step@15 (line 264)
  0.07%    0.10%      0x00007f4bcd21f83c: add    $0x90,%rsp
  0.01%               0x00007f4bcd21f843: pop    %rbp
  0.05%    0.10%      0x00007f4bcd21f844: test   %eax,0x185b67b6(%rip)        # 0x00007f4be57d6000
                                                                    ;   {poll_return}
           0.00%      0x00007f4bcd21f84a: retq   
                      0x00007f4bcd21f84b: nopl   0x0(%rax,%rax,1)
  0.38%    0.56%  ↗   0x00007f4bcd21f850: mov    %r8d,%r14d
  0.75%    0.57%  │   0x00007f4bcd21f853: vmovd  %ebx,%xmm1
  0.37%    0.06%  │   0x00007f4bcd21f857: mov    %ebx,%r8d
  0.42%    0.48%  │   0x00007f4bcd21f85a: sub    %r14d,%r8d         ;*isub
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@15 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.33%    0.34%  │   0x00007f4bcd21f85d: mov    %r8d,%r10d
  0.76%    0.44%  │   0x00007f4bcd21f860: sar    $0x1f,%r10d
  0.38%    0.16%  │   0x00007f4bcd21f864: shr    $0x1f,%r10d
  0.39%    0.50%  │   0x00007f4bcd21f868: add    %r8d,%r10d
  0.41%    0.41%  │   0x00007f4bcd21f86b: sar    %r10d
  0.85%    0.71%  │   0x00007f4bcd21f86e: mov    %r14d,%ebx
  0.35%    0.53%  │   0x00007f4bcd21f871: add    %r10d,%ebx         ;*idiv
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@17 (line 208)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.43%    0.39%  │   0x00007f4bcd21f874: cmp    $0x3f,%ebx
                  │   0x00007f4bcd21f877: jae    0x00007f4bcd220335
  0.74%    0.82%  │   0x00007f4bcd21f87d: movslq %r10d,%r10
  0.70%    0.79%  │   0x00007f4bcd21f880: movslq %r14d,%r11
  0.35%    0.21%  │   0x00007f4bcd21f883: add    %r10,%r11
  0.41%    0.51%  │   0x00007f4bcd21f886: mov    0x10(%r9,%r11,4),%ebp  ;*aaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@24 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.83%    0.65%  │   0x00007f4bcd21f88b: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220d15
  0.83%    0.91%  │   0x00007f4bcd21f890: test   %r10d,%r10d
                  │   0x00007f4bcd21f893: jbe    0x00007f4bcd220385  ;*iaload
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@26 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.37%    0.68%  │   0x00007f4bcd21f899: mov    0x10(%r12,%rbp,8),%r10d
  0.43%    0.54%  │   0x00007f4bcd21f89e: cmp    0x20(%rsp),%r10d
                  │   0x00007f4bcd21f8a3: jl     0x00007f4bcd21f958  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@28 (line 209)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.69%    0.76%  │   0x00007f4bcd21f8a9: mov    %r14d,%r8d         ; OopMap{r9=Oop rdi=NarrowOop rdx=NarrowOop rax=NarrowOop r13=Oop xmm0=Oop [8]=Oop [24]=Oop [40]=Oop off=1100}
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
  0.53%    0.64%  │   0x00007f4bcd21f8ac: test   %eax,0x185b674e(%rip)        # 0x00007f4be57d6000
                  │                                                 ;*goto
                  │                                                 ; - com.google.re2j.Unicode::simpleFold@40 (line 214)
                  │                                                 ; - com.google.re2j.Inst::matchRune@33 (line 55)
                  │                                                 ; - com.google.re2j.Machine::step@308 (line 306)
                  │                                                 ;   {poll}
  0.48%    0.59%  │   0x00007f4bcd21f8b2: cmp    %ebx,%r8d
                  ╰   0x00007f4bcd21f8b5: jl     0x00007f4bcd21f850  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@9 (line 207)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
           0.01%      0x00007f4bcd21f8b7: cmp    $0x3f,%r8d
                      0x00007f4bcd21f8bb: jge    0x00007f4bcd2209a1  ;*if_icmpge
                                                                    ; - com.google.re2j.Unicode::simpleFold@48 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.07%    0.07%      0x00007f4bcd21f8c1: cmp    $0x3f,%r8d
                      0x00007f4bcd21f8c5: jae    0x00007f4bcd220659
  0.27%    0.30%      0x00007f4bcd21f8cb: mov    0x10(%r9,%r8,4),%ebp  ;*aaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@55 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.08%    0.11%      0x00007f4bcd21f8d0: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220e09
  0.01%    0.02%      0x00007f4bcd21f8d5: test   %r10d,%r10d
                      0x00007f4bcd21f8d8: jbe    0x00007f4bcd2206ed
  0.09%    0.08%      0x00007f4bcd21f8de: mov    0x10(%r12,%rbp,8),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Unicode::simpleFold@57 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.25%    0.18%      0x00007f4bcd21f8e3: cmp    0x20(%rsp),%ebp
                      0x00007f4bcd21f8e7: je     0x00007f4bcd2209e9  ;*if_icmpne
                                                                    ; - com.google.re2j.Unicode::simpleFold@59 (line 215)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.09%      0x00007f4bcd21f8ed: mov    0x20(%rsp),%r11d
  0.00%               0x00007f4bcd21f8f2: cmp    $0x7f,%r11d
                      0x00007f4bcd21f8f6: jg     0x00007f4bcd220a21  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@3 (line 177)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.09%    0.09%      0x00007f4bcd21f8fc: cmp    $0x41,%r11d
  0.16%    0.24%      0x00007f4bcd21f900: jl     0x00007f4bcd22089d  ;*if_icmpgt
                                                                    ; - com.google.re2j.Unicode::toLower@9 (line 178)
                                                                    ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                                                                    ; - com.google.re2j.Inst::matchRune@33 (line 55)
                                                                    ; - com.google.re2j.Machine::step@308 (line 306)
  0.10%    0.13%      0x00007f4bcd21f906: cmp    $0x5a,%r11d
                   ╭  0x00007f4bcd21f90a: jg     0x00007f4bcd21f91c  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Unicode::toLower@15 (line 178)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.00%    0.01%   │  0x00007f4bcd21f90c: mov    %r11d,%r10d
  0.04%    0.12%   │  0x00007f4bcd21f90f: add    $0x20,%r10d        ;*iinc
                   │                                                ; - com.google.re2j.Unicode::toLower@18 (line 179)
                   │                                                ; - com.google.re2j.Unicode::simpleFold@71 (line 223)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
  0.23%    0.28%   │  0x00007f4bcd21f913: cmp    %r11d,%r10d
                   │  0x00007f4bcd21f916: jne    0x00007f4bcd21fd57  ;*if_icmpeq
                   │                                                ; - com.google.re2j.Unicode::simpleFold@77 (line 224)
                   │                                                ; - com.google.re2j.Inst::matchRune@33 (line 55)
                   │                                                ; - com.google.re2j.Machine::step@308 (line 306)
                   ↘  0x00007f4bcd21f91c: cmp    $0x61,%r11d
                      0x00007f4bcd21f920: jl     0x00007f4bcd220b05  ;*if_icmpgt
....................................................................................................
 13.90%   14.24%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (311 bytes) 

                                                                    ;*invokespecial add
                                                                    ; - com.google.re2j.Machine::step@394 (line 325)
                                                                    ;   {optimized virtual_call}
                      0x00007f4bcd21f540: test   %rax,%rax
                      0x00007f4bcd21f543: je     0x00007f4bcd21fd97
                      0x00007f4bcd21f549: mov    %rax,0x50(%rsp)
                      0x00007f4bcd21f54e: mov    0x20(%rsp),%ecx
                      0x00007f4bcd21f552: mov    0xa4(%rsp),%r8d
                      0x00007f4bcd21f55a: mov    0xac(%rsp),%r14d   ;*aload
                                                                    ; - com.google.re2j.Machine::step@399 (line 327)
  0.22%    0.18%      0x00007f4bcd21f562: mov    0x28(%rsp),%r10
  0.00%               0x00007f4bcd21f567: mov    0x20(%r10),%ebp    ;*getfield pool
                                                                    ; - com.google.re2j.Machine::step@405 (line 329)
  0.10%    0.17%      0x00007f4bcd21f56b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220ce5
  0.10%    0.12%      0x00007f4bcd21f570: cmp    $0xf8002f22,%r10d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                      0x00007f4bcd21f577: jne    0x00007f4bcd2202b5
  0.22%    0.21%      0x00007f4bcd21f57d: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface add
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                      0x00007f4bcd21f581: mov    0x14(%rbx),%edi    ;*getfield elementData
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.13%    0.11%      0x00007f4bcd21f584: mov    0x10(%rbx),%ebp    ;*getfield size
                                                                    ; - java.util.ArrayList::add@2 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.11%    0.09%      0x00007f4bcd21f587: mov    %ebp,%r11d
  0.22%    0.22%      0x00007f4bcd21f58a: inc    %r11d              ;*iadd
                                                                    ; - java.util.ArrayList::add@6 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
           0.00%      0x00007f4bcd21f58d: cmp    $0xed9f0db7,%edi   ;   {oop(a &apos;java/lang/Object&apos;[0] )}
                      0x00007f4bcd21f593: je     0x00007f4bcd22007d  ;*if_acmpne
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.13%    0.14%      0x00007f4bcd21f599: mov    %r11d,%esi         ;*aload_0
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.12%    0.15%      0x00007f4bcd21f59c: mov    0xc(%rbx),%r10d    ;*getfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.24%    0.21%      0x00007f4bcd21f5a0: inc    %r10d
           0.00%      0x00007f4bcd21f5a3: mov    %r10d,0xc(%rbx)    ;*putfield modCount
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.09%    0.09%      0x00007f4bcd21f5a7: mov    0xc(%r12,%rdi,8),%r10d  ;*arraylength
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
                                                                    ; implicit exception: dispatches to 0x00007f4bcd220cf5
  0.10%    0.14%      0x00007f4bcd21f5ac: mov    %esi,%edx
  0.18%    0.17%      0x00007f4bcd21f5ae: sub    %r10d,%edx
  0.00%               0x00007f4bcd21f5b1: test   %edx,%edx
                      0x00007f4bcd21f5b3: jg     0x00007f4bcd21fdcf  ;*ifle
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.08%    0.11%      0x00007f4bcd21f5b9: mov    %rdi,%r10
  0.12%    0.06%      0x00007f4bcd21f5bc: shl    $0x3,%r10          ;*return
                                                                    ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                                    ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                                    ; - java.util.ArrayList::add@7 (line 458)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.23%    0.13%      0x00007f4bcd21f5c0: mov    %r11d,0x10(%rbx)   ;*putfield size
                                                                    ; - java.util.ArrayList::add@22 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.00%               0x00007f4bcd21f5c4: mov    0xc(%r10),%r9d     ; implicit exception: dispatches to 0x00007f4bcd220d05
  0.14%    0.07%      0x00007f4bcd21f5c8: cmp    %r9d,%ebp
                      0x00007f4bcd21f5cb: jae    0x00007f4bcd220271
  0.11%    0.10%      0x00007f4bcd21f5d1: mov    0x8(%r10),%r9d
  0.23%    0.07%      0x00007f4bcd21f5d5: cmp    $0xf80022f5,%r9d   ;   {metadata(&apos;java/lang/Object&apos;[])}
                      0x00007f4bcd21f5dc: jne    0x00007f4bcd2202f1
  0.01%    0.01%      0x00007f4bcd21f5e2: lea    0x10(%r10,%rbp,4),%r10
  0.10%    0.14%      0x00007f4bcd21f5e7: mov    0x50(%rsp),%r11
  0.15%    0.04%      0x00007f4bcd21f5ec: mov    %r11,%r8
  0.21%    0.11%      0x00007f4bcd21f5ef: shr    $0x3,%r8
  0.00%               0x00007f4bcd21f5f3: mov    %r8d,(%r10)
  0.08%    0.06%      0x00007f4bcd21f5f6: shr    $0x9,%r10
  0.15%    0.04%      0x00007f4bcd21f5fa: movabs $0x7f4bde1de000,%r11
  0.21%    0.11%      0x00007f4bcd21f604: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - java.util.ArrayList::add@26 (line 459)
                                                                    ; - com.google.re2j.Machine::step@410 (line 329)
  0.01%               0x00007f4bcd21f608: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=427}
                                                                    ;*goto
                                                                    ; - com.google.re2j.Machine::step@419 (line 264)
  0.18%    0.08%   ↗  0x00007f4bcd21f60b: test   %eax,0x185b69ef(%rip)        # 0x00007f4be57d6000
                   │                                                ;*goto
                   │                                                ; - com.google.re2j.Machine::step@419 (line 264)
                   │                                                ;   {poll}
  0.30%    0.16%   │  0x00007f4bcd21f611: mov    0x8(%rsp),%r10
  0.33%    0.31%   │  0x00007f4bcd21f616: mov    0xc(%r10),%r10d
  0.12%    0.07%   │  0x00007f4bcd21f61a: cmp    %r10d,%r14d
                   │  0x00007f4bcd21f61d: jge    0x00007f4bcd21f833
  0.15%    0.04%   │  0x00007f4bcd21f623: mov    %ecx,0x20(%rsp)
  0.27%    0.16%   │  0x00007f4bcd21f627: mov    %r14d,%r8d         ;*aload_1
                   │                                                ; - com.google.re2j.Machine::step@21 (line 265)
  0.27%    0.30%   │  0x00007f4bcd21f62a: mov    0x8(%rsp),%r10
  0.18%    0.11%   │  0x00007f4bcd21f62f: mov    0x10(%r10),%r11d   ;*getfield dense
                   │                                                ; - com.google.re2j.Machine::step@22 (line 265)
  0.32%    0.38%   │  0x00007f4bcd21f633: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f4bcd220c8d
  0.78%    0.74%   │  0x00007f4bcd21f638: cmp    %r10d,%r8d
                   │  0x00007f4bcd21f63b: jae    0x00007f4bcd220148
  0.36%    0.41%   │  0x00007f4bcd21f641: lea    (%r12,%r11,8),%r10
  0.10%    0.11%   │  0x00007f4bcd21f645: mov    0x10(%r10,%r8,4),%r9d  ;*aaload
                   │                                                ; - com.google.re2j.Machine::step@27 (line 265)
  0.17%    0.19%   │  0x00007f4bcd21f64a: mov    0x10(%r12,%r9,8),%r11d  ;*getfield thread
                   │                                                ; - com.google.re2j.Machine::step@40 (line 269)
                   │                                                ; implicit exception: dispatches to 0x00007f4bcd220d25
  0.96%    0.89%   │  0x00007f4bcd21f64f: mov    %r8d,%r14d
  0.26%    0.31%   │  0x00007f4bcd21f652: inc    %r14d              ;*iadd
                   │                                                ; - com.google.re2j.Machine::step@241 (line 293)
  0.10%    0.06%   │  0x00007f4bcd21f655: test   %r11d,%r11d
                  ╭│  0x00007f4bcd21f658: jne    0x00007f4bcd21f665  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine::step@47 (line 270)
  0.19%    0.11%  ││  0x00007f4bcd21f65a: mov    0x24(%rsp),%r10d
  0.05%    0.04%  ││  0x00007f4bcd21f65f: mov    0x20(%rsp),%ecx
  0.03%    0.02%  │╰  0x00007f4bcd21f663: jmp    0x00007f4bcd21f60b
  0.14%    0.08%  ↘   0x00007f4bcd21f665: mov    0x24(%rsp),%r10d
  0.20%    0.30%      0x00007f4bcd21f66a: test   %r10d,%r10d
                      0x00007f4bcd21f66d: jne    0x00007f4bcd2204a1  ;*ifeq
                                                                    ; - com.google.re2j.Machine::step@55 (line 273)
  0.20%    0.30%      0x00007f4bcd21f673: mov    0x10(%r12,%r11,8),%r10d  ;*getfield inst
                                                                    ; - com.google.re2j.Machine::step@107 (line 278)
  0.35%    0.47%      0x00007f4bcd21f678: mov    0xc(%r12,%r10,8),%ecx  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@117 (line 280)
                                                                    ; implicit exception: dispatches to 0x00007f4bcd220cd5
  1.98%    2.62%      0x00007f4bcd21f67d: mov    0x18(%r12,%r10,8),%edi  ;*getfield runes
                                                                    ; - com.google.re2j.Machine::step@320 (line 310)
  0.07%    0.14%      0x00007f4bcd21f682: mov    0xc(%r12,%r11,8),%edx  ;*getfield cap
                                                                    ; - com.google.re2j.Machine::step@176 (line 287)
  0.00%    0.01%      0x00007f4bcd21f687: lea    (%r12,%r11,8),%r9  ;*getfield thread
                                                                    ; - com.google.re2j.Machine::step@40 (line 269)
  0.02%               0x00007f4bcd21f68b: cmp    $0x9,%ecx
                      0x00007f4bcd21f68e: je     0x00007f4bcd21f4d0
  0.40%    0.55%      0x00007f4bcd21f694: cmp    $0x9,%ecx
                      0x00007f4bcd21f697: jle    0x00007f4bcd21f6c9
  0.03%    0.01%      0x00007f4bcd21f699: cmp    $0xb,%ecx
                      0x00007f4bcd21f69c: jne    0x00007f4bcd21f4f5  ;*tableswitch
                                                                    ; - com.google.re2j.Machine::step@120 (line 280)
                      0x00007f4bcd21f6a2: mov    0x20(%rsp),%ecx
                      0x00007f4bcd21f6a6: cmp    $0xa,%ecx
                      0x00007f4bcd21f6a9: je     0x00007f4bcd21f4ee  ;*if_icmpeq
                                                                    ; - com.google.re2j.Machine::step@348 (line 318)
                      0x00007f4bcd21f6af: mov    %r8d,0xa4(%rsp)
                      0x00007f4bcd21f6b7: mov    %r14d,0xac(%rsp)
                      0x00007f4bcd21f6bf: mov    %edx,%eax
                      0x00007f4bcd21f6c1: mov    %r9,%r13
....................................................................................................
 12.33%   12.03%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (404 bytes) 

                          0x00007f4bcd210daa: mov    %r10,(%rsp)
                          0x00007f4bcd210dae: nop
                          0x00007f4bcd210daf: callq  0x00007f4bcd046020  ; OopMap{off=660}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@203 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f4bcd210db4: jmpq   0x00007f4bcd210f4c
                  │       0x00007f4bcd210db9: mov    0x70(%rsp),%rax
                  │╭      0x00007f4bcd210dbe: jmpq   0x00007f4bcd210f4c  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@40 (line 349)
  1.14%    1.08%  ││      0x00007f4bcd210dc3: mov    0x8(%rsp),%rsi
  0.01%    0.01%  ││      0x00007f4bcd210dc8: mov    0x48(%rsp),%rdx
  0.00%           ││      0x00007f4bcd210dcd: mov    0x1c(%rsp),%r8d
  0.00%           ││      0x00007f4bcd210dd2: mov    0x20(%rsp),%r9
  0.30%    0.29%  ││      0x00007f4bcd210dd7: mov    0x28(%rsp),%edi
  0.01%           ││      0x00007f4bcd210ddb: mov    0x70(%rsp),%r10
  0.00%           ││      0x00007f4bcd210de0: mov    %r10,(%rsp)
  0.00%    0.00%  ││      0x00007f4bcd210de4: mov    %rsi,%rbp
  0.31%    0.21%  ││      0x00007f4bcd210de7: callq  0x00007f4bcd046020  ; OopMap{rbp=Oop [32]=Oop [56]=Oop [72]=Oop off=716}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@127 (line 358)
                  ││                                                    ;   {optimized virtual_call}
           0.00%  ││      0x00007f4bcd210dec: mov    0x38(%rsp),%r10
  0.20%    0.12%  ││      0x00007f4bcd210df1: mov    0x14(%r10),%ecx    ;*getfield arg
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
  0.15%    0.29%  ││      0x00007f4bcd210df5: mov    %rbp,%rsi
  0.00%           ││      0x00007f4bcd210df8: mov    0x48(%rsp),%rdx
  0.00%    0.00%  ││      0x00007f4bcd210dfd: mov    0x1c(%rsp),%r8d
  0.18%    0.16%  ││      0x00007f4bcd210e02: mov    0x20(%rsp),%r9
  0.19%    0.21%  ││      0x00007f4bcd210e07: mov    0x28(%rsp),%edi
           0.00%  ││      0x00007f4bcd210e0b: mov    %rax,(%rsp)
  0.01%           ││      0x00007f4bcd210e0f: callq  0x00007f4bcd046020  ; OopMap{off=756}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@146 (line 359)
                  ││                                                    ;   {optimized virtual_call}
                  ││╭     0x00007f4bcd210e14: jmpq   0x00007f4bcd210f4c  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@293 (line 388)
  1.77%    1.34%  │││     0x00007f4bcd210e19: mov    0x38(%rsp),%r10
  0.00%           │││     0x00007f4bcd210e1e: mov    %r10,%r8
           0.00%  │││     0x00007f4bcd210e21: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@47 (line 151)
                  │││                                                   ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││     0x00007f4bcd210e25: mov    0x70(%rsp),%rbp
  0.51%    0.38%  │││     0x00007f4bcd210e2a: test   %rbp,%rbp
                  │││╭    0x00007f4bcd210e2d: je     0x00007f4bcd210e4d  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@295 (line 388)
                  ││││    0x00007f4bcd210e2f: mov    %r8d,0x10(%rbp)
                  ││││    0x00007f4bcd210e33: mov    %rbp,%r10
                  ││││    0x00007f4bcd210e36: shr    $0x9,%r10
  0.05%    0.05%  ││││    0x00007f4bcd210e3a: movabs $0x7f4bde1de000,%r11
                  ││││    0x00007f4bcd210e44: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@313 (line 391)
                  ││││╭   0x00007f4bcd210e48: jmpq   0x00007f4bcd210edd
  0.00%           │││↘│   0x00007f4bcd210e4d: mov    0x8(%rsp),%r10
                  │││ │   0x00007f4bcd210e52: mov    0x20(%r10),%ebp    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  │││ │   0x00007f4bcd210e56: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4bcd211369
  0.47%    0.26%  │││ │   0x00007f4bcd210e5b: cmp    $0xf8002f22,%r11d  ;   {metadata(&apos;java/util/ArrayList&apos;)}
                  │││ │   0x00007f4bcd210e62: jne    0x00007f4bcd21114d
                  │││ │   0x00007f4bcd210e68: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface size
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
           0.00%  │││ │   0x00007f4bcd210e6c: mov    0x10(%rcx),%r9d    ;*getfield size
                  │││ │                                                 ; - java.util.ArrayList::size@1 (line 278)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 147)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f4bcd210e70: test   %r9d,%r9d
                  │││ │   0x00007f4bcd210e73: jle    0x00007f4bcd21119d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@11 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.54%    0.29%  │││ │   0x00007f4bcd210e79: mov    %r9d,%r10d
                  │││ │   0x00007f4bcd210e7c: dec    %r10d              ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@20 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007f4bcd210e7f: cmp    %r9d,%r10d
                  │││ │   0x00007f4bcd210e82: jge    0x00007f4bcd2111c1  ;*if_icmplt
                  │││ │                                                 ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │││ │                                                 ; - java.util.ArrayList::remove@2 (line 492)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  │││ │   0x00007f4bcd210e88: incl   0xc(%rcx)          ;*putfield modCount
                  │││ │                                                 ; - java.util.ArrayList::remove@12 (line 494)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.47%    0.26%  │││ │   0x00007f4bcd210e8b: mov    0x14(%rcx),%ebp    ;*getfield elementData
                  │││ │                                                 ; - java.util.ArrayList::elementData@1 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%    0.00%  │││ │   0x00007f4bcd210e8e: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4bcd211379
  0.45%    0.31%  │││ │   0x00007f4bcd210e93: cmp    %r11d,%r10d
                  │││ │   0x00007f4bcd210e96: jae    0x00007f4bcd211125  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.01%           │││ │   0x00007f4bcd210e9c: mov    %r10d,0x10(%rcx)   ;*putfield size
                  │││ │                                                 ; - java.util.ArrayList::remove@62 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
                  │││ │   0x00007f4bcd210ea0: lea    (%r12,%rbp,8),%r10
  0.01%           │││ │   0x00007f4bcd210ea4: mov    0xc(%r10,%r9,4),%ebp  ;*aaload
                  │││ │                                                 ; - java.util.ArrayList::elementData@5 (line 418)
                  │││ │                                                 ; - java.util.ArrayList::remove@17 (line 495)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.39%    0.11%  │││ │   0x00007f4bcd210ea9: mov    %r12d,0xc(%r10,%r9,4)  ;*aastore
                  │││ │                                                 ; - java.util.ArrayList::remove@66 (line 501)
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@21 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.00%           │││ │   0x00007f4bcd210eae: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4bcd21138d
  0.02%           │││ │   0x00007f4bcd210eb3: cmp    $0xf8019b16,%r11d  ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                  │││ │   0x00007f4bcd210eba: jne    0x00007f4bcd21129d
  0.00%           │││ │   0x00007f4bcd210ec0: shl    $0x3,%rbp          ;*checkcast
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@26 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@301 (line 389)
  0.45%    0.07%  │││ │   0x00007f4bcd210ec4: mov    %r8d,0x10(%rbp)
  0.00%    0.01%  │││ │   0x00007f4bcd210ec8: mov    %rbp,%r10
  0.00%           │││ │   0x00007f4bcd210ecb: shr    $0x9,%r10
  0.00%           │││ │   0x00007f4bcd210ecf: movabs $0x7f4bde1de000,%r11
  0.38%    0.13%  │││ │   0x00007f4bcd210ed9: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@316 (line 393)
  0.01%    0.01%  │││ ↘   0x00007f4bcd210edd: mov    0x20(%rsp),%rdi
  0.06%    0.05%  │││     0x00007f4bcd210ee2: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@318 (line 393)
                  │││                                                   ; implicit exception: dispatches to 0x00007f4bcd211359
  0.03%           │││     0x00007f4bcd210ee6: test   %r10d,%r10d
                  │││     0x00007f4bcd210ee9: jle    0x00007f4bcd211182  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@319 (line 393)
  0.45%    0.30%  │││     0x00007f4bcd210eef: mov    0xc(%rbp),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%           │││     0x00007f4bcd210ef3: mov    %r11,%r8
  0.08%    0.06%  │││     0x00007f4bcd210ef6: shl    $0x3,%r8
  0.00%           │││     0x00007f4bcd210efa: cmp    %rdi,%r8
                  │││  ╭  0x00007f4bcd210efd: je     0x00007f4bcd210f2a  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@329 (line 393)
  0.40%    0.37%  │││  │  0x00007f4bcd210eff: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f4bcd2113a9
  0.02%    0.02%  │││  │  0x00007f4bcd210f04: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@324 (line 393)
  0.00%           │││  │  0x00007f4bcd210f08: cmp    %r10d,%r9d
                  │││  │  0x00007f4bcd210f0b: jb     0x00007f4bcd211161
  0.01%    0.01%  │││  │  0x00007f4bcd210f11: lea    0x10(%r12,%r11,8),%rsi
  0.42%    0.24%  │││  │  0x00007f4bcd210f16: add    $0x10,%rdi
           0.00%  │││  │  0x00007f4bcd210f1a: movslq %r10d,%rdx
           0.00%  │││  │  0x00007f4bcd210f1d: movabs $0x7f4bcd052640,%r10
  0.01%           │││  │  0x00007f4bcd210f27: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@347 (line 396)
           0.00%  │││  ↘  0x00007f4bcd210f2a: mov    %rbx,%r10
  0.01%    0.02%  │││     0x00007f4bcd210f2d: mov    %rbp,%r11
  0.07%    0.06%  │││     0x00007f4bcd210f30: shr    $0x3,%r11
  0.48%    0.64%  │││     0x00007f4bcd210f34: mov    %r11d,0x10(%rbx)
                  │││     0x00007f4bcd210f38: shr    $0x9,%r10
  0.02%    0.01%  │││     0x00007f4bcd210f3c: movabs $0x7f4bde1de000,%r11
  0.05%    0.05%  │││     0x00007f4bcd210f46: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@351 (line 396)
  0.42%    0.68%  │││     0x00007f4bcd210f4a: xor    %eax,%eax          ;*synchronization entry
                  │││                                                   ; - com.google.re2j.Machine::add@-1 (line 341)
  0.44%    0.34%  ↘↘↘     0x00007f4bcd210f4c: add    $0x60,%rsp
  0.02%    0.02%          0x00007f4bcd210f50: pop    %rbp
  0.49%    0.83%          0x00007f4bcd210f51: test   %eax,0x185c50a9(%rip)        # 0x00007f4be57d6000
                                                                        ;   {poll_return}
  0.37%    0.51%          0x00007f4bcd210f57: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@40 (line 349)
                          0x00007f4bcd210f58: mov    0x8(%rsp),%rsi
                          0x00007f4bcd210f5d: mov    0x48(%rsp),%rdx
                          0x00007f4bcd210f62: mov    0x1c(%rsp),%r8d
                          0x00007f4bcd210f67: mov    0x20(%rsp),%r9
                          0x00007f4bcd210f6c: mov    %r11d,%edi
                          0x00007f4bcd210f6f: mov    0x70(%rsp),%r10
                          0x00007f4bcd210f74: mov    %r10,(%rsp)
                          0x00007f4bcd210f78: data16 xchg %ax,%ax
....................................................................................................
 12.01%    9.87%  <total for region 5>

....[Hottest Regions]...............................................................................
 26.55%   23.49%         C2, level 4  com.google.re2j.Machine::add, version 491 (377 bytes) 
 16.57%   21.71%         C2, level 4  com.google.re2j.Machine::step, version 498 (359 bytes) 
 13.90%   14.24%         C2, level 4  com.google.re2j.Machine::step, version 498 (224 bytes) 
 12.33%   12.03%         C2, level 4  com.google.re2j.Machine::step, version 498 (311 bytes) 
 12.01%    9.87%         C2, level 4  com.google.re2j.Machine::add, version 491 (404 bytes) 
  5.15%    5.99%         C2, level 4  com.google.re2j.Machine::match, version 538 (840 bytes) 
  4.01%    4.62%         C2, level 4  com.google.re2j.Machine::step, version 498 (153 bytes) 
  2.90%    1.91%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  1.67%    1.58%         C2, level 4  com.google.re2j.Machine::step, version 498 (185 bytes) 
  0.48%    0.53%         C2, level 4  com.google.re2j.Machine::step, version 498 (30 bytes) 
  0.37%    0.36%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.32%    0.33%         C2, level 4  com.google.re2j.Machine::add, version 491 (40 bytes) 
  0.20%    0.24%         C2, level 4  com.google.re2j.Machine::match, version 538 (114 bytes) 
  0.17%    0.02%   [kernel.kallsyms]  [unknown] (88 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 546 (109 bytes) 
  0.15%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.08%    0.16%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (114 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (38 bytes) 
  2.75%    2.76%  <...other 538 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 48.99%   54.75%         C2, level 4  com.google.re2j.Machine::step, version 498 
 38.88%   33.69%         C2, level 4  com.google.re2j.Machine::add, version 491 
  5.44%    6.32%         C2, level 4  com.google.re2j.Machine::match, version 538 
  2.90%    1.91%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.04%    1.62%   [kernel.kallsyms]  [unknown] 
  0.28%    0.08%         C2, level 4  com.google.re2j.Machine::init, version 546 
  0.12%    0.06%         C2, level 4  com.google.re2j.Matcher::find, version 567 
  0.08%    0.07%      hsdis-amd64.so  [unknown] 
  0.08%    0.16%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.05%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 588 
  0.03%    0.03%        libc-2.26.so  __strchr_avx2 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.15%        libc-2.26.so  vfprintf 
  0.02%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.02%  libpthread-2.26.so  __pthread_getspecific 
  0.02%                  interpreter  invokevirtual  182 invokevirtual  
  0.81%    0.52%  <...other 114 warm methods...>
....................................................................................................
100.00%   99.69%  <totals>

....[Distribution by Source]........................................................................
 93.81%   94.96%         C2, level 4
  2.91%    1.91%        runtime stub
  2.04%    1.62%   [kernel.kallsyms]
  0.67%    0.91%           libjvm.so
  0.26%    0.47%        libc-2.26.so
  0.09%    0.07%      hsdis-amd64.so
  0.09%    0.03%  libpthread-2.26.so
  0.06%                  interpreter
  0.03%    0.00%         C1, level 3
  0.01%    0.02%              [vdso]
  0.01%               perf-10784.map
  0.00%                             
  0.00%                   ld-2.26.so
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine       thrpt   20  1688.907 ± 6.209  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN            ---
