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
# Warmup Iteration   1: 5132.055 ops/s
# Warmup Iteration   2: 8239.061 ops/s
# Warmup Iteration   3: 7239.288 ops/s
# Warmup Iteration   4: 8393.874 ops/s
# Warmup Iteration   5: 8528.020 ops/s
# Warmup Iteration   6: 8527.218 ops/s
# Warmup Iteration   7: 8532.151 ops/s
# Warmup Iteration   8: 8549.176 ops/s
# Warmup Iteration   9: 8480.405 ops/s
# Warmup Iteration  10: 8494.256 ops/s
# Warmup Iteration  11: 8512.833 ops/s
# Warmup Iteration  12: 8511.818 ops/s
# Warmup Iteration  13: 8476.673 ops/s
# Warmup Iteration  14: 8325.158 ops/s
# Warmup Iteration  15: 7897.099 ops/s
# Warmup Iteration  16: 7942.394 ops/s
# Warmup Iteration  17: 8453.778 ops/s
# Warmup Iteration  18: 8454.385 ops/s
# Warmup Iteration  19: 8455.169 ops/s
# Warmup Iteration  20: 8447.272 ops/s
Iteration   1: 8465.575 ops/s
Iteration   2: 8313.766 ops/s
Iteration   3: 8393.380 ops/s
Iteration   4: 8561.413 ops/s
Iteration   5: 8560.102 ops/s
Iteration   6: 8554.972 ops/s
Iteration   7: 8563.391 ops/s
Iteration   8: 8554.948 ops/s
Iteration   9: 8562.462 ops/s
Iteration  10: 8518.894 ops/s
Iteration  11: 8555.214 ops/s
Iteration  12: 8561.862 ops/s
Iteration  13: 8562.497 ops/s
Iteration  14: 8556.277 ops/s
Iteration  15: 8563.006 ops/s
Iteration  16: 8561.635 ops/s
Iteration  17: 8544.930 ops/s
Iteration  18: 8561.371 ops/s
Iteration  19: 8562.496 ops/s
Iteration  20: 8555.407 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  8531.680 ±(99.9%) 57.512 ops/s [Average]
  (min, avg, max) = (8313.766, 8531.680, 8563.391), stdev = 66.231
  CI (99.9%): [8474.168, 8589.192] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 197781 total address lines.
Perf output processed (skipped 23.283 seconds):
 Column 1: cycles (20383 events)
 Column 2: instructions (20370 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (259 bytes) 

                       # parm4:    rdi       = int
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine$Thread&apos;  (sp of caller)
                       0x00007fb075218b60: mov    0x8(%rsi),%r10d    ;   {no_reloc}
                       0x00007fb075218b64: shl    $0x3,%r10
                       0x00007fb075218b68: cmp    %r10,%rax
                       0x00007fb075218b6b: jne    0x00007fb075045e20  ;   {runtime_call}
                       0x00007fb075218b71: data16 xchg %ax,%ax
                       0x00007fb075218b74: nopl   0x0(%rax,%rax,1)
                       0x00007fb075218b7c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.82%    0.97%       0x00007fb075218b80: mov    %eax,-0x14000(%rsp)
  0.96%    1.05%       0x00007fb075218b87: push   %rbp
  0.32%    0.30%       0x00007fb075218b88: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::add@-1 (line 345)
  1.04%    1.51%       0x00007fb075218b8c: mov    %edi,0x38(%rsp)
  0.63%    0.49%       0x00007fb075218b90: mov    %r9,0x30(%rsp)
  0.26%    0.28%       0x00007fb075218b95: mov    %r8d,0x20(%rsp)
  0.63%    0.91%       0x00007fb075218b9a: mov    %rsi,0x8(%rsp)
  0.39%    0.40%       0x00007fb075218b9f: mov    %rdx,0x28(%rsp)
  0.58%    0.54%       0x00007fb075218ba4: mov    %rcx,0x48(%rsp)
  0.27%    0.27%       0x00007fb075218ba9: mov    0x28(%rcx),%r11d   ;*getfield pc
                                                                     ; - com.google.re2j.Machine::add@2 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007fb0752190e9
  0.67%    0.79%       0x00007fb075218bad: mov    0x14(%rdx),%ebx    ;*getfield sparse
                                                                     ; - com.google.re2j.Machine$Queue::contains@1 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
                                                                     ; implicit exception: dispatches to 0x00007fb0752190f9
  0.42%    0.51%       0x00007fb075218bb0: mov    0xc(%r12,%rbx,8),%r8d  ; implicit exception: dispatches to 0x00007fb07521910d
  0.47%    0.71%       0x00007fb075218bb5: cmp    %r8d,%r11d
                       0x00007fb075218bb8: jae    0x00007fb075218f06  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.44%    0.43%       0x00007fb075218bbe: mov    0x10(%rdx),%ecx    ;*getfield dense
                                                                     ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.78%    0.92%       0x00007fb075218bc1: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::contains@9 (line 47)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.48%    0.33%       0x00007fb075218bc5: lea    (%r12,%rbx,8),%rdi
  0.43%    0.49%       0x00007fb075218bc9: mov    0x10(%rdi,%r11,4),%ebp  ;*iaload
                                                                     ; - com.google.re2j.Machine$Queue::contains@5 (line 46)
                                                                     ; - com.google.re2j.Machine::add@5 (line 345)
  0.83%    0.92%       0x00007fb075218bce: cmp    %r9d,%ebp
                  ╭    0x00007fb075218bd1: jl     0x00007fb075218c5e  ;*iastore
                  │                                                  ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │                                                  ; - com.google.re2j.Machine::add@19 (line 348)
  1.22%    1.25%  │ ↗  0x00007fb075218bd7: mov    %r9d,%edx
  0.37%    0.26%  │ │  0x00007fb075218bda: inc    %edx
  0.36%    0.30%  │ │  0x00007fb075218bdc: mov    0x28(%rsp),%r10
  0.74%    0.42%  │ │  0x00007fb075218be1: mov    %edx,0xc(%r10)     ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  1.04%    0.75%  │ │  0x00007fb075218be5: cmp    %r8d,%r11d
                  │ │  0x00007fb075218be8: jae    0x00007fb075218f39
  0.31%    0.34%  │ │  0x00007fb075218bee: mov    %r9d,0x10(%rdi,%r11,4)  ;*iastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@18 (line 58)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.52%    0.50%  │ │  0x00007fb075218bf3: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fb075219121
  0.24%    0.27%  │ │  0x00007fb075218bf8: cmp    %r10d,%r9d
                  │ │  0x00007fb075218bfb: jae    0x00007fb075218f79  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.97%    0.88%  │ │  0x00007fb075218c01: lea    (%r12,%rcx,8),%rdi  ;*getfield dense
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@18 (line 50)
                  │ │                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.34%    0.20%  │ │  0x00007fb075218c05: lea    0x10(%rdi,%r9,4),%rbp
  0.50%    0.31%  │ │  0x00007fb075218c0a: mov    0x0(%rbp),%r8d     ;*aaload
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@24 (line 59)
                  │ │                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.26%    0.35%  │ │  0x00007fb075218c0e: test   %r8d,%r8d
                  │╭│  0x00007fb075218c11: je     0x00007fb075218c8d  ;*ifnonnull
                  │││                                                ; - com.google.re2j.Machine$Queue::add@27 (line 60)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.88%    0.98%  │││  0x00007fb075218c13: lea    (%r12,%r8,8),%rbx  ;*aload_3
                  │││                                                ; - com.google.re2j.Machine$Queue::add@45 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.43%    0.65%  │││  0x00007fb075218c17: mov    %r11d,0xc(%rbx)    ;*putfield pc
                  │││                                                ; - com.google.re2j.Machine$Queue::add@52 (line 64)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  1.93%    2.10%  │││  0x00007fb075218c1b: mov    0x48(%rsp),%r10
  0.37%    0.23%  │││  0x00007fb075218c20: mov    0xc(%r10),%r11d    ;*getfield op
                  │││                                                ; - com.google.re2j.Machine::add@25 (line 349)
  1.39%    1.91%  │││  0x00007fb075218c24: mov    %r12d,0x10(%rbx)   ;*putfield thread
                  │││                                                ; - com.google.re2j.Machine$Queue::add@47 (line 63)
                  │││                                                ; - com.google.re2j.Machine::add@19 (line 348)
  0.66%    0.89%  │││  0x00007fb075218c28: mov    %r11d,%r10d
  0.46%    0.60%  │││  0x00007fb075218c2b: dec    %r10d
  0.44%    0.80%  │││  0x00007fb075218c2e: cmp    $0xc,%r10d
                  │││  0x00007fb075218c32: jae    0x00007fb075218fb9  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.84%    0.95%  │││  0x00007fb075218c38: mov    0x48(%rsp),%r10
  0.59%    0.63%  │││  0x00007fb075218c3d: mov    0x30(%r10),%r8d
  0.61%    0.59%  │││  0x00007fb075218c41: mov    0x14(%r10),%r9d    ;*getfield arg
                  │││                                                ; - com.google.re2j.Machine::add@145 (line 363)
  0.11%    0.09%  │││  0x00007fb075218c45: movslq %r11d,%r10
  0.90%    0.96%  │││  0x00007fb075218c48: mov    %r8,%rcx
  0.44%    0.66%  │││  0x00007fb075218c4b: shl    $0x3,%rcx          ;*getfield outInst
                  │││                                                ; - com.google.re2j.Machine::add@180 (line 369)
  0.50%    0.43%  │││  0x00007fb075218c4f: movabs $0x7fb075218b00,%r8  ;   {section_word}
  0.07%    0.12%  │││  0x00007fb075218c59: jmpq   *-0x8(%r8,%r10,8)  ;*tableswitch
                  │││                                                ; - com.google.re2j.Machine::add@28 (line 349)
  0.01%    0.01%  ↘││  0x00007fb075218c5e: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fb07521918d
  0.01%    0.00%   ││  0x00007fb075218c63: cmp    %r10d,%ebp
                   ││  0x00007fb075218c66: jae    0x00007fb075219069
                   ││  0x00007fb075218c6c: lea    (%r12,%rcx,8),%r10
           0.00%   ││  0x00007fb075218c70: mov    0x10(%r10,%rbp,4),%ebp  ;*aaload
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@22 (line 50)
                   ││                                                ; - com.google.re2j.Machine::add@5 (line 345)
  0.01%    0.01%   ││  0x00007fb075218c75: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb07521919d
  0.01%    0.01%   ││  0x00007fb075218c7a: cmp    %r11d,%r10d
                   │╰  0x00007fb075218c7d: jne    0x00007fb075218bd7
  0.01%            │   0x00007fb075218c83: mov    0x70(%rsp),%rax
                   │   0x00007fb075218c88: jmpq   0x00007fb075218ed4
                   ↘   0x00007fb075218c8d: mov    0x60(%r15),%rbx
                       0x00007fb075218c91: mov    %rbx,%r10
                       0x00007fb075218c94: add    $0x18,%r10
                       0x00007fb075218c98: cmp    0x70(%r15),%r10
                       0x00007fb075218c9c: jae    0x00007fb075219091
                       0x00007fb075218ca2: mov    %r10,0x60(%r15)
                       0x00007fb075218ca6: prefetchnta 0xc0(%r10)
                       0x00007fb075218cae: mov    $0xf8019b53,%r10d  ;   {metadata(&apos;com/google/re2j/Machine$Queue$Entry&apos;)}
                       0x00007fb075218cb4: shl    $0x3,%r10
....................................................................................................
 27.98%   30.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (511 bytes) 

                                 # parm6:    [sp+0x78]   = int
                                 # parm7:    [sp+0x80]   = boolean
                                 0x00007fb075215a80: mov    0x8(%rsi),%r10d
                                 0x00007fb075215a84: shl    $0x3,%r10
                                 0x00007fb075215a88: cmp    %r10,%rax
                                 0x00007fb075215a8b: jne    0x00007fb075045e20  ;   {runtime_call}
                                 0x00007fb075215a91: data16 xchg %ax,%ax
                                 0x00007fb075215a94: nopl   0x0(%rax,%rax,1)
                                 0x00007fb075215a9c: data16 data16 xchg %ax,%ax
                               [Verified Entry Point]
  0.21%    0.28%                 0x00007fb075215aa0: mov    %eax,-0x14000(%rsp)
  0.12%    0.18%                 0x00007fb075215aa7: push   %rbp
  0.15%    0.12%                 0x00007fb075215aa8: sub    $0x60,%rsp         ;*synchronization entry
                                                                               ; - com.google.re2j.Machine::step@-1 (line 269)
  0.05%    0.08%                 0x00007fb075215aac: mov    %edi,0x20(%rsp)
  0.13%    0.06%                 0x00007fb075215ab0: mov    %r9d,0x14(%rsp)
  0.17%    0.09%                 0x00007fb075215ab5: mov    %rcx,0x18(%rsp)
  0.06%    0.07%                 0x00007fb075215aba: mov    %r8d,0x10(%rsp)
  0.05%    0.03%                 0x00007fb075215abf: mov    %rdx,0x8(%rsp)
  0.07%    0.05%                 0x00007fb075215ac4: mov    %rsi,0x28(%rsp)
  0.14%    0.18%                 0x00007fb075215ac9: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                               ; - com.google.re2j.Machine::step@1 (line 269)
  0.02%    0.06%                 0x00007fb075215acd: movzbl 0x18(%r12,%r11,8),%r11d  ;*getfield longest
                                                                               ; - com.google.re2j.Machine::step@4 (line 269)
                                                                               ; implicit exception: dispatches to 0x00007fb0752161e5
  0.05%    0.05%                 0x00007fb075215ad3: mov    %r11d,0x24(%rsp)
  0.09%    0.07%                 0x00007fb075215ad8: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007fb0752161f5
  0.13%    0.08%                 0x00007fb075215adc: test   %r10d,%r10d
                                 0x00007fb075215adf: jle    0x00007fb075215dc2  ;*if_icmpge
                                                                               ; - com.google.re2j.Machine::step@18 (line 270)
  0.04%    0.02%                 0x00007fb075215ae5: xor    %r10d,%r10d
  0.05%    0.04%  ╭              0x00007fb075215ae8: jmpq   0x00007fb075215c39
  0.24%    0.32%  │          ↗   0x00007fb075215aed: cmp    $0xc,%r9d
                  │╭         │   0x00007fb075215af1: je     0x00007fb075215b6f
  0.23%    0.11%  ││         │   0x00007fb075215af3: cmp    $0xc,%r9d
                  ││         │   0x00007fb075215af7: jg     0x00007fb075215ffd
  0.06%    0.04%  ││         │   0x00007fb075215afd: cmp    $0xb,%r9d
                  ││╭        │   0x00007fb075215b01: jne    0x00007fb075215b12  ;*tableswitch
                  │││        │                                                 ; - com.google.re2j.Machine::step@114 (line 285)
                  │││        │   0x00007fb075215b03: mov    0x20(%rsp),%r9d
                  │││        │   0x00007fb075215b08: cmp    $0xa,%r9d
                  │││╭       │   0x00007fb075215b0c: je     0x00007fb075215bb6  ;*ifeq
                  ││││       │                                                 ; - com.google.re2j.Machine::step@363 (line 329)
  0.33%    0.18%  ││↘│   ↗↗  │   0x00007fb075215b12: mov    %eax,0x74(%rsp)
  0.10%    0.02%  ││ │   ││  │   0x00007fb075215b16: mov    %r10d,%ebp
                  ││ │   ││  │   0x00007fb075215b19: mov    0x30(%r12,%rbx,8),%r8d
  0.03%    0.01%  ││ │   ││  │   0x00007fb075215b1e: mov    %r14,%r9
  0.22%    0.14%  ││ │   ││  │   0x00007fb075215b21: shl    $0x3,%r9           ;*getfield cap
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@172 (line 292)
  0.01%           ││ │   ││  │   0x00007fb075215b25: mov    %r8,%rcx
  0.00%    0.00%  ││ │   ││  │   0x00007fb075215b28: shl    $0x3,%rcx          ;*getfield outInst
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@370 (line 330)
  0.02%    0.04%  ││ │   ││  │   0x00007fb075215b2c: mov    0x28(%rsp),%rsi
  0.25%    0.10%  ││ │   ││  │   0x00007fb075215b31: mov    0x18(%rsp),%rdx
  0.01%           ││ │   ││  │   0x00007fb075215b36: mov    0x14(%rsp),%r8d
           0.00%  ││ │   ││  │   0x00007fb075215b3b: mov    0x70(%rsp),%edi
  0.03%    0.01%  ││ │   ││  │   0x00007fb075215b3f: mov    %r11,(%rsp)
  0.22%    0.07%  ││ │   ││  │   0x00007fb075215b43: callq  0x00007fb075046020  ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=200}
                  ││ │   ││  │                                                 ;*invokespecial add
                  ││ │   ││  │                                                 ; - com.google.re2j.Machine::step@384 (line 330)
                  ││ │   ││  │                                                 ;   {optimized virtual_call}
                  ││ │   ││  │   0x00007fb075215b48: mov    %rax,%rcx
                  ││ │   ││  │   0x00007fb075215b4b: test   %rax,%rax
                  ││ │╭  ││  │   0x00007fb075215b4e: jne    0x00007fb075215b61  ;*ifnull
                  ││ ││  ││  │                                                 ; - com.google.re2j.Machine::step@391 (line 332)
                  ││ ││  ││  │   0x00007fb075215b50: xor    %r10d,%r10d
  0.27%    0.38%  ││ ││  ││  │   0x00007fb075215b53: mov    0x20(%rsp),%r9d
                  ││ ││  ││  │   0x00007fb075215b58: mov    0x74(%rsp),%eax
  0.00%           ││ ││╭ ││  │   0x00007fb075215b5c: jmpq   0x00007fb075215c19
                  ││ │↘│ ││  │   0x00007fb075215b61: mov    0x20(%rsp),%r9d
                  ││ │ │ ││  │   0x00007fb075215b66: mov    %ebp,%r10d
                  ││ │ │ ││  │   0x00007fb075215b69: mov    0x74(%rsp),%eax
  0.00%           ││ │ │╭││  │   0x00007fb075215b6d: jmp    0x00007fb075215bb9  ;*aload
                  ││ │ ││││  │                                                 ; - com.google.re2j.Machine::step@294 (line 311)
  0.35%    0.32%  │↘ │ ││││  │↗  0x00007fb075215b6f: cmp    $0xc,%r9d
                  │  │ ││││  ││  0x00007fb075215b73: jne    0x00007fb07521600d  ;*if_icmpne
                  │  │ ││││  ││                                                ; - com.google.re2j.Inst::matchRune@29 (line 63)
                  │  │ ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.11%    0.13%  │  │ ││││  ││  0x00007fb075215b79: mov    0x18(%r12,%rbx,8),%ecx  ;*getfield f0
                  │  │ ││││  ││                                                ; - com.google.re2j.Inst::matchRune@33 (line 64)
                  │  │ ││││  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
                  │  │ ││││  ││  0x00007fb075215b7e: cmp    0x20(%rsp),%ecx
                  │  │ ││╰│  ││  0x00007fb075215b82: je     0x00007fb075215b12  ;*if_icmpeq
                  │  │ ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@37 (line 64)
                  │  │ ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.17%    0.25%  │  │ ││ │  ││  0x00007fb075215b84: mov    0x1c(%r12,%rbx,8),%ecx  ;*getfield f1
                  │  │ ││ │  ││                                                ; - com.google.re2j.Inst::matchRune@41 (line 64)
                  │  │ ││ │  ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%           │  │ ││ │  ││  0x00007fb075215b89: cmp    0x20(%rsp),%ecx
                  │  │ ││ ╰  ││  0x00007fb075215b8d: je     0x00007fb075215b12  ;*if_icmpeq
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@45 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.32%    0.32%  │  │ ││    ││  0x00007fb075215b93: mov    0x20(%r12,%rbx,8),%ebp  ;*getfield f2
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@49 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.01%           │  │ ││    ││  0x00007fb075215b98: cmp    0x20(%rsp),%ebp
                  │  │ ││    ││  0x00007fb075215b9c: je     0x00007fb075216055  ;*if_icmpeq
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@53 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.03%    0.06%  │  │ ││    ││  0x00007fb075215ba2: mov    0x24(%r12,%rbx,8),%ebp  ;*getfield f3
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@57 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.00%    0.01%  │  │ ││    ││  0x00007fb075215ba7: cmp    0x20(%rsp),%ebp
                  │  │ ││    ││  0x00007fb075215bab: je     0x00007fb075216089  ;*if_icmpne
                  │  │ ││    ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 64)
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@298 (line 311)
  0.28%    0.37%  │  │ ││    ││  0x00007fb075215bb1: mov    0x20(%rsp),%r9d    ;*goto
                  │  │ ││    ││                                                ; - com.google.re2j.Machine::step@291 (line 307)
  0.07%    0.03%  │  ↘ ││    ││  0x00007fb075215bb6: mov    %r11,%rcx          ;*aload
                  │    ││    ││                                                ; - com.google.re2j.Machine::step@389 (line 332)
                  │    │↘    ││  0x00007fb075215bb9: mov    0x28(%rsp),%r11
           0.00%  │    │     ││  0x00007fb075215bbe: mov    0x24(%r11),%ebx    ;*getfield pool
                  │    │     ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.68%    1.01%  │    │     ││  0x00007fb075215bc2: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength
                  │    │     ││                                                ; - com.google.re2j.Machine::free@8 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
                  │    │     ││                                                ; implicit exception: dispatches to 0x00007fb075216149
  0.04%    0.02%  │    │     ││  0x00007fb075215bc7: mov    0x28(%rsp),%r8
                  │    │     ││  0x00007fb075215bcc: mov    0xc(%r8),%ebp      ;*getfield poolSize
                  │    │     ││                                                ; - com.google.re2j.Machine::free@1 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.01%    0.00%  │    │     ││  0x00007fb075215bd0: cmp    %r11d,%ebp
                  │    │     ││  0x00007fb075215bd3: jge    0x00007fb075215fc5  ;*if_icmplt
                  │    │     ││                                                ; - com.google.re2j.Machine::free@9 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.78%    0.84%  │    │     ││  0x00007fb075215bd9: mov    %ebp,%r8d
  0.08%    0.03%  │    │     ││  0x00007fb075215bdc: inc    %r8d
                  │    │     ││  0x00007fb075215bdf: mov    0x28(%rsp),%rdi
                  │    │     ││  0x00007fb075215be4: mov    %r8d,0xc(%rdi)     ;*putfield poolSize
                  │    │     ││                                                ; - com.google.re2j.Machine::free@45 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.79%    0.88%  │    │     ││  0x00007fb075215be8: cmp    %r11d,%ebp
                  │    │     ││  0x00007fb075215beb: jae    0x00007fb075215ec9  ;*aastore
                  │    │     ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.07%    0.03%  │    │     ││  0x00007fb075215bf1: mov    %rcx,%r11
  0.00%           │    │     ││  0x00007fb075215bf4: shr    $0x3,%r11
           0.00%  │    │     ││  0x00007fb075215bf8: lea    (%r12,%rbx,8),%r10  ;*getfield pool
                  │    │     ││                                                ; - com.google.re2j.Machine::free@5 (line 160)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.66%    0.73%  │    │     ││  0x00007fb075215bfc: lea    0x10(%r10,%rbp,4),%r10
  0.08%    0.07%  │    │     ││  0x00007fb075215c01: mov    %r11d,(%r10)
  0.00%           │    │     ││  0x00007fb075215c04: shr    $0x9,%r10
           0.00%  │    │     ││  0x00007fb075215c08: movabs $0x7fb085ba7000,%r11
  0.75%    0.70%  │    │     ││  0x00007fb075215c12: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │    │     ││                                                ; - com.google.re2j.Machine::free@49 (line 163)
                  │    │     ││                                                ; - com.google.re2j.Machine::step@397 (line 333)
  0.08%    0.07%  │    │     ││  0x00007fb075215c16: xor    %r10d,%r10d        ; OopMap{[8]=Oop [24]=Oop [40]=Oop off=409}
                  │    │     ││                                                ;*goto
                  │    │     ││                                                ; - com.google.re2j.Machine::step@403 (line 270)
  0.29%    0.31%  │    ↘    ↗││  0x00007fb075215c19: test   %eax,0x17f893e1(%rip)        # 0x00007fb08d19f000
                  │         │││                                                ;*goto
                  │         │││                                                ; - com.google.re2j.Machine::step@403 (line 270)
                  │         │││                                                ;   {poll}
  0.54%    0.56%  │         │││  0x00007fb075215c1f: mov    0x8(%rsp),%r10
  1.04%    0.85%  │         │││  0x00007fb075215c24: mov    0xc(%r10),%r10d
  0.08%    0.06%  │         │││  0x00007fb075215c28: cmp    %r10d,%eax
                  │         │││  0x00007fb075215c2b: jge    0x00007fb075215dc2
  0.27%    0.21%  │         │││  0x00007fb075215c31: mov    %r9d,0x20(%rsp)
  0.60%    0.45%  │         │││  0x00007fb075215c36: mov    %eax,%r10d         ;*aload_1
                  │         │││                                                ; - com.google.re2j.Machine::step@21 (line 271)
  0.85%    0.48%  ↘         │││  0x00007fb075215c39: mov    0x8(%rsp),%r11
  0.15%    0.12%            │││  0x00007fb075215c3e: mov    0x10(%r11),%r11d   ;*getfield dense
                            │││                                                ; - com.google.re2j.Machine::step@22 (line 271)
  0.73%    0.64%            │││  0x00007fb075215c42: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fb075216125
  1.55%    1.76%            │││  0x00007fb075215c47: cmp    %r9d,%r10d
                            │││  0x00007fb075215c4a: jae    0x00007fb075215e8b
  1.15%    0.82%            │││  0x00007fb075215c50: shl    $0x3,%r11
  0.02%    0.02%            │││  0x00007fb075215c54: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                            │││                                                ; - com.google.re2j.Machine::step@27 (line 271)
  0.29%    0.40%            │││  0x00007fb075215c59: mov    0x10(%r12,%r11,8),%r8d  ;*getfield thread
                            │││                                                ; - com.google.re2j.Machine::step@40 (line 275)
                            │││                                                ; implicit exception: dispatches to 0x00007fb075216159
  2.78%    3.07%            │││  0x00007fb075215c5e: mov    %r10d,%eax
  0.73%    0.33%            │││  0x00007fb075215c61: inc    %eax               ;*iadd
                            │││                                                ; - com.google.re2j.Machine::step@237 (line 298)
  0.01%    0.01%            │││  0x00007fb075215c63: test   %r8d,%r8d
                           ╭│││  0x00007fb075215c66: jne    0x00007fb075215c74  ;*ifnonnull
                           ││││                                                ; - com.google.re2j.Machine::step@47 (line 276)
  0.54%    0.59%           ││││  0x00007fb075215c68: mov    0x24(%rsp),%r10d
  0.30%    0.23%           ││││  0x00007fb075215c6d: mov    0x20(%rsp),%r9d
                           │╰││  0x00007fb075215c72: jmp    0x00007fb075215c19
  0.03%    0.02%           ↘ ││  0x00007fb075215c74: mov    0x24(%rsp),%r9d
  0.33%    0.22%             ││  0x00007fb075215c79: test   %r9d,%r9d
                             ││  0x00007fb075215c7c: jne    0x00007fb075215f7d  ;*ifeq
                             ││                                                ; - com.google.re2j.Machine::step@55 (line 279)
  0.76%    0.50%             ││  0x00007fb075215c82: mov    0x10(%r12,%r8,8),%ebx  ;*getfield inst
                             ││                                                ; - com.google.re2j.Machine::step@101 (line 283)
  0.72%    0.61%             ││  0x00007fb075215c87: mov    0xc(%r12,%rbx,8),%r9d  ;*getfield op
                             ││                                                ; - com.google.re2j.Machine::step@111 (line 285)
                             ││                                                ; implicit exception: dispatches to 0x00007fb075216139
  3.31%    2.51%             ││  0x00007fb075215c8c: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                             ││                                                ; - com.google.re2j.Machine::step@172 (line 292)
  0.03%    0.01%             ││  0x00007fb075215c91: lea    (%r12,%r8,8),%r11  ;*getfield thread
                             ││                                                ; - com.google.re2j.Machine::step@40 (line 275)
  0.25%    0.17%             ││  0x00007fb075215c95: cmp    $0x9,%r9d
                             ││  0x00007fb075215c99: je     0x00007fb075215d98
  0.57%    0.40%             ││  0x00007fb075215c9f: cmp    $0x9,%r9d
                             ╰│  0x00007fb075215ca3: jg     0x00007fb075215aed
                              │  0x00007fb075215ca9: cmp    $0x7,%r9d
                              │  0x00007fb075215cad: je     0x00007fb075215ffd
                              │  0x00007fb075215cb3: cmp    $0x7,%r9d
                              ╰  0x00007fb075215cb7: jg     0x00007fb075215b6f
                                 0x00007fb075215cbd: cmp    $0x6,%r9d
                                 0x00007fb075215cc1: jne    0x00007fb075215ffd  ;*tableswitch
                                                                               ; - com.google.re2j.Machine::step@114 (line 285)
                                 0x00007fb075215cc7: mov    0x78(%rsp),%r9d
                                 0x00007fb075215ccc: cmp    $0x2,%r9d
....................................................................................................
 26.91%   24.19%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::add, version 494 (348 bytes) 

                          0x00007fb075218d6a: mov    %r10,(%rsp)
                          0x00007fb075218d6e: nop
                          0x00007fb075218d6f: callq  0x00007fb075046020  ; OopMap{off=532}
                                                                        ;*invokespecial add
                                                                        ; - com.google.re2j.Machine::add@190 (line 369)
                                                                        ;   {optimized virtual_call}
                  ╭       0x00007fb075218d74: jmpq   0x00007fb075218ed4
                  │       0x00007fb075218d79: mov    0x70(%rsp),%rax
                  │╭      0x00007fb075218d7e: jmpq   0x00007fb075218ed4  ;*tableswitch
                  ││                                                    ; - com.google.re2j.Machine::add@28 (line 349)
  0.96%    0.76%  ││      0x00007fb075218d83: mov    0x8(%rsp),%rsi
  0.09%    0.09%  ││      0x00007fb075218d88: mov    0x28(%rsp),%rdx
                  ││      0x00007fb075218d8d: mov    0x20(%rsp),%r8d
  0.21%    0.13%  ││      0x00007fb075218d92: mov    0x30(%rsp),%r9
  0.25%    0.15%  ││      0x00007fb075218d97: mov    0x38(%rsp),%edi
  0.11%    0.06%  ││      0x00007fb075218d9b: mov    0x70(%rsp),%r10
                  ││      0x00007fb075218da0: mov    %r10,(%rsp)
  0.29%    0.22%  ││      0x00007fb075218da4: mov    %rsi,%rbp
  0.19%    0.17%  ││      0x00007fb075218da7: callq  0x00007fb075046020  ; OopMap{rbp=Oop [40]=Oop [48]=Oop [72]=Oop off=588}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@118 (line 358)
                  ││                                                    ;   {optimized virtual_call}
  0.09%    0.18%  ││      0x00007fb075218dac: mov    0x48(%rsp),%r10
  0.34%    0.45%  ││      0x00007fb075218db1: mov    0x34(%r10),%r11d
  0.07%    0.13%  ││      0x00007fb075218db5: mov    %r11,%rcx
  0.14%    0.13%  ││      0x00007fb075218db8: shl    $0x3,%rcx          ;*getfield argInst
                  ││                                                    ; - com.google.re2j.Machine::add@126 (line 359)
  0.14%    0.16%  ││      0x00007fb075218dbc: mov    %rbp,%rsi
  0.20%    0.30%  ││      0x00007fb075218dbf: mov    0x28(%rsp),%rdx
  0.10%    0.13%  ││      0x00007fb075218dc4: mov    0x20(%rsp),%r8d
  0.08%    0.13%  ││      0x00007fb075218dc9: mov    0x30(%rsp),%r9
  0.12%    0.16%  ││      0x00007fb075218dce: mov    0x38(%rsp),%edi
  0.20%    0.36%  ││      0x00007fb075218dd2: mov    %rax,(%rsp)
  0.07%    0.08%  ││      0x00007fb075218dd6: nop
  0.16%    0.17%  ││      0x00007fb075218dd7: callq  0x00007fb075046020  ; OopMap{off=636}
                  ││                                                    ;*invokespecial add
                  ││                                                    ; - com.google.re2j.Machine::add@136 (line 359)
                  ││                                                    ;   {optimized virtual_call}
  0.05%    0.07%  ││╭     0x00007fb075218ddc: jmpq   0x00007fb075218ed4  ;*aload
                  │││                                                   ; - com.google.re2j.Machine::add@274 (line 389)
  1.77%    1.70%  │││     0x00007fb075218de1: mov    0x48(%rsp),%r10
  0.35%    0.20%  │││     0x00007fb075218de6: mov    %r10,%rcx
  0.06%    0.13%  │││     0x00007fb075218de9: shr    $0x3,%rcx          ;*putfield inst
                  │││                                                   ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││                                                   ; - com.google.re2j.Machine::add@281 (line 390)
  0.06%    0.06%  │││     0x00007fb075218ded: mov    0x70(%rsp),%rbp
  0.57%    0.65%  │││     0x00007fb075218df2: test   %rbp,%rbp
                  │││╭    0x00007fb075218df5: je     0x00007fb075218e11  ;*ifnonnull
                  ││││                                                  ; - com.google.re2j.Machine::add@276 (line 389)
  0.12%    0.01%  ││││    0x00007fb075218df7: mov    %ecx,0x10(%rbp)
  0.01%    0.02%  ││││    0x00007fb075218dfa: mov    %rbp,%r10
                  ││││    0x00007fb075218dfd: shr    $0x9,%r10
  0.15%    0.16%  ││││    0x00007fb075218e01: movabs $0x7fb085ba7000,%r11
  0.07%    0.01%  ││││    0x00007fb075218e0b: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││││                                                  ; - com.google.re2j.Machine::add@292 (line 392)
  0.01%    0.01%  ││││╭   0x00007fb075218e0f: jmp    0x00007fb075218e65
  0.25%    0.20%  │││↘│   0x00007fb075218e11: mov    0x8(%rsp),%r10
  0.06%    0.05%  │││ │   0x00007fb075218e16: mov    0xc(%r10),%r8d     ;*getfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@1 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.09%    0.06%  │││ │   0x00007fb075218e1a: test   %r8d,%r8d
                  │││ │   0x00007fb075218e1d: jle    0x00007fb075219021  ;*ifle
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@4 (line 148)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.42%    0.57%  │││ │   0x00007fb075218e23: mov    0x24(%r10),%r9d    ;*getfield pool
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@18 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.20%    0.30%  │││ │   0x00007fb075218e27: mov    %r8d,%ebp
  0.03%    0.05%  │││ │   0x00007fb075218e2a: dec    %ebp               ;*isub
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@13 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.06%    0.07%  │││ │   0x00007fb075218e2c: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@14 (line 149)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.45%    0.49%  │││ │   0x00007fb075218e30: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fb075219145
  0.25%    0.21%  │││ │   0x00007fb075218e35: cmp    %r11d,%ebp
                  │││ │   0x00007fb075218e38: jae    0x00007fb075218fc9
  0.07%    0.06%  │││ │   0x00007fb075218e3e: lea    (%r12,%r9,8),%r10
  0.10%    0.09%  │││ │   0x00007fb075218e42: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.50%    0.47%  │││ │   0x00007fb075218e47: mov    %ecx,0x10(%r12,%r10,8)  ;*putfield inst
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@45 (line 154)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
                  │││ │                                                 ; implicit exception: dispatches to 0x00007fb075219155
  0.55%    0.55%  │││ │   0x00007fb075218e4c: lea    (%r12,%r10,8),%rbp  ;*aaload
                  │││ │                                                 ; - com.google.re2j.Machine::alloc@25 (line 150)
                  │││ │                                                 ; - com.google.re2j.Machine::add@281 (line 390)
  0.08%    0.03%  │││ │   0x00007fb075218e50: mov    %rbp,%r10
  0.08%    0.05%  │││ │   0x00007fb075218e53: shr    $0x9,%r10
  0.51%    0.45%  │││ │   0x00007fb075218e57: movabs $0x7fb085ba7000,%r11
  0.25%    0.24%  │││ │   0x00007fb075218e61: mov    %r12b,(%r11,%r10,1)  ;*aload
                  │││ │                                                 ; - com.google.re2j.Machine::add@295 (line 394)
  0.23%    0.27%  │││ ↘   0x00007fb075218e65: mov    0x30(%rsp),%rdi
  0.21%    0.15%  │││     0x00007fb075218e6a: mov    0xc(%rdi),%r10d    ;*arraylength
                  │││                                                   ; - com.google.re2j.Machine::add@297 (line 394)
                  │││                                                   ; implicit exception: dispatches to 0x00007fb075219135
  0.53%    0.56%  │││     0x00007fb075218e6e: test   %r10d,%r10d
                  │││     0x00007fb075218e71: jle    0x00007fb075219006  ;*ifle
                  │││                                                   ; - com.google.re2j.Machine::add@298 (line 394)
  0.23%    0.30%  │││     0x00007fb075218e77: mov    0xc(%rbp),%r8d     ;*getfield cap
                  │││                                                   ; - com.google.re2j.Machine::add@303 (line 394)
  0.19%    0.20%  │││     0x00007fb075218e7b: mov    %r8,%r11
  0.20%    0.17%  │││     0x00007fb075218e7e: shl    $0x3,%r11
  0.49%    0.48%  │││     0x00007fb075218e82: cmp    %rdi,%r11
                  │││  ╭  0x00007fb075218e85: je     0x00007fb075218eb2  ;*if_acmpeq
                  │││  │                                                ; - com.google.re2j.Machine::add@308 (line 394)
  0.18%    0.28%  │││  │  0x00007fb075218e87: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fb075219165
  0.48%    0.62%  │││  │  0x00007fb075218e8c: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││  │                                                ; - com.google.re2j.Machine::add@303 (line 394)
  0.03%    0.05%  │││  │  0x00007fb075218e90: cmp    %r10d,%r11d
                  │││  │  0x00007fb075218e93: jb     0x00007fb075218fe5
  0.99%    1.01%  │││  │  0x00007fb075218e99: lea    0x10(%r12,%r8,8),%rsi
  0.10%    0.09%  │││  │  0x00007fb075218e9e: add    $0x10,%rdi
  0.03%    0.04%  │││  │  0x00007fb075218ea2: movslq %r10d,%rdx
  0.03%    0.06%  │││  │  0x00007fb075218ea5: movabs $0x7fb075052640,%r10
  0.76%    0.68%  │││  │  0x00007fb075218eaf: callq  *%r10              ;*aload
                  │││  │                                                ; - com.google.re2j.Machine::add@326 (line 397)
  0.03%    0.02%  │││  ↘  0x00007fb075218eb2: mov    %rbx,%r10
  0.15%    0.22%  │││     0x00007fb075218eb5: mov    %rbp,%r8
  0.79%    0.46%  │││     0x00007fb075218eb8: shr    $0x3,%r8
  0.24%    0.25%  │││     0x00007fb075218ebc: mov    %r8d,0x10(%rbx)
  0.02%    0.02%  │││     0x00007fb075218ec0: shr    $0x9,%r10
  0.17%    0.17%  │││     0x00007fb075218ec4: movabs $0x7fb085ba7000,%r11
  0.53%    0.29%  │││     0x00007fb075218ece: mov    %r12b,(%r11,%r10,1)  ;*putfield thread
                  │││                                                   ; - com.google.re2j.Machine::add@330 (line 397)
  0.21%    0.18%  │││     0x00007fb075218ed2: xor    %eax,%eax          ;*invokevirtual contains
                  │││                                                   ; - com.google.re2j.Machine::add@5 (line 345)
  0.87%    0.97%  ↘↘↘     0x00007fb075218ed4: add    $0x60,%rsp
  0.66%    0.76%          0x00007fb075218ed8: pop    %rbp
  0.28%    0.34%          0x00007fb075218ed9: test   %eax,0x17f86121(%rip)        # 0x00007fb08d19f000
                                                                        ;   {poll_return}
  0.84%    1.01%          0x00007fb075218edf: retq                      ;*tableswitch
                                                                        ; - com.google.re2j.Machine::add@28 (line 349)
                          0x00007fb075218ee0: mov    0x8(%rsp),%rsi
                          0x00007fb075218ee5: mov    0x28(%rsp),%rdx
                          0x00007fb075218eea: mov    0x20(%rsp),%r8d
                          0x00007fb075218eef: mov    0x30(%rsp),%r9
                          0x00007fb075218ef4: mov    %ebx,%edi
                          0x00007fb075218ef6: mov    0x70(%rsp),%r10
                          0x00007fb075218efb: mov    %r10,(%rsp)
                          0x00007fb075218eff: callq  0x00007fb075046020  ; OopMap{off=932}
....................................................................................................
 20.48%   20.61%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 537 (785 bytes) 

                              0x00007fb075237c87: or     $0x1,%r11d         ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 189)
                              0x00007fb075237c8b: mov    0x28(%rsp),%r9d
                              0x00007fb075237c90: test   %r9d,%r9d
                              0x00007fb075237c93: jne    0x00007fb075238fad  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@115 (line 193)
                              0x00007fb075237c99: test   %r10d,%r10d
                              0x00007fb075237c9c: jl     0x00007fb0752386eb  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
  0.00%    0.00%              0x00007fb075237ca2: mov    $0x5,%edi          ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007fb075237ca7: cmp    $0xa,%r10d
                              0x00007fb075237cab: je     0x00007fb075238703  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
                              0x00007fb075237cb1: mov    %r8d,%r14d
                              0x00007fb075237cb4: mov    %r10d,%r9d
           0.00%              0x00007fb075237cb7: add    $0xffffffbf,%r9d
                              0x00007fb075237cbb: cmp    $0x1a,%r9d
                  ╭           0x00007fb075237cbf: jb     0x00007fb075237cd2  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 194)
                  │           0x00007fb075237cc1: mov    %r10d,%r8d
                  │           0x00007fb075237cc4: add    $0xffffff9f,%r8d
                  │           0x00007fb075237cc8: cmp    $0x1a,%r8d
                  │           0x00007fb075237ccc: jae    0x00007fb075238719  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 194)
                  ↘           0x00007fb075237cd2: or     $0x10,%edi         ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 194)
           0.00%              0x00007fb075237cd5: vmovd  %xmm0,%r9d
                              0x00007fb075237cda: mov    %r9,%r8
                              0x00007fb075237cdd: shl    $0x3,%r8           ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 181)
                              0x00007fb075237ce1: mov    %r8,0x50(%rsp)
  0.01%                       0x00007fb075237ce6: mov    $0x1,%r8d
                              0x00007fb075237cec: xor    %ecx,%ecx
  0.00%                       0x00007fb075237cee: mov    %r8d,0x14(%rsp)
  0.00%                       0x00007fb075237cf3: mov    %ecx,0x44(%rsp)
  0.01%    0.00%              0x00007fb075237cf7: xor    %edx,%edx
                   ╭          0x00007fb075237cf9: jmpq   0x00007fb075237e77
  0.03%    0.01%   │    ↗     0x00007fb075237cfe: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 234)
  0.04%    0.02%   │    │     0x00007fb075237d02: mov    %r9d,0x5c(%rsp)    ;*iload_2
                   │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 234)
  0.16%    0.16%   │    │↗    0x00007fb075237d07: mov    0x48(%rsp),%r8
  0.07%    0.11%   │    ││    0x00007fb075237d0c: mov    0x10(%r8),%r9d     ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │    ││                                                  ; - com.google.re2j.Machine::match@345 (line 235)
  0.11%    0.29%   │    ││    0x00007fb075237d10: mov    0x44(%rsp),%ebx
  0.04%    0.06%   │    ││    0x00007fb075237d14: cmp    %r9d,%ebx
                   │    ││    0x00007fb075237d17: je     0x00007fb075238630  ;*if_icmpne
                   │    ││                                                  ; - com.google.re2j.Machine::match@348 (line 235)
  0.18%    0.27%   │    ││    0x00007fb075237d1d: xor    %eax,%eax          ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 235)
  0.07%    0.04%   │    ││    0x00007fb075237d1f: mov    %rax,-0x8(%rsp)
  0.03%    0.03%   │    ││    0x00007fb075237d24: mov    0x44(%rsp),%eax
  0.08%    0.07%   │    ││    0x00007fb075237d28: mov    %eax,0x58(%rsp)
  0.14%    0.12%   │    ││    0x00007fb075237d2c: mov    -0x8(%rsp),%rax
  0.07%    0.01%   │    ││    0x00007fb075237d31: mov    %r11d,0x38(%rsp)
  0.02%    0.03%   │    ││    0x00007fb075237d36: add    0x2c(%rsp),%ebx    ;*iadd
                   │    ││                                                  ; - com.google.re2j.Machine::match@337 (line 235)
  0.06%    0.09%   │    ││    0x00007fb075237d3a: mov    %ebx,0x44(%rsp)
  0.12%    0.17%   │    ││    0x00007fb075237d3e: mov    0x30(%rsp),%rsi
  0.05%    0.05%   │    ││    0x00007fb075237d43: mov    0x20(%rsp),%rdx
  0.01%    0.05%   │    ││    0x00007fb075237d48: mov    0x50(%rsp),%rcx
  0.04%    0.06%   │    ││    0x00007fb075237d4d: mov    0x58(%rsp),%r8d
  0.14%    0.15%   │    ││    0x00007fb075237d52: mov    %ebx,%r9d
  0.04%    0.06%   │    ││    0x00007fb075237d55: mov    %r10d,%edi
  0.02%    0.03%   │    ││    0x00007fb075237d58: mov    0x5c(%rsp),%r10d
  0.06%    0.03%   │    ││    0x00007fb075237d5d: mov    %r10d,(%rsp)
  0.17%    0.27%   │    ││    0x00007fb075237d61: mov    0x3c(%rsp),%r11d
  0.04%    0.08%   │    ││    0x00007fb075237d66: mov    %r11d,0x8(%rsp)
  0.07%    0.04%   │    ││    0x00007fb075237d6b: mov    %eax,0x10(%rsp)
  0.04%    0.01%   │    ││    0x00007fb075237d6f: callq  0x00007fb075046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [72]=Oop [80]=Oop off=724}
                   │    ││                                                  ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 235)
                   │    ││                                                  ;   {optimized virtual_call}
  0.26%    0.27%   │    ││    0x00007fb075237d74: mov    0x30(%rsp),%r8
  0.05%    0.06%   │    ││    0x00007fb075237d79: movzbl 0x10(%r8),%edx     ;*getfield matched
                   │    ││                                                  ; - com.google.re2j.Machine::match@449 (line 257)
  0.00%            │    ││    0x00007fb075237d7e: mov    0x2c(%rsp),%r10d
  0.24%    0.22%   │    ││    0x00007fb075237d83: test   %r10d,%r10d
                   │    ││    0x00007fb075237d86: je     0x00007fb07523844d  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@361 (line 236)
  0.05%    0.08%   │    ││    0x00007fb075237d8c: mov    0x28(%r8),%r9d     ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@368 (line 239)
  0.00%            │    ││    0x00007fb075237d90: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                   │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 239)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007fb075239811
  0.00%            │    ││    0x00007fb075237d95: test   %ebp,%ebp
                   │    ││    0x00007fb075237d97: je     0x00007fb0752389a9  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@372 (line 239)
  0.24%    0.26%   │    ││    0x00007fb075237d9d: mov    0x48(%rsp),%r11
  0.06%    0.04%   │    ││    0x00007fb075237da2: mov    0x10(%r11),%esi    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237da6: mov    0xc(%r11),%eax     ;*getfield start
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237daa: mov    0x14(%r11),%ecx    ;*getfield str
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.20%    0.19%   │    ││    0x00007fb075237dae: mov    0x38(%rsp),%r10d
  0.06%    0.05%   │    ││    0x00007fb075237db3: cmp    $0xffffffff,%r10d
                   │    ││    0x00007fb075237db7: je     0x00007fb07523863a  ;*if_icmpeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@401 (line 247)
                   │    ││    0x00007fb075237dbd: mov    %r8,%rbx
                   │    ││    0x00007fb075237dc0: mov    0x28(%rsp),%r8d
  0.18%    0.10%   │    ││    0x00007fb075237dc5: add    0x44(%rsp),%r8d
  0.04%    0.04%   │    ││    0x00007fb075237dca: add    %eax,%r8d          ;*iadd
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237dcd: cmp    %esi,%r8d
                   │    ││    0x00007fb075237dd0: jge    0x00007fb07523864d  ;*if_icmpge
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237dd6: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fb075239821
  0.22%    0.06%   │    ││    0x00007fb075237ddb: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││    0x00007fb075237de2: jne    0x00007fb07523880d
  0.03%    0.06%   │    ││    0x00007fb075237de8: lea    (%r12,%rcx,8),%r13  ;*invokeinterface charAt
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237dec: test   %r8d,%r8d
                   │    ││    0x00007fb075237def: jl     0x00007fb075238945  ;*iflt
                   │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237df5: mov    0xc(%r13),%edi     ;*getfield value
                   │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.22%    0.13%   │    ││    0x00007fb075237df9: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007fb075239835
  0.08%    0.04%   │    ││    0x00007fb075237dfe: cmp    %ebp,%r8d
                   │    ││    0x00007fb075237e01: jge    0x00007fb0752389e1  ;*if_icmplt
                   │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.00%    0.01%   │    ││    0x00007fb075237e07: cmp    %ebp,%r8d
                   │    ││    0x00007fb075237e0a: jae    0x00007fb075238760
                   │    ││    0x00007fb075237e10: lea    (%r12,%rdi,8),%r11
  0.24%    0.10%   │    ││    0x00007fb075237e14: movzwl 0x10(%r11,%r8,2),%r11d  ;*caload
                   │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.06%    0.05%   │    ││    0x00007fb075237e1a: cmp    $0xd800,%r11d
                   │    ││    0x00007fb075237e21: jge    0x00007fb075238a39  ;*if_icmplt
                   │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
  0.01%    0.00%   │    ││    0x00007fb075237e27: shl    $0x3,%r11d         ;*ishl
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 248)
                   │    ││    0x00007fb075237e2b: mov    %r11d,%r14d
  0.26%    0.06%   │    ││    0x00007fb075237e2e: or     $0x1,%r14d
  0.06%    0.08%   │    ││    0x00007fb075237e32: and    $0x7,%r11d
           0.00%   │    ││    0x00007fb075237e36: sar    $0x3,%r14d         ;*ishr
                   │    ││                                                  ; - com.google.re2j.Machine::match@417 (line 249)
  0.01%            │    ││    0x00007fb075237e3a: or     $0x1,%r11d         ; OopMap{r9=NarrowOop rcx=NarrowOop rbx=Oop [32]=Oop [72]=Oop [80]=Oop off=926}
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 255)
  0.19%    0.29%   │    ││    0x00007fb075237e3e: test   %eax,0x17f671bc(%rip)        # 0x00007fb08d19f000
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 255)
                   │    ││                                                  ;   {poll}
  0.08%    0.16%   │    ││    0x00007fb075237e44: mov    0x50(%rsp),%r8
                   │    ││    0x00007fb075237e49: shr    $0x3,%r8
  0.00%    0.02%   │    ││    0x00007fb075237e4d: mov    %r8d,0x18(%rsp)
  0.16%    0.27%   │    ││    0x00007fb075237e52: mov    0x5c(%rsp),%edi
  0.05%    0.06%   │    ││    0x00007fb075237e56: mov    0x20(%rsp),%r8
  0.01%    0.02%   │    ││    0x00007fb075237e5b: mov    %r8,0x50(%rsp)
  0.00%    0.02%   │    ││    0x00007fb075237e60: mov    0x28(%rsp),%r8d
  0.21%    0.26%   │    ││    0x00007fb075237e65: mov    %r8d,0x2c(%rsp)
  0.06%    0.08%   │    ││    0x00007fb075237e6a: vmovd  %r9d,%xmm6
  0.00%    0.00%   │    ││    0x00007fb075237e6f: mov    %esi,0x58(%rsp)
           0.01%   │    ││    0x00007fb075237e73: vmovd  %ecx,%xmm2
  0.19%    0.34%   ↘    ││    0x00007fb075237e77: mov    0x18(%rsp),%r9d
  0.04%    0.05%        ││    0x00007fb075237e7c: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007fb0752397e2
  0.01%    0.01%        ││    0x00007fb075237e81: shl    $0x3,%r9           ;*aload
                        ││                                                  ; - com.google.re2j.Machine::match@136 (line 200)
           0.01%        ││    0x00007fb075237e85: mov    %r9,0x20(%rsp)
  0.28%    0.31%        ││    0x00007fb075237e8a: test   %r8d,%r8d
                        ││    0x00007fb075237e8d: je     0x00007fb07523809e  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@141 (line 200)
  0.04%    0.08%        ││    0x00007fb075237e93: mov    %r10d,0x58(%rsp)
           0.00%        ││    0x00007fb075237e98: mov    %r11d,%r10d
  0.00%    0.00%        ││    0x00007fb075237e9b: mov    %r14d,%r11d        ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@267 (line 226)
  0.31%    0.24%        ││    0x00007fb075237e9e: test   %edx,%edx
                        ││    0x00007fb075237ea0: jne    0x00007fb07523886d  ;*ifne
                        ││                                                  ; - com.google.re2j.Machine::match@271 (line 226)
  0.05%    0.08%        ││    0x00007fb075237ea6: mov    0x44(%rsp),%ecx
  0.00%                 ││    0x00007fb075237eaa: test   %ecx,%ecx
                        ││    0x00007fb075237eac: je     0x00007fb0752386e1  ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 226)
  0.00%    0.00%        ││    0x00007fb075237eb2: mov    0x3c(%rsp),%r8d
  0.18%    0.22%        ││    0x00007fb075237eb7: test   %r8d,%r8d
                        ││    0x00007fb075237eba: jne    0x00007fb0752388f1  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@282 (line 229)
  0.04%    0.08%        ││    0x00007fb075237ec0: vmovd  %xmm6,%r9d
                        ││    0x00007fb075237ec5: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                        ││                                                  ; - com.google.re2j.Machine::match@286 (line 229)
                        ││                                                  ; implicit exception: dispatches to 0x00007fb0752397f1
           0.01%        ││    0x00007fb075237eca: test   %ebp,%ebp
                        ││    0x00007fb075237ecc: jle    0x00007fb0752388ad  ;*ifle
                        ││                                                  ; - com.google.re2j.Machine::match@287 (line 229)
  0.15%    0.23%        ││    0x00007fb075237ed2: test   %ebp,%ebp
                        ││    0x00007fb075237ed4: jbe    0x00007fb0752387bd
  0.06%    0.06%        ││    0x00007fb075237eda: mov    %ecx,0x10(%r12,%r9,8)  ;*iastore
                        ││                                                  ; - com.google.re2j.Machine::match@296 (line 230)
           0.01%        ││    0x00007fb075237edf: mov    %rbx,%rdx
           0.00%        ││    0x00007fb075237ee2: mov    0x18(%rbx),%esi    ;*getfield prog
                        ││                                                  ; - com.google.re2j.Machine::match@301 (line 232)
  0.14%    0.23%        ││    0x00007fb075237ee5: mov    0x1c(%r12,%rsi,8),%ebx  ; implicit exception: dispatches to 0x00007fb075239801
  0.05%    0.10%        ││    0x00007fb075237eea: mov    %rax,-0x8(%rsp)
  0.01%    0.00%        ││    0x00007fb075237eef: mov    0x44(%rsp),%eax
           0.00%        ││    0x00007fb075237ef3: mov    %eax,0x38(%rsp)
  0.28%    0.14%        ││    0x00007fb075237ef7: mov    -0x8(%rsp),%rax
  0.09%    0.06%        ││    0x00007fb075237efc: mov    %r11d,%ebp
  0.00%    0.01%        ││    0x00007fb075237eff: mov    %r10d,0x28(%rsp)
  0.00%    0.01%        ││    0x00007fb075237f04: mov    %r8d,0x3c(%rsp)
  0.24%    0.34%        ││    0x00007fb075237f09: mov    %rdx,0x30(%rsp)    ;*ifeq
                        ││                                                  ; - com.google.re2j.Machine::match@275 (line 226)
  0.06%    0.11%        ││    0x00007fb075237f0e: mov    %rbx,%rcx
  0.01%    0.00%        ││    0x00007fb075237f11: shl    $0x3,%rcx          ;*getfield startInst
                        ││                                                  ; - com.google.re2j.Machine::match@304 (line 232)
                        ││    0x00007fb075237f15: shl    $0x3,%r9           ;*getfield matchcap
                        ││                                                  ; - com.google.re2j.Machine::match@283 (line 229)
  0.21%    0.32%        ││    0x00007fb075237f19: mov    %rdx,%rsi
  0.08%    0.06%        ││    0x00007fb075237f1c: mov    0x20(%rsp),%rdx
  0.00%    0.01%        ││    0x00007fb075237f21: mov    0x44(%rsp),%r8d
           0.00%        ││    0x00007fb075237f26: xor    %r10d,%r10d
  0.19%    0.23%        ││    0x00007fb075237f29: mov    %r10,(%rsp)
  0.11%    0.10%        ││    0x00007fb075237f2d: xchg   %ax,%ax
  0.01%                 ││    0x00007fb075237f2f: callq  0x00007fb075046020  ; OopMap{[24]=NarrowOop [32]=Oop [48]=Oop [72]=Oop [80]=Oop off=1172}
                        ││                                                  ;*invokespecial add
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 232)
                        ││                                                  ;   {optimized virtual_call}
  0.08%    0.06%        ││    0x00007fb075237f34: mov    0x58(%rsp),%r10d
  0.24%    0.32%        ││    0x00007fb075237f39: test   %r10d,%r10d
                    ╭   ││    0x00007fb075237f3c: jl     0x00007fb075237fb8  ;*ifge
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 234)
  0.00%             │   ││    0x00007fb075237f3e: xor    %r9d,%r9d          ;*iload_0
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 234)
  0.04%    0.04%    │   ││↗   0x00007fb075237f41: cmp    $0xa,%r10d
                    │   │││   0x00007fb075237f45: je     0x00007fb0752382fc  ;*iload_1
                    │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 234)
  0.14%    0.22%    │   │││   0x00007fb075237f4b: mov    %ebp,%r11d
  0.07%    0.04%    │   │││   0x00007fb075237f4e: test   %r11d,%r11d
                    │╭  │││   0x00007fb075237f51: jl     0x00007fb075237fc3  ;*iload_1
                    ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 234)
                    ││  │││↗  0x00007fb075237f53: cmp    $0xa,%r11d
                    ││  ││││  0x00007fb075237f57: je     0x00007fb075238305  ;*iload_0
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.04%    0.04%    ││  ││││  0x00007fb075237f5d: mov    0x58(%rsp),%ecx
  0.18%    0.20%    ││  ││││  0x00007fb075237f61: add    $0xffffffbf,%ecx
  0.04%    0.07%    ││  ││││  0x00007fb075237f64: cmp    $0x1a,%ecx
                    ││╭ ││││  0x00007fb075237f67: jb     0x00007fb075237f7c  ;*if_icmple
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
                    │││ ││││  0x00007fb075237f69: mov    0x58(%rsp),%r8d
  0.04%    0.02%    │││ ││││  0x00007fb075237f6e: add    $0xffffff9f,%r8d
  0.17%    0.15%    │││ ││││  0x00007fb075237f72: cmp    $0x1a,%r8d
                    │││ ││││  0x00007fb075237f76: jae    0x00007fb0752386a0  ;*iconst_1
                    │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.07%    0.05%    ││↘ ││││  0x00007fb075237f7c: mov    $0x1,%ebp          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.00%    0.01%    ││  ││││  0x00007fb075237f81: mov    %r11d,%ecx
  0.04%    0.08%    ││  ││││  0x00007fb075237f84: add    $0xffffffbf,%ecx
  0.12%    0.14%    ││  ││││  0x00007fb075237f87: cmp    $0x1a,%ecx
                    ││ ╭││││  0x00007fb075237f8a: jb     0x00007fb075237f9d  ;*if_icmple
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.06%    0.08%    ││ │││││  0x00007fb075237f8c: mov    %r11d,%r8d
  0.01%    0.01%    ││ │││││  0x00007fb075237f8f: add    $0xffffff9f,%r8d
  0.07%    0.03%    ││ │││││  0x00007fb075237f93: cmp    $0x1a,%r8d
                    ││ │││││  0x00007fb075237f97: jae    0x00007fb0752386c1  ;*iconst_1
                    ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.13%    0.18%    ││ ↘││││  0x00007fb075237f9d: mov    $0x1,%ecx          ;*ireturn
                    ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.06%    0.08%    ││  ││││  0x00007fb075237fa2: cmp    %ecx,%ebp
                    ││  ╰│││  0x00007fb075237fa4: je     0x00007fb075237cfe  ;*if_icmpeq
                    ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.05%    0.08%    ││   │││  0x00007fb075237faa: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 234)
  0.05%    0.02%    ││   │││  0x00007fb075237fae: mov    %r9d,0x5c(%rsp)
  0.14%    0.20%    ││   ╰││  0x00007fb075237fb3: jmpq   0x00007fb075237d07
                    ↘│    ││  0x00007fb075237fb8: mov    $0x5,%r9d
                     │    ╰│  0x00007fb075237fbe: jmpq   0x00007fb075237f41
                     ↘     │  0x00007fb075237fc3: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                ; - com.google.re2j.Machine::match@323 (line 234)
                           ╰  0x00007fb075237fc7: jmp    0x00007fb075237f53
                              0x00007fb075237fc9: nopl   0x0(%rax)
                              0x00007fb075237fd0: mov    %r9d,%ebp
                              0x00007fb075237fd3: jmpq   0x00007fb07523823b
                              0x00007fb075237fd8: mov    %ebp,%r9d
                              0x00007fb075237fdb: inc    %r9d
....................................................................................................
 10.06%   11.09%  <total for region 4>

....[Hottest Regions]...............................................................................
 27.98%   30.26%         C2, level 4  com.google.re2j.Machine::add, version 494 (259 bytes) 
 26.91%   24.19%         C2, level 4  com.google.re2j.Machine::step, version 488 (511 bytes) 
 20.48%   20.61%         C2, level 4  com.google.re2j.Machine::add, version 494 (348 bytes) 
 10.06%   11.09%         C2, level 4  com.google.re2j.Machine::match, version 537 (785 bytes) 
  5.17%    5.39%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  3.92%    3.87%         C2, level 4  com.google.re2j.Machine::step, version 488 (55 bytes) 
  1.26%    1.34%         C2, level 4  com.google.re2j.Machine::add, version 494 (54 bytes) 
  0.35%    0.35%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.29%    0.34%         C2, level 4  com.google.re2j.Machine::match, version 537 (60 bytes) 
  0.27%    0.08%         C2, level 4  com.google.re2j.Machine::init, version 538 (115 bytes) 
  0.26%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 538 (147 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Matcher::find, version 565 (8 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 538 (36 bytes) 
  0.07%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 624 (124 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Matcher::find, version 565 (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::match, version 537 (77 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 537 (159 bytes) 
  2.40%    2.22%  <...other 442 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.72%   52.21%         C2, level 4  com.google.re2j.Machine::add, version 494 
 30.83%   28.06%         C2, level 4  com.google.re2j.Machine::step, version 488 
 10.70%   11.67%         C2, level 4  com.google.re2j.Machine::match, version 537 
  5.17%    5.39%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.46%    1.19%   [kernel.kallsyms]  [unknown] 
  0.71%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 538 
  0.36%    0.12%         C2, level 4  com.google.re2j.Matcher::find, version 565 
  0.16%    0.10%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 624 
  0.10%    0.05%         C2, level 4  java.util.Collections::shuffle, version 570 
  0.05%    0.04%        libc-2.26.so  vfprintf 
  0.04%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.04%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.00%           libjvm.so  _ZN12outputStream5printEPKcz 
  0.02%    0.00%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.02%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.02%           libjvm.so  _ZN13defaultStream4holdEl 
  0.46%    0.32%  <...other 75 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 92.58%   92.40%         C2, level 4
  5.19%    5.39%        runtime stub
  1.46%    1.19%   [kernel.kallsyms]
  0.45%    0.66%           libjvm.so
  0.16%    0.26%        libc-2.26.so
  0.05%    0.03%      hsdis-amd64.so
  0.05%    0.04%  libpthread-2.26.so
  0.03%    0.01%              [vdso]
  0.02%    0.01%         interpreter
  0.01%                   ld-2.26.so
  0.00%                    libzip.so
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  8531.680 ± 57.512  ops/s
Re2jFindRegex.testExp1:·asm  thrpt            NaN             ---
