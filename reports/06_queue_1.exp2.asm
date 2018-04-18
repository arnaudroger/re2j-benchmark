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
# Warmup Iteration   1: 3893.478 ops/s
# Warmup Iteration   2: 6216.232 ops/s
# Warmup Iteration   3: 6255.967 ops/s
# Warmup Iteration   4: 6244.820 ops/s
# Warmup Iteration   5: 6320.024 ops/s
# Warmup Iteration   6: 6329.910 ops/s
# Warmup Iteration   7: 6334.677 ops/s
# Warmup Iteration   8: 6331.111 ops/s
# Warmup Iteration   9: 6309.218 ops/s
# Warmup Iteration  10: 6321.949 ops/s
# Warmup Iteration  11: 6310.348 ops/s
# Warmup Iteration  12: 6307.306 ops/s
# Warmup Iteration  13: 6337.660 ops/s
# Warmup Iteration  14: 6360.793 ops/s
# Warmup Iteration  15: 6362.853 ops/s
# Warmup Iteration  16: 6361.744 ops/s
# Warmup Iteration  17: 6291.071 ops/s
# Warmup Iteration  18: 6349.386 ops/s
# Warmup Iteration  19: 6346.419 ops/s
# Warmup Iteration  20: 6352.173 ops/s
Iteration   1: 6335.317 ops/s
Iteration   2: 6304.691 ops/s
Iteration   3: 6304.849 ops/s
Iteration   4: 6305.059 ops/s
Iteration   5: 6304.398 ops/s
Iteration   6: 6338.397 ops/s
Iteration   7: 6353.062 ops/s
Iteration   8: 6353.999 ops/s
Iteration   9: 6354.714 ops/s
Iteration  10: 6301.617 ops/s
Iteration  11: 6305.358 ops/s
Iteration  12: 6276.636 ops/s
Iteration  13: 6304.770 ops/s
Iteration  14: 6305.425 ops/s
Iteration  15: 6305.290 ops/s
Iteration  16: 6302.562 ops/s
Iteration  17: 6304.091 ops/s
Iteration  18: 6300.061 ops/s
Iteration  19: 6305.823 ops/s
Iteration  20: 6306.181 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  6313.615 ±(99.9%) 18.456 ops/s [Average]
  (min, avg, max) = (6276.636, 6313.615, 6354.714), stdev = 21.254
  CI (99.9%): [6295.159, 6332.071] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 196110 total address lines.
Perf output processed (skipped 23.496 seconds):
 Column 1: cycles (20514 events)
 Column 2: instructions (20504 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (381 bytes) 

                          0x00007f026437bb64: mov    %r10,(%rsp)
                          0x00007f026437bb68: data16 xchg %ax,%ax
                          0x00007f026437bb6b: callq  0x00007f02641b0020  ; OopMap{off=528}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f026437bb70: jmpq   0x00007f026437bcd7
                  │       0x00007f026437bb75: mov    0x70(%rsp),%rax
                  │╭      0x00007f026437bb7a: jmpq   0x00007f026437bcd7  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.94%    2.05%  ││      0x00007f026437bb7f: mov    0x20(%rsp),%r8d
  0.29%    0.32%  ││      0x00007f026437bb84: mov    0x28(%rsp),%r9
  0.11%    0.13%  ││      0x00007f026437bb89: mov    0x70(%rsp),%r10
  0.00%    0.01%  ││      0x00007f026437bb8e: mov    %r10,(%rsp)
  0.72%    0.97%  ││      0x00007f026437bb92: mov    %rsi,%rbp
  0.04%    0.05%  ││      0x00007f026437bb95: xchg   %ax,%ax
  0.05%    0.10%  ││      0x00007f026437bb97: callq  0x00007f02641b0020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=572}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.14%    0.06%  ││      0x00007f026437bb9c: mov    0x38(%rsp),%r10
  0.03%    0.02%  ││      0x00007f026437bba1: mov    0x34(%r10),%r10d
  0.85%    0.84%  ││      0x00007f026437bba5: mov    %r10,%rcx
  0.09%    0.07%  ││      0x00007f026437bba8: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.01%    0.02%  ││      0x00007f026437bbac: mov    %rbp,%rsi
  0.00%           ││      0x00007f026437bbaf: mov    0x40(%rsp),%rdx
  0.81%    0.85%  ││      0x00007f026437bbb4: mov    0x20(%rsp),%r8d
  0.07%    0.09%  ││      0x00007f026437bbb9: mov    0x28(%rsp),%r9
  0.03%    0.02%  ││      0x00007f026437bbbe: mov    0x30(%rsp),%edi
  0.01%    0.00%  ││      0x00007f026437bbc2: mov    %rax,(%rsp)
  0.68%    0.92%  ││      0x00007f026437bbc6: nop
  0.07%    0.09%  ││      0x00007f026437bbc7: callq  0x00007f02641b0020  ; OopMap{off=620}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.30%    0.36%  ││╭     0x00007f026437bbcc: jmpq   0x00007f026437bcd7  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  0.70%    0.64%  │││     0x00007f026437bbd1: mov    0x38(%rsp),%r10
  0.69%    0.61%  │││     0x00007f026437bbd6: mov    %r10,%r8
  0.15%    0.04%  │││     0x00007f026437bbd9: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
  0.02%    0.02%  │││     0x00007f026437bbdd: mov    0x70(%rsp),%rbx
  0.39%    0.38%  │││     0x00007f026437bbe2: test   %rbx,%rbx
                  │││╭    0x00007f026437bbe5: jne    0x00007f026437bce3  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.67%    0.66%  ││││    0x00007f026437bbeb: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.10%    0.05%  ││││    0x00007f026437bbef: test   %r9d,%r9d
                  ││││    0x00007f026437bbf2: jle    0x00007f026437bd91  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.03%    0.00%  ││││    0x00007f026437bbf8: mov    0x24(%rsi),%ecx    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.33%    0.30%  ││││    0x00007f026437bbfb: mov    %r9d,%ebp
  0.69%    0.35%  ││││    0x00007f026437bbfe: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.17%    0.11%  ││││    0x00007f026437bc00: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.01%  ││││    0x00007f026437bc03: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f026437be2d
  0.25%    0.27%  ││││    0x00007f026437bc08: cmp    %r11d,%ebp
                  ││││    0x00007f026437bc0b: jae    0x00007f026437bd39
  0.83%    0.61%  ││││    0x00007f026437bc11: lea    (%r12,%rcx,8),%r10
  0.11%    0.11%  ││││    0x00007f026437bc15: mov    0xc(%r10,%r9,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.01%  ││││    0x00007f026437bc1a: mov    %r8d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f026437be3d
  0.40%    0.33%  ││││    0x00007f026437bc1f: lea    (%r12,%r11,8),%rbx  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.65%    0.50%  ││││    0x00007f026437bc23: mov    %rbx,%r10
  0.07%    0.06%  ││││    0x00007f026437bc26: shr    $0x9,%r10
  0.04%    0.01%  ││││    0x00007f026437bc2a: movabs $0x7f025fb98000,%r11
  0.26%    0.29%  ││││    0x00007f026437bc34: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@291 (line 388)
  0.78%    0.92%  ││││ ↗  0x00007f026437bc38: mov    0x28(%rsp),%rdi
  0.14%    0.08%  ││││ │  0x00007f026437bc3d: mov    0xc(%rdi),%r11d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@293 (line 388)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f026437be05
  0.02%    0.03%  ││││ │  0x00007f026437bc41: test   %r11d,%r11d
                  ││││ │  0x00007f026437bc44: jle    0x00007f026437bd72  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@294 (line 388)
  0.20%    0.23%  ││││ │  0x00007f026437bc4a: mov    0xc(%rbx),%r10d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.82%    0.79%  ││││ │  0x00007f026437bc4e: mov    %r10,%r8
  0.13%    0.11%  ││││ │  0x00007f026437bc51: shl    $0x3,%r8
  0.07%    0.03%  ││││ │  0x00007f026437bc55: cmp    %rdi,%r8
                  ││││╭│  0x00007f026437bc58: je     0x00007f026437bc85  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.30%    0.21%  ││││││  0x00007f026437bc5a: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f026437be51
  1.15%    0.85%  ││││││  0x00007f026437bc5f: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.14%    0.05%  ││││││  0x00007f026437bc63: cmp    %r11d,%r9d
                  ││││││  0x00007f026437bc66: jb     0x00007f026437bd4d
  0.78%    0.76%  ││││││  0x00007f026437bc6c: lea    0x10(%r12,%r10,8),%rsi
  0.04%    0.05%  ││││││  0x00007f026437bc71: add    $0x10,%rdi
  0.49%    0.33%  ││││││  0x00007f026437bc75: movslq %r11d,%rdx
  0.07%    0.05%  ││││││  0x00007f026437bc78: movabs $0x7f02641bc640,%r10
  0.46%    0.60%  ││││││  0x00007f026437bc82: callq  *%r10              ;*aload_1
                  ││││││                                                ; - com.google.re2j.Machine::add@322 (line 391)
           0.00%  ││││↘│  0x00007f026437bc85: mov    0x40(%rsp),%r10
  0.51%    0.48%  ││││ │  0x00007f026437bc8a: mov    0xc(%r10),%r10d    ;*getfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.79%    0.73%  ││││ │  0x00007f026437bc8e: mov    0x40(%rsp),%r11
           0.01%  ││││ │  0x00007f026437bc93: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.26%    0.34%  ││││ │  0x00007f026437bc97: mov    %r10d,%r11d
  0.27%    0.27%  ││││ │  0x00007f026437bc9a: inc    %r11d
  0.64%    0.57%  ││││ │  0x00007f026437bc9d: mov    0x40(%rsp),%r8
  0.00%           ││││ │  0x00007f026437bca2: mov    %r11d,0xc(%r8)     ;*putfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.36%    0.36%  ││││ │  0x00007f026437bca6: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f026437be15
  0.31%    0.40%  ││││ │  0x00007f026437bcab: cmp    %r11d,%r10d
                  ││││ │  0x00007f026437bcae: jae    0x00007f026437bd1e  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.94%    1.02%  ││││ │  0x00007f026437bcb0: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
           0.00%  ││││ │  0x00007f026437bcb4: lea    0x10(%r11,%r10,4),%r10
  0.23%    0.30%  ││││ │  0x00007f026437bcb9: mov    %rbx,%r8
  0.15%    0.23%  ││││ │  0x00007f026437bcbc: shr    $0x3,%r8
  0.84%    1.27%  ││││ │  0x00007f026437bcc0: mov    %r8d,(%r10)
  2.61%    3.17%  ││││ │  0x00007f026437bcc3: shr    $0x9,%r10
  0.08%    0.06%  ││││ │  0x00007f026437bcc7: movabs $0x7f025fb98000,%r11
  0.06%    0.05%  ││││ │  0x00007f026437bcd1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.90%    1.07%  ││││ │  0x00007f026437bcd5: xor    %eax,%eax          ;*goto
                  ││││ │                                                ; - com.google.re2j.Machine::add@191 (line 364)
  1.28%    1.54%  ↘↘↘│ │  0x00007f026437bcd7: add    $0x60,%rsp
  0.05%    0.08%     │ │  0x00007f026437bcdb: pop    %rbp
  0.06%    0.09%     │ │  0x00007f026437bcdc: test   %eax,0x15f8831e(%rip)        # 0x00007f027a304000
                     │ │                                                ;   {poll_return}
  1.50%    1.90%     │ │  0x00007f026437bce2: retq   
                     ↘ │  0x00007f026437bce3: mov    %r8d,0x10(%rbx)
                       │  0x00007f026437bce7: mov    %rbx,%r10
                       │  0x00007f026437bcea: shr    $0x9,%r10
  0.02%    0.00%       │  0x00007f026437bcee: movabs $0x7f025fb98000,%r11
                       │  0x00007f026437bcf8: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@288 (line 386)
  0.00%                ╰  0x00007f026437bcfc: jmpq   0x00007f026437bc38  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007f026437bd01: mov    0x20(%rsp),%r8d
                          0x00007f026437bd06: mov    0x28(%rsp),%r9
                          0x00007f026437bd0b: mov    0x70(%rsp),%r10
                          0x00007f026437bd10: mov    %r10,(%rsp)
                          0x00007f026437bd14: data16 xchg %ax,%ax
                          0x00007f026437bd17: callq  0x00007f02641b0020  ; OopMap{off=956}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@165 (line 358)
....................................................................................................
 30.29%   31.39%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 491 (156 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007f026437b960: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007f026437b964: shl    $0x3,%r10
                     0x00007f026437b968: cmp    %r10,%rax
                     0x00007f026437b96b: jne    0x00007f02641afe20  ;   {runtime_call}
                     0x00007f026437b971: data16 xchg %ax,%ax
                     0x00007f026437b974: nopl   0x0(%rax,%rax,1)
                     0x00007f026437b97c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.94%    0.96%     0x00007f026437b980: mov    %eax,-0x14000(%rsp)
  1.22%    1.15%     0x00007f026437b987: push   %rbp
  0.19%    0.06%     0x00007f026437b988: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.78%    1.93%     0x00007f026437b98c: mov    %edi,0x30(%rsp)
  0.45%    0.27%     0x00007f026437b990: mov    %r9,0x28(%rsp)
  0.08%    0.01%     0x00007f026437b995: mov    %r8d,0x20(%rsp)
  0.92%    0.87%     0x00007f026437b99a: mov    %rsi,0x8(%rsp)
  0.82%    0.82%     0x00007f026437b99f: mov    %rcx,0x38(%rsp)
  0.26%    0.14%     0x00007f026437b9a4: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f026437bde1
  0.57%    0.49%     0x00007f026437b9a7: mov    %rdx,0x40(%rsp)
  0.84%    0.72%     0x00007f026437b9ac: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f026437bdf1
  0.69%    0.88%     0x00007f026437b9b0: cmp    $0x40,%ecx
                     0x00007f026437b9b3: jg     0x00007f026437ba31  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.43%    0.36%     0x00007f026437b9b5: mov    $0x1,%r8d
  0.06%    0.02%     0x00007f026437b9bb: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.13%    2.24%     0x00007f026437b9be: mov    %r11,%r10
  0.03%    0.05%     0x00007f026437b9c1: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.83%    0.88%     0x00007f026437b9c4: test   %r10,%r10
                     0x00007f026437b9c7: jne    0x00007f026437ba5d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.91%    0.89%     0x00007f026437b9cd: cmp    $0x40,%ecx
                     0x00007f026437b9d0: jge    0x00007f026437ba81  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.24%    0.22%     0x00007f026437b9d6: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.03%    0.01%     0x00007f026437b9da: mov    0x38(%rsp),%r10
  1.44%    1.07%     0x00007f026437b9df: mov    0xc(%r10),%r10d    ;*getfield op
                                                                   ; - com.google.re2j.Machine::add@23 (line 343)
  1.05%    0.84%     0x00007f026437b9e3: or     %r11,%r8
  0.31%    0.31%     0x00007f026437b9e6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.04%    0.04%     0x00007f026437b9ea: mov    %r10d,%r11d
  0.80%    0.86%     0x00007f026437b9ed: dec    %r11d
  0.96%    0.55%     0x00007f026437b9f0: cmp    $0xc,%r11d
                  ╭  0x00007f026437b9f4: jae    0x00007f026437ba21  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.39%    0.44%  │  0x00007f026437b9f6: mov    0x38(%rsp),%r11
  0.02%    0.03%  │  0x00007f026437b9fb: mov    0x14(%r11),%r11d   ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.79%    0.85%  │  0x00007f026437b9ff: mov    0x38(%rsp),%r8
  0.82%    0.50%  │  0x00007f026437ba04: mov    0x30(%r8),%r8d
  0.41%    0.34%  │  0x00007f026437ba08: movslq %r10d,%r9
  0.02%    0.02%  │  0x00007f026437ba0b: mov    %r8,%rcx
  0.74%    0.93%  │  0x00007f026437ba0e: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  0.90%    0.54%  │  0x00007f026437ba12: movabs $0x7f026437b900,%r10  ;   {section_word}
  0.40%    0.33%  │  0x00007f026437ba1c: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
                  ↘  0x00007f026437ba21: mov    $0x35,%esi
                     0x00007f026437ba26: nop
                     0x00007f026437ba27: callq  0x00007f026416f1a0  ; OopMap{off=204}
                                                                   ;*new  ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f026437ba2c: callq  0x00007f0278ff1c50  ;*new
                                                                   ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f026437ba31: mov    $0xffffff65,%esi
....................................................................................................
 22.52%   20.66%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 502 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007f0264384c40: mov    0x8(%rsi),%r10d
                     0x00007f0264384c44: shl    $0x3,%r10
                     0x00007f0264384c48: cmp    %r10,%rax
                     0x00007f0264384c4b: jne    0x00007f02641afe20  ;   {runtime_call}
                     0x00007f0264384c51: data16 xchg %ax,%ax
                     0x00007f0264384c54: nopl   0x0(%rax,%rax,1)
                     0x00007f0264384c5c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.05%    0.05%     0x00007f0264384c60: mov    %eax,-0x14000(%rsp)
  0.18%    0.20%     0x00007f0264384c67: push   %rbp
  0.07%    0.04%     0x00007f0264384c68: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.11%     0x00007f0264384c6c: mov    %edi,0x20(%rsp)
  0.03%    0.01%     0x00007f0264384c70: mov    %r9d,0x1c(%rsp)
  0.03%    0.02%     0x00007f0264384c75: mov    %r8d,0x18(%rsp)
  0.06%    0.01%     0x00007f0264384c7a: mov    %rcx,0x10(%rsp)
  0.15%    0.12%     0x00007f0264384c7f: mov    %rdx,0x8(%rsp)
  0.03%    0.01%     0x00007f0264384c84: mov    %rsi,0x28(%rsp)
  0.07%    0.05%     0x00007f0264384c89: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.13%    0.05%     0x00007f0264384c8d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007f02643852ed
  0.22%    0.29%     0x00007f0264384c93: mov    %r10d,0x24(%rsp)
  0.06%    0.05%     0x00007f0264384c98: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f02643852fd
  0.03%    0.03%     0x00007f0264384c9c: test   %r11d,%r11d
                     0x00007f0264384c9f: jle    0x00007f0264384fb0  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
           0.00%     0x00007f0264384ca5: mov    0x24(%rsp),%r10d
  0.39%    0.26%     0x00007f0264384caa: test   %r10d,%r10d
                     0x00007f0264384cad: jne    0x00007f0264385139  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.08%    0.06%     0x00007f0264384cb3: xor    %r11d,%r11d
  0.03%    0.02%  ╭  0x00007f0264384cb6: jmpq   0x00007f0264384d4b
                  │  0x00007f0264384cbb: nopl   0x0(%rax,%rax,1)
                  │  0x00007f0264384cc0: mov    0x68(%rsp),%ebx
                  │  0x00007f0264384cc4: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.74%    0.71%  │  0x00007f0264384cc8: mov    0x8(%rsp),%r8
                  │  0x00007f0264384ccd: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.18%    0.22%  │  0x00007f0264384cd1: mov    0x28(%rsp),%r8
  0.23%    0.19%  │  0x00007f0264384cd6: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.73%    0.73%  │  0x00007f0264384cda: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f0264384cde: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.15%    0.20%  │  0x00007f0264384ce1: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007f02643852cd
  0.21%    0.31%  │  0x00007f0264384ce6: cmp    %ebp,%r8d
                  │  0x00007f0264384ce9: jge    0x00007f02643850e1  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.71%    0.58%  │  0x00007f0264384cef: mov    %r8d,%edi
                  │  0x00007f0264384cf2: inc    %edi
  0.10%    0.18%  │  0x00007f0264384cf4: mov    0x28(%rsp),%rsi
  0.19%    0.35%  │  0x00007f0264384cf9: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.76%    0.61%  │  0x00007f0264384cfc: cmp    %ebp,%r8d
                  │  0x00007f0264384cff: jae    0x00007f0264385051  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f0264384d05: mov    %rax,%r11
  0.18%    0.11%  │  0x00007f0264384d08: shr    $0x3,%r11
  0.20%    0.28%  │  0x00007f0264384d0c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.81%    0.51%  │  0x00007f0264384d10: lea    0x10(%rdi,%r8,4),%r8
                  │  0x00007f0264384d15: mov    %r11d,(%r8)
  0.20%    0.18%  │  0x00007f0264384d18: mov    %r8,%r11
  0.23%    0.27%  │  0x00007f0264384d1b: shr    $0x9,%r11
  0.73%    0.51%  │  0x00007f0264384d1f: movabs $0x7f025fb98000,%r8
                  │  0x00007f0264384d29: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.28%    0.27%  │  0x00007f0264384d2d: test   %eax,0x15f7f2cd(%rip)        # 0x00007f027a304000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.19%    0.22%  │  0x00007f0264384d33: cmp    %r9d,%r10d
                  │  0x00007f0264384d36: jge    0x00007f0264384fb0
  0.67%    0.40%  │  0x00007f0264384d3c: mov    %ecx,0x20(%rsp)
  0.01%    0.01%  │  0x00007f0264384d40: mov    %ebx,0x68(%rsp)
  0.19%    0.17%  │  0x00007f0264384d44: mov    %edx,0x70(%rsp)
  0.17%    0.27%  │  0x00007f0264384d48: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.62%    0.31%  ↘  0x00007f0264384d4b: mov    0x8(%rsp),%r10
  0.09%    0.10%     0x00007f0264384d50: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.23%    0.27%     0x00007f0264384d54: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f0264385299
  0.61%    0.65%     0x00007f0264384d59: cmp    %r9d,%r11d
                     0x00007f0264384d5c: jae    0x00007f0264385014
  0.68%    0.44%     0x00007f0264384d62: shl    $0x3,%r10
  0.02%    0.02%     0x00007f0264384d66: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.17%    0.16%     0x00007f0264384d6b: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007f02643852ad
  1.65%    1.92%     0x00007f0264384d70: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007f02643852bd
  3.35%    3.38%     0x00007f0264384d75: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
                     0x00007f0264384d7a: mov    %r11d,%r10d
  0.07%    0.02%     0x00007f0264384d7d: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.07%    0.09%     0x00007f0264384d80: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  1.05%    0.79%     0x00007f0264384d84: cmp    $0x9,%ecx
                     0x00007f0264384d87: je     0x00007f0264384f88
  0.10%    0.11%     0x00007f0264384d8d: cmp    $0x9,%ecx
                     0x00007f0264384d90: jg     0x00007f0264384eec
                     0x00007f0264384d96: cmp    $0x7,%ecx
                     0x00007f0264384d99: je     0x00007f0264385129
                     0x00007f0264384d9f: cmp    $0x7,%ecx
                     0x00007f0264384da2: jg     0x00007f0264384e9e
                     0x00007f0264384da8: cmp    $0x6,%ecx
                     0x00007f0264384dab: jne    0x00007f0264385129  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007f0264384db1: mov    0x68(%rsp),%ebx
                     0x00007f0264384db5: cmp    $0x2,%ebx
....................................................................................................
 18.31%   16.98%  <total for region 3>

....[Hottest Regions]...............................................................................
 30.29%   31.39%         C2, level 4  com.google.re2j.Machine::add, version 491 (381 bytes) 
 22.52%   20.66%         C2, level 4  com.google.re2j.Machine::add, version 491 (156 bytes) 
 18.31%   16.98%         C2, level 4  com.google.re2j.Machine::step, version 502 (301 bytes) 
  8.89%   10.08%         C2, level 4  com.google.re2j.Machine::match, version 542 (877 bytes) 
  7.37%    7.38%         C2, level 4  com.google.re2j.Machine::step, version 502 (187 bytes) 
  7.34%    9.17%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  0.91%    0.90%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.81%    0.74%         C2, level 4  com.google.re2j.Machine::step, version 502 (56 bytes) 
  0.50%    0.09%         C2, level 4  com.google.re2j.Machine::init, version 551 (299 bytes) 
  0.35%    0.33%         C2, level 4  com.google.re2j.Machine::match, version 542 (124 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 551 (46 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (16 bytes) 
  0.06%    0.04%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 551 (7 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (60 bytes) 
  0.05%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 643 (68 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Matcher::genMatch, version 575 (38 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (12 bytes) 
  2.05%    2.04%  <...other 441 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.81%   52.05%         C2, level 4  com.google.re2j.Machine::add, version 491 
 26.52%   25.14%         C2, level 4  com.google.re2j.Machine::step, version 502 
  9.34%   10.47%         C2, level 4  com.google.re2j.Machine::match, version 542 
  7.34%    9.17%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.03%    1.78%   [kernel.kallsyms]  [unknown] 
  0.71%    0.15%         C2, level 4  com.google.re2j.Machine::init, version 551 
  0.23%    0.13%         C2, level 4  com.google.re2j.Matcher::genMatch, version 575 
  0.12%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 643 
  0.06%    0.08%        libc-2.26.so  vfprintf 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.04%         C2, level 4  java.util.Collections::shuffle, version 578 
  0.04%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%                    libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.00%              [vdso]  [unknown] 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.49%    0.38%  <...other 76 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 89.80%   88.03%         C2, level 4
  7.35%    9.19%        runtime stub
  2.03%    1.78%   [kernel.kallsyms]
  0.46%    0.48%           libjvm.so
  0.20%    0.40%        libc-2.26.so
  0.06%    0.05%  libpthread-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.02%    0.00%              [vdso]
  0.01%    0.01%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  6313.615 ± 18.456  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
