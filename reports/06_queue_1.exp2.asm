# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4467.051 ops/s
# Warmup Iteration   2: 7678.674 ops/s
# Warmup Iteration   3: 7953.649 ops/s
# Warmup Iteration   4: 7647.457 ops/s
# Warmup Iteration   5: 8032.304 ops/s
# Warmup Iteration   6: 7642.759 ops/s
# Warmup Iteration   7: 8027.582 ops/s
# Warmup Iteration   8: 8070.308 ops/s
# Warmup Iteration   9: 7957.318 ops/s
# Warmup Iteration  10: 7982.746 ops/s
# Warmup Iteration  11: 7748.427 ops/s
# Warmup Iteration  12: 8100.154 ops/s
# Warmup Iteration  13: 8070.374 ops/s
# Warmup Iteration  14: 7922.896 ops/s
# Warmup Iteration  15: 7953.972 ops/s
# Warmup Iteration  16: 7950.766 ops/s
# Warmup Iteration  17: 8029.596 ops/s
# Warmup Iteration  18: 7664.340 ops/s
# Warmup Iteration  19: 8061.169 ops/s
# Warmup Iteration  20: 8044.447 ops/s
Iteration   1: 8017.906 ops/s
Iteration   2: 8067.122 ops/s
Iteration   3: 8070.726 ops/s
Iteration   4: 8039.803 ops/s
Iteration   5: 8051.100 ops/s
Iteration   6: 8017.385 ops/s
Iteration   7: 7895.542 ops/s
Iteration   8: 8035.699 ops/s
Iteration   9: 8097.755 ops/s
Iteration  10: 8088.912 ops/s
Iteration  11: 8023.139 ops/s
Iteration  12: 8110.591 ops/s
Iteration  13: 8089.946 ops/s
Iteration  14: 8099.139 ops/s
Iteration  15: 8098.819 ops/s
Iteration  16: 8023.077 ops/s
Iteration  17: 8108.089 ops/s
Iteration  18: 8112.978 ops/s
Iteration  19: 8097.391 ops/s
Iteration  20: 8095.191 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  8062.015 ±(99.9%) 45.002 ops/s [Average]
  (min, avg, max) = (7895.542, 8062.015, 8112.978), stdev = 51.825
  CI (99.9%): [8017.013, 8107.018] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 216743 total address lines.
Perf output processed (skipped 23.151 seconds):
 Column 1: cycles (20369 events)
 Column 2: instructions (20449 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 542 (377 bytes) 

                          0x00007f2cdc9ea664: mov    %r10,(%rsp)
                          0x00007f2cdc9ea668: data16 xchg %ax,%ax
                          0x00007f2cdc9ea66b: callq  0x00007f2cdc7f3020  ; OopMap{off=528}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f2cdc9ea670: jmpq   0x00007f2cdc9ea7d7
                  │       0x00007f2cdc9ea675: mov    0x70(%rsp),%rax
                  │╭      0x00007f2cdc9ea67a: jmpq   0x00007f2cdc9ea7d7  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.41%    1.60%  ││      0x00007f2cdc9ea67f: mov    0x20(%rsp),%r8d
  0.03%    0.04%  ││      0x00007f2cdc9ea684: mov    0x28(%rsp),%r9
  0.01%    0.02%  ││      0x00007f2cdc9ea689: mov    0x70(%rsp),%r10
  0.01%    0.02%  ││      0x00007f2cdc9ea68e: mov    %r10,(%rsp)
  0.81%    1.32%  ││      0x00007f2cdc9ea692: mov    %rsi,%rbp
  0.01%    0.02%  ││      0x00007f2cdc9ea695: xchg   %ax,%ax
  0.02%    0.01%  ││      0x00007f2cdc9ea697: callq  0x00007f2cdc7f3020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=572}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.07%    0.10%  ││      0x00007f2cdc9ea69c: mov    0x38(%rsp),%r10
           0.01%  ││      0x00007f2cdc9ea6a1: mov    0x34(%r10),%r10d
  0.75%    0.96%  ││      0x00007f2cdc9ea6a5: mov    %r10,%rcx
  0.07%    0.09%  ││      0x00007f2cdc9ea6a8: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.02%           ││      0x00007f2cdc9ea6ac: mov    %rbp,%rsi
  0.00%           ││      0x00007f2cdc9ea6af: mov    0x40(%rsp),%rdx
  0.70%    0.90%  ││      0x00007f2cdc9ea6b4: mov    0x20(%rsp),%r8d
  0.06%    0.12%  ││      0x00007f2cdc9ea6b9: mov    0x28(%rsp),%r9
  0.02%    0.01%  ││      0x00007f2cdc9ea6be: mov    0x30(%rsp),%edi
  0.00%    0.01%  ││      0x00007f2cdc9ea6c2: mov    %rax,(%rsp)
  0.88%    0.89%  ││      0x00007f2cdc9ea6c6: nop
  0.08%    0.06%  ││      0x00007f2cdc9ea6c7: callq  0x00007f2cdc7f3020  ; OopMap{off=620}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.26%    0.28%  ││╭     0x00007f2cdc9ea6cc: jmpq   0x00007f2cdc9ea7d7  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  0.94%    0.85%  │││     0x00007f2cdc9ea6d1: mov    0x38(%rsp),%r10
  0.68%    0.68%  │││     0x00007f2cdc9ea6d6: mov    %r10,%r8
  0.07%    0.03%  │││     0x00007f2cdc9ea6d9: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.02%  │││     0x00007f2cdc9ea6dd: mov    0x70(%rsp),%rbx
  0.34%    0.45%  │││     0x00007f2cdc9ea6e2: test   %rbx,%rbx
                  │││╭    0x00007f2cdc9ea6e5: jne    0x00007f2cdc9ea7e3  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.61%    0.64%  ││││    0x00007f2cdc9ea6eb: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.08%    0.01%  ││││    0x00007f2cdc9ea6ef: test   %r9d,%r9d
                  ││││    0x00007f2cdc9ea6f2: jle    0x00007f2cdc9ea891  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.02%    0.03%  ││││    0x00007f2cdc9ea6f8: mov    0x24(%rsi),%ecx    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.32%    0.42%  ││││    0x00007f2cdc9ea6fb: mov    %r9d,%ebp
  0.69%    0.35%  ││││    0x00007f2cdc9ea6fe: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.07%    0.10%  ││││    0x00007f2cdc9ea700: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.02%    0.05%  ││││    0x00007f2cdc9ea703: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f2cdc9ea92d
  0.38%    0.29%  ││││    0x00007f2cdc9ea708: cmp    %r11d,%ebp
                  ││││    0x00007f2cdc9ea70b: jae    0x00007f2cdc9ea839
  0.77%    0.59%  ││││    0x00007f2cdc9ea711: lea    (%r12,%rcx,8),%r10
  0.09%    0.08%  ││││    0x00007f2cdc9ea715: mov    0xc(%r10,%r9,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.04%    0.02%  ││││    0x00007f2cdc9ea71a: mov    %r8d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f2cdc9ea93d
  0.48%    0.37%  ││││    0x00007f2cdc9ea71f: lea    (%r12,%r11,8),%rbx  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.57%    0.57%  ││││    0x00007f2cdc9ea723: mov    %rbx,%r10
  0.11%    0.08%  ││││    0x00007f2cdc9ea726: shr    $0x9,%r10
  0.01%    0.01%  ││││    0x00007f2cdc9ea72a: movabs $0x7f2cd81db000,%r11
  0.40%    0.33%  ││││    0x00007f2cdc9ea734: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@291 (line 388)
  0.69%    0.82%  ││││ ↗  0x00007f2cdc9ea738: mov    0x28(%rsp),%rdi
  0.14%    0.09%  ││││ │  0x00007f2cdc9ea73d: mov    0xc(%rdi),%r11d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@293 (line 388)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f2cdc9ea905
  0.03%    0.06%  ││││ │  0x00007f2cdc9ea741: test   %r11d,%r11d
                  ││││ │  0x00007f2cdc9ea744: jle    0x00007f2cdc9ea872  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@294 (line 388)
  0.27%    0.28%  ││││ │  0x00007f2cdc9ea74a: mov    0xc(%rbx),%r10d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.74%    0.89%  ││││ │  0x00007f2cdc9ea74e: mov    %r10,%r8
  0.14%    0.08%  ││││ │  0x00007f2cdc9ea751: shl    $0x3,%r8
  0.03%    0.01%  ││││ │  0x00007f2cdc9ea755: cmp    %rdi,%r8
                  ││││╭│  0x00007f2cdc9ea758: je     0x00007f2cdc9ea785  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.26%    0.32%  ││││││  0x00007f2cdc9ea75a: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f2cdc9ea951
  0.84%    0.95%  ││││││  0x00007f2cdc9ea75f: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.06%    0.04%  ││││││  0x00007f2cdc9ea763: cmp    %r11d,%r9d
                  ││││││  0x00007f2cdc9ea766: jb     0x00007f2cdc9ea84d
  0.72%    0.77%  ││││││  0x00007f2cdc9ea76c: lea    0x10(%r12,%r10,8),%rsi
  0.06%    0.04%  ││││││  0x00007f2cdc9ea771: add    $0x10,%rdi
  0.67%    0.34%  ││││││  0x00007f2cdc9ea775: movslq %r11d,%rdx
  0.04%    0.04%  ││││││  0x00007f2cdc9ea778: movabs $0x7f2cdc7ff640,%r10
  0.46%    0.57%  ││││││  0x00007f2cdc9ea782: callq  *%r10              ;*aload_1
                  ││││││                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.00%    0.00%  ││││↘│  0x00007f2cdc9ea785: mov    0x40(%rsp),%r10
  0.44%    0.43%  ││││ │  0x00007f2cdc9ea78a: mov    0xc(%r10),%r10d    ;*getfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.78%    0.85%  ││││ │  0x00007f2cdc9ea78e: mov    0x40(%rsp),%r11
  0.01%           ││││ │  0x00007f2cdc9ea793: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.30%    0.34%  ││││ │  0x00007f2cdc9ea797: mov    %r10d,%r11d
  0.22%    0.24%  ││││ │  0x00007f2cdc9ea79a: inc    %r11d
  0.77%    0.56%  ││││ │  0x00007f2cdc9ea79d: mov    0x40(%rsp),%r8
                  ││││ │  0x00007f2cdc9ea7a2: mov    %r11d,0xc(%r8)     ;*putfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.42%    0.49%  ││││ │  0x00007f2cdc9ea7a6: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2cdc9ea915
  0.24%    0.31%  ││││ │  0x00007f2cdc9ea7ab: cmp    %r11d,%r10d
                  ││││ │  0x00007f2cdc9ea7ae: jae    0x00007f2cdc9ea81e  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.86%    1.14%  ││││ │  0x00007f2cdc9ea7b0: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
                  ││││ │  0x00007f2cdc9ea7b4: lea    0x10(%r11,%r10,4),%r10
  0.20%    0.26%  ││││ │  0x00007f2cdc9ea7b9: mov    %rbx,%r8
  0.15%    0.25%  ││││ │  0x00007f2cdc9ea7bc: shr    $0x3,%r8
  0.75%    1.21%  ││││ │  0x00007f2cdc9ea7c0: mov    %r8d,(%r10)
  2.50%    3.05%  ││││ │  0x00007f2cdc9ea7c3: shr    $0x9,%r10
  0.06%    0.09%  ││││ │  0x00007f2cdc9ea7c7: movabs $0x7f2cd81db000,%r11
  0.08%    0.05%  ││││ │  0x00007f2cdc9ea7d1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  1.13%    1.18%  ││││ │  0x00007f2cdc9ea7d5: xor    %eax,%eax          ;*goto
                  ││││ │                                                ; - com.google.re2j.Machine::add@191 (line 364)
  1.33%    1.42%  ↘↘↘│ │  0x00007f2cdc9ea7d7: add    $0x60,%rsp
  0.05%    0.11%     │ │  0x00007f2cdc9ea7db: pop    %rbp
  0.05%    0.07%     │ │  0x00007f2cdc9ea7dc: test   %eax,0x15ebd81e(%rip)        # 0x00007f2cf28a8000
                     │ │                                                ;   {poll_return}
  1.67%    1.90%     │ │  0x00007f2cdc9ea7e2: retq   
                     ↘ │  0x00007f2cdc9ea7e3: mov    %r8d,0x10(%rbx)
                       │  0x00007f2cdc9ea7e7: mov    %rbx,%r10
                       │  0x00007f2cdc9ea7ea: shr    $0x9,%r10
  0.05%    0.00%       │  0x00007f2cdc9ea7ee: movabs $0x7f2cd81db000,%r11
           0.01%       │  0x00007f2cdc9ea7f8: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@288 (line 386)
                       ╰  0x00007f2cdc9ea7fc: jmpq   0x00007f2cdc9ea738  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007f2cdc9ea801: mov    0x20(%rsp),%r8d
                          0x00007f2cdc9ea806: mov    0x28(%rsp),%r9
                          0x00007f2cdc9ea80b: mov    0x70(%rsp),%r10
                          0x00007f2cdc9ea810: mov    %r10,(%rsp)
                          0x00007f2cdc9ea814: data16 xchg %ax,%ax
                          0x00007f2cdc9ea817: callq  0x00007f2cdc7f3020  ; OopMap{off=956}
                                                                        ;*invokespecial add
....................................................................................................
 29.16%   31.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 542 (156 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007f2cdc9ea460: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007f2cdc9ea464: shl    $0x3,%r10
                     0x00007f2cdc9ea468: cmp    %r10,%rax
                     0x00007f2cdc9ea46b: jne    0x00007f2cdc7f2e20  ;   {runtime_call}
                     0x00007f2cdc9ea471: data16 xchg %ax,%ax
                     0x00007f2cdc9ea474: nopl   0x0(%rax,%rax,1)
                     0x00007f2cdc9ea47c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  1.23%    1.26%     0x00007f2cdc9ea480: mov    %eax,-0x14000(%rsp)
  0.96%    1.16%     0x00007f2cdc9ea487: push   %rbp
  0.10%    0.02%     0x00007f2cdc9ea488: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.76%    2.02%     0x00007f2cdc9ea48c: mov    %edi,0x30(%rsp)
  0.34%    0.17%     0x00007f2cdc9ea490: mov    %r9,0x28(%rsp)
  0.08%    0.07%     0x00007f2cdc9ea495: mov    %r8d,0x20(%rsp)
  1.22%    1.11%     0x00007f2cdc9ea49a: mov    %rsi,0x8(%rsp)
  0.82%    0.85%     0x00007f2cdc9ea49f: mov    %rcx,0x38(%rsp)
  0.12%    0.12%     0x00007f2cdc9ea4a4: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f2cdc9ea8e1
  0.15%    0.12%     0x00007f2cdc9ea4a7: mov    %rdx,0x40(%rsp)
  1.12%    0.98%     0x00007f2cdc9ea4ac: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f2cdc9ea8f1
  0.84%    0.97%     0x00007f2cdc9ea4b0: cmp    $0x40,%ecx
                     0x00007f2cdc9ea4b3: jg     0x00007f2cdc9ea531  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.19%    0.13%     0x00007f2cdc9ea4b5: mov    $0x1,%r8d
  0.04%    0.02%     0x00007f2cdc9ea4bb: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.25%    2.31%     0x00007f2cdc9ea4be: mov    %r11,%r10
  0.03%    0.03%     0x00007f2cdc9ea4c1: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.98%    0.90%     0x00007f2cdc9ea4c4: test   %r10,%r10
                     0x00007f2cdc9ea4c7: jne    0x00007f2cdc9ea55d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.91%    0.83%     0x00007f2cdc9ea4cd: cmp    $0x40,%ecx
                     0x00007f2cdc9ea4d0: jge    0x00007f2cdc9ea581  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.18%    0.15%     0x00007f2cdc9ea4d6: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.05%    0.01%     0x00007f2cdc9ea4da: mov    0x38(%rsp),%r10
  1.51%    1.22%     0x00007f2cdc9ea4df: mov    0xc(%r10),%r10d    ;*getfield op
                                                                   ; - com.google.re2j.Machine::add@23 (line 343)
  0.85%    0.86%     0x00007f2cdc9ea4e3: or     %r11,%r8
  0.15%    0.13%     0x00007f2cdc9ea4e6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.03%    0.02%     0x00007f2cdc9ea4ea: mov    %r10d,%r11d
  1.02%    0.93%     0x00007f2cdc9ea4ed: dec    %r11d
  0.82%    0.51%     0x00007f2cdc9ea4f0: cmp    $0xc,%r11d
                  ╭  0x00007f2cdc9ea4f4: jae    0x00007f2cdc9ea521  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.26%    0.20%  │  0x00007f2cdc9ea4f6: mov    0x38(%rsp),%r11
  0.06%    0.02%  │  0x00007f2cdc9ea4fb: mov    0x14(%r11),%r11d   ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.87%    0.98%  │  0x00007f2cdc9ea4ff: mov    0x38(%rsp),%r8
  0.74%    0.37%  │  0x00007f2cdc9ea504: mov    0x30(%r8),%r8d
  0.27%    0.20%  │  0x00007f2cdc9ea508: movslq %r10d,%r9
  0.04%    0.04%  │  0x00007f2cdc9ea50b: mov    %r8,%rcx
  1.09%    1.17%  │  0x00007f2cdc9ea50e: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.85%    0.36%  │  0x00007f2cdc9ea512: movabs $0x7f2cdc9ea400,%r10  ;   {section_word}
  0.28%    0.17%  │  0x00007f2cdc9ea51c: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
                  ↘  0x00007f2cdc9ea521: mov    $0x35,%esi
                     0x00007f2cdc9ea526: nop
                     0x00007f2cdc9ea527: callq  0x00007f2cdc7b21a0  ; OopMap{off=204}
                                                                   ;*new  ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f2cdc9ea52c: callq  0x00007f2cf1595c50  ;*new
                                                                   ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f2cdc9ea531: mov    $0xffffff65,%esi
....................................................................................................
 22.22%   20.41%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 550 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007f2cdc9ee640: mov    0x8(%rsi),%r10d
                     0x00007f2cdc9ee644: shl    $0x3,%r10
                     0x00007f2cdc9ee648: cmp    %r10,%rax
                     0x00007f2cdc9ee64b: jne    0x00007f2cdc7f2e20  ;   {runtime_call}
                     0x00007f2cdc9ee651: data16 xchg %ax,%ax
                     0x00007f2cdc9ee654: nopl   0x0(%rax,%rax,1)
                     0x00007f2cdc9ee65c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.08%    0.05%     0x00007f2cdc9ee660: mov    %eax,-0x14000(%rsp)
  0.18%    0.17%     0x00007f2cdc9ee667: push   %rbp
  0.06%    0.03%     0x00007f2cdc9ee668: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%     0x00007f2cdc9ee66c: mov    %edi,0x20(%rsp)
  0.25%    0.22%     0x00007f2cdc9ee670: mov    %r9d,0x1c(%rsp)
  0.06%    0.01%     0x00007f2cdc9ee675: mov    %r8d,0x18(%rsp)
  0.05%    0.03%     0x00007f2cdc9ee67a: mov    %rcx,0x10(%rsp)
  0.03%    0.03%     0x00007f2cdc9ee67f: mov    %rdx,0x8(%rsp)
  0.22%    0.23%     0x00007f2cdc9ee684: mov    %rsi,0x28(%rsp)
  0.05%    0.01%     0x00007f2cdc9ee689: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.02%    0.02%     0x00007f2cdc9ee68d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007f2cdc9eeced
           0.00%     0x00007f2cdc9ee693: mov    %r10d,0x24(%rsp)
  0.20%    0.11%     0x00007f2cdc9ee698: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f2cdc9eecfd
  0.00%              0x00007f2cdc9ee69c: test   %r11d,%r11d
                     0x00007f2cdc9ee69f: jle    0x00007f2cdc9ee9b0  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.01%    0.03%     0x00007f2cdc9ee6a5: mov    0x24(%rsp),%r10d
  0.14%    0.01%     0x00007f2cdc9ee6aa: test   %r10d,%r10d
                     0x00007f2cdc9ee6ad: jne    0x00007f2cdc9eeb39  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.25%    0.21%     0x00007f2cdc9ee6b3: xor    %r11d,%r11d
                  ╭  0x00007f2cdc9ee6b6: jmpq   0x00007f2cdc9ee74b
                  │  0x00007f2cdc9ee6bb: nopl   0x0(%rax,%rax,1)
                  │  0x00007f2cdc9ee6c0: mov    0x68(%rsp),%ebx
                  │  0x00007f2cdc9ee6c4: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.79%    0.81%  │  0x00007f2cdc9ee6c8: mov    0x8(%rsp),%r8
                  │  0x00007f2cdc9ee6cd: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.18%    0.19%  │  0x00007f2cdc9ee6d1: mov    0x28(%rsp),%r8
  0.14%    0.17%  │  0x00007f2cdc9ee6d6: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.69%    0.79%  │  0x00007f2cdc9ee6da: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f2cdc9ee6de: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.18%    0.16%  │  0x00007f2cdc9ee6e1: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007f2cdc9eeccd
  0.24%    0.29%  │  0x00007f2cdc9ee6e6: cmp    %ebp,%r8d
                  │  0x00007f2cdc9ee6e9: jge    0x00007f2cdc9eeae1  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.69%    0.77%  │  0x00007f2cdc9ee6ef: mov    %r8d,%edi
                  │  0x00007f2cdc9ee6f2: inc    %edi
  0.15%    0.18%  │  0x00007f2cdc9ee6f4: mov    0x28(%rsp),%rsi
  0.25%    0.27%  │  0x00007f2cdc9ee6f9: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.81%    0.55%  │  0x00007f2cdc9ee6fc: cmp    %ebp,%r8d
                  │  0x00007f2cdc9ee6ff: jae    0x00007f2cdc9eea51  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f2cdc9ee705: mov    %rax,%r11
  0.17%    0.14%  │  0x00007f2cdc9ee708: shr    $0x3,%r11
  0.23%    0.25%  │  0x00007f2cdc9ee70c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.76%    0.55%  │  0x00007f2cdc9ee710: lea    0x10(%rdi,%r8,4),%r8
                  │  0x00007f2cdc9ee715: mov    %r11d,(%r8)
  0.24%    0.19%  │  0x00007f2cdc9ee718: mov    %r8,%r11
  0.23%    0.22%  │  0x00007f2cdc9ee71b: shr    $0x9,%r11
  0.66%    0.56%  │  0x00007f2cdc9ee71f: movabs $0x7f2cd81db000,%r8
  0.00%           │  0x00007f2cdc9ee729: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.25%    0.26%  │  0x00007f2cdc9ee72d: test   %eax,0x15eb98cd(%rip)        # 0x00007f2cf28a8000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.22%    0.28%  │  0x00007f2cdc9ee733: cmp    %r9d,%r10d
                  │  0x00007f2cdc9ee736: jge    0x00007f2cdc9ee9b0
  0.59%    0.37%  │  0x00007f2cdc9ee73c: mov    %ecx,0x20(%rsp)
  0.02%    0.03%  │  0x00007f2cdc9ee740: mov    %ebx,0x68(%rsp)
  0.17%    0.12%  │  0x00007f2cdc9ee744: mov    %edx,0x70(%rsp)
  0.18%    0.21%  │  0x00007f2cdc9ee748: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.60%    0.33%  ↘  0x00007f2cdc9ee74b: mov    0x8(%rsp),%r10
  0.00%              0x00007f2cdc9ee750: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.40%    0.30%     0x00007f2cdc9ee754: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f2cdc9eec99
  0.63%    0.69%     0x00007f2cdc9ee759: cmp    %r9d,%r11d
                     0x00007f2cdc9ee75c: jae    0x00007f2cdc9eea14
  0.85%    0.47%     0x00007f2cdc9ee762: shl    $0x3,%r10
           0.00%     0x00007f2cdc9ee766: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.16%    0.18%     0x00007f2cdc9ee76b: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007f2cdc9eecad
  1.90%    2.19%     0x00007f2cdc9ee770: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007f2cdc9eecbd
  3.61%    3.47%     0x00007f2cdc9ee775: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
                     0x00007f2cdc9ee77a: mov    %r11d,%r10d
  0.06%    0.03%     0x00007f2cdc9ee77d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.07%    0.07%     0x00007f2cdc9ee780: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  1.11%    0.84%     0x00007f2cdc9ee784: cmp    $0x9,%ecx
                     0x00007f2cdc9ee787: je     0x00007f2cdc9ee988
  0.17%    0.14%     0x00007f2cdc9ee78d: cmp    $0x9,%ecx
                     0x00007f2cdc9ee790: jg     0x00007f2cdc9ee8ec
                     0x00007f2cdc9ee796: cmp    $0x7,%ecx
                     0x00007f2cdc9ee799: je     0x00007f2cdc9eeb29
                     0x00007f2cdc9ee79f: cmp    $0x7,%ecx
                     0x00007f2cdc9ee7a2: jg     0x00007f2cdc9ee89e
                     0x00007f2cdc9ee7a8: cmp    $0x6,%ecx
                     0x00007f2cdc9ee7ab: jne    0x00007f2cdc9eeb29  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
  0.00%              0x00007f2cdc9ee7b1: mov    0x68(%rsp),%ebx
                     0x00007f2cdc9ee7b5: cmp    $0x2,%ebx
....................................................................................................
 19.05%   17.29%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.16%   31.71%         C2, level 4  com.google.re2j.Machine::add, version 542 (377 bytes) 
 22.22%   20.41%         C2, level 4  com.google.re2j.Machine::add, version 542 (156 bytes) 
 19.05%   17.29%         C2, level 4  com.google.re2j.Machine::step, version 550 (301 bytes) 
  9.85%   10.54%         C2, level 4  com.google.re2j.Machine::match, version 590 (789 bytes) 
  7.78%    9.33%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  5.92%    6.41%         C2, level 4  com.google.re2j.Machine::step, version 550 (78 bytes) 
  1.18%    0.71%         C2, level 4  com.google.re2j.Machine::step, version 550 (68 bytes) 
  0.96%    0.47%         C2, level 4  com.google.re2j.Machine::step, version 550 (90 bytes) 
  0.81%    0.81%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.37%    0.44%         C2, level 4  com.google.re2j.Machine::match, version 590 (93 bytes) 
  0.23%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 600 (139 bytes) 
  0.15%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 600 (92 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (30 bytes) 
  0.08%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 600 (107 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 590 (215 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 613 (28 bytes) 
  0.05%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 683 (136 bytes) 
  0.03%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 590 (66 bytes) 
  1.79%    1.61%  <...other 382 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.38%   52.12%         C2, level 4  com.google.re2j.Machine::add, version 542 
 27.11%   24.90%         C2, level 4  com.google.re2j.Machine::step, version 550 
 10.36%   11.03%         C2, level 4  com.google.re2j.Machine::match, version 590 
  7.78%    9.33%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.61%    1.44%   [kernel.kallsyms]  [unknown] 
  0.51%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 600 
  0.21%    0.07%         C2, level 4  com.google.re2j.Matcher::find, version 613 
  0.12%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 683 
  0.08%    0.02%         C2, level 4  java.util.Collections::shuffle, version 620 
  0.04%    0.04%                      <unknown> 
  0.04%    0.03%           libjvm.so  RelocIterator::initialize 
  0.03%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.01%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.01%           libjvm.so  SpinPause 
  0.02%    0.02%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.01%         C2, level 4  com.google.re2j.Machine::freeQueue, version 609 
  0.02%                    libjvm.so  decode_env::handle_event 
  0.51%    0.40%  <...other 75 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 89.81%   88.38%         C2, level 4
  7.81%    9.35%        runtime stub
  1.61%    1.44%   [kernel.kallsyms]
  0.47%    0.47%           libjvm.so
  0.15%    0.25%        libc-2.26.so
  0.04%    0.04%  libpthread-2.26.so
  0.04%    0.04%                    
  0.02%    0.02%              [vdso]
  0.02%    0.01%         interpreter
  0.00%                    libzip.so
  0.00%             Unknown, level 0
  0.00%               perf-21422.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  8062.015 ± 45.002  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
