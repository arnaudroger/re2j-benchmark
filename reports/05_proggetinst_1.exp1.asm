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
# Warmup Iteration   1: 6068.207 ops/s
# Warmup Iteration   2: 10728.762 ops/s
# Warmup Iteration   3: 10651.935 ops/s
# Warmup Iteration   4: 10951.742 ops/s
# Warmup Iteration   5: 10879.475 ops/s
# Warmup Iteration   6: 10660.949 ops/s
# Warmup Iteration   7: 10882.827 ops/s
# Warmup Iteration   8: 10985.865 ops/s
# Warmup Iteration   9: 11021.846 ops/s
# Warmup Iteration  10: 10964.524 ops/s
# Warmup Iteration  11: 10842.922 ops/s
# Warmup Iteration  12: 10812.865 ops/s
# Warmup Iteration  13: 10960.860 ops/s
# Warmup Iteration  14: 11027.058 ops/s
# Warmup Iteration  15: 10967.711 ops/s
# Warmup Iteration  16: 10797.942 ops/s
# Warmup Iteration  17: 10989.576 ops/s
# Warmup Iteration  18: 11003.848 ops/s
# Warmup Iteration  19: 11043.544 ops/s
# Warmup Iteration  20: 11020.304 ops/s
Iteration   1: 10975.413 ops/s
Iteration   2: 10914.428 ops/s
Iteration   3: 10984.298 ops/s
Iteration   4: 10901.831 ops/s
Iteration   5: 10966.076 ops/s
Iteration   6: 10863.900 ops/s
Iteration   7: 11009.161 ops/s
Iteration   8: 10981.958 ops/s
Iteration   9: 11003.375 ops/s
Iteration  10: 10972.923 ops/s
Iteration  11: 10949.135 ops/s
Iteration  12: 11046.908 ops/s
Iteration  13: 11033.576 ops/s
Iteration  14: 11044.631 ops/s
Iteration  15: 11018.194 ops/s
Iteration  16: 10898.839 ops/s
Iteration  17: 10995.861 ops/s
Iteration  18: 11049.848 ops/s
Iteration  19: 11025.718 ops/s
Iteration  20: 10977.720 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  10980.690 ±(99.9%) 45.998 ops/s [Average]
  (min, avg, max) = (10863.900, 10980.690, 11049.848), stdev = 52.971
  CI (99.9%): [10934.692, 11026.687] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 191839 total address lines.
Perf output processed (skipped 22.453 seconds):
 Column 1: cycles (20442 events)
 Column 2: instructions (20429 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 482 (511 bytes) 

                                 # parm6:    [sp+0x78]   = int
                                 # parm7:    [sp+0x80]   = boolean
                                 0x00007effc120ae00: mov    0x8(%rsi),%r10d
                                 0x00007effc120ae04: shl    $0x3,%r10
                                 0x00007effc120ae08: cmp    %r10,%rax
                                 0x00007effc120ae0b: jne    0x00007effc1045e20  ;   {runtime_call}
                                 0x00007effc120ae11: data16 xchg %ax,%ax
                                 0x00007effc120ae14: nopl   0x0(%rax,%rax,1)
                                 0x00007effc120ae1c: data16 data16 xchg %ax,%ax
                               [Verified Entry Point]
  0.15%    0.24%                 0x00007effc120ae20: mov    %eax,-0x14000(%rsp)
  0.13%    0.13%                 0x00007effc120ae27: push   %rbp
  0.10%    0.12%                 0x00007effc120ae28: sub    $0x60,%rsp         ;*synchronization entry
                                                                               ; - com.google.re2j.Machine::step@-1 (line 269)
  0.10%    0.08%                 0x00007effc120ae2c: mov    %edi,0x20(%rsp)
  0.21%    0.07%                 0x00007effc120ae30: mov    %r9d,0x14(%rsp)
  0.07%    0.06%                 0x00007effc120ae35: mov    %rcx,0x18(%rsp)
  0.13%    0.13%                 0x00007effc120ae3a: mov    %r8d,0x10(%rsp)
  0.09%    0.07%                 0x00007effc120ae3f: mov    %rdx,0x8(%rsp)
  0.08%    0.07%                 0x00007effc120ae44: mov    %rsi,0x28(%rsp)
  0.11%    0.05%                 0x00007effc120ae49: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                               ; - com.google.re2j.Machine::step@1 (line 269)
  0.07%    0.08%                 0x00007effc120ae4d: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                               ; - com.google.re2j.Machine::step@4 (line 269)
                                                                               ; implicit exception: dispatches to 0x00007effc120b565
  0.05%    0.01%                 0x00007effc120ae53: mov    %r11d,0x24(%rsp)
  0.14%    0.09%                 0x00007effc120ae58: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007effc120b575
  0.09%    0.05%                 0x00007effc120ae5c: test   %r10d,%r10d
                                 0x00007effc120ae5f: jle    0x00007effc120b142  ;*if_icmpge
                                                                               ; - com.google.re2j.Machine::step@18 (line 270)
  0.07%    0.05%                 0x00007effc120ae65: xor    %r10d,%r10d
  0.03%    0.03%  ╭              0x00007effc120ae68: jmpq   0x00007effc120afb9
  0.05%    0.07%  │          ↗   0x00007effc120ae6d: cmp    $0xc,%r9d
                  │╭         │   0x00007effc120ae71: je     0x00007effc120aeef
  0.30%    0.07%  ││         │   0x00007effc120ae73: cmp    $0xc,%r9d
                  ││         │   0x00007effc120ae77: jg     0x00007effc120b37d
  0.05%    0.02%  ││         │   0x00007effc120ae7d: cmp    $0xb,%r9d
                  ││╭        │   0x00007effc120ae81: jne    0x00007effc120ae92  ;*tableswitch
                  │││        │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││        │   0x00007effc120ae83: mov    0x20(%rsp),%r9d
                  │││        │   0x00007effc120ae88: cmp    $0xa,%r9d
                  │││╭       │   0x00007effc120ae8c: je     0x00007effc120af36  ;*ifeq
                  ││││       │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.33%    0.12%  ││↘│   ↗↗  │   0x00007effc120ae92: mov    %eax,0x74(%rsp)
  0.13%    0.03%  ││ │   ││  │   0x00007effc120ae96: mov    %r10d,%ebp
                  ││ │   ││  │   0x00007effc120ae99: mov    0x30(%r12,%rbx,8),%r8d
  0.04%    0.01%  ││ │   ││  │   0x00007effc120ae9e: mov    %r14,%r9
  0.27%    0.08%  ││ │   ││  │   0x00007effc120aea1: shl    $0x3,%r9           ;*getfield cap
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
                  ││ │   ││  │   0x00007effc120aea5: mov    %r8,%rcx
           0.00%  ││ │   ││  │   0x00007effc120aea8: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
  0.02%    0.00%  ││ │   ││  │   0x00007effc120aeac: mov    0x28(%rsp),%rsi
  0.19%    0.05%  ││ │   ││  │   0x00007effc120aeb1: mov    0x18(%rsp),%rdx
  0.01%           ││ │   ││  │   0x00007effc120aeb6: mov    0x14(%rsp),%r8d
                  ││ │   ││  │   0x00007effc120aebb: mov    0x70(%rsp),%edi
  0.02%    0.01%  ││ │   ││  │   0x00007effc120aebf: mov    %r11,(%rsp)
  0.26%    0.17%  ││ │   ││  │   0x00007effc120aec3: callq  0x00007effc1046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │   ││  │                                                 ;*invokespecial add
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │   ││  │                                                 ;   {optimized virtual_call}
  0.00%           ││ │   ││  │   0x00007effc120aec8: mov    %rax,%rcx
           0.00%  ││ │   ││  │   0x00007effc120aecb: test   %rax,%rax
                  ││ │╭  ││  │   0x00007effc120aece: jne    0x00007effc120aee1  ;*ifnull
                  ││ ││  ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
  0.00%           ││ ││  ││  │   0x00007effc120aed0: xor    %r10d,%r10d
  0.28%    0.32%  ││ ││  ││  │   0x00007effc120aed3: mov    0x20(%rsp),%r9d
  0.01%    0.00%  ││ ││  ││  │   0x00007effc120aed8: mov    0x74(%rsp),%eax
           0.00%  ││ ││╭ ││  │   0x00007effc120aedc: jmpq   0x00007effc120af99
                  ││ │↘│ ││  │   0x00007effc120aee1: mov    0x20(%rsp),%r9d
                  ││ │ │ ││  │   0x00007effc120aee6: mov    %ebp,%r10d
                  ││ │ │ ││  │   0x00007effc120aee9: mov    0x74(%rsp),%eax
  0.00%    0.00%  ││ │ │╭││  │   0x00007effc120aeed: jmp    0x00007effc120af39  ;*aload
                  ││ │ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  0.35%    0.34%  │↘ │ ││││  │↗  0x00007effc120aeef: cmp    $0xc,%r9d
                  │  │ ││││  ││  0x00007effc120aef3: jne    0x00007effc120b38d  ;*if_icmpne
                  │  │ ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  │ ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.12%    0.17%  │  │ ││││  ││  0x00007effc120aef9: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  │ ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  │ ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
                  │  │ ││││  ││  0x00007effc120aefe: cmp    0x20(%rsp),%ecx
                  │  │ ││╰│  ││  0x00007effc120af02: je     0x00007effc120ae92  ;*if_icmpeq
                  │  │ ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  │ ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.25%    0.31%  │  │ ││ │  ││  0x00007effc120af04: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  │ ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  │ ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.02%    0.00%  │  │ ││ │  ││  0x00007effc120af09: cmp    0x20(%rsp),%ecx
                  │  │ ││ ╰  ││  0x00007effc120af0d: je     0x00007effc120ae92  ;*if_icmpeq
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.33%    0.41%  │  │ ││    ││  0x00007effc120af13: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%    0.01%  │  │ ││    ││  0x00007effc120af18: cmp    0x20(%rsp),%ebp
                  │  │ ││    ││  0x00007effc120af1c: je     0x00007effc120b3d5  ;*if_icmpeq
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.05%    0.05%  │  │ ││    ││  0x00007effc120af22: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
           0.00%  │  │ ││    ││  0x00007effc120af27: cmp    0x20(%rsp),%ebp
                  │  │ ││    ││  0x00007effc120af2b: je     0x00007effc120b409  ;*if_icmpne
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.22%    0.42%  │  │ ││    ││  0x00007effc120af31: mov    0x20(%rsp),%r9d    ;*goto
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
  0.02%    0.03%  │  ↘ ││    ││  0x00007effc120af36: mov    %r11,%rcx          ;*aload
                  │    ││    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
  0.01%    0.00%  │    │↘    ││  0x00007effc120af39: mov    0x28(%rsp),%r11
                  │    │     ││  0x00007effc120af3e: mov    0x24(%r11),%ebx    ;*getfield pool
                  │    │     ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.85%    0.96%  │    │     ││  0x00007effc120af42: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │    │     ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │    │     ││                                                ; implicit exception: dispatches to 0x00007effc120b4c9
  0.08%    0.02%  │    │     ││  0x00007effc120af47: mov    0x28(%rsp),%r8
  0.00%           │    │     ││  0x00007effc120af4c: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │    │     ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │    │     ││  0x00007effc120af50: cmp    %r11d,%ebp
                  │    │     ││  0x00007effc120af53: jge    0x00007effc120b345  ;*if_icmplt
                  │    │     ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.74%    0.91%  │    │     ││  0x00007effc120af59: mov    %ebp,%r8d
  0.05%    0.05%  │    │     ││  0x00007effc120af5c: inc    %r8d
           0.01%  │    │     ││  0x00007effc120af5f: mov    0x28(%rsp),%rdi
                  │    │     ││  0x00007effc120af64: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │    │     ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.76%    0.99%  │    │     ││  0x00007effc120af68: cmp    %r11d,%ebp
                  │    │     ││  0x00007effc120af6b: jae    0x00007effc120b249  ;*aastore
                  │    │     ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.04%    0.02%  │    │     ││  0x00007effc120af71: mov    %rcx,%r11
  0.00%           │    │     ││  0x00007effc120af74: shr    $0x3,%r11
           0.00%  │    │     ││  0x00007effc120af78: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │    │     ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.74%    0.92%  │    │     ││  0x00007effc120af7c: lea    0x10(%r10,%rbp,4),%r10
  0.04%    0.04%  │    │     ││  0x00007effc120af81: mov    %r11d,(%r10)
           0.01%  │    │     ││  0x00007effc120af84: shr    $0x9,%r10
  0.00%    0.01%  │    │     ││  0x00007effc120af88: movabs $0x7effd0bc0000,%r11
  0.82%    0.75%  │    │     ││  0x00007effc120af92: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │    │     ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.08%    0.04%  │    │     ││  0x00007effc120af96: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=409}
                  │    │     ││                                                ;*goto
                  │    │     ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.31%    0.32%  │    ↘    ↗││  0x00007effc120af99: test   %eax,0x16fad061(%rip)        # 0x00007effd81b8000
                  │         │││                                                ;*goto
                  │         │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │         │││                                                ;   {poll}
  0.53%    0.56%  │         │││  0x00007effc120af9f: mov    0x8(%rsp),%r10
  0.97%    0.84%  │         │││  0x00007effc120afa4: mov    0xc(%r10),%r10d
  0.04%    0.06%  │         │││  0x00007effc120afa8: cmp    %r10d,%eax
                  │         │││  0x00007effc120afab: jge    0x00007effc120b142
  0.25%    0.23%  │         │││  0x00007effc120afb1: mov    %r9d,0x20(%rsp)
  0.58%    0.53%  │         │││  0x00007effc120afb6: mov    %eax,%r10d         ;*aload_1
                  │         │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.89%    0.52%  ↘         │││  0x00007effc120afb9: mov    0x8(%rsp),%r11
  0.14%    0.15%            │││  0x00007effc120afbe: mov    0x10(%r11),%r11d   ;*getfield dense
                            │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.83%    0.77%            │││  0x00007effc120afc2: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007effc120b4a5
  1.72%    1.89%            │││  0x00007effc120afc7: cmp    %r9d,%r10d
                            │││  0x00007effc120afca: jae    0x00007effc120b20b
  1.38%    1.01%            │││  0x00007effc120afd0: shl    $0x3,%r11
  0.01%    0.01%            │││  0x00007effc120afd4: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                            │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.15%    0.19%            │││  0x00007effc120afd9: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                            │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                            │││                                                ; implicit exception: dispatches to 0x00007effc120b4d9
  2.89%    3.04%            │││  0x00007effc120afde: mov    %r10d,%eax
  0.71%    0.29%            │││  0x00007effc120afe1: inc    %eax               ;*iadd
                            │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
                            │││  0x00007effc120afe3: test   %r8d,%r8d
                           ╭│││  0x00007effc120afe6: jne    0x00007effc120aff4  ;*ifnonnull
                           ││││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.56%    0.50%           ││││  0x00007effc120afe8: mov    0x24(%rsp),%r10d
  0.34%    0.26%           ││││  0x00007effc120afed: mov    0x20(%rsp),%r9d
           0.00%           │╰││  0x00007effc120aff2: jmp    0x00007effc120af99
  0.04%    0.01%           ↘ ││  0x00007effc120aff4: mov    0x24(%rsp),%r9d
  0.24%    0.16%             ││  0x00007effc120aff9: test   %r9d,%r9d
                             ││  0x00007effc120affc: jne    0x00007effc120b2fd  ;*ifeq
                             ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.83%    0.51%             ││  0x00007effc120b002: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                             ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.61%    0.45%             ││  0x00007effc120b007: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                             ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                             ││                                                ; implicit exception: dispatches to 0x00007effc120b4b9
  3.39%    1.94%             ││  0x00007effc120b00c: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                             ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.03%    0.02%             ││  0x00007effc120b011: lea    (%r12,%r8,8),%r11  ;*getfield thread
                             ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.22%    0.16%             ││  0x00007effc120b015: cmp    $0x9,%r9d
                             ││  0x00007effc120b019: je     0x00007effc120b118
  0.67%    0.76%             ││  0x00007effc120b01f: cmp    $0x9,%r9d
                             ╰│  0x00007effc120b023: jg     0x00007effc120ae6d
                              │  0x00007effc120b029: cmp    $0x7,%r9d
                              │  0x00007effc120b02d: je     0x00007effc120b37d
                              │  0x00007effc120b033: cmp    $0x7,%r9d
                              ╰  0x00007effc120b037: jg     0x00007effc120aeef
                                 0x00007effc120b03d: cmp    $0x6,%r9d
                                 0x00007effc120b041: jne    0x00007effc120b37d  ;*tableswitch
                                                                               ; - com.google.re2j.Machine::step@114 (line 285)
                                 0x00007effc120b047: mov    0x78(%rsp),%r9d
                                 0x00007effc120b04c: cmp    $0x2,%r9d
....................................................................................................
 27.56%   24.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 476 (258 bytes) 

                      # parm4:    rdi       = int
                      # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                      0x00007effc12069e0: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                      0x00007effc12069e4: shl    $0x3,%r10
                      0x00007effc12069e8: cmp    %r10,%rax
                      0x00007effc12069eb: jne    0x00007effc1045e20  ;   {runtime_call}
                      0x00007effc12069f1: data16 xchg %ax,%ax
                      0x00007effc12069f4: nopl   0x0(%rax,%rax,1)
                      0x00007effc12069fc: data16 data16 xchg %ax,%ax
                    [Verified Entry Point]
  1.04%    1.12%      0x00007effc1206a00: mov    %eax,-0x14000(%rsp)
  0.93%    0.98%      0x00007effc1206a07: push   %rbp
  0.24%    0.31%      0x00007effc1206a08: sub    $0x60,%rsp         ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::add@-1 (line 345)
  1.06%    1.15%      0x00007effc1206a0c: mov    %edi,0x38(%rsp)
  0.80%    0.63%      0x00007effc1206a10: mov    %r9,0x30(%rsp)
  0.31%    0.38%      0x00007effc1206a15: mov    %r8d,0x20(%rsp)
  0.75%    1.10%      0x00007effc1206a1a: mov    %rsi,0x8(%rsp)
  0.25%    0.22%      0x00007effc1206a1f: mov    %rdx,0x28(%rsp)
  0.82%    0.62%      0x00007effc1206a24: mov    %rcx,0x40(%rsp)
  0.30%    0.29%      0x00007effc1206a29: mov    0x28(%rcx),%r8d    ;*getfield pc
                                                                    ; - com.google.re2j.Machine::add@2 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007effc1206ee9
  1.96%    1.97%      0x00007effc1206a2d: mov    0x14(%rdx),%ecx    ;*getfield sparse
                                                                    ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
                                                                    ; implicit exception: dispatches to 0x00007effc1206ef9
  0.13%    0.15%      0x00007effc1206a30: mov    0xc(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007effc1206f0d
  0.54%    0.51%      0x00007effc1206a35: cmp    %edi,%r8d
                      0x00007effc1206a38: jae    0x00007effc1206d02  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.88%    0.88%      0x00007effc1206a3e: mov    0x10(%rdx),%r9d    ;*getfield dense
                                                                    ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.63%    0.92%      0x00007effc1206a42: mov    0xc(%rdx),%r10d    ;*getfield size
                                                                    ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  0.09%    0.17%      0x00007effc1206a46: lea    (%r12,%rcx,8),%rbx
  0.35%    0.39%      0x00007effc1206a4a: mov    0x10(%rbx,%r8,4),%ebp  ;*iaload
                                                                    ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                    ; - com.google.re2j.Machine::add@5 (line 345)
  1.57%    1.56%      0x00007effc1206a4f: cmp    %r10d,%ebp
                  ╭   0x00007effc1206a52: jl     0x00007effc1206add  ;*iastore
                  │                                                 ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                 ; - com.google.re2j.Machine::add@19 (line 348)
  1.55%    1.79%  │↗  0x00007effc1206a58: mov    %r10d,%r11d
  0.15%    0.09%  ││  0x00007effc1206a5b: inc    %r11d
  0.36%    0.35%  ││  0x00007effc1206a5e: mov    %r11d,0xc(%rdx)    ;*putfield size
                  ││                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.27%    0.25%  ││  0x00007effc1206a62: cmp    %edi,%r8d
                  ││  0x00007effc1206a65: jae    0x00007effc1206d39
  1.27%    1.15%  ││  0x00007effc1206a6b: mov    %r10d,0x10(%rbx,%r8,4)  ;*iastore
                  ││                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.28%    0.36%  ││  0x00007effc1206a70: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007effc1206f21
  0.38%    0.40%  ││  0x00007effc1206a75: cmp    %r11d,%r10d
                  ││  0x00007effc1206a78: jae    0x00007effc1206d85
  0.30%    0.21%  ││  0x00007effc1206a7e: lea    (%r12,%r9,8),%r11
  1.14%    0.93%  ││  0x00007effc1206a82: mov    0x10(%r11,%r10,4),%ebx  ;*aaload
                  ││                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.17%    0.25%  ││  0x00007effc1206a87: test   %ebx,%ebx
                  ││  0x00007effc1206a89: je     0x00007effc1206dd5  ;*ifnonnull
                  ││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.26%    0.38%  ││  0x00007effc1206a8f: mov    %r8d,0xc(%r12,%rbx,8)  ;*putfield pc
                  ││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.39%    0.50%  ││  0x00007effc1206a94: mov    0x40(%rsp),%r10
  1.34%    0.88%  ││  0x00007effc1206a99: mov    0xc(%r10),%r11d    ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  0.68%    0.76%  ││  0x00007effc1206a9d: mov    %r12d,0x10(%r12,%rbx,8)  ;*putfield thread
                  ││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  ││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.37%    0.42%  ││  0x00007effc1206aa2: mov    %r11d,%r10d
  0.26%    0.29%  ││  0x00007effc1206aa5: dec    %r10d
  1.06%    1.47%  ││  0x00007effc1206aa8: cmp    $0xc,%r10d
                  ││  0x00007effc1206aac: jae    0x00007effc1206dc5  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.35%    0.38%  ││  0x00007effc1206ab2: mov    0x40(%rsp),%r10
  0.32%    0.49%  ││  0x00007effc1206ab7: mov    0x14(%r10),%r10d   ;*getfield arg
                  ││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.39%    0.46%  ││  0x00007effc1206abb: mov    0x40(%rsp),%r8
  1.15%    1.52%  ││  0x00007effc1206ac0: mov    0x30(%r8),%r9d
  0.42%    0.35%  ││  0x00007effc1206ac4: movslq %r11d,%r8
  0.31%    0.36%  ││  0x00007effc1206ac7: mov    %r9,%rcx
  0.26%    0.43%  ││  0x00007effc1206aca: shl    $0x3,%rcx          ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.90%    1.34%  ││  0x00007effc1206ace: movabs $0x7effc1206980,%r11  ;   {section_word}
  0.37%    0.31%  ││  0x00007effc1206ad8: jmpq   *-0x8(%r11,%r8,8)  ;*tableswitch
                  ││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.00%    0.01%  ↘│  0x00007effc1206add: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007effc1206f91
                   │  0x00007effc1206ae2: cmp    %r11d,%ebp
                   │  0x00007effc1206ae5: jae    0x00007effc1206ec1
                   │  0x00007effc1206aeb: lea    (%r12,%r9,8),%r11
                   │  0x00007effc1206aef: mov    0x10(%r11,%rbp,4),%ebp  ;*aaload
                   │                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.03%    0.01%   │  0x00007effc1206af4: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007effc1206fa1
  0.01%    0.02%   │  0x00007effc1206af9: cmp    %r8d,%r11d
                   ╰  0x00007effc1206afc: jne    0x00007effc1206a58
  0.00%               0x00007effc1206b02: mov    0x70(%rsp),%rax
                      0x00007effc1206b07: jmpq   0x00007effc1206cd7
                      0x00007effc1206b0c: mov    0x38(%rsp),%r11d
                      0x00007effc1206b11: andn   %r10d,%r11d,%r10d
                      0x00007effc1206b16: test   %r10d,%r10d
                      0x00007effc1206b19: je     0x00007effc1206ce3  ;*ifne
                                                                    ; - com.google.re2j.Machine::add@153 (line 363)
                      0x00007effc1206b1f: mov    0x70(%rsp),%rax
                      0x00007effc1206b24: jmpq   0x00007effc1206cd7
  0.10%    0.12%      0x00007effc1206b29: mov    0x30(%rsp),%r11
  0.26%    0.23%      0x00007effc1206b2e: mov    0xc(%r11),%ebp     ;*arraylength
....................................................................................................
 27.42%   29.49%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 476 (343 bytes) 

                          0x00007effc1206b70: mov    %r10,(%rsp)
                          0x00007effc1206b74: data16 xchg %ax,%ax
                          0x00007effc1206b77: callq  0x00007effc1046020  ; OopMap{off=412}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007effc1206b7c: jmpq   0x00007effc1206cd7
                  │       0x00007effc1206b81: mov    0x70(%rsp),%rax
                  │╭      0x00007effc1206b86: jmpq   0x00007effc1206cd7  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  0.40%    0.47%  ││      0x00007effc1206b8b: mov    0x20(%rsp),%r8d
  0.27%    0.06%  ││      0x00007effc1206b90: mov    0x30(%rsp),%r9
  0.05%    0.02%  ││      0x00007effc1206b95: mov    0x38(%rsp),%edi
  0.16%    0.21%  ││      0x00007effc1206b99: mov    0x70(%rsp),%r10
  0.13%    0.14%  ││      0x00007effc1206b9e: mov    %r10,(%rsp)
  0.19%    0.12%  ││      0x00007effc1206ba2: mov    %rsi,%rbp
  0.06%    0.03%  ││      0x00007effc1206ba5: xchg   %ax,%ax
  0.18%    0.20%  ││      0x00007effc1206ba7: callq  0x00007effc1046020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [64]=Oop off=460}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.09%    0.18%  ││      0x00007effc1206bac: mov    0x40(%rsp),%r10
  0.44%    0.50%  ││      0x00007effc1206bb1: mov    0x34(%r10),%r10d
  0.00%    0.03%  ││      0x00007effc1206bb5: mov    %r10,%rcx
  0.10%    0.12%  ││      0x00007effc1206bb8: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.11%    0.15%  ││      0x00007effc1206bbc: mov    %rbp,%rsi
  0.28%    0.40%  ││      0x00007effc1206bbf: mov    0x28(%rsp),%rdx
  0.02%    0.03%  ││      0x00007effc1206bc4: mov    0x20(%rsp),%r8d
  0.12%    0.12%  ││      0x00007effc1206bc9: mov    0x30(%rsp),%r9
  0.13%    0.13%  ││      0x00007effc1206bce: mov    0x38(%rsp),%edi
  0.26%    0.30%  ││      0x00007effc1206bd2: mov    %rax,(%rsp)
  0.01%    0.01%  ││      0x00007effc1206bd6: nop
  0.11%    0.11%  ││      0x00007effc1206bd7: callq  0x00007effc1046020  ; OopMap{off=508}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.11%    0.08%  ││╭     0x00007effc1206bdc: jmpq   0x00007effc1206cd7  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  0.76%    0.82%  │││     0x00007effc1206be1: mov    0x40(%rsp),%r10
  0.53%    0.66%  │││     0x00007effc1206be6: mov    %r10,%r11
  0.06%    0.09%  │││     0x00007effc1206be9: shr    $0x3,%r11          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.13%    0.14%  │││     0x00007effc1206bed: mov    0x70(%rsp),%r13
  0.40%    0.38%  │││     0x00007effc1206bf2: test   %r13,%r13
                  │││╭    0x00007effc1206bf5: je     0x00007effc1206c12  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.26%    0.36%  ││││    0x00007effc1206bf7: mov    %r11d,0x10(%r13)
  0.01%    0.03%  ││││    0x00007effc1206bfb: mov    %r13,%r10
                  ││││    0x00007effc1206bfe: shr    $0x9,%r10
  0.03%    0.00%  ││││    0x00007effc1206c02: movabs $0x7effd0bc0000,%r11
  0.28%    0.37%  ││││    0x00007effc1206c0c: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@292 (line 392)
           0.02%  ││││╭   0x00007effc1206c10: jmp    0x00007effc1206c63
  0.32%    0.34%  │││↘│   0x00007effc1206c12: mov    %rsi,%r10
  0.04%    0.05%  │││ │   0x00007effc1206c15: mov    0xc(%rsi),%r9d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.13%    0.12%  │││ │   0x00007effc1206c19: test   %r9d,%r9d
                  │││ │   0x00007effc1206c1c: jle    0x00007effc1206e7d  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.36%    0.37%  │││ │   0x00007effc1206c22: mov    0x24(%rsi),%r8d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.34%    0.23%  │││ │   0x00007effc1206c26: mov    %r9d,%ebp
  0.06%    0.06%  │││ │   0x00007effc1206c29: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.14%    0.12%  │││ │   0x00007effc1206c2b: mov    %ebp,0xc(%rsi)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.30%    0.32%  │││ │   0x00007effc1206c2e: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007effc1206f45
  0.37%    0.26%  │││ │   0x00007effc1206c33: cmp    %r10d,%ebp
                  │││ │   0x00007effc1206c36: jae    0x00007effc1206e15
  0.05%    0.05%  │││ │   0x00007effc1206c3c: lea    (%r12,%r8,8),%r10
  0.16%    0.19%  │││ │   0x00007effc1206c40: mov    0xc(%r10,%r9,4),%r8d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.27%    0.39%  │││ │   0x00007effc1206c45: mov    %r11d,0x10(%r12,%r8,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007effc1206f55
  0.52%    0.34%  │││ │   0x00007effc1206c4a: lea    (%r12,%r8,8),%r13  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.03%    0.04%  │││ │   0x00007effc1206c4e: mov    %r13,%r10
  0.10%    0.13%  │││ │   0x00007effc1206c51: shr    $0x9,%r10
  0.26%    0.35%  │││ │   0x00007effc1206c55: movabs $0x7effd0bc0000,%r11
  0.42%    0.24%  │││ │   0x00007effc1206c5f: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@295 (line 394)
  0.23%    0.26%  │││ ↘   0x00007effc1206c63: mov    0x30(%rsp),%rdi
  0.11%    0.09%  │││     0x00007effc1206c68: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 394)
                  │││                                                   ; implicit exception: dispatches to 0x00007effc1206f35
  0.45%    0.41%  │││     0x00007effc1206c6c: test   %r10d,%r10d
                  │││     0x00007effc1206c6f: jle    0x00007effc1206e5a  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@298 (line 394)
  0.30%    0.24%  │││     0x00007effc1206c75: mov    0xc(%r13),%r11d    ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@303 (line 394)
  0.18%    0.10%  │││     0x00007effc1206c79: lea    (%r12,%rbx,8),%rbp  ;*aaload
                  │││                                                   ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │││                                                   ; - com.google.re2j.Machine::add@19 (line 348)
  0.11%    0.07%  │││     0x00007effc1206c7d: mov    %r11,%r8
  0.62%    0.52%  │││     0x00007effc1206c80: shl    $0x3,%r8
  0.26%    0.28%  │││     0x00007effc1206c84: cmp    %rdi,%r8
                  │││  ╭  0x00007effc1206c87: je     0x00007effc1206cb4  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.23%    0.17%  │││  │  0x00007effc1206c89: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007effc1206f69
  0.30%    0.35%  │││  │  0x00007effc1206c8e: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.27%    0.21%  │││  │  0x00007effc1206c92: cmp    %r10d,%r8d
                  │││  │  0x00007effc1206c95: jb     0x00007effc1206e2d
  0.63%    0.81%  │││  │  0x00007effc1206c9b: lea    0x10(%r12,%r11,8),%rsi
  0.04%    0.07%  │││  │  0x00007effc1206ca0: add    $0x10,%rdi
  0.05%    0.05%  │││  │  0x00007effc1206ca4: movslq %r10d,%rdx
  0.25%    0.19%  │││  │  0x00007effc1206ca7: movabs $0x7effc1052640,%r10
  0.45%    0.51%  │││  │  0x00007effc1206cb1: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@326 (line 397)
  0.01%           │││  ↘  0x00007effc1206cb4: mov    %rbp,%r10
  0.36%    0.46%  │││     0x00007effc1206cb7: mov    %r13,%r8
  0.49%    0.48%  │││     0x00007effc1206cba: shr    $0x3,%r8
  0.33%    0.16%  │││     0x00007effc1206cbe: mov    %r8d,0x10(%r12,%rbx,8)
                  │││     0x00007effc1206cc3: shr    $0x9,%r10
  0.39%    0.45%  │││     0x00007effc1206cc7: movabs $0x7effd0bc0000,%r11
  0.40%    0.38%  │││     0x00007effc1206cd1: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@330 (line 397)
  0.40%    0.33%  │││     0x00007effc1206cd5: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 345)
  0.86%    0.94%  ↘↘↘     0x00007effc1206cd7: add    $0x60,%rsp
  0.65%    0.69%          0x00007effc1206cdb: pop    %rbp
  0.52%    0.69%          0x00007effc1206cdc: test   %eax,0x16fb131e(%rip)        # 0x00007effd81b8000
                                                                        ;   {poll_return}
  0.83%    0.99%          0x00007effc1206ce2: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007effc1206ce3: mov    0x20(%rsp),%r8d
                          0x00007effc1206ce8: mov    0x30(%rsp),%r9
                          0x00007effc1206ced: mov    %r11d,%edi
                          0x00007effc1206cf0: mov    0x70(%rsp),%r10
                          0x00007effc1206cf5: mov    %r10,(%rsp)
                          0x00007effc1206cf9: xchg   %ax,%ax
                          0x00007effc1206cfb: callq  0x00007effc1046020  ; OopMap{off=800}
                                                                        ;*invokespecial add
....................................................................................................
 19.28%   19.82%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 534 (780 bytes) 

                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007effc1231162: mov    $0x5,%edi          ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007effc1231167: cmp    $0xa,%r10d
                              0x00007effc123116b: je     0x00007effc1231bc3  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007effc1231171: mov    %r8d,%r14d
                              0x00007effc1231174: mov    %r10d,%r9d
  0.00%                       0x00007effc1231177: add    $0xffffffbf,%r9d
                              0x00007effc123117b: cmp    $0x1a,%r9d
                  ╭           0x00007effc123117f: jb     0x00007effc1231192  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 194)
                  │           0x00007effc1231181: mov    %r10d,%r8d
                  │           0x00007effc1231184: add    $0xffffff9f,%r8d
           0.01%  │           0x00007effc1231188: cmp    $0x1a,%r8d
                  │           0x00007effc123118c: jae    0x00007effc1231bd9  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 194)
                  ↘           0x00007effc1231192: or     $0x10,%edi         ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007effc1231195: vmovd  %xmm0,%r9d
                              0x00007effc123119a: mov    %r9,%r8
                              0x00007effc123119d: shl    $0x3,%r8           ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 181)
                              0x00007effc12311a1: mov    %r8,0x50(%rsp)
  0.01%    0.01%              0x00007effc12311a6: mov    $0x1,%r8d
                              0x00007effc12311ac: xor    %ecx,%ecx
                              0x00007effc12311ae: mov    %r8d,0x14(%rsp)
                              0x00007effc12311b3: mov    %ecx,0x44(%rsp)
                              0x00007effc12311b7: xor    %edx,%edx
                   ╭          0x00007effc12311b9: jmpq   0x00007effc1231337
  0.00%    0.02%   │    ↗     0x00007effc12311be: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 234)
  0.07%    0.06%   │    │     0x00007effc12311c2: mov    %r9d,0x5c(%rsp)    ;*iload_2
                   │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 234)
  0.13%    0.11%   │    │↗    0x00007effc12311c7: mov    0x48(%rsp),%r8
  0.10%    0.14%   │    ││    0x00007effc12311cc: mov    0x10(%r8),%r9d     ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │    ││                                                  ; - com.google.re2j.Machine::match@345 (line 235)
  0.21%    0.22%   │    ││    0x00007effc12311d0: mov    0x44(%rsp),%ebx
  0.06%    0.07%   │    ││    0x00007effc12311d4: cmp    %r9d,%ebx
                   │    ││    0x00007effc12311d7: je     0x00007effc1231af0  ;*if_icmpne
                   │    ││                                                  ; - com.google.re2j.Machine::match@348 (line 235)
  0.17%    0.24%   │    ││    0x00007effc12311dd: xor    %eax,%eax          ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 235)
  0.05%    0.07%   │    ││    0x00007effc12311df: mov    %rax,-0x8(%rsp)
  0.01%    0.01%   │    ││    0x00007effc12311e4: mov    0x44(%rsp),%eax
  0.07%    0.08%   │    ││    0x00007effc12311e8: mov    %eax,0x58(%rsp)
  0.10%    0.10%   │    ││    0x00007effc12311ec: mov    -0x8(%rsp),%rax
  0.11%    0.06%   │    ││    0x00007effc12311f1: mov    %r11d,0x38(%rsp)
  0.03%    0.01%   │    ││    0x00007effc12311f6: add    0x2c(%rsp),%ebx    ;*iadd
                   │    ││                                                  ; - com.google.re2j.Machine::match@337 (line 235)
  0.13%    0.09%   │    ││    0x00007effc12311fa: mov    %ebx,0x44(%rsp)
  0.11%    0.09%   │    ││    0x00007effc12311fe: mov    0x30(%rsp),%rsi
  0.06%    0.04%   │    ││    0x00007effc1231203: mov    0x20(%rsp),%rdx
  0.03%    0.03%   │    ││    0x00007effc1231208: mov    0x50(%rsp),%rcx
  0.10%    0.09%   │    ││    0x00007effc123120d: mov    0x58(%rsp),%r8d
  0.13%    0.07%   │    ││    0x00007effc1231212: mov    %ebx,%r9d
  0.08%    0.07%   │    ││    0x00007effc1231215: mov    %r10d,%edi
  0.00%    0.03%   │    ││    0x00007effc1231218: mov    0x5c(%rsp),%r10d
  0.07%    0.07%   │    ││    0x00007effc123121d: mov    %r10d,(%rsp)
  0.09%    0.20%   │    ││    0x00007effc1231221: mov    0x3c(%rsp),%r11d
  0.06%    0.09%   │    ││    0x00007effc1231226: mov    %r11d,0x8(%rsp)
  0.03%    0.05%   │    ││    0x00007effc123122b: mov    %eax,0x10(%rsp)
  0.07%    0.03%   │    ││    0x00007effc123122f: callq  0x00007effc1046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [72]=Oop [80]=Oop off=724}
                   │    ││                                                  ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 235)
                   │    ││                                                  ;   {optimized virtual_call}
  0.24%    0.29%   │    ││    0x00007effc1231234: mov    0x30(%rsp),%r8
  0.04%    0.05%   │    ││    0x00007effc1231239: movzbl 0x10(%r8),%edx     ;*getfield matched
                   │    ││                                                  ; - com.google.re2j.Machine::match@449 (line 257)
                   │    ││    0x00007effc123123e: mov    0x2c(%rsp),%r10d
  0.15%    0.31%   │    ││    0x00007effc1231243: test   %r10d,%r10d
                   │    ││    0x00007effc1231246: je     0x00007effc123190d  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@361 (line 236)
  0.05%    0.06%   │    ││    0x00007effc123124c: mov    0x28(%r8),%r9d     ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@368 (line 239)
                   │    ││    0x00007effc1231250: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 239)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007effc1232cd1
  0.01%            │    ││    0x00007effc1231255: test   %ebp,%ebp
                   │    ││    0x00007effc1231257: je     0x00007effc1231e69  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@372 (line 239)
  0.24%    0.31%   │    ││    0x00007effc123125d: mov    0x48(%rsp),%r11
  0.07%    0.01%   │    ││    0x00007effc1231262: mov    0x10(%r11),%esi    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc1231266: mov    0xc(%r11),%eax     ;*getfield start
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc123126a: mov    0x14(%r11),%ecx    ;*getfield str
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.27%    0.23%   │    ││    0x00007effc123126e: mov    0x38(%rsp),%r10d
  0.04%    0.02%   │    ││    0x00007effc1231273: cmp    $0xffffffff,%r10d
                   │    ││    0x00007effc1231277: je     0x00007effc1231afa  ;*if_icmpeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@401 (line 247)
                   │    ││    0x00007effc123127d: mov    %r8,%rbx
                   │    ││    0x00007effc1231280: mov    0x28(%rsp),%r8d
  0.21%    0.16%   │    ││    0x00007effc1231285: add    0x44(%rsp),%r8d
  0.05%    0.04%   │    ││    0x00007effc123128a: add    %eax,%r8d          ;*iadd
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc123128d: cmp    %esi,%r8d
                   │    ││    0x00007effc1231290: jge    0x00007effc1231b0d  ;*if_icmpge
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc1231296: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007effc1232ce1
  0.19%    0.12%   │    ││    0x00007effc123129b: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││    0x00007effc12312a2: jne    0x00007effc1231ccd
  0.03%    0.02%   │    ││    0x00007effc12312a8: lea    (%r12,%rcx,8),%r13  ;*invokeinterface charAt
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc12312ac: test   %r8d,%r8d
                   │    ││    0x00007effc12312af: jl     0x00007effc1231e05  ;*iflt
                   │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc12312b5: mov    0xc(%r13),%edi     ;*getfield value
                   │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.18%    0.09%   │    ││    0x00007effc12312b9: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007effc1232cf5
  0.04%    0.04%   │    ││    0x00007effc12312be: cmp    %ebp,%r8d
                   │    ││    0x00007effc12312c1: jge    0x00007effc1231ea1  ;*if_icmplt
                   │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
           0.01%   │    ││    0x00007effc12312c7: cmp    %ebp,%r8d
                   │    ││    0x00007effc12312ca: jae    0x00007effc1231c20
  0.01%    0.00%   │    ││    0x00007effc12312d0: lea    (%r12,%rdi,8),%r11
  0.24%    0.09%   │    ││    0x00007effc12312d4: movzwl 0x10(%r11,%r8,2),%r11d  ;*caload
                   │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.05%    0.02%   │    ││    0x00007effc12312da: cmp    $0xd800,%r11d
                   │    ││    0x00007effc12312e1: jge    0x00007effc1231ef9  ;*if_icmplt
                   │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.01%    0.00%   │    ││    0x00007effc12312e7: shl    $0x3,%r11d         ;*ishl
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007effc12312eb: mov    %r11d,%r14d
  0.23%    0.10%   │    ││    0x00007effc12312ee: or     $0x1,%r14d
  0.04%    0.04%   │    ││    0x00007effc12312f2: and    $0x7,%r11d
                   │    ││    0x00007effc12312f6: sar    $0x3,%r14d         ;*ishr
                   │    ││                                                  ; - com.google.re2j.Machine::match@417 (line 249)
  0.00%    0.01%   │    ││    0x00007effc12312fa: or     $0x1,%r11d         ; OopMap{r9=NarrowOop rcx=NarrowOop rbx=Oop [32]=Oop [72]=Oop [80]=Oop off=926}
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 255)
  0.23%    0.25%   │    ││    0x00007effc12312fe: test   %eax,0x16f86cfc(%rip)        # 0x00007effd81b8000
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 255)
                   │    ││                                                  ;   {poll}
  0.03%    0.06%   │    ││    0x00007effc1231304: mov    0x50(%rsp),%r8
           0.01%   │    ││    0x00007effc1231309: shr    $0x3,%r8
  0.00%    0.00%   │    ││    0x00007effc123130d: mov    %r8d,0x18(%rsp)
  0.19%    0.24%   │    ││    0x00007effc1231312: mov    0x5c(%rsp),%edi
  0.05%    0.07%   │    ││    0x00007effc1231316: mov    0x20(%rsp),%r8
           0.00%   │    ││    0x00007effc123131b: mov    %r8,0x50(%rsp)
                   │    ││    0x00007effc1231320: mov    0x28(%rsp),%r8d
  0.23%    0.21%   │    ││    0x00007effc1231325: mov    %r8d,0x2c(%rsp)
  0.06%    0.04%   │    ││    0x00007effc123132a: vmovd  %r9d,%xmm6
  0.01%            │    ││    0x00007effc123132f: mov    %esi,0x58(%rsp)
  0.00%    0.02%   │    ││    0x00007effc1231333: vmovd  %ecx,%xmm2
  0.19%    0.38%   ↘    ││    0x00007effc1231337: mov    0x18(%rsp),%r9d
  0.03%    0.05%        ││    0x00007effc123133c: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007effc1232ca2
           0.01%        ││    0x00007effc1231341: shl    $0x3,%r9           ;*aload
                        ││                                                  ; - com.google.re2j.Machine::match@136 (line 200)
  0.00%    0.02%        ││    0x00007effc1231345: mov    %r9,0x20(%rsp)
  0.18%    0.32%        ││    0x00007effc123134a: test   %r8d,%r8d
                        ││    0x00007effc123134d: je     0x00007effc123155e  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@141 (line 200)
  0.03%    0.10%        ││    0x00007effc1231353: mov    %r10d,0x58(%rsp)
                        ││    0x00007effc1231358: mov    %r11d,%r10d
                        ││    0x00007effc123135b: mov    %r14d,%r11d        ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@267 (line 226)
  0.19%    0.24%        ││    0x00007effc123135e: test   %edx,%edx
                        ││    0x00007effc1231360: jne    0x00007effc1231d2d  ;*ifne
                        ││                                                  ; - com.google.re2j.Machine::match@271 (line 226)
  0.03%    0.05%        ││    0x00007effc1231366: mov    0x44(%rsp),%ecx
                        ││    0x00007effc123136a: test   %ecx,%ecx
                        ││    0x00007effc123136c: je     0x00007effc1231ba1  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 226)
                        ││    0x00007effc1231372: mov    0x3c(%rsp),%r8d
  0.23%    0.25%        ││    0x00007effc1231377: test   %r8d,%r8d
                        ││    0x00007effc123137a: jne    0x00007effc1231db1  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@282 (line 229)
  0.04%    0.03%        ││    0x00007effc1231380: vmovd  %xmm6,%r9d
                        ││    0x00007effc1231385: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                        ││                                                  ; - com.google.re2j.Machine::match@286 (line 229)
                        ││                                                  ; implicit exception: dispatches to 0x00007effc1232cb1
           0.00%        ││    0x00007effc123138a: test   %ebp,%ebp
                        ││    0x00007effc123138c: jle    0x00007effc1231d6d  ;*ifle
                        ││                                                  ; - com.google.re2j.Machine::match@287 (line 229)
  0.23%    0.34%        ││    0x00007effc1231392: test   %ebp,%ebp
                        ││    0x00007effc1231394: jbe    0x00007effc1231c7d
  0.03%    0.07%        ││    0x00007effc123139a: mov    %ecx,0x10(%r12,%r9,8)  ;*iastore
                        ││                                                  ; - com.google.re2j.Machine::match@296 (line 230)
  0.00%    0.00%        ││    0x00007effc123139f: mov    %rbx,%rdx
  0.00%    0.01%        ││    0x00007effc12313a2: mov    0x18(%rbx),%esi    ;*getfield prog
                        ││                                                  ; - com.google.re2j.Machine::match@301 (line 232)
  0.24%    0.33%        ││    0x00007effc12313a5: mov    0x1c(%r12,%rsi,8),%ebx  ; implicit exception: dispatches to 0x00007effc1232cc1
  0.06%    0.05%        ││    0x00007effc12313aa: mov    %rax,-0x8(%rsp)
  0.00%                 ││    0x00007effc12313af: mov    0x44(%rsp),%eax
           0.00%        ││    0x00007effc12313b3: mov    %eax,0x38(%rsp)
  0.23%    0.18%        ││    0x00007effc12313b7: mov    -0x8(%rsp),%rax
  0.31%    0.15%        ││    0x00007effc12313bc: mov    %r11d,%ebp
                        ││    0x00007effc12313bf: mov    %r10d,0x28(%rsp)
  0.03%                 ││    0x00007effc12313c4: mov    %r8d,0x3c(%rsp)
  0.26%    0.38%        ││    0x00007effc12313c9: mov    %rdx,0x30(%rsp)    ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 226)
  0.04%    0.06%        ││    0x00007effc12313ce: mov    %rbx,%rcx
           0.00%        ││    0x00007effc12313d1: shl    $0x3,%rcx          ;*getfield startInst
                        ││                                                  ; - com.google.re2j.Machine::match@304 (line 232)
                        ││    0x00007effc12313d5: shl    $0x3,%r9           ;*getfield matchcap
                        ││                                                  ; - com.google.re2j.Machine::match@283 (line 229)
  0.27%    0.25%        ││    0x00007effc12313d9: mov    %rdx,%rsi
  0.06%    0.04%        ││    0x00007effc12313dc: mov    0x20(%rsp),%rdx
  0.01%    0.00%        ││    0x00007effc12313e1: mov    0x44(%rsp),%r8d
  0.00%                 ││    0x00007effc12313e6: xor    %r10d,%r10d
  0.20%    0.31%        ││    0x00007effc12313e9: mov    %r10,(%rsp)
  0.02%    0.07%        ││    0x00007effc12313ed: xchg   %ax,%ax
                        ││    0x00007effc12313ef: callq  0x00007effc1046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [72]=Oop [80]=Oop off=1172}
                        ││                                                  ;*invokespecial add
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 232)
                        ││                                                  ;   {optimized virtual_call}
  0.16%    0.14%        ││    0x00007effc12313f4: mov    0x58(%rsp),%r10d
  0.13%    0.24%        ││    0x00007effc12313f9: test   %r10d,%r10d
                    ╭   ││    0x00007effc12313fc: jl     0x00007effc1231478  ;*ifge
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 234)
                    │   ││    0x00007effc12313fe: xor    %r9d,%r9d          ;*iload_0
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 234)
  0.12%    0.10%    │   ││↗   0x00007effc1231401: cmp    $0xa,%r10d
                    │   │││   0x00007effc1231405: je     0x00007effc12317bc  ;*iload_1
                    │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 234)
  0.10%    0.10%    │   │││   0x00007effc123140b: mov    %ebp,%r11d
  0.10%    0.08%    │   │││   0x00007effc123140e: test   %r11d,%r11d
                    │╭  │││   0x00007effc1231411: jl     0x00007effc1231483  ;*iload_1
                    ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 234)
                    ││  │││↗  0x00007effc1231413: cmp    $0xa,%r11d
                    ││  ││││  0x00007effc1231417: je     0x00007effc12317c5  ;*iload_0
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.10%    0.08%    ││  ││││  0x00007effc123141d: mov    0x58(%rsp),%ecx
  0.11%    0.12%    ││  ││││  0x00007effc1231421: add    $0xffffffbf,%ecx
  0.13%    0.11%    ││  ││││  0x00007effc1231424: cmp    $0x1a,%ecx
                    ││╭ ││││  0x00007effc1231427: jb     0x00007effc123143c  ;*if_icmple
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
           0.01%    │││ ││││  0x00007effc1231429: mov    0x58(%rsp),%r8d
  0.06%    0.09%    │││ ││││  0x00007effc123142e: add    $0xffffff9f,%r8d
  0.10%    0.12%    │││ ││││  0x00007effc1231432: cmp    $0x1a,%r8d
                    │││ ││││  0x00007effc1231436: jae    0x00007effc1231b60  ;*iconst_1
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.05%    0.08%    ││↘ ││││  0x00007effc123143c: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.01%    0.02%    ││  ││││  0x00007effc1231441: mov    %r11d,%ecx
  0.13%    0.11%    ││  ││││  0x00007effc1231444: add    $0xffffffbf,%ecx
  0.08%    0.12%    ││  ││││  0x00007effc1231447: cmp    $0x1a,%ecx
                    ││ ╭││││  0x00007effc123144a: jb     0x00007effc123145d  ;*if_icmple
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.07%    0.11%    ││ │││││  0x00007effc123144c: mov    %r11d,%r8d
  0.02%    0.03%    ││ │││││  0x00007effc123144f: add    $0xffffff9f,%r8d
  0.12%    0.11%    ││ │││││  0x00007effc1231453: cmp    $0x1a,%r8d
                    ││ │││││  0x00007effc1231457: jae    0x00007effc1231b81  ;*iconst_1
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.09%    0.13%    ││ ↘││││  0x00007effc123145d: mov    $0x1,%ecx          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.08%    0.09%    ││  ││││  0x00007effc1231462: cmp    %ecx,%ebp
                    ││  ╰│││  0x00007effc1231464: je     0x00007effc12311be  ;*if_icmpeq
                    ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.08%    0.06%    ││   │││  0x00007effc123146a: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.02%    0.01%    ││   │││  0x00007effc123146e: mov    %r9d,0x5c(%rsp)
  0.21%    0.16%    ││   ╰││  0x00007effc1231473: jmpq   0x00007effc12311c7
  0.00%             ↘│    ││  0x00007effc1231478: mov    $0x5,%r9d
                     │    ╰│  0x00007effc123147e: jmpq   0x00007effc1231401
  0.00%              ↘     │  0x00007effc1231483: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                ; - com.google.re2j.Machine::match@323 (line 234)
                           ╰  0x00007effc1231487: jmp    0x00007effc1231413
                              0x00007effc1231489: nopl   0x0(%rax)
                              0x00007effc1231490: mov    %r9d,%ebp
                              0x00007effc1231493: jmpq   0x00007effc12316fb
                              0x00007effc1231498: mov    %ebp,%r9d
                              0x00007effc123149b: inc    %r9d
                              0x00007effc123149e: mov    %ebp,%r8d
                              0x00007effc12314a1: jmp    0x00007effc12314b1
                              0x00007effc12314a3: mov    %ebp,%r8d
....................................................................................................
 10.39%   11.12%  <total for region 4>

....[Hottest Regions]...............................................................................
 27.56%   24.03%         C2, level 4  com.google.re2j.Machine::step, version 482 (511 bytes) 
 27.42%   29.49%         C2, level 4  com.google.re2j.Machine::add, version 476 (258 bytes) 
 19.28%   19.82%         C2, level 4  com.google.re2j.Machine::add, version 476 (343 bytes) 
 10.39%   11.12%         C2, level 4  com.google.re2j.Machine::match, version 534 (780 bytes) 
  5.98%    7.22%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  3.90%    4.02%         C2, level 4  com.google.re2j.Machine::step, version 482 (56 bytes) 
  0.92%    0.89%         C2, level 4  com.google.re2j.Machine::add, version 476 (47 bytes) 
  0.78%    0.77%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.30%    0.37%         C2, level 4  com.google.re2j.Machine::match, version 534 (60 bytes) 
  0.21%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 533 (52 bytes) 
  0.17%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 533 (108 bytes) 
  0.15%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 533 (80 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.11%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 534 (261 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (74 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.Matcher::find, version 552 (0 bytes) 
  0.08%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 611 (57 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 552 (5 bytes) 
  0.07%    0.05%         C2, level 4  java.util.Collections::shuffle, version 560 (81 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 534 (205 bytes) 
  2.19%    1.77%  <...other 374 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.63%   50.20%         C2, level 4  com.google.re2j.Machine::add, version 476 
 31.46%   28.06%         C2, level 4  com.google.re2j.Machine::step, version 482 
 11.08%   11.76%         C2, level 4  com.google.re2j.Machine::match, version 534 
  5.98%    7.22%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.77%    1.39%   [kernel.kallsyms]  [unknown] 
  0.66%    0.22%         C2, level 4  com.google.re2j.Machine::init, version 533 
  0.40%    0.19%         C2, level 4  com.google.re2j.Matcher::find, version 552 
  0.16%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 611 
  0.13%    0.09%         C2, level 4  java.util.Collections::shuffle, version 560 
  0.04%    0.03%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.03%    0.03%           libjvm.so  xmlTextStream::write 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.04%           libjvm.so  StringTable::unlink_or_oops_do 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.01%              [vdso]  [unknown] 
  0.02%    0.04%      hsdis-amd64.so  [unknown] 
  0.02%    0.03%           libjvm.so  fileStream::write 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.01%                    libjvm.so  os::javaTimeNanos 
  0.43%    0.28%  <...other 67 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 91.52%   90.58%         C2, level 4
  6.02%    7.23%        runtime stub
  1.77%    1.39%   [kernel.kallsyms]
  0.36%    0.43%           libjvm.so
  0.16%    0.24%        libc-2.26.so
  0.06%    0.05%  libpthread-2.26.so
  0.04%    0.02%              [vdso]
  0.04%    0.01%         interpreter
  0.02%    0.04%      hsdis-amd64.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  10980.690 ± 45.998  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
