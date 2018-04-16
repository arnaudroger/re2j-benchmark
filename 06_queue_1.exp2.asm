# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3407.290 ops/s
# Warmup Iteration   2: 7404.170 ops/s
# Warmup Iteration   3: 7786.094 ops/s
# Warmup Iteration   4: 7735.371 ops/s
# Warmup Iteration   5: 7946.838 ops/s
# Warmup Iteration   6: 8023.676 ops/s
# Warmup Iteration   7: 7905.091 ops/s
# Warmup Iteration   8: 7641.103 ops/s
# Warmup Iteration   9: 7693.517 ops/s
# Warmup Iteration  10: 7977.083 ops/s
# Warmup Iteration  11: 7884.692 ops/s
# Warmup Iteration  12: 7874.740 ops/s
# Warmup Iteration  13: 8092.175 ops/s
# Warmup Iteration  14: 7875.980 ops/s
# Warmup Iteration  15: 7466.176 ops/s
# Warmup Iteration  16: 8054.283 ops/s
# Warmup Iteration  17: 7886.689 ops/s
# Warmup Iteration  18: 7992.006 ops/s
# Warmup Iteration  19: 8038.908 ops/s
# Warmup Iteration  20: 8017.426 ops/s
Iteration   1: 8003.230 ops/s
Iteration   2: 7881.068 ops/s
Iteration   3: 7947.633 ops/s
Iteration   4: 7955.098 ops/s
Iteration   5: 7965.460 ops/s
Iteration   6: 7973.539 ops/s
Iteration   7: 7895.620 ops/s
Iteration   8: 7971.701 ops/s
Iteration   9: 7972.627 ops/s
Iteration  10: 8031.800 ops/s
Iteration  11: 7991.001 ops/s
Iteration  12: 7960.788 ops/s
Iteration  13: 8015.905 ops/s
Iteration  14: 8005.654 ops/s
Iteration  15: 8006.890 ops/s
Iteration  16: 7950.680 ops/s
Iteration  17: 7550.925 ops/s
Iteration  18: 8019.527 ops/s
Iteration  19: 8032.845 ops/s
Iteration  20: 8011.796 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  7957.189 ±(99.9%) 90.255 ops/s [Average]
  (min, avg, max) = (7550.925, 7957.189, 8032.845), stdev = 103.938
  CI (99.9%): [7866.934, 8047.445] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 211397 total address lines.
Perf output processed (skipped 23.864 seconds):
 Column 1: cycles (20544 events)
 Column 2: instructions (20606 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 522 (367 bytes) 

                          0x00007f4109232b24: mov    %r10,(%rsp)
                          0x00007f4109232b28: data16 xchg %ax,%ax
                          0x00007f4109232b2b: callq  0x00007f4109046020  ; OopMap{off=528}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@186 (line 363)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007f4109232b30: jmpq   0x00007f4109232c97
                  │       0x00007f4109232b35: mov    0x70(%rsp),%rax
                  │╭      0x00007f4109232b3a: jmpq   0x00007f4109232c97  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@26 (line 343)
  1.24%    1.47%  ││      0x00007f4109232b3f: mov    0x20(%rsp),%r8d
  0.20%    0.25%  ││      0x00007f4109232b44: mov    0x28(%rsp),%r9
  0.01%    0.02%  ││      0x00007f4109232b49: mov    0x70(%rsp),%r10
  0.03%    0.02%  ││      0x00007f4109232b4e: mov    %r10,(%rsp)
  0.57%    0.84%  ││      0x00007f4109232b52: mov    %rsi,%rbp
  0.22%    0.27%  ││      0x00007f4109232b55: xchg   %ax,%ax
  0.01%    0.03%  ││      0x00007f4109232b57: callq  0x00007f4109046020  ; OopMap{rbp=Oop [40]=Oop [56]=Oop [64]=Oop off=572}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@114 (line 352)
                  ││                                                    ;   {optimized virtual_call}
  0.08%    0.06%  ││      0x00007f4109232b5c: mov    0x38(%rsp),%r10
  0.02%    0.03%  ││      0x00007f4109232b61: mov    0x34(%r10),%r10d
  0.78%    1.01%  ││      0x00007f4109232b65: mov    %r10,%rcx
  0.06%    0.09%  ││      0x00007f4109232b68: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@122 (line 353)
  0.06%    0.05%  ││      0x00007f4109232b6c: mov    %rbp,%rsi
           0.00%  ││      0x00007f4109232b6f: mov    0x40(%rsp),%rdx
  0.73%    0.89%  ││      0x00007f4109232b74: mov    0x20(%rsp),%r8d
  0.07%    0.10%  ││      0x00007f4109232b79: mov    0x28(%rsp),%r9
  0.04%    0.06%  ││      0x00007f4109232b7e: mov    0x30(%rsp),%edi
           0.01%  ││      0x00007f4109232b82: mov    %rax,(%rsp)
  0.80%    0.91%  ││      0x00007f4109232b86: nop
  0.07%    0.09%  ││      0x00007f4109232b87: callq  0x00007f4109046020  ; OopMap{off=620}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@132 (line 353)
                  ││                                                    ;   {optimized virtual_call}
  0.29%    0.34%  ││╭     0x00007f4109232b8c: jmpq   0x00007f4109232c97  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@270 (line 383)
  0.87%    0.69%  │││     0x00007f4109232b91: mov    0x38(%rsp),%r10
  0.75%    0.53%  │││     0x00007f4109232b96: mov    %r10,%r8
  0.13%    0.11%  │││     0x00007f4109232b99: shr    $0x3,%r8           ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                   ; - com.google.re2j.Machine::add@277 (line 384)
           0.01%  │││     0x00007f4109232b9d: mov    0x70(%rsp),%rbx
  0.42%    0.31%  │││     0x00007f4109232ba2: test   %rbx,%rbx
                  │││╭    0x00007f4109232ba5: jne    0x00007f4109232ca3  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@272 (line 383)
  0.63%    0.61%  ││││    0x00007f4109232bab: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.12%    0.12%  ││││    0x00007f4109232baf: test   %r9d,%r9d
                  ││││    0x00007f4109232bb2: jle    0x00007f4109232d51  ;*ifle
                  ││││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.01%  ││││    0x00007f4109232bb8: mov    0x24(%rsi),%ecx    ;*getfield pool
                  ││││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.38%    0.28%  ││││    0x00007f4109232bbb: mov    %r9d,%ebp
  0.64%    0.37%  ││││    0x00007f4109232bbe: dec    %ebp               ;*isub
                  ││││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.17%    0.15%  ││││    0x00007f4109232bc0: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  ││││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.00%    0.01%  ││││    0x00007f4109232bc3: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f4109232ded
  0.35%    0.25%  ││││    0x00007f4109232bc8: cmp    %r11d,%ebp
                  ││││    0x00007f4109232bcb: jae    0x00007f4109232cf9
  0.64%    0.50%  ││││    0x00007f4109232bd1: lea    (%r12,%rcx,8),%r10
  0.08%    0.14%  ││││    0x00007f4109232bd5: mov    0xc(%r10,%r9,4),%r11d  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.01%    0.02%  ││││    0x00007f4109232bda: mov    %r8d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
                  ││││                                                  ; implicit exception: dispatches to 0x00007f4109232dfd
  0.45%    0.47%  ││││    0x00007f4109232bdf: lea    (%r12,%r11,8),%rbx  ;*aaload
                  ││││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││││                                                  ; - com.google.re2j.Machine::add@277 (line 384)
  0.56%    0.50%  ││││    0x00007f4109232be3: mov    %rbx,%r10
  0.15%    0.15%  ││││    0x00007f4109232be6: shr    $0x9,%r10
  0.00%    0.00%  ││││    0x00007f4109232bea: movabs $0x7f411a6ac000,%r11
  0.33%    0.32%  ││││    0x00007f4109232bf4: mov    %r12b,(%r11,%r10,1)  ;*aload
                  ││││                                                  ; - com.google.re2j.Machine::add@291 (line 388)
  0.79%    0.75%  ││││ ↗  0x00007f4109232bf8: mov    0x28(%rsp),%rdi
  0.14%    0.11%  ││││ │  0x00007f4109232bfd: mov    0xc(%rdi),%r11d    ;*arraylength
                  ││││ │                                                ; - com.google.re2j.Machine::add@293 (line 388)
                  ││││ │                                                ; implicit exception: dispatches to 0x00007f4109232dc5
  0.02%    0.01%  ││││ │  0x00007f4109232c01: test   %r11d,%r11d
                  ││││ │  0x00007f4109232c04: jle    0x00007f4109232d32  ;*ifle
                  ││││ │                                                ; - com.google.re2j.Machine::add@294 (line 388)
  0.26%    0.24%  ││││ │  0x00007f4109232c0a: mov    0xc(%rbx),%r10d    ;*getfield cap
                  ││││ │                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.74%    0.78%  ││││ │  0x00007f4109232c0e: mov    %r10,%r8
  0.14%    0.08%  ││││ │  0x00007f4109232c11: shl    $0x3,%r8
  0.03%    0.05%  ││││ │  0x00007f4109232c15: cmp    %rdi,%r8
                  ││││╭│  0x00007f4109232c18: je     0x00007f4109232c45  ;*if_acmpeq
                  ││││││                                                ; - com.google.re2j.Machine::add@304 (line 388)
  0.29%    0.26%  ││││││  0x00007f4109232c1a: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f4109232e11
  0.93%    0.83%  ││││││  0x00007f4109232c1f: lea    (%r12,%r10,8),%rcx  ;*getfield cap
                  ││││││                                                ; - com.google.re2j.Machine::add@299 (line 388)
  0.11%    0.04%  ││││││  0x00007f4109232c23: cmp    %r11d,%r9d
                  ││││││  0x00007f4109232c26: jb     0x00007f4109232d0d
  0.74%    0.69%  ││││││  0x00007f4109232c2c: lea    0x10(%r12,%r10,8),%rsi
  0.09%    0.11%  ││││││  0x00007f4109232c31: add    $0x10,%rdi
  0.53%    0.25%  ││││││  0x00007f4109232c35: movslq %r11d,%rdx
  0.12%    0.03%  ││││││  0x00007f4109232c38: movabs $0x7f4109052640,%r10
  0.34%    0.42%  ││││││  0x00007f4109232c42: callq  *%r10              ;*aload_1
                  ││││││                                                ; - com.google.re2j.Machine::add@322 (line 391)
  0.01%    0.01%  ││││↘│  0x00007f4109232c45: mov    0x40(%rsp),%r10
  0.33%    0.40%  ││││ │  0x00007f4109232c4a: mov    0xc(%r10),%r10d    ;*getfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.83%    0.78%  ││││ │  0x00007f4109232c4e: mov    0x40(%rsp),%r11
  0.00%    0.00%  ││││ │  0x00007f4109232c53: mov    0x20(%r11),%ebp    ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.25%    0.27%  ││││ │  0x00007f4109232c57: mov    %r10d,%r11d
  0.18%    0.20%  ││││ │  0x00007f4109232c5a: inc    %r11d
  0.70%    0.62%  ││││ │  0x00007f4109232c5d: mov    0x40(%rsp),%r8
  0.00%           ││││ │  0x00007f4109232c62: mov    %r11d,0xc(%r8)     ;*putfield size
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.38%    0.42%  ││││ │  0x00007f4109232c66: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4109232dd5
  0.40%    0.41%  ││││ │  0x00007f4109232c6b: cmp    %r11d,%r10d
                  ││││ │  0x00007f4109232c6e: jae    0x00007f4109232cde  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  1.01%    1.19%  ││││ │  0x00007f4109232c70: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
                  ││││ │  0x00007f4109232c74: lea    0x10(%r11,%r10,4),%r10
  0.24%    0.29%  ││││ │  0x00007f4109232c79: mov    %rbx,%r8
  0.16%    0.24%  ││││ │  0x00007f4109232c7c: shr    $0x3,%r8
  0.76%    1.38%  ││││ │  0x00007f4109232c80: mov    %r8d,(%r10)
  2.64%    3.14%  ││││ │  0x00007f4109232c83: shr    $0x9,%r10
  0.07%    0.06%  ││││ │  0x00007f4109232c87: movabs $0x7f411a6ac000,%r11
  0.08%    0.05%  ││││ │  0x00007f4109232c91: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││││ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││││ │                                                ; - com.google.re2j.Machine::add@325 (line 391)
  0.98%    1.17%  ││││ │  0x00007f4109232c95: xor    %eax,%eax          ;*goto
                  ││││ │                                                ; - com.google.re2j.Machine::add@191 (line 364)
  1.21%    1.27%  ↘↘↘│ │  0x00007f4109232c97: add    $0x60,%rsp
  0.04%    0.04%     │ │  0x00007f4109232c9b: pop    %rbp
  0.07%    0.05%     │ │  0x00007f4109232c9c: test   %eax,0x18a7135e(%rip)        # 0x00007f4121ca4000
                     │ │                                                ;   {poll_return}
  1.60%    1.99%     │ │  0x00007f4109232ca2: retq   
           0.01%     ↘ │  0x00007f4109232ca3: mov    %r8d,0x10(%rbx)
                       │  0x00007f4109232ca7: mov    %rbx,%r10
                       │  0x00007f4109232caa: shr    $0x9,%r10
  0.06%    0.01%       │  0x00007f4109232cae: movabs $0x7f411a6ac000,%r11
                       │  0x00007f4109232cb8: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                       │                                                ; - com.google.re2j.Machine::add@288 (line 386)
                       ╰  0x00007f4109232cbc: jmpq   0x00007f4109232bf8  ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@26 (line 343)
                          0x00007f4109232cc1: mov    0x20(%rsp),%r8d
                          0x00007f4109232cc6: mov    0x28(%rsp),%r9
                          0x00007f4109232ccb: mov    0x70(%rsp),%r10
                          0x00007f4109232cd0: mov    %r10,(%rsp)
                          0x00007f4109232cd4: data16 xchg %ax,%ax
                          0x00007f4109232cd7: callq  0x00007f4109046020  ; OopMap{off=956}
....................................................................................................
 29.26%   30.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 522 (156 bytes) 

                     # parm4:    rdi       = int
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                     0x00007f4109232920: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                     0x00007f4109232924: shl    $0x3,%r10
                     0x00007f4109232928: cmp    %r10,%rax
                     0x00007f410923292b: jne    0x00007f4109045e20  ;   {runtime_call}
                     0x00007f4109232931: data16 xchg %ax,%ax
                     0x00007f4109232934: nopl   0x0(%rax,%rax,1)
                     0x00007f410923293c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  1.09%    1.09%     0x00007f4109232940: mov    %eax,-0x14000(%rsp)
  1.11%    1.20%     0x00007f4109232947: push   %rbp
  0.20%    0.16%     0x00007f4109232948: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::add@-1 (line 339)
  1.84%    1.96%     0x00007f410923294c: mov    %edi,0x30(%rsp)
  0.33%    0.10%     0x00007f4109232950: mov    %r9,0x28(%rsp)
  0.11%    0.11%     0x00007f4109232955: mov    %r8d,0x20(%rsp)
  0.85%    0.73%     0x00007f410923295a: mov    %rsi,0x8(%rsp)
  1.06%    1.05%     0x00007f410923295f: mov    %rcx,0x38(%rsp)
  0.14%    0.16%     0x00007f4109232964: mov    0x28(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Machine::add@2 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f4109232da1
  1.04%    0.97%     0x00007f4109232967: mov    %rdx,0x40(%rsp)
  0.73%    0.62%     0x00007f410923296c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
                                                                   ; implicit exception: dispatches to 0x00007f4109232db1
  1.36%    1.54%     0x00007f4109232970: cmp    $0x40,%ecx
                     0x00007f4109232973: jg     0x00007f41092329f1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.29%    0.41%     0x00007f4109232975: mov    $0x1,%r8d
  0.06%    0.04%     0x00007f410923297b: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  2.11%    2.19%     0x00007f410923297e: mov    %r11,%r10
  0.05%    0.05%     0x00007f4109232981: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.79%    0.62%     0x00007f4109232984: test   %r10,%r10
                     0x00007f4109232987: jne    0x00007f4109232a1d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Machine::add@5 (line 339)
  0.98%    0.93%     0x00007f410923298d: cmp    $0x40,%ecx
                     0x00007f4109232990: jge    0x00007f4109232a41  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.35%    0.23%     0x00007f4109232996: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.04%    0.02%     0x00007f410923299a: mov    0x38(%rsp),%r10
  1.21%    0.94%     0x00007f410923299f: mov    0xc(%r10),%r10d    ;*getfield op
                                                                   ; - com.google.re2j.Machine::add@23 (line 343)
  1.29%    0.99%     0x00007f41092329a3: or     %r11,%r8
  0.19%    0.22%     0x00007f41092329a6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Machine::add@19 (line 342)
  0.04%    0.04%     0x00007f41092329aa: mov    %r10d,%r11d
  0.67%    0.72%     0x00007f41092329ad: dec    %r11d
  1.20%    0.84%     0x00007f41092329b0: cmp    $0xc,%r11d
                  ╭  0x00007f41092329b4: jae    0x00007f41092329e1  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
  0.31%    0.32%  │  0x00007f41092329b6: mov    0x38(%rsp),%r11
  0.04%    0.04%  │  0x00007f41092329bb: mov    0x14(%r11),%r11d   ;*getfield arg
                  │                                                ; - com.google.re2j.Machine::add@141 (line 357)
  0.73%    0.57%  │  0x00007f41092329bf: mov    0x38(%rsp),%r8
  1.04%    0.79%  │  0x00007f41092329c4: mov    0x30(%r8),%r8d
  0.39%    0.35%  │  0x00007f41092329c8: movslq %r10d,%r9
  0.01%    0.05%  │  0x00007f41092329cb: mov    %r8,%rcx
  0.61%    0.63%  │  0x00007f41092329ce: shl    $0x3,%rcx          ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::add@176 (line 363)
  1.02%    0.77%  │  0x00007f41092329d2: movabs $0x7f41092328c0,%r10  ;   {section_word}
  0.29%    0.25%  │  0x00007f41092329dc: jmpq   *-0x8(%r10,%r9,8)  ;*tableswitch
                  │                                                ; - com.google.re2j.Machine::add@26 (line 343)
                  ↘  0x00007f41092329e1: mov    $0x35,%esi
                     0x00007f41092329e6: nop
                     0x00007f41092329e7: callq  0x00007f41090051a0  ; OopMap{off=204}
                                                                   ;*new  ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f41092329ec: callq  0x00007f4120991c50  ;*new
                                                                   ; - com.google.re2j.Machine::add@88 (line 345)
                                                                   ;   {runtime_call}
                     0x00007f41092329f1: mov    $0xffffff65,%esi
....................................................................................................
 23.57%   21.70%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 532 (301 bytes) 

                     # parm6:    [sp+0x68]   = int
                     # parm7:    [sp+0x70]   = boolean
                     0x00007f410923c5c0: mov    0x8(%rsi),%r10d
                     0x00007f410923c5c4: shl    $0x3,%r10
                     0x00007f410923c5c8: cmp    %r10,%rax
                     0x00007f410923c5cb: jne    0x00007f4109045e20  ;   {runtime_call}
                     0x00007f410923c5d1: data16 xchg %ax,%ax
                     0x00007f410923c5d4: nopl   0x0(%rax,%rax,1)
                     0x00007f410923c5dc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.27%    0.10%     0x00007f410923c5e0: mov    %eax,-0x14000(%rsp)
  0.05%    0.06%     0x00007f410923c5e7: push   %rbp
  0.03%    0.03%     0x00007f410923c5e8: sub    $0x50,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.09%     0x00007f410923c5ec: mov    %edi,0x20(%rsp)
  0.07%    0.04%     0x00007f410923c5f0: mov    %r9d,0x1c(%rsp)
  0.01%    0.03%     0x00007f410923c5f5: mov    %r8d,0x18(%rsp)
  0.16%    0.14%     0x00007f410923c5fa: mov    %rcx,0x10(%rsp)
  0.01%    0.01%     0x00007f410923c5ff: mov    %rdx,0x8(%rsp)
  0.03%    0.04%     0x00007f410923c604: mov    %rsi,0x28(%rsp)
  0.04%    0.00%     0x00007f410923c609: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                   ; - com.google.re2j.Machine::step@1 (line 276)
  0.18%    0.13%     0x00007f410923c60d: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                   ; - com.google.re2j.Machine::step@4 (line 276)
                                                                   ; implicit exception: dispatches to 0x00007f410923cc6d
  0.00%    0.00%     0x00007f410923c613: mov    %r10d,0x24(%rsp)
  0.06%    0.03%     0x00007f410923c618: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x00007f410923cc7d
           0.01%     0x00007f410923c61c: test   %r11d,%r11d
                     0x00007f410923c61f: jle    0x00007f410923c930  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::step@18 (line 277)
  0.16%    0.08%     0x00007f410923c625: mov    0x24(%rsp),%r10d
  0.23%    0.05%     0x00007f410923c62a: test   %r10d,%r10d
                     0x00007f410923c62d: jne    0x00007f410923cab9  ;*aload_1
                                                                   ; - com.google.re2j.Machine::step@21 (line 278)
  0.09%    0.06%     0x00007f410923c633: xor    %r11d,%r11d
           0.00%  ╭  0x00007f410923c636: jmpq   0x00007f410923c6cb
                  │  0x00007f410923c63b: nopl   0x0(%rax,%rax,1)
                  │  0x00007f410923c640: mov    0x68(%rsp),%ebx
                  │  0x00007f410923c644: mov    0x70(%rsp),%edx    ;*goto
                  │                                                ; - com.google.re2j.Machine::step@224 (line 301)
  0.82%    0.76%  │  0x00007f410923c648: mov    0x8(%rsp),%r8
                  │  0x00007f410923c64d: mov    0xc(%r8),%r9d      ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.14%    0.18%  │  0x00007f410923c651: mov    0x28(%rsp),%r8
  0.31%    0.24%  │  0x00007f410923c656: mov    0x24(%r8),%r13d    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.71%    0.80%  │  0x00007f410923c65a: mov    0xc(%r8),%r8d      ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@1 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f410923c65e: mov    %rsi,%rax          ;*getfield size
                  │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.12%    0.16%  │  0x00007f410923c661: mov    0xc(%r12,%r13,8),%ebp  ;*arraylength
                  │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │                                                ; implicit exception: dispatches to 0x00007f410923cc4d
  0.26%    0.42%  │  0x00007f410923c666: cmp    %ebp,%r8d
                  │  0x00007f410923c669: jge    0x00007f410923ca61  ;*if_icmplt
                  │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.77%    0.83%  │  0x00007f410923c66f: mov    %r8d,%edi
                  │  0x00007f410923c672: inc    %edi
  0.16%    0.13%  │  0x00007f410923c674: mov    0x28(%rsp),%rsi
  0.28%    0.32%  │  0x00007f410923c679: mov    %edi,0xc(%rsi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.70%    0.73%  │  0x00007f410923c67c: cmp    %ebp,%r8d
                  │  0x00007f410923c67f: jae    0x00007f410923c9d1  ;*aastore
                  │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
                  │  0x00007f410923c685: mov    %rax,%r11
  0.15%    0.16%  │  0x00007f410923c688: shr    $0x3,%r11
  0.27%    0.35%  │  0x00007f410923c68c: lea    (%r12,%r13,8),%rdi  ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │                                                ; - com.google.re2j.Machine::step@330 (line 327)
  0.72%    0.57%  │  0x00007f410923c690: lea    0x10(%rdi,%r8,4),%r8
                  │  0x00007f410923c695: mov    %r11d,(%r8)
  0.17%    0.16%  │  0x00007f410923c698: mov    %r8,%r11
  0.19%    0.31%  │  0x00007f410923c69b: shr    $0x9,%r11
  0.71%    0.50%  │  0x00007f410923c69f: movabs $0x7f411a6ac000,%r8
                  │  0x00007f410923c6a9: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=237}
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
  0.23%    0.20%  │  0x00007f410923c6ad: test   %eax,0x18a6794d(%rip)        # 0x00007f4121ca4000
                  │                                                ;*goto
                  │                                                ; - com.google.re2j.Machine::step@336 (line 277)
                  │                                                ;   {poll}
  0.28%    0.35%  │  0x00007f410923c6b3: cmp    %r9d,%r10d
                  │  0x00007f410923c6b6: jge    0x00007f410923c930
  0.59%    0.43%  │  0x00007f410923c6bc: mov    %ecx,0x20(%rsp)
  0.01%    0.03%  │  0x00007f410923c6c0: mov    %ebx,0x68(%rsp)
  0.12%    0.11%  │  0x00007f410923c6c4: mov    %edx,0x70(%rsp)
  0.21%    0.24%  │  0x00007f410923c6c8: mov    %r10d,%r11d        ;*aload_1
                  │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.75%    0.50%  ↘  0x00007f410923c6cb: mov    0x8(%rsp),%r10
                     0x00007f410923c6d0: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.25%    0.20%     0x00007f410923c6d4: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f410923cc19
  0.66%    0.68%     0x00007f410923c6d9: cmp    %r9d,%r11d
                     0x00007f410923c6dc: jae    0x00007f410923c994
  0.75%    0.50%     0x00007f410923c6e2: shl    $0x3,%r10
  0.00%    0.00%     0x00007f410923c6e6: mov    0x10(%r10,%r11,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.17%    0.17%     0x00007f410923c6eb: mov    0x10(%r12,%r9,8),%r8d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007f410923cc2d
  1.69%    1.96%     0x00007f410923c6f0: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
                                                                   ; implicit exception: dispatches to 0x00007f410923cc3d
  3.58%    3.80%     0x00007f410923c6f5: mov    0xc(%r12,%r9,8),%r14d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@148 (line 292)
                     0x00007f410923c6fa: mov    %r11d,%r10d
  0.04%    0.02%     0x00007f410923c6fd: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@215 (line 298)
  0.09%    0.13%     0x00007f410923c700: lea    (%r12,%r9,8),%rsi  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.97%    0.77%     0x00007f410923c704: cmp    $0x9,%ecx
                     0x00007f410923c707: je     0x00007f410923c908
  0.11%    0.16%     0x00007f410923c70d: cmp    $0x9,%ecx
                     0x00007f410923c710: jg     0x00007f410923c86c
                     0x00007f410923c716: cmp    $0x7,%ecx
                     0x00007f410923c719: je     0x00007f410923caa9
                     0x00007f410923c71f: cmp    $0x7,%ecx
                     0x00007f410923c722: jg     0x00007f410923c81e
                     0x00007f410923c728: cmp    $0x6,%ecx
                     0x00007f410923c72b: jne    0x00007f410923caa9  ;*tableswitch
                                                                   ; - com.google.re2j.Machine::step@91 (line 285)
                     0x00007f410923c731: mov    0x68(%rsp),%ebx
                     0x00007f410923c735: cmp    $0x2,%ebx
....................................................................................................
 18.49%   17.78%  <total for region 3>

....[Hottest Regions]...............................................................................
 29.26%   30.78%         C2, level 4  com.google.re2j.Machine::add, version 522 (367 bytes) 
 23.57%   21.70%         C2, level 4  com.google.re2j.Machine::add, version 522 (156 bytes) 
 18.49%   17.78%         C2, level 4  com.google.re2j.Machine::step, version 532 (301 bytes) 
  9.03%    9.35%         C2, level 4  com.google.re2j.Machine::match, version 568 (814 bytes) 
  7.43%    8.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  7.13%    7.14%         C2, level 4  com.google.re2j.Machine::step, version 532 (187 bytes) 
  1.29%    1.29%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.80%    0.58%         C2, level 4  com.google.re2j.Machine::step, version 532 (90 bytes) 
  0.26%    0.20%         C2, level 4  com.google.re2j.Machine::match, version 568 (61 bytes) 
  0.18%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 582 (129 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 582 (113 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 598 (73 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%            [kernel.kallsyms]  [unknown] (4 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 582 (100 bytes) 
  0.05%    0.04%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 (117 bytes) 
  0.04%    0.00%         C2, level 4  com.google.re2j.Machine::match, version 568 (89 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 598 (0 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  1.91%    1.96%  <...other 429 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.83%   52.48%         C2, level 4  com.google.re2j.Machine::add, version 522 
 26.42%   25.51%         C2, level 4  com.google.re2j.Machine::step, version 532 
  9.40%    9.58%         C2, level 4  com.google.re2j.Machine::match, version 568 
  7.43%    8.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.23%    2.06%   [kernel.kallsyms]  [unknown] 
  0.40%    0.17%         C2, level 4  com.google.re2j.Machine::init, version 582 
  0.23%    0.15%         C2, level 4  com.google.re2j.Matcher::find, version 598 
  0.09%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 661 
  0.08%    0.07%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.03%         C2, level 4  java.util.Collections::shuffle, version 605 
  0.04%    0.07%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.03%           libjvm.so  xmlTextStream::write 
  0.03%                 runtime stub  StubRoutines::arrayof_jint_fill 
  0.03%    0.01%           libjvm.so  SpinPause 
  0.03%    0.02%           libjvm.so  fileStream::write 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.03%      hsdis-amd64.so  [unknown] 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.03%           libjvm.so  StealTask::do_it 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.53%    0.39%  <...other 75 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 89.43%   88.01%         C2, level 4
  7.47%    8.94%        runtime stub
  2.23%    2.06%   [kernel.kallsyms]
  0.55%    0.65%           libjvm.so
  0.18%    0.24%        libc-2.26.so
  0.04%    0.03%  libpthread-2.26.so
  0.03%    0.03%      hsdis-amd64.so
  0.03%    0.00%         interpreter
  0.01%    0.02%              [vdso]
  0.01%    0.01%         C1, level 3
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt     Score    Error  Units
Re2jRegex.testExp2       thrpt   20  7957.189 ± 90.255  ops/s
Re2jRegex.testExp2:·asm  thrpt            NaN             ---
