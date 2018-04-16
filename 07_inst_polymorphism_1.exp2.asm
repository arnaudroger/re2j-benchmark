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
# Warmup Iteration   1: 4242.261 ops/s
# Warmup Iteration   2: 9847.517 ops/s
# Warmup Iteration   3: 10163.492 ops/s
# Warmup Iteration   4: 8639.190 ops/s
# Warmup Iteration   5: 10344.236 ops/s
# Warmup Iteration   6: 10226.658 ops/s
# Warmup Iteration   7: 10145.380 ops/s
# Warmup Iteration   8: 10099.053 ops/s
# Warmup Iteration   9: 10245.638 ops/s
# Warmup Iteration  10: 7673.518 ops/s
# Warmup Iteration  11: 10211.136 ops/s
# Warmup Iteration  12: 10232.241 ops/s
# Warmup Iteration  13: 10329.267 ops/s
# Warmup Iteration  14: 10214.141 ops/s
# Warmup Iteration  15: 10370.420 ops/s
# Warmup Iteration  16: 8703.526 ops/s
# Warmup Iteration  17: 9892.766 ops/s
# Warmup Iteration  18: 10283.126 ops/s
# Warmup Iteration  19: 10264.539 ops/s
# Warmup Iteration  20: 10281.310 ops/s
Iteration   1: 10314.183 ops/s
Iteration   2: 10149.494 ops/s
Iteration   3: 10261.592 ops/s
Iteration   4: 10131.408 ops/s
Iteration   5: 10300.935 ops/s
Iteration   6: 10306.981 ops/s
Iteration   7: 10265.724 ops/s
Iteration   8: 10195.408 ops/s
Iteration   9: 10053.030 ops/s
Iteration  10: 10303.234 ops/s
Iteration  11: 10302.736 ops/s
Iteration  12: 10239.262 ops/s
Iteration  13: 10277.246 ops/s
Iteration  14: 10207.362 ops/s
Iteration  15: 10315.832 ops/s
Iteration  16: 10150.816 ops/s
Iteration  17: 10296.431 ops/s
Iteration  18: 10254.939 ops/s
Iteration  19: 10197.784 ops/s
Iteration  20: 10235.815 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  10238.011 ±(99.9%) 63.305 ops/s [Average]
  (min, avg, max) = (10053.030, 10238.011, 10315.832), stdev = 72.902
  CI (99.9%): [10174.705, 10301.316] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 195968 total address lines.
Perf output processed (skipped 23.165 seconds):
 Column 1: cycles (20724 events)
 Column 2: instructions (20710 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 499 (711 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f51a5216ee0: mov    0x8(%rsi),%r10d
                             0x00007f51a5216ee4: shl    $0x3,%r10
                             0x00007f51a5216ee8: cmp    %r10,%rax
                             0x00007f51a5216eeb: jne    0x00007f51a5045e20  ;   {runtime_call}
                             0x00007f51a5216ef1: data16 xchg %ax,%ax
                             0x00007f51a5216ef4: nopl   0x0(%rax,%rax,1)
                             0x00007f51a5216efc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.12%    0.09%             0x00007f51a5216f00: mov    %eax,-0x14000(%rsp)
  0.21%    0.14%             0x00007f51a5216f07: push   %rbp
  0.14%    0.02%             0x00007f51a5216f08: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.15%             0x00007f51a5216f0c: mov    %edi,0x18(%rsp)
  0.13%    0.04%             0x00007f51a5216f10: mov    %r9d,0x14(%rsp)
  0.08%    0.06%             0x00007f51a5216f15: mov    %r8d,0x10(%rsp)
  0.05%    0.06%             0x00007f51a5216f1a: mov    %rcx,0x8(%rsp)
  0.10%    0.23%             0x00007f51a5216f1f: vmovq  %rdx,%xmm0
  0.02%    0.04%             0x00007f51a5216f24: vmovq  %rsi,%xmm1
  0.05%    0.07%             0x00007f51a5216f29: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.05%    0.06%             0x00007f51a5216f2d: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f51a5217b79
  0.10%    0.16%             0x00007f51a5216f33: vmovd  %r10d,%xmm2
  0.03%    0.03%             0x00007f51a5216f38: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f51a5217b89
  0.05%    0.06%             0x00007f51a5216f3b: test   %ecx,%ecx
                  ╭          0x00007f51a5216f3d: jle    0x00007f51a52170b7  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.10%    0.05%  │          0x00007f51a5216f43: vmovd  %xmm2,%r11d
  0.15%    0.17%  │          0x00007f51a5216f48: test   %r11d,%r11d
                  │          0x00007f51a5216f4b: jne    0x00007f51a5217699
  0.04%    0.05%  │          0x00007f51a5216f51: xor    %r10d,%r10d
  0.05%    0.04%  │╭         0x00007f51a5216f54: jmp    0x00007f51a5216f76
                  ││         0x00007f51a5216f56: data16 nopw 0x0(%rax,%rax,1)
  1.07%    0.79%  ││    ↗    0x00007f51a5216f60: mov    %r10d,%ecx
  0.01%    0.00%  ││    │    0x00007f51a5216f63: mov    %r11,0x8(%rsp)
  0.03%    0.06%  ││    │    0x00007f51a5216f68: mov    %ebx,0x78(%rsp)
  0.04%    0.04%  ││    │    0x00007f51a5216f6c: mov    %edi,0x80(%rsp)
  0.96%    0.71%  ││    │    0x00007f51a5216f73: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.03%  │↘    │    0x00007f51a5216f76: vmovq  %xmm0,%r11
  0.16%    0.22%  │     │    0x00007f51a5216f7b: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.06%    0.08%  │     │    0x00007f51a5216f7f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f51a5217b35
  1.17%    0.60%  │     │    0x00007f51a5216f84: cmp    %r11d,%r10d
                  │     │    0x00007f51a5216f87: jae    0x00007f51a5217422
  0.10%    0.11%  │     │    0x00007f51a5216f8d: lea    (%r12,%r8,8),%r11
  0.20%    0.23%  │     │    0x00007f51a5216f91: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.08%    0.04%  │     │    0x00007f51a5216f96: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                  ; implicit exception: dispatches to 0x00007f51a5217b49
  2.26%    1.13%  │     │    0x00007f51a5216f9b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f51a5217b59
  4.72%    4.87%  │     │    0x00007f51a5216fa0: lea    (%r12,%r9,8),%rdi
  0.03%    0.03%  │     │    0x00007f51a5216fa4: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     │    0x00007f51a5216fab: jne    0x00007f51a521732c  ;*invokevirtual isMatch
                  │     │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
  1.33%    1.41%  │     │    0x00007f51a5216fb1: mov    0xc(%rdi),%r9d
  0.15%    0.14%  │     │    0x00007f51a5216fb5: cmp    $0x6,%r9d
                  │     │    0x00007f51a5216fb9: je     0x00007f51a5217404  ;*if_icmpne
                  │     │                                                  ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │     │                                                  ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  1.33%    1.69%  │     │    0x00007f51a5216fbf: xor    %eax,%eax          ;*synchronization entry
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.02%  │     │    0x00007f51a5216fc1: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │     │                                                  ; - com.google.re2j.Machine::step@104 (line 289)
  0.03%    0.01%  │     │    0x00007f51a5216fc6: vmovq  %xmm1,%r11
  0.10%    0.05%  │     │    0x00007f51a5216fcb: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │     │                                                  ; - com.google.re2j.Machine::free@1 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.33%    1.80%  │     │    0x00007f51a5216fcf: mov    0x24(%r11),%r11d   ;*getfield pool
                  │     │                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.02%  │     │    0x00007f51a5216fd3: mov    %r10d,%edx
  0.01%    0.01%  │     │    0x00007f51a5216fd6: inc    %edx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@171 (line 295)
  0.08%    0.15%  │     │    0x00007f51a5216fd8: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  1.27%    1.63%  │     │    0x00007f51a5216fdc: test   %eax,%eax
                  │ ╭   │    0x00007f51a5216fde: jne    0x00007f51a52171d3  ;*ifeq
                  │ │   │                                                  ; - com.google.re2j.Machine::step@88 (line 285)
  0.02%    0.02%  │ │   │    0x00007f51a5216fe4: mov    0x8(%rdi),%ebx
  0.02%    0.01%  │ │   │    0x00007f51a5216fe7: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007f51a5216fed: jne    0x00007f51a5217469  ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.09%    0.14%  │ │   │    0x00007f51a5216ff3: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.44%    1.71%  │ │   │    0x00007f51a5216ff6: cmp    $0xa,%ebp
                  │ │╭  │    0x00007f51a5216ff9: je     0x00007f51a52170f0  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.04%  │ ││  │    0x00007f51a5216fff: cmp    $0xb,%ebp
                  │ ││  │    0x00007f51a5217002: je     0x00007f51a5217545  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.01%  │ ││  │    0x00007f51a5217008: cmp    $0x9,%ebp
                  │ ││  │    0x00007f51a521700b: je     0x00007f51a5217585  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.35%    0.37%  │ ││  │    0x00007f51a5217011: cmp    $0xc,%ebp
                  │ ││  │    0x00007f51a5217014: jne    0x00007f51a5217505  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.41%    1.75%  │ ││  │    0x00007f51a521701a: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.02%  │ ││  │    0x00007f51a521701d: cmp    0x18(%rsp),%eax
                  │ ││╭ │    0x00007f51a5217021: je     0x00007f51a52170f0  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.39%    0.39%  │ │││ │    0x00007f51a5217027: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.05%  │ │││ │    0x00007f51a521702a: cmp    0x18(%rsp),%ebx
                  │ │││╭│    0x00007f51a521702e: je     0x00007f51a52170f0  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.58%    1.48%  │ │││││    0x00007f51a5217034: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.05%  │ │││││    0x00007f51a5217037: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f51a521703b: je     0x00007f51a5217619  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.29%    0.36%  │ │││││    0x00007f51a5217041: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.04%  │ │││││    0x00007f51a5217044: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f51a5217048: je     0x00007f51a5217659  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.26%    1.52%  │ │││││    0x00007f51a521704e: mov    0x78(%rsp),%ebx
  0.01%    0.00%  │ │││││    0x00007f51a5217052: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.10%    0.15%  │ │││││    0x00007f51a5217059: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││                                                  ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
                  │ │││││                                                  ; implicit exception: dispatches to 0x00007f51a5217b69
  0.05%    0.04%  │ │││││    0x00007f51a521705e: cmp    %ebp,%r9d
                  │ │││││    0x00007f51a5217061: jge    0x00007f51a52175c5  ;*if_icmplt
                  │ │││││                                                  ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.36%    1.52%  │ │││││    0x00007f51a5217067: mov    %r9d,%esi
  0.00%    0.01%  │ │││││    0x00007f51a521706a: inc    %esi
  0.14%    0.12%  │ │││││    0x00007f51a521706c: vmovq  %xmm1,%rax
  0.04%    0.02%  │ │││││    0x00007f51a5217071: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││                                                  ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.36%    1.44%  │ │││││    0x00007f51a5217074: cmp    %ebp,%r9d
                  │ │││││    0x00007f51a5217077: jae    0x00007f51a52174a5  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.01%  │ │││││    0x00007f51a521707d: vmovq  %xmm0,%r10
  0.09%    0.05%  │ │││││    0x00007f51a5217082: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.04%    0.03%  │ │││││    0x00007f51a5217086: shl    $0x3,%r11          ;*getfield pool
                  │ │││││                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.19%    0.99%  │ │││││    0x00007f51a521708a: lea    0x10(%r11,%r9,4),%r11
  0.02%    0.00%  │ │││││    0x00007f51a521708f: mov    %r8d,(%r11)
  0.10%    0.07%  │ │││││    0x00007f51a5217092: shr    $0x9,%r11
  0.01%    0.03%  │ │││││    0x00007f51a5217096: movabs $0x7f51a11ff000,%r8
  1.22%    0.87%  │ │││││    0x00007f51a52170a0: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.00%  │ │││││    0x00007f51a52170a4: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@230 (line 277)
  0.12%    0.10%  │ │││││ ↗  0x00007f51a52170a9: test   %eax,0x16c50f51(%rip)        # 0x00007f51bbe68000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ │││││ │                                                ;   {poll}
  0.03%    0.02%  │ │││││ │  0x00007f51a52170af: cmp    %ecx,%edx
                  │ ││││╰ │  0x00007f51a52170b1: jl     0x00007f51a5216f60  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.28%    0.17%  ↘ ││││  │  0x00007f51a52170b7: vmovq  %xmm0,%r10
  0.02%             ││││  │  0x00007f51a52170bc: movzbl 0x18(%r10),%r10d
  0.01%             ││││  │  0x00007f51a52170c1: test   %r10d,%r10d
                    ││││ ╭│  0x00007f51a52170c4: jne    0x00007f51a52170e4  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.00%    ││││ ││  0x00007f51a52170c6: vmovq  %xmm0,%r10
  0.16%    0.22%    ││││ ││  0x00007f51a52170cb: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%             ││││ ││  0x00007f51a52170cf: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.02%    0.01%    ││││ ││  0x00007f51a52170d3: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%             ││││ ││  0x00007f51a52170d8: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.23%    0.19%    ││││ ││  0x00007f51a52170dc: test   %ebp,%ebp
                    ││││ ││  0x00007f51a52170de: jne    0x00007f51a52176c1  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
                    ││││ ↘│  0x00007f51a52170e4: add    $0x60,%rsp
  0.02%             ││││  │  0x00007f51a52170e8: pop    %rbp
  0.01%    0.01%    ││││  │  0x00007f51a52170e9: test   %eax,0x16c50f11(%rip)        # 0x00007f51bbe68000
                    ││││  │                                                ;   {poll_return}
  0.24%    0.13%    ││││  │  0x00007f51a52170ef: retq   
  0.56%    0.38%    │↘↘↘  │  0x00007f51a52170f0: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.45%    0.37%    │     │  0x00007f51a52170f4: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f51a5217b99
  0.24%    0.09%    │     │  0x00007f51a52170f9: lea    (%r12,%r11,8),%r9
                    │     │  0x00007f51a52170fd: xor    %edi,%edi
                    │     │  0x00007f51a52170ff: mov    $0x1,%eax
                    │     │  0x00007f51a5217104: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007f51a521710a: jne    0x00007f51a521734e  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.06%    0.00%    │     │  0x00007f51a5217110: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007f51a5217114: mov    0x8(%rsp),%r11
                    │     │  0x00007f51a5217119: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007f51a5217bb9
  0.10%             │     │  0x00007f51a521711d: cmp    $0x40,%ebx
                    │     │  0x00007f51a5217120: jg     0x00007f51a521777d  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%    │     │  0x00007f51a5217126: mov    %ebx,%ecx
                    │     │  0x00007f51a5217128: shl    %cl,%rax           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.02%    │     │  0x00007f51a521712b: mov    %rbp,%rcx
                    │     │  0x00007f51a521712e: and    %rax,%rcx          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%             │     │  0x00007f51a5217131: test   %rcx,%rcx
                    │     │  0x00007f51a5217134: jne    0x00007f51a52177cd  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.00%    │     │  0x00007f51a521713a: cmp    $0x40,%ebx
                    │     │  0x00007f51a521713d: jge    0x00007f51a521782d  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │     │  0x00007f51a5217143: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%             │     │  0x00007f51a5217147: or     %rbp,%rax
                    │     │  0x00007f51a521714a: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%             │     │  0x00007f51a521714e: mov    %rsi,%rbx
  0.00%             │     │  0x00007f51a5217151: mov    %r9,%rcx
  0.01%    0.00%    │     │  0x00007f51a5217154: shr    $0x3,%rcx
                    │     │  0x00007f51a5217158: mov    %ecx,0x10(%r12,%r8,8)
  0.04%    0.01%    │     │  0x00007f51a521715d: shr    $0x9,%rbx
  0.01%             │     │  0x00007f51a5217161: movabs $0x7f51a11ff000,%r9
  0.02%             │     │  0x00007f51a521716b: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007f51a521716f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007f51a5217bcd
  0.04%             │     │  0x00007f51a5217174: test   %ebp,%ebp
                    │     │  0x00007f51a5217176: jle    0x00007f51a5217731  ;*ifle
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │     │  0x00007f51a521717c: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007f51a5217180: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007f51a5217184: mov    %ebp,%ebx
  0.07%    0.02%    │     │  0x00007f51a5217186: inc    %ebx
                    │     │  0x00007f51a5217188: mov    %ebx,0xc(%r11)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%             │     │  0x00007f51a521718c: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f51a5217bdd
  0.00%             │     │  0x00007f51a5217191: cmp    %ecx,%ebp
                    │     │  0x00007f51a5217193: jae    0x00007f51a52176e3  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.03%    │     │  0x00007f51a5217199: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │     │  0x00007f51a521719d: lea    0x10(%r10,%rbp,4),%r10
  0.03%             │     │  0x00007f51a52171a2: mov    %r8d,(%r10)
  0.13%    0.03%    │     │  0x00007f51a52171a5: shr    $0x9,%r10
  0.01%    0.02%    │     │  0x00007f51a52171a9: movabs $0x7f51a11ff000,%r8
           0.00%    │     │  0x00007f51a52171b3: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.09%    │     │  0x00007f51a52171b7: vmovq  %xmm0,%r10
  0.00%             │     │  0x00007f51a52171bc: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%    0.01%    │     │  0x00007f51a52171c0: mov    %ecx,%r10d
                    │     │  0x00007f51a52171c3: mov    0x78(%rsp),%ebx
  0.04%    0.03%    │     │  0x00007f51a52171c7: mov    0x80(%rsp),%edi
                    │     ╰  0x00007f51a52171ce: jmpq   0x00007f51a52170a9
                    ↘        0x00007f51a52171d3: mov    0x78(%rsp),%ebx
                             0x00007f51a52171d7: cmp    $0x2,%ebx
                             0x00007f51a52171da: je     0x00007f51a521740e  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@94 (line 288)
                             0x00007f51a52171e0: mov    0x80(%rsp),%edi    ;*aload
                                                                           ; - com.google.re2j.Machine::step@102 (line 289)
                             0x00007f51a52171e7: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                           ; - com.google.re2j.Machine::step@107 (line 289)
                                                                           ; implicit exception: dispatches to 0x00007f51a5217c29
....................................................................................................
 34.60%   32.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 500 (1180 bytes) 

                           0x00007f51a521e74e: shr    $0x3,%r11
                           0x00007f51a521e752: mov    %r11d,(%r10)
                           0x00007f51a521e755: shr    $0x9,%r10
                           0x00007f51a521e759: movabs $0x7f51a11ff000,%r11
                           0x00007f51a521e763: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                         ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ╭        0x00007f51a521e767: jmpq   0x00007f51a521eabc  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.06%  │        0x00007f51a521e76c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.27%  │        0x00007f51a521e770: cmp    $0x40,%ecx
                  │        0x00007f51a521e773: jg     0x00007f51a521eff5  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.14%  │        0x00007f51a521e779: mov    $0x1,%r11d
  0.13%    0.17%  │        0x00007f51a521e77f: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.39%    0.37%  │        0x00007f51a521e782: mov    %rbx,%r8
  0.16%    0.19%  │        0x00007f51a521e785: and    %r11,%r8           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.06%  │        0x00007f51a521e788: test   %r8,%r8
                  │        0x00007f51a521e78b: jne    0x00007f51a521f041  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.49%  │        0x00007f51a521e791: cmp    $0x40,%ecx
                  │        0x00007f51a521e794: jge    0x00007f51a521f095  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.16%  │        0x00007f51a521e79a: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.28%  │        0x00007f51a521e79e: or     %r11,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.06%  │        0x00007f51a521e7a1: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.35%    0.41%  │        0x00007f51a521e7a5: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f7f5
  0.09%    0.15%  │        0x00007f51a521e7aa: lea    (%r12,%rbp,8),%r13
  0.17%    0.16%  │        0x00007f51a521e7ae: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭       0x00007f51a521e7b5: je     0x00007f51a521e926
  0.01%    0.03%  ││       0x00007f51a521e7bb: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││       0x00007f51a521e7c2: jne    0x00007f51a521f351  ;*invokevirtual add
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.12%  ││       0x00007f51a521e7c8: mov    0x18(%r13),%ecx    ;*getfield pc
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.08%  ││       0x00007f51a521e7cc: cmp    $0x40,%ecx
                  ││       0x00007f51a521e7cf: jg     0x00007f51a521f649  ;*if_icmpgt
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.13%  ││       0x00007f51a521e7d5: mov    $0x1,%r11d
           0.01%  ││       0x00007f51a521e7db: shl    %cl,%r11           ;*lshl
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.44%  ││       0x00007f51a521e7de: mov    %rbx,%r8
  0.02%    0.01%  ││       0x00007f51a521e7e1: and    %r11,%r8           ;*land
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.18%  ││       0x00007f51a521e7e4: test   %r8,%r8
                  ││       0x00007f51a521e7e7: jne    0x00007f51a521f699  ;*ifeq
                  ││                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  ││       0x00007f51a521e7ed: cmp    $0x40,%ecx
                  ││       0x00007f51a521e7f0: jge    0x00007f51a521f6f5  ;*if_icmpge
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.08%  ││       0x00007f51a521e7f6: or     %r11,%rbx
  0.01%    0.01%  ││       0x00007f51a521e7f9: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  ││                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.15%  ││       0x00007f51a521e7fd: mov    %r13,%r8
  0.07%    0.05%  ││       0x00007f51a521e800: shr    $0x3,%r8           ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.06%  ││       0x00007f51a521e804: test   %rdi,%rdi
                  ││       0x00007f51a521e807: jne    0x00007f51a521ec4d  ;*ifnonnull
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││       0x00007f51a521e80d: mov    0xa0(%rsp),%rbx
  0.12%    0.12%  ││       0x00007f51a521e815: mov    0xc(%rbx),%r11d    ;*getfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007f51a521f951
  0.06%    0.07%  ││       0x00007f51a521e819: test   %r11d,%r11d
                  ││       0x00007f51a521e81c: jle    0x00007f51a521f5f1  ;*ifle
                  ││                                                     ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.10%  ││       0x00007f51a521e822: mov    0x24(%rbx),%ecx    ;*getfield pool
                  ││                                                     ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.02%  ││       0x00007f51a521e825: mov    %r11d,%ebp
  0.18%    0.16%  ││       0x00007f51a521e828: dec    %ebp               ;*isub
                  ││                                                     ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.06%  ││       0x00007f51a521e82a: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  ││                                                     ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.05%  ││       0x00007f51a521e82d: mov    0xc(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007f51a521f965
  0.01%    0.00%  ││       0x00007f51a521e832: cmp    %r9d,%ebp
                  ││       0x00007f51a521e835: jae    0x00007f51a521f39d
  0.14%    0.16%  ││       0x00007f51a521e83b: lea    (%r12,%rcx,8),%r9
  0.04%    0.04%  ││       0x00007f51a521e83f: mov    0xc(%r9,%r11,4),%r9d  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  ││       0x00007f51a521e844: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  ││                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007f51a521f975
  0.52%    0.54%  ││       0x00007f51a521e849: lea    (%r12,%r9,8),%rdi  ;*aaload
                  ││                                                     ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.04%  ││       0x00007f51a521e84d: mov    %rdi,%r11
  0.01%    0.01%  ││       0x00007f51a521e850: shr    $0x9,%r11
  0.03%    0.05%  ││       0x00007f51a521e854: movabs $0x7f51a11ff000,%r8
  0.14%    0.24%  ││       0x00007f51a521e85e: mov    %r12b,(%r8,%r11,1)  ;*aload_3
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.25%  ││       0x00007f51a521e862: mov    0x58(%rsp),%r11
           0.00%  ││       0x00007f51a521e867: mov    0xc(%r11),%r11d    ;*arraylength
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                     ; implicit exception: dispatches to 0x00007f51a521f925
  0.02%    0.01%  ││       0x00007f51a521e86b: test   %r11d,%r11d
                  ││       0x00007f51a521e86e: jle    0x00007f51a521f5a1  ;*ifle
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%  ││       0x00007f51a521e874: mov    0xc(%rdi),%r8d     ;*getfield cap
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.24%  ││       0x00007f51a521e878: mov    %r8,%r9
  0.00%    0.01%  ││       0x00007f51a521e87b: shl    $0x3,%r9
  0.02%    0.01%  ││       0x00007f51a521e87f: cmp    0x58(%rsp),%r9
                  ││╭      0x00007f51a521e884: je     0x00007f51a521e8dc  ;*if_acmpeq
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%  │││      0x00007f51a521e886: mov    0xc(%r12,%r8,8),%edx  ; implicit exception: dispatches to 0x00007f51a521f989
  0.39%    0.49%  │││      0x00007f51a521e88b: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  │││      0x00007f51a521e88f: cmp    %r11d,%edx
                  │││      0x00007f51a521e892: jb     0x00007f51a521f3ed
  0.44%    0.60%  │││      0x00007f51a521e898: mov    %r10,0x20(%rsp)
  0.03%    0.02%  │││      0x00007f51a521e89d: mov    %rbx,0x8(%rsp)
  0.00%    0.01%  │││      0x00007f51a521e8a2: mov    %rdi,0xa0(%rsp)
                  │││      0x00007f51a521e8aa: mov    %r14,%rbp
  0.25%    0.27%  │││      0x00007f51a521e8ad: lea    0x10(%r12,%r8,8),%rsi
           0.02%  │││      0x00007f51a521e8b2: movslq %r11d,%rdx
  0.00%    0.01%  │││      0x00007f51a521e8b5: mov    0x18(%rsp),%rdi
  0.00%           │││      0x00007f51a521e8ba: movabs $0x7f51a5052640,%r10
  0.25%    0.39%  │││      0x00007f51a521e8c4: callq  *%r10              ;*invokestatic arraycopy
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │││      0x00007f51a521e8c7: mov    %rbp,%r14
  0.01%    0.00%  │││      0x00007f51a521e8ca: mov    0xa0(%rsp),%rdi
  0.31%    0.32%  │││      0x00007f51a521e8d2: mov    0x8(%rsp),%rbx
                  │││      0x00007f51a521e8d7: mov    0x20(%rsp),%r10    ;*aload_1
                  │││                                                    ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%           ││↘      0x00007f51a521e8dc: mov    0xc(%r14),%r9d     ;*getfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.16%  ││       0x00007f51a521e8e0: mov    0x20(%r14),%ebp    ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.01%  ││       0x00007f51a521e8e4: mov    %r9d,%r8d
  0.00%           ││       0x00007f51a521e8e7: inc    %r8d
  0.04%    0.01%  ││       0x00007f51a521e8ea: mov    %r8d,0xc(%r14)     ;*putfield size
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.30%  ││       0x00007f51a521e8ee: mov    0xc(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f51a521f935
  0.07%    0.04%  ││       0x00007f51a521e8f3: cmp    %r8d,%r9d
                  ││       0x00007f51a521e8f6: jae    0x00007f51a521f305  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.01%  ││       0x00007f51a521e8fc: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreads
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  ││       0x00007f51a521e900: lea    0x10(%r11,%r9,4),%r11
  0.27%    0.15%  ││       0x00007f51a521e905: mov    %rdi,%r8
  0.02%    0.01%  ││       0x00007f51a521e908: shr    $0x3,%r8
                  ││       0x00007f51a521e90c: mov    %r8d,(%r11)
  0.20%    0.21%  ││       0x00007f51a521e90f: shr    $0x9,%r11
  0.14%    0.21%  ││       0x00007f51a521e913: movabs $0x7f51a11ff000,%r8
  0.03%           ││       0x00007f51a521e91d: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  ││                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.03%  ││       0x00007f51a521e921: xor    %r13d,%r13d
  0.08%    0.06%  ││ ╭     0x00007f51a521e924: jmp    0x00007f51a521e975
  0.04%    0.05%  │↘ │     0x00007f51a521e926: mov    %r10,0x20(%rsp)
  0.12%    0.16%  │  │     0x00007f51a521e92b: mov    %rdx,0x8(%rsp)     ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.03%  │  │     0x00007f51a521e930: mov    %r13,%rsi          ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.09%  │  │     0x00007f51a521e933: mov    0x30(%rsp),%ecx
  0.02%    0.03%  │  │     0x00007f51a521e937: mov    0x58(%rsp),%r8
  0.11%    0.20%  │  │     0x00007f51a521e93c: mov    0x54(%rsp),%r9d
  0.04%    0.04%  │  │     0x00007f51a521e941: mov    0xa0(%rsp),%r10
  0.07%    0.12%  │  │     0x00007f51a521e949: mov    %r10,(%rsp)
  0.02%    0.02%  │  │     0x00007f51a521e94d: mov    %ecx,0x28(%rsp)
  0.13%    0.15%  │  │     0x00007f51a521e951: mov    %r8,0x38(%rsp)
  0.05%    0.03%  │  │     0x00007f51a521e956: mov    %r9d,0x2c(%rsp)
  0.03%    0.10%  │  │     0x00007f51a521e95b: callq  0x00007f51a5046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Derived_oop_[56] [32]=Oop [56]=Oop [88]=Oop off=992}
                  │  │                                                   ;*invokevirtual add
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │  │                                                   ;   {optimized virtual_call}
  0.12%    0.28%  │  │     0x00007f51a521e960: mov    0x8(%rsp),%r14
  0.01%    0.04%  │  │     0x00007f51a521e965: mov    0xa0(%rsp),%rbx
  0.07%    0.09%  │  │     0x00007f51a521e96d: mov    0x20(%rsp),%r10
  0.18%    0.24%  │  │     0x00007f51a521e972: mov    %rax,%r13          ;*synchronization entry
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.22%  │  ↘     0x00007f51a521e975: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  │        0x00007f51a521e979: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f80d
  0.58%    0.64%  │        0x00007f51a521e97e: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │        0x00007f51a521e985: jne    0x00007f51a521ed3d
  0.31%    0.43%  │        0x00007f51a521e98b: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.02%  │        0x00007f51a521e98f: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.05%  │        0x00007f51a521e993: cmp    $0x40,%ecx
                  │        0x00007f51a521e996: jg     0x00007f51a521f0e1  ;*if_icmpgt
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.26%  │        0x00007f51a521e99c: mov    $0x1,%r11d
  0.14%    0.11%  │        0x00007f51a521e9a2: shl    %cl,%r11           ;*lshl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.70%    0.72%  │        0x00007f51a521e9a5: mov    0x10(%r14),%r8     ;*getfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.15%  │        0x00007f51a521e9a9: mov    %r8,%r9
  0.18%    0.01%  │        0x00007f51a521e9ac: and    %r11,%r9           ;*land
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.06%  │        0x00007f51a521e9af: test   %r9,%r9
                  │        0x00007f51a521e9b2: jne    0x00007f51a521f131  ;*ifeq
                  │                                                      ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.32%  │        0x00007f51a521e9b8: cmp    $0x40,%ecx
                  │        0x00007f51a521e9bb: jge    0x00007f51a521f18d  ;*if_icmpge
                  │                                                      ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.15%  │        0x00007f51a521e9c1: mov    %r12b,0x18(%r14)   ;*putfield empty
                  │                                                      ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.19%  │        0x00007f51a521e9c5: or     %r8,%r11
  0.03%    0.03%  │        0x00007f51a521e9c8: mov    %r11,0x10(%r14)    ;*putfield pcsl
                  │                                                      ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.26%  │        0x00007f51a521e9cc: mov    %r10,%r8
  0.11%    0.06%  │        0x00007f51a521e9cf: shr    $0x3,%r8           ;*putfield inst
                  │                                                      ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.17%  │        0x00007f51a521e9d3: test   %r13,%r13
                  │   ╭    0x00007f51a521e9d6: jne    0x00007f51a521ec09  ;*ifnonnull
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  │   │    0x00007f51a521e9dc: mov    0xc(%rbx),%edi     ;*getfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007f51a521f851
  0.30%    0.30%  │   │    0x00007f51a521e9df: test   %edi,%edi
                  │   │    0x00007f51a521e9e1: jle    0x00007f51a521efb9  ;*ifle
                  │   │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.07%  │   │    0x00007f51a521e9e7: mov    0x24(%rbx),%r9d    ;*getfield pool
                  │   │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.11%  │   │    0x00007f51a521e9eb: mov    %edi,%ebp
  0.02%    0.02%  │   │    0x00007f51a521e9ed: dec    %ebp               ;*isub
                  │   │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.29%  │   │    0x00007f51a521e9ef: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  │   │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.14%  │   │    0x00007f51a521e9f2: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f865
  0.14%    0.12%  │   │    0x00007f51a521e9f7: cmp    %r11d,%ebp
                  │   │    0x00007f51a521e9fa: jae    0x00007f51a521ed7d
  0.04%    0.02%  │   │    0x00007f51a521ea00: lea    (%r12,%r9,8),%r11
  0.29%    0.37%  │   │    0x00007f51a521ea04: mov    0xc(%r11,%rdi,4),%r9d  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.18%  │   │    0x00007f51a521ea09: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │   │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007f51a521f875
  0.44%    0.53%  │   │    0x00007f51a521ea0e: lea    (%r12,%r9,8),%r13  ;*aaload
                  │   │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.02%  │   │    0x00007f51a521ea12: mov    %r13,%r10
  0.18%    0.17%  │   │    0x00007f51a521ea15: shr    $0x9,%r10
  0.11%    0.17%  │   │    0x00007f51a521ea19: movabs $0x7f51a11ff000,%r11
  0.30%    0.34%  │   │    0x00007f51a521ea23: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.34%  │   │    0x00007f51a521ea27: mov    0x58(%rsp),%r10
  0.07%    0.13%  │   │    0x00007f51a521ea2c: mov    0xc(%r10),%r10d    ;*arraylength
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                  ; implicit exception: dispatches to 0x00007f51a521f829
  0.10%    0.11%  │   │    0x00007f51a521ea30: test   %r10d,%r10d
                  │   │    0x00007f51a521ea33: jle    0x00007f51a521ef7d  ;*ifle
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.16%  │   │    0x00007f51a521ea39: mov    0xc(%r13),%r8d     ;*getfield cap
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.23%  │   │    0x00007f51a521ea3d: mov    %r8,%r11
  0.07%    0.08%  │   │    0x00007f51a521ea40: shl    $0x3,%r11
  0.19%    0.15%  │   │    0x00007f51a521ea44: cmp    0x58(%rsp),%r11
                  │   │╭   0x00007f51a521ea49: je     0x00007f51a521ea77  ;*if_acmpeq
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.20%  │   ││   0x00007f51a521ea4b: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f889
  0.50%    0.42%  │   ││   0x00007f51a521ea50: lea    (%r12,%r8,8),%rcx  ;*getfield cap
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.03%  │   ││   0x00007f51a521ea54: cmp    %r10d,%r11d
                  │   ││   0x00007f51a521ea57: jb     0x00007f51a521edc1
  0.61%    0.57%  │   ││   0x00007f51a521ea5d: lea    0x10(%r12,%r8,8),%rsi
  0.12%    0.06%  │   ││   0x00007f51a521ea62: movslq %r10d,%rdx
  0.04%    0.02%  │   ││   0x00007f51a521ea65: mov    0x18(%rsp),%rdi
  0.07%    0.03%  │   ││   0x00007f51a521ea6a: movabs $0x7f51a5052640,%r10
  0.40%    0.33%  │   ││   0x00007f51a521ea74: callq  *%r10              ;*aload_1
                  │   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%           │   │↘   0x00007f51a521ea77: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.21%  │   │    0x00007f51a521ea7b: mov    0xc(%r14),%ebp     ;*getfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.24%  │   │    0x00007f51a521ea7f: mov    %ebp,%r10d
  0.18%    0.14%  │   │    0x00007f51a521ea82: inc    %r10d
                  │   │    0x00007f51a521ea85: mov    %r10d,0xc(%r14)    ;*putfield size
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.21%  │   │    0x00007f51a521ea89: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f51a521f839
  0.21%    0.27%  │   │    0x00007f51a521ea8e: cmp    %r10d,%ebp
                  │   │    0x00007f51a521ea91: jae    0x00007f51a521ed02  ;*aastore
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.24%  │   │    0x00007f51a521ea97: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                  │   │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │   │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │    0x00007f51a521ea9b: lea    0x10(%r10,%rbp,4),%r10
  0.18%    0.23%  │   │    0x00007f51a521eaa0: mov    %r13,%r8
  0.20%    0.23%  │   │    0x00007f51a521eaa3: shr    $0x3,%r8
  0.13%    0.20%  │   │    0x00007f51a521eaa7: mov    %r8d,(%r10)
  0.00%    0.02%  │   │    0x00007f51a521eaaa: shr    $0x9,%r10
  0.18%    0.22%  │   │    0x00007f51a521eaae: movabs $0x7f51a11ff000,%r11
  0.22%    0.23%  │   │    0x00007f51a521eab8: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                  │   │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.22%  ↘   │    0x00007f51a521eabc: mov    0x10(%rsp),%r10
  0.17%    0.16%      │    0x00007f51a521eac1: mov    0x20(%r10),%ebp    ;*getfield argInst
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.20%    0.25%      │    0x00007f51a521eac5: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f771
  0.25%    0.27%      │    0x00007f51a521eaca: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                      │    0x00007f51a521ead1: jne    0x00007f51a521ecb5
  0.08%    0.11%      │    0x00007f51a521ead7: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.15%      │    0x00007f51a521eadb: mov    0x18(%r10),%ecx    ;*getfield pc
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.19%      │    0x00007f51a521eadf: cmp    $0x40,%ecx
                      │    0x00007f51a521eae2: jg     0x00007f51a521eefd  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.25%      │    0x00007f51a521eae8: mov    $0x1,%r9d
  0.02%    0.00%      │    0x00007f51a521eaee: shl    %cl,%r9            ;*lshl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.73%    0.68%      │    0x00007f51a521eaf1: mov    0x10(%r14),%r11    ;*getfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%               │    0x00007f51a521eaf5: mov    %r11,%r8
  0.22%    0.12%      │    0x00007f51a521eaf8: and    %r9,%r8            ;*land
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.14%      │    0x00007f51a521eafb: test   %r8,%r8
                      │    0x00007f51a521eafe: jne    0x00007f51a521ef21  ;*ifeq
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.29%    0.27%      │    0x00007f51a521eb04: cmp    $0x40,%ecx
                      │    0x00007f51a521eb07: jge    0x00007f51a521ef59  ;*if_icmpge
                      │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%    0.01%      │    0x00007f51a521eb0d: mov    %r12b,0x18(%r14)   ;*putfield empty
                      │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.12%      │    0x00007f51a521eb11: or     %r11,%r9
  0.24%    0.13%      │    0x00007f51a521eb14: mov    %r9,0x10(%r14)     ;*putfield pcsl
                      │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.28%      │    0x00007f51a521eb18: mov    0xc(%rbx),%r8d     ;*getfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007f51a521f789
  0.00%               │    0x00007f51a521eb1c: test   %r8d,%r8d
                      │    0x00007f51a521eb1f: jle    0x00007f51a521ee2d  ;*ifle
                      │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.09%      │    0x00007f51a521eb25: mov    0x24(%rbx),%ecx    ;*getfield pool
                      │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.07%      │    0x00007f51a521eb28: mov    %r8d,%ebp
  0.28%    0.35%      │    0x00007f51a521eb2b: dec    %ebp               ;*isub
                      │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.00%      │    0x00007f51a521eb2d: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                      │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.21%      │    0x00007f51a521eb30: mov    0xc(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f51a521f79d
  0.15%    0.21%      │    0x00007f51a521eb35: cmp    %r11d,%ebp
                      │    0x00007f51a521eb38: jae    0x00007f51a521ec73
  0.28%    0.22%      │    0x00007f51a521eb3e: lea    (%r12,%rcx,8),%r11
  0.01%    0.01%      │    0x00007f51a521eb42: mov    0xc(%r11,%r8,4),%r13d  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.17%      │    0x00007f51a521eb47: mov    0xc(%r12,%r13,8),%r11d  ;*getfield cap
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                  ; implicit exception: dispatches to 0x00007f51a521f7ad
  0.19%    0.11%      │    0x00007f51a521eb4c: mov    0x58(%rsp),%r8
  0.29%    0.24%      │    0x00007f51a521eb51: mov    0xc(%r8),%r9d      ;*arraylength
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%    0.00%      │    0x00007f51a521eb55: lea    (%r12,%r13,8),%rbp  ;*aaload
                      │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.13%      │    0x00007f51a521eb59: shr    $0x3,%r10
  0.16%    0.12%      │    0x00007f51a521eb5d: mov    %r10d,0x10(%r12,%r13,8)
  0.26%    0.38%      │    0x00007f51a521eb62: mov    %rbp,%r10
  0.01%               │    0x00007f51a521eb65: shr    $0x9,%r10
  0.13%    0.13%      │    0x00007f51a521eb69: movabs $0x7f51a11ff000,%r8
  0.14%    0.17%      │    0x00007f51a521eb73: mov    %r12b,(%r8,%r10,1)  ;*putfield inst
                      │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.27%    0.36%      │    0x00007f51a521eb77: test   %r9d,%r9d
                      │    0x00007f51a521eb7a: jle    0x00007f51a521ee51  ;*ifle
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.01%      │    0x00007f51a521eb80: mov    %r11,%r10
  0.18%    0.14%      │    0x00007f51a521eb83: shl    $0x3,%r10
  0.14%    0.19%      │    0x00007f51a521eb87: cmp    0x58(%rsp),%r10
                      │ ╭  0x00007f51a521eb8c: je     0x00007f51a521ebba  ;*if_acmpeq
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.23%    0.28%      │ │  0x00007f51a521eb8e: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f51a521f7d9
  0.06%    0.04%      │ │  0x00007f51a521eb93: lea    (%r12,%r11,8),%rcx  ;*getfield cap
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.05%      │ │  0x00007f51a521eb97: cmp    %r9d,%r8d
                      │ │  0x00007f51a521eb9a: jb     0x00007f51a521ecd1
  0.16%    0.21%      │ │  0x00007f51a521eba0: lea    0x10(%r12,%r11,8),%rsi
  0.21%    0.34%      │ │  0x00007f51a521eba5: movslq %r9d,%rdx
  0.00%    0.00%      │ │  0x00007f51a521eba8: mov    0x18(%rsp),%rdi
  0.14%    0.26%      │ │  0x00007f51a521ebad: movabs $0x7f51a5052640,%r10
  0.17%    0.28%      │ │  0x00007f51a521ebb7: callq  *%r10              ;*aload_1
                      │ │                                                ; - com.google.re2j.Inst$MatchInst::add@71 (line 106)
                      │ │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │ ↘  0x00007f51a521ebba: mov    0x20(%r14),%r8d    ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.10%      │    0x00007f51a521ebbe: mov    0xc(%r14),%ebp     ;*getfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.20%      │    0x00007f51a521ebc2: mov    %ebp,%r10d
  0.34%    0.14%      │    0x00007f51a521ebc5: inc    %r10d
                      │    0x00007f51a521ebc8: mov    %r10d,0xc(%r14)    ;*putfield size
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.05%    0.07%      │    0x00007f51a521ebcc: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f51a521f7c1
  0.11%    0.12%      │    0x00007f51a521ebd1: cmp    %r10d,%ebp
                      │    0x00007f51a521ebd4: jae    0x00007f51a521ec95  ;*aastore
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.35%    0.46%      │    0x00007f51a521ebda: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                      │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                      │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │    0x00007f51a521ebde: lea    0x10(%r10,%rbp,4),%r10
  0.09%    0.06%      │    0x00007f51a521ebe3: mov    %r13d,(%r10)
  0.20%    0.27%      │    0x00007f51a521ebe6: shr    $0x9,%r10
  0.30%    0.42%      │    0x00007f51a521ebea: movabs $0x7f51a11ff000,%r11
                      │    0x00007f51a521ebf4: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                      │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.12%    0.09%      │    0x00007f51a521ebf8: xor    %eax,%eax
  0.12%    0.17%      │    0x00007f51a521ebfa: add    $0x90,%rsp
  0.31%    0.42%      │    0x00007f51a521ec01: pop    %rbp
  0.11%    0.09%      │    0x00007f51a521ec02: test   %eax,0x16c493f8(%rip)        # 0x00007f51bbe68000
                      │                                                  ;   {poll_return}
  0.14%    0.17%      │    0x00007f51a521ec08: retq   
                      ↘    0x00007f51a521ec09: mov    %r8d,0x10(%r13)
                           0x00007f51a521ec0d: mov    %r13,%r10
                           0x00007f51a521ec10: shr    $0x9,%r10
                           0x00007f51a521ec14: movabs $0x7f51a11ff000,%r11
                           0x00007f51a521ec1e: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                                                                         ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                         ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                         ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                           0x00007f51a521ec22: jmpq   0x00007f51a521ea27
....................................................................................................
 31.92%   34.80%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 540 (918 bytes) 

                                     0x00007f51a522fe33: je     0x00007f51a523043b  ;*iload_0
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                     0x00007f51a522fe39: mov    %r8d,0x34(%rsp)
                                     0x00007f51a522fe3e: mov    %ecx,0x30(%rsp)
                                     0x00007f51a522fe42: mov    %r11d,%r10d
                                     0x00007f51a522fe45: add    $0xffffffbf,%r10d
                                     0x00007f51a522fe49: mov    %rdi,%rcx
                                     0x00007f51a522fe4c: shl    $0x3,%rcx          ;*getfield q1
                                                                                   ; - com.google.re2j.Machine::match@53 (line 188)
           0.00%                     0x00007f51a522fe50: mov    %r14d,%r8d
                                     0x00007f51a522fe53: and    $0x4,%r8d          ;*iand
                                                                                   ; - com.google.re2j.Machine::match@147 (line 208)
                                     0x00007f51a522fe57: mov    %r8d,0x14(%rsp)
                                     0x00007f51a522fe5c: cmp    $0x1a,%r10d
                  ╭                  0x00007f51a522fe60: jb     0x00007f51a522fe73  ;*if_icmple
                  │                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%  │                  0x00007f51a522fe62: mov    %r11d,%r10d
                  │                  0x00007f51a522fe65: add    $0xffffff9f,%r10d
                  │                  0x00007f51a522fe69: cmp    $0x1a,%r10d
                  │                  0x00007f51a522fe6d: jae    0x00007f51a5230444  ;*iconst_1
                  │                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                ; - com.google.re2j.Machine::match@121 (line 201)
                  ↘                  0x00007f51a522fe73: or     $0x10,%r9d         ;*iload_2
                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%                     0x00007f51a522fe77: mov    %r11d,0x28(%rsp)
  0.00%                              0x00007f51a522fe7c: mov    %rcx,0x50(%rsp)
                                     0x00007f51a522fe81: xor    %eax,%eax
                                     0x00007f51a522fe83: xor    %r11d,%r11d
  0.00%            ╭                 0x00007f51a522fe86: jmpq   0x00007f51a522fffe
  0.00%            │   ↗             0x00007f51a522fe8b: mov    0x38(%rsp),%r8
  0.01%            │   │             0x00007f51a522fe90: mov    0x14(%rsp),%r10d
  0.03%            │╭  │             0x00007f51a522fe95: jmpq   0x00007f51a5230045
                   ││  │             0x00007f51a522fe9a: nopw   0x0(%rax,%rax,1)
  0.05%    0.01%   ││  │     ↗       0x00007f51a522fea0: or     $0x20,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%   ││  │     │       0x00007f51a522fea3: mov    %ecx,0x34(%rsp)    ;*iload_2
                   ││  │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.10%   ││  │     │↗      0x00007f51a522fea7: mov    0x1c(%rsp),%r11d
  0.12%    0.10%   ││  │     ││      0x00007f51a522feac: cmp    %r8d,%r11d
                   ││╭ │     ││      0x00007f51a522feaf: je     0x00007f51a52301bc  ;*if_icmpne
                   │││ │     ││                                                    ; - com.google.re2j.Machine::match@348 (line 242)
  0.04%    0.09%   │││ │     ││      0x00007f51a522feb5: xor    %eax,%eax
  0.05%    0.03%   │││ │     ││   ↗  0x00007f51a522feb7: mov    0x38(%rsp),%rsi
  0.06%    0.14%   │││ │     ││   │  0x00007f51a522febc: mov    0x20(%rsp),%rdx
  0.10%    0.17%   │││ │     ││   │  0x00007f51a522fec1: mov    0x50(%rsp),%rcx
  0.06%    0.01%   │││ │     ││   │  0x00007f51a522fec6: mov    %r11d,%r8d
  0.05%    0.03%   │││ │     ││   │  0x00007f51a522fec9: mov    0x58(%rsp),%r9d
  0.07%    0.06%   │││ │     ││   │  0x00007f51a522fece: mov    0x34(%rsp),%r10d
  0.07%    0.13%   │││ │     ││   │  0x00007f51a522fed3: mov    %r10d,(%rsp)
  0.13%    0.12%   │││ │     ││   │  0x00007f51a522fed7: mov    0x40(%rsp),%r10d
  0.03%    0.08%   │││ │     ││   │  0x00007f51a522fedc: mov    %r10d,0x8(%rsp)
  0.08%    0.10%   │││ │     ││   │  0x00007f51a522fee1: mov    %eax,0x10(%rsp)
  0.23%    0.10%   │││ │     ││   │  0x00007f51a522fee5: xchg   %ax,%ax
  0.03%    0.03%   │││ │     ││   │  0x00007f51a522fee7: callq  0x00007f51a5046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=716}
                   │││ │     ││   │                                                ;*invokespecial step
                   │││ │     ││   │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   │││ │     ││   │                                                ;   {optimized virtual_call}
           0.00%   │││ │     ││   │  0x00007f51a522feec: mov    0x38(%rsp),%r10
  0.04%    0.02%   │││ │     ││   │  0x00007f51a522fef1: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││ │     ││   │                                                ; - com.google.re2j.Machine::match@159 (line 212)
  0.23%    0.06%   │││ │     ││   │  0x00007f51a522fef6: mov    0x2c(%rsp),%r8d
  0.00%            │││ │     ││   │  0x00007f51a522fefb: test   %r8d,%r8d
                   │││╭│     ││   │  0x00007f51a522fefe: je     0x00007f51a52301c6  ;*ifne
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.00%    0.01%   │││││     ││   │  0x00007f51a522ff04: mov    0x28(%r10),%r11d   ;*getfield matchcap
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.01%    0.00%   │││││     ││   │  0x00007f51a522ff08: mov    %r11d,0x5c(%rsp)
  0.24%    0.16%   │││││     ││   │  0x00007f51a522ff0d: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f51a5230f41
  0.08%    0.05%   │││││     ││   │  0x00007f51a522ff12: test   %ebp,%ebp
                   │││││     ││   │  0x00007f51a522ff14: je     0x00007f51a5230765  ;*ifne
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.04%    0.06%   │││││     ││   │  0x00007f51a522ff1a: mov    0x28(%rsp),%r11d
  0.01%    0.01%   │││││     ││   │  0x00007f51a522ff1f: cmp    $0xffffffff,%r11d
                   │││││     ││   │  0x00007f51a522ff23: je     0x00007f51a5230218  ;*if_icmpeq
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.21%    0.23%   │││││     ││   │  0x00007f51a522ff29: mov    0x48(%rsp),%rbx
           0.01%   │││││     ││   │  0x00007f51a522ff2e: mov    0x10(%rbx),%r10d   ;*getfield end
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.03%   │││││     ││   │  0x00007f51a522ff32: mov    0x30(%rsp),%r8d
  0.02%    0.02%   │││││     ││   │  0x00007f51a522ff37: add    0x58(%rsp),%r8d
  0.23%    0.32%   │││││     ││   │  0x00007f51a522ff3c: add    0xc(%rbx),%r8d     ;*iadd
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%            │││││     ││   │  0x00007f51a522ff40: cmp    %r10d,%r8d
                   │││││     ││   │  0x00007f51a522ff43: jge    0x00007f51a523022c  ;*if_icmpge
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.07%    0.05%   │││││     ││   │  0x00007f51a522ff49: mov    %r8d,%r10d
  0.02%    0.00%   │││││     ││   │  0x00007f51a522ff4c: mov    0x48(%rsp),%r8
  0.26%    0.21%   │││││     ││   │  0x00007f51a522ff51: mov    0x14(%r8),%ebp     ;*getfield str
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │││││     ││   │  0x00007f51a522ff55: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f51a5230f51
  0.70%    1.04%   │││││     ││   │  0x00007f51a522ff5a: cmp    $0xf80002da,%r9d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││     ││   │  0x00007f51a522ff61: jne    0x00007f51a5230585
  0.28%    0.40%   │││││     ││   │  0x00007f51a522ff67: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%   │││││     ││   │  0x00007f51a522ff6b: test   %r10d,%r10d
                   │││││     ││   │  0x00007f51a522ff6e: jl     0x00007f51a52306f1  ;*iflt
                   │││││     ││   │                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││││     ││   │  0x00007f51a522ff74: mov    %r9,%rcx
  0.02%    0.02%   │││││     ││   │  0x00007f51a522ff77: mov    %r10d,%r9d
  0.24%    0.37%   │││││     ││   │  0x00007f51a522ff7a: mov    0xc(%rcx),%edi     ;*getfield value
                   │││││     ││   │                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.00%   │││││     ││   │  0x00007f51a522ff7d: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││││     ││   │                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f51a5230f65
  1.07%    1.39%   │││││     ││   │  0x00007f51a522ff82: cmp    %ebp,%r10d
                   │││││     ││   │  0x00007f51a522ff85: jge    0x00007f51a52307b1  ;*if_icmplt
                   │││││     ││   │                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.38%   │││││     ││   │  0x00007f51a522ff8b: cmp    %ebp,%r10d
                   │││││     ││   │  0x00007f51a522ff8e: jae    0x00007f51a5230509
  0.14%    0.13%   │││││     ││   │  0x00007f51a522ff94: lea    (%r12,%rdi,8),%r10
                   │││││     ││   │  0x00007f51a522ff98: movzwl 0x10(%r10,%r9,2),%r10d  ;*caload
                   │││││     ││   │                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.05%   │││││     ││   │  0x00007f51a522ff9e: cmp    $0xd800,%r10d
                   │││││     ││   │  0x00007f51a522ffa5: jge    0x00007f51a5230811  ;*if_icmplt
                   │││││     ││   │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││     ││   │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.29%    0.31%   │││││     ││   │  0x00007f51a522ffab: shl    $0x3,%r10d         ;*ishl
                   │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.06%   │││││     ││   │  0x00007f51a522ffaf: mov    %r10d,%ecx
                   │││││     ││   │  0x00007f51a522ffb2: or     $0x1,%ecx
  0.16%    0.14%   │││││     ││   │  0x00007f51a522ffb5: and    $0x7,%r10d
  0.10%    0.12%   │││││     ││   │  0x00007f51a522ffb9: sar    $0x3,%ecx          ;*ishr
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.17%    0.21%   │││││     ││   │  0x00007f51a522ffbc: or     $0x1,%r10d         ; OopMap{rbx=Oop [32]=Oop [56]=Oop [80]=Oop [92]=NarrowOop off=928}
                   │││││     ││   │                                                ;*goto
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.00%    0.00%   │││││     ││   │  0x00007f51a522ffc0: test   %eax,0x16c3803a(%rip)        # 0x00007f51bbe68000
                   │││││     ││   │                                                ;*goto
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   │││││     ││   │                                                ;   {poll}
  0.02%    0.02%   │││││     ││   │  0x00007f51a522ffc6: mov    0x50(%rsp),%r8
  0.12%    0.16%   │││││     ││   │  0x00007f51a522ffcb: mov    %r8,%rdx
  0.13%    0.26%   │││││     ││   │  0x00007f51a522ffce: shr    $0x3,%rdx
  0.01%    0.00%   │││││     ││   │  0x00007f51a522ffd2: mov    0x34(%rsp),%r9d
                   │││││     ││   │  0x00007f51a522ffd7: mov    %ecx,0x34(%rsp)
  0.12%    0.11%   │││││     ││   │  0x00007f51a522ffdb: mov    0x20(%rsp),%r11
  0.16%    0.18%   │││││     ││   │  0x00007f51a522ffe0: mov    %r11,0x50(%rsp)
  0.01%    0.01%   │││││     ││   │  0x00007f51a522ffe5: mov    0x30(%rsp),%r8d
                   │││││     ││   │  0x00007f51a522ffea: mov    %r8d,0x2c(%rsp)
  0.10%    0.11%   │││││     ││   │  0x00007f51a522ffef: mov    %r10d,0x30(%rsp)
  0.17%    0.14%   │││││     ││   │  0x00007f51a522fff4: mov    %rbx,0x48(%rsp)
           0.01%   │││││     ││   │  0x00007f51a522fff9: mov    0x58(%rsp),%r11d   ;*aload
                   │││││     ││   │                                                ; - com.google.re2j.Machine::match@136 (line 207)
                   ↘││││     ││   │  0x00007f51a522fffe: mov    %edx,%ecx
  0.12%    0.13%    ││││     ││   │  0x00007f51a5230000: movzbl 0x18(%r12,%rdx,8),%r10d  ; implicit exception: dispatches to 0x00007f51a5230ef1
  0.18%    0.08%    ││││     ││   │  0x00007f51a5230006: test   %r10d,%r10d
                    │││╰     ││   │  0x00007f51a5230009: je     0x00007f51a522fe8b  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@141 (line 207)
           0.00%    │││      ││   │  0x00007f51a523000f: mov    0x14(%rsp),%r10d
  0.00%             │││      ││   │  0x00007f51a5230014: test   %r10d,%r10d
                    │││      ││   │  0x00007f51a5230017: jne    0x00007f51a52308a1  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.09%    0.07%    │││      ││   │  0x00007f51a523001d: test   %eax,%eax
                    │││      ││   │  0x00007f51a523001f: jne    0x00007f51a52308fd  ;*ifeq
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.17%    0.06%    │││      ││   │  0x00007f51a5230025: mov    0x38(%rsp),%r8
  0.00%             │││      ││   │  0x00007f51a523002a: mov    0x14(%r8),%edi     ;*getfield re2
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.00%             │││      ││   │  0x00007f51a523002e: mov    0x24(%r12,%rdi,8),%ebx  ;*getfield prefix
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f51a5230f75
  0.08%    0.07%    │││      ││   │  0x00007f51a5230033: mov    0xc(%r12,%rbx,8),%edi  ;*getfield value
                    │││      ││   │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f51a5230f85
  0.11%    0.09%    │││      ││   │  0x00007f51a5230038: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                    │││      ││   │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    │││      ││   │                                                ; implicit exception: dispatches to 0x00007f51a5230f95
  0.26%    0.14%    │││      ││   │  0x00007f51a523003d: test   %ebp,%ebp
                    │││      ││   │  0x00007f51a523003f: jne    0x00007f51a5230865  ;*aload_0
                    │││      ││   │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.17%    0.12%    ↘││      ││   │  0x00007f51a5230045: test   %eax,%eax
                     ││      ││   │  0x00007f51a5230047: jne    0x00007f51a5230606  ;*ifne
                     ││      ││   │                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.01%    0.01%     ││      ││   │  0x00007f51a523004d: test   %r11d,%r11d
                     ││ ╭    ││   │  0x00007f51a5230050: je     0x00007f51a52301b3  ;*ifeq
                     ││ │    ││   │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.09%    0.07%     ││ │    ││   │  0x00007f51a5230056: mov    0x40(%rsp),%ebx
  0.03%    0.01%     ││ │    ││   │  0x00007f51a523005a: test   %ebx,%ebx
                     ││ │    ││   │  0x00007f51a523005c: jne    0x00007f51a5230699  ;*aload_0
                     ││ │    ││   │                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.15%    0.12%     ││ │    ││  ↗│  0x00007f51a5230062: mov    0x5c(%rsp),%edi
  0.01%    0.01%     ││ │    ││  ││  0x00007f51a5230066: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                     ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f51a5230f01
  0.05%    0.05%     ││ │    ││  ││  0x00007f51a523006b: test   %ebp,%ebp
                     ││ │    ││  ││  0x00007f51a523006d: jle    0x00007f51a5230655  ;*ifle
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.02%    0.03%     ││ │    ││  ││  0x00007f51a5230073: test   %ebp,%ebp
                     ││ │    ││  ││  0x00007f51a5230075: jbe    0x00007f51a5230468
  0.13%    0.04%     ││ │    ││  ││  0x00007f51a523007b: mov    %r11d,0x10(%r12,%rdi,8)  ;*iastore
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@296 (line 237)
  0.04%    0.06%     ││ │    ││  ││  0x00007f51a5230080: mov    0x18(%r8),%edi     ;*getfield prog
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.07%    0.07%     ││ │    ││  ││  0x00007f51a5230084: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                     ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f51a5230f11
  0.00%    0.04%     ││ │    ││  ││  0x00007f51a5230089: mov    0x8(%r12,%rbp,8),%edx  ; implicit exception: dispatches to 0x00007f51a5230f21
  0.19%    0.03%     ││ │    ││  ││  0x00007f51a523008e: cmp    $0xf8019843,%edx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     ││ │    ││  ││  0x00007f51a5230094: jne    0x00007f51a52304bd  ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.02%     ││ │    ││  ││  0x00007f51a523009a: mov    %r11d,0x1c(%rsp)
  0.06%    0.03%     ││ │    ││  ││  0x00007f51a523009f: mov    %r10d,0x14(%rsp)
  0.01%    0.02%     ││ │    ││  ││  0x00007f51a52300a4: mov    %ecx,0x18(%rsp)
  0.14%    0.05%     ││ │    ││  ││  0x00007f51a52300a8: mov    %ebx,0x40(%rsp)
  0.02%    0.01%     ││ │    ││  ││  0x00007f51a52300ac: mov    %r8,0x38(%rsp)     ;*ifeq
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.05%    0.00%     ││ │    ││  ││  0x00007f51a52300b1: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%     ││ │    ││  ││  0x00007f51a52300b5: lea    (%r12,%rcx,8),%r10  ;*aload
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.11%    0.06%     ││ │    ││  ││  0x00007f51a52300b9: mov    %r10,0x20(%rsp)
  0.05%    0.00%     ││ │    ││  ││  0x00007f51a52300be: mov    0x5c(%rsp),%r10d
  0.11%    0.01%     ││ │    ││  ││  0x00007f51a52300c3: mov    %r10,%r8
  0.04%    0.01%     ││ │    ││  ││  0x00007f51a52300c6: shl    $0x3,%r8           ;*getfield matchcap
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.18%    0.09%     ││ │    ││  ││  0x00007f51a52300ca: mov    0x20(%rsp),%rdx
  0.13%    0.04%     ││ │    ││  ││  0x00007f51a52300cf: mov    %r11d,%ecx
  0.07%    0.02%     ││ │    ││  ││  0x00007f51a52300d2: xor    %edi,%edi
  0.01%              ││ │    ││  ││  0x00007f51a52300d4: mov    0x38(%rsp),%r10
  0.17%    0.12%     ││ │    ││  ││  0x00007f51a52300d9: mov    %r10,(%rsp)
  0.07%    0.00%     ││ │    ││  ││  0x00007f51a52300dd: xchg   %ax,%ax
  0.12%    0.05%     ││ │    ││  ││  0x00007f51a52300df: callq  0x00007f51a5046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1220}
                     ││ │    ││  ││                                                ;*invokevirtual add
                     ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     ││ │    ││  ││                                                ;   {optimized virtual_call}
  0.20%    0.17%     ││ │    ││  ││  0x00007f51a52300e4: mov    0x28(%rsp),%r10d
  0.03%    0.06%     ││ │    ││  ││  0x00007f51a52300e9: test   %r10d,%r10d
                     ││ │╭   ││  ││  0x00007f51a52300ec: jl     0x00007f51a52301a1  ;*ifge
                     ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.10%     ││ ││   ││  ││  0x00007f51a52300f2: xor    %ecx,%ecx          ;*iload_0
                     ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.20%    0.21%     ││ ││   ││↗ ││  0x00007f51a52300f4: cmp    $0xa,%r10d
                     ││ ││   │││ ││  0x00007f51a52300f8: je     0x00007f51a5230239  ;*iload_1
                     ││ ││   │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     ││ ││   │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%              ││ ││   │││ ││  0x00007f51a52300fe: mov    0x34(%rsp),%r8d
  0.09%    0.06%     ││ ││   │││ ││  0x00007f51a5230103: test   %r8d,%r8d
                     ││ ││╭  │││ ││  0x00007f51a5230106: jl     0x00007f51a52301ab  ;*iload_1
                     ││ │││  │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││ │││  │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.12%     ││ │││  │││↗││  0x00007f51a523010c: cmp    $0xa,%r8d
                     ││ │││  ││││││  0x00007f51a5230110: je     0x00007f51a5230241  ;*iload_0
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.14%     ││ │││  ││││││  0x00007f51a5230116: mov    0x28(%rsp),%edi
  0.01%    0.01%     ││ │││  ││││││  0x00007f51a523011a: mov    %rax,-0x8(%rsp)
  0.04%    0.07%     ││ │││  ││││││  0x00007f51a523011f: mov    0x34(%rsp),%eax
  0.11%    0.14%     ││ │││  ││││││  0x00007f51a5230123: mov    %eax,0x28(%rsp)
  0.16%    0.19%     ││ │││  ││││││  0x00007f51a5230127: mov    -0x8(%rsp),%rax
  0.01%              ││ │││  ││││││  0x00007f51a523012c: mov    0x48(%rsp),%r11
  0.01%    0.07%     ││ │││  ││││││  0x00007f51a5230131: mov    0x10(%r11),%r8d    ;*getfield end
                     ││ │││  ││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@345 (line 242)
  0.09%    0.12%     ││ │││  ││││││  0x00007f51a5230135: mov    0x1c(%rsp),%r11d
  0.13%    0.22%     ││ │││  ││││││  0x00007f51a523013a: add    0x2c(%rsp),%r11d   ;*iadd
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.01%    0.00%     ││ │││  ││││││  0x00007f51a523013f: mov    %r11d,0x58(%rsp)
  0.07%    0.03%     ││ │││  ││││││  0x00007f51a5230144: add    $0xffffffbf,%r10d
  0.10%    0.10%     ││ │││  ││││││  0x00007f51a5230148: mov    0x34(%rsp),%r11d
  0.16%    0.22%     ││ │││  ││││││  0x00007f51a523014d: add    $0xffffffbf,%r11d
                     ││ │││  ││││││  0x00007f51a5230151: cmp    $0x1a,%r10d
                     ││ │││╭ ││││││  0x00007f51a5230155: jb     0x00007f51a5230168  ;*if_icmple
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%     ││ ││││ ││││││  0x00007f51a5230157: mov    %edi,%r9d
  0.07%    0.12%     ││ ││││ ││││││  0x00007f51a523015a: add    $0xffffff9f,%r9d
  0.12%    0.14%     ││ ││││ ││││││  0x00007f51a523015e: cmp    $0x1a,%r9d
                     ││ ││││ ││││││  0x00007f51a5230162: jae    0x00007f51a5230273  ;*iconst_1
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                     ││ │││↘ ││││││  0x00007f51a5230168: mov    $0x1,%ebp          ;*ireturn
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.08%     ││ │││  ││││││  0x00007f51a523016d: cmp    $0x1a,%r11d
                     ││ │││ ╭││││││  0x00007f51a5230171: jb     0x00007f51a5230186  ;*if_icmple
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.07%     ││ │││ │││││││  0x00007f51a5230173: mov    0x34(%rsp),%r11d
  0.14%    0.09%     ││ │││ │││││││  0x00007f51a5230178: add    $0xffffff9f,%r11d
  0.03%    0.04%     ││ │││ │││││││  0x00007f51a523017c: cmp    $0x1a,%r11d
  0.05%    0.02%     ││ │││ │││││││  0x00007f51a5230180: jae    0x00007f51a5230249  ;*iconst_1
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.07%     ││ │││ ↘││││││  0x00007f51a5230186: mov    $0x1,%r10d         ;*ireturn
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.19%     ││ │││  ││││││  0x00007f51a523018c: cmp    %r10d,%ebp
                     ││ │││  ╰│││││  0x00007f51a523018f: je     0x00007f51a522fea0  ;*if_icmpeq
                     ││ │││   │││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.02%     ││ │││   │││││  0x00007f51a5230195: or     $0x10,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.02%     ││ │││   │││││  0x00007f51a5230198: mov    %ecx,0x34(%rsp)
  0.03%    0.04%     ││ │││   ╰││││  0x00007f51a523019c: jmpq   0x00007f51a522fea7
  0.01%              ││ │↘│    ││││  0x00007f51a52301a1: mov    $0x5,%ecx
                     ││ │ │    ╰│││  0x00007f51a52301a6: jmpq   0x00007f51a52300f4
                     ││ │ ↘     │││  0x00007f51a52301ab: or     $0xa,%ecx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     ││ │       │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                     ││ │       ╰││  0x00007f51a52301ae: jmpq   0x00007f51a523010c
                     ││ ↘        ││  0x00007f51a52301b3: mov    0x40(%rsp),%ebx
                     ││          ╰│  0x00007f51a52301b7: jmpq   0x00007f51a5230062
  0.01%              ↘│           │  0x00007f51a52301bc: mov    $0x1,%eax
                      │           ╰  0x00007f51a52301c1: jmpq   0x00007f51a522feb7
           0.00%      ↘              0x00007f51a52301c6: mov    0x50(%rsp),%r10
                                     0x00007f51a52301cb: mov    %r10,0x18(%rsp)
           0.00%                     0x00007f51a52301d0: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                   ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                   ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                   ; implicit exception: dispatches to 0x00007f51a5230ffd
                                     0x00007f51a52301d4: test   %ebx,%ebx
                                     0x00007f51a52301d6: jg     0x00007f51a5230298  ;*getfield matched
                                                                                   ; - com.google.re2j.Machine::match@449 (line 264)
                                     0x00007f51a52301dc: mov    0x18(%rsp),%r10
                                     0x00007f51a52301e1: movzbl 0x18(%r10),%r10d
  0.00%                              0x00007f51a52301e6: test   %r10d,%r10d
                                     0x00007f51a52301e9: jne    0x00007f51a5230209  ;*ifeq
                                                                                   ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                   ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                   ; - com.google.re2j.Machine::match@445 (line 263)
                                     0x00007f51a52301eb: mov    0x18(%rsp),%r10
                                     0x00007f51a52301f0: movb   $0x1,0x18(%r10)    ;*putfield empty
                                                                                   ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                   ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
....................................................................................................
 13.51%   13.18%  <total for region 3>

....[Hottest Regions]...............................................................................
 34.60%   32.80%         C2, level 4  com.google.re2j.Machine::step, version 499 (711 bytes) 
 31.92%   34.80%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 500 (1180 bytes) 
 13.51%   13.18%         C2, level 4  com.google.re2j.Machine::match, version 540 (918 bytes) 
  9.46%    9.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  4.73%    4.43%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 500 (123 bytes) 
  1.95%    1.95%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.84%    0.70%         C2, level 4  com.google.re2j.Machine::match, version 540 (131 bytes) 
  0.22%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 553 (106 bytes) 
  0.19%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 553 (100 bytes) 
  0.10%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 628 (71 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 553 (129 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.Matcher::genMatch, version 569 (10 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Matcher::genMatch, version 569 (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 540 (152 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Matcher::genMatch, version 569 (0 bytes) 
  0.04%    0.03%           libjvm.so  SpinPause (9 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.87%    1.81%  <...other 404 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 36.65%   39.23%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 500 
 34.61%   32.83%         C2, level 4  com.google.re2j.Machine::step, version 499 
 14.45%   13.93%         C2, level 4  com.google.re2j.Machine::match, version 540 
  9.46%    9.93%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.96%    2.81%   [kernel.kallsyms]  [unknown] 
  0.58%    0.20%         C2, level 4  com.google.re2j.Machine::init, version 553 
  0.32%    0.15%         C2, level 4  com.google.re2j.Matcher::genMatch, version 569 
  0.16%    0.10%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 628 
  0.06%    0.05%         C2, level 4  java.util.Collections::shuffle, version 575 
  0.04%    0.03%           libjvm.so  SpinPause 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%                 runtime stub  StubRoutines::arrayof_jint_fill 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.01%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.01%    0.00%           libjvm.so  Monitor::ILock 
  0.01%                 runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.01%    0.01%              [vdso]  __vdso_clock_gettime 
  0.45%    0.32%  <...other 70 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 86.85%   86.52%         C2, level 4
  9.50%    9.93%        runtime stub
  2.96%    2.81%   [kernel.kallsyms]
  0.36%    0.38%           libjvm.so
  0.14%    0.25%        libc-2.26.so
  0.05%    0.03%  libpthread-2.26.so
  0.04%    0.05%      hsdis-amd64.so
  0.04%    0.00%         interpreter
  0.03%    0.01%              [vdso]
  0.00%    0.00%      perf-20811.map
  0.00%             Unknown, level 0
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score    Error  Units
Re2jRegex.testExp2       thrpt   20  10238.011 ± 63.305  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN             ---
