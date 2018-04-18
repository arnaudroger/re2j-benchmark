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
# Warmup Iteration   1: 6563.040 ops/s
# Warmup Iteration   2: 11790.322 ops/s
# Warmup Iteration   3: 11797.621 ops/s
# Warmup Iteration   4: 11736.210 ops/s
# Warmup Iteration   5: 11475.914 ops/s
# Warmup Iteration   6: 11567.755 ops/s
# Warmup Iteration   7: 11765.711 ops/s
# Warmup Iteration   8: 10978.644 ops/s
# Warmup Iteration   9: 11652.363 ops/s
# Warmup Iteration  10: 11370.165 ops/s
# Warmup Iteration  11: 11612.394 ops/s
# Warmup Iteration  12: 11640.977 ops/s
# Warmup Iteration  13: 11682.052 ops/s
# Warmup Iteration  14: 11885.548 ops/s
# Warmup Iteration  15: 11886.213 ops/s
# Warmup Iteration  16: 11882.107 ops/s
# Warmup Iteration  17: 11842.385 ops/s
# Warmup Iteration  18: 11852.426 ops/s
# Warmup Iteration  19: 11872.527 ops/s
# Warmup Iteration  20: 11873.745 ops/s
Iteration   1: 11866.845 ops/s
Iteration   2: 11818.430 ops/s
Iteration   3: 11831.518 ops/s
Iteration   4: 11834.542 ops/s
Iteration   5: 11833.531 ops/s
Iteration   6: 11828.181 ops/s
Iteration   7: 11881.457 ops/s
Iteration   8: 11883.339 ops/s
Iteration   9: 11852.871 ops/s
Iteration  10: 11812.929 ops/s
Iteration  11: 11738.251 ops/s
Iteration  12: 11742.226 ops/s
Iteration  13: 11739.915 ops/s
Iteration  14: 11727.137 ops/s
Iteration  15: 11741.298 ops/s
Iteration  16: 11742.321 ops/s
Iteration  17: 11744.943 ops/s
Iteration  18: 11743.706 ops/s
Iteration  19: 11744.208 ops/s
Iteration  20: 11744.056 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  11792.585 ±(99.9%) 48.652 ops/s [Average]
  (min, avg, max) = (11727.137, 11792.585, 11883.339), stdev = 56.027
  CI (99.9%): [11743.934, 11841.237] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193628 total address lines.
Perf output processed (skipped 23.291 seconds):
 Column 1: cycles (20687 events)
 Column 2: instructions (20668 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 495 (674 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f3e8521afc0: mov    0x8(%rsi),%r10d
                             0x00007f3e8521afc4: shl    $0x3,%r10
                             0x00007f3e8521afc8: cmp    %r10,%rax
                             0x00007f3e8521afcb: jne    0x00007f3e85045e20  ;   {runtime_call}
                             0x00007f3e8521afd1: data16 xchg %ax,%ax
                             0x00007f3e8521afd4: nopl   0x0(%rax,%rax,1)
                             0x00007f3e8521afdc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.22%    0.20%             0x00007f3e8521afe0: mov    %eax,-0x14000(%rsp)
  0.23%    0.24%             0x00007f3e8521afe7: push   %rbp
  0.07%    0.09%             0x00007f3e8521afe8: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.13%             0x00007f3e8521afec: mov    %edi,0x18(%rsp)
  0.19%    0.19%             0x00007f3e8521aff0: mov    %r9d,0x14(%rsp)
  0.06%    0.09%             0x00007f3e8521aff5: mov    %r8d,0x10(%rsp)
  0.09%    0.09%             0x00007f3e8521affa: mov    %rcx,0x8(%rsp)
  0.04%    0.03%             0x00007f3e8521afff: vmovq  %rdx,%xmm0
  0.20%    0.15%             0x00007f3e8521b004: vmovq  %rsi,%xmm1
  0.05%    0.06%             0x00007f3e8521b009: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.10%    0.09%             0x00007f3e8521b00d: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f3e8521bbad
  0.08%    0.03%             0x00007f3e8521b013: vmovd  %r11d,%xmm3
  0.17%    0.16%             0x00007f3e8521b018: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f3e8521bbbd
  0.08%    0.10%             0x00007f3e8521b01b: test   %ecx,%ecx
                  ╭          0x00007f3e8521b01d: jle    0x00007f3e8521b16e  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.11%    0.10%  │          0x00007f3e8521b023: test   %r11d,%r11d
                  │          0x00007f3e8521b026: jne    0x00007f3e8521b721
  0.06%    0.07%  │          0x00007f3e8521b02c: xor    %r10d,%r10d
  0.18%    0.24%  │╭         0x00007f3e8521b02f: jmp    0x00007f3e8521b047
  1.42%    0.93%  ││    ↗    0x00007f3e8521b031: mov    %r10d,%ecx
  0.01%    0.02%  ││    │    0x00007f3e8521b034: mov    %r11,0x8(%rsp)
  0.10%    0.08%  ││    │    0x00007f3e8521b039: mov    %ebx,0x78(%rsp)
  0.13%    0.12%  ││    │    0x00007f3e8521b03d: mov    %edi,0x80(%rsp)
  1.61%    0.83%  ││    │    0x00007f3e8521b044: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.08%    0.09%  │↘    │    0x00007f3e8521b047: vmovq  %xmm0,%r11
  0.22%    0.21%  │     │    0x00007f3e8521b04c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.17%    0.19%  │     │    0x00007f3e8521b050: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f3e8521bb69
  1.69%    1.12%  │     │    0x00007f3e8521b055: cmp    %r9d,%r10d
                  │     │    0x00007f3e8521b058: jae    0x00007f3e8521b4a9
  0.09%    0.10%  │     │    0x00007f3e8521b05e: lea    (%r12,%r8,8),%r11
  0.21%    0.20%  │     │    0x00007f3e8521b062: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.15%    0.18%  │     │    0x00007f3e8521b067: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                  ; implicit exception: dispatches to 0x00007f3e8521bb7d
  3.56%    2.84%  │     │    0x00007f3e8521b06c: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f3e8521bb8d
  6.90%    7.70%  │     │    0x00007f3e8521b071: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │     │                                                  ; - com.google.re2j.Machine::step@106 (line 289)
  0.06%    0.01%  │     │    0x00007f3e8521b076: vmovq  %xmm1,%r11
  0.01%    0.02%  │     │    0x00007f3e8521b07b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │     │                                                  ; - com.google.re2j.Machine::free@1 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.33%    0.20%  │     │    0x00007f3e8521b07f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │     │                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.72%    1.63%  │     │    0x00007f3e8521b083: mov    %r10d,%edx
  0.01%    0.04%  │     │    0x00007f3e8521b086: inc    %edx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@173 (line 295)
  0.00%    0.01%  │     │    0x00007f3e8521b088: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.33%    0.31%  │     │    0x00007f3e8521b08c: cmp    $0x6,%eax
                  │ ╭   │    0x00007f3e8521b08f: je     0x00007f3e8521b287  ;*if_icmpne
                  │ │   │                                                  ; - com.google.re2j.Machine::step@90 (line 285)
  1.64%    1.98%  │ │   │    0x00007f3e8521b095: mov    0x8(%r12,%rdi,8),%ebx
  0.05%    0.03%  │ │   │    0x00007f3e8521b09a: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007f3e8521b0a0: jne    0x00007f3e8521b4f1
  0.01%    0.02%  │ │   │    0x00007f3e8521b0a6: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.31%    0.24%  │ │   │    0x00007f3e8521b0aa: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.82%    2.00%  │ │   │    0x00007f3e8521b0ad: cmp    $0xa,%ebp
                  │ │╭  │    0x00007f3e8521b0b0: je     0x00007f3e8521b1a2  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.10%    0.14%  │ ││  │    0x00007f3e8521b0b6: cmp    $0xb,%ebp
                  │ ││  │    0x00007f3e8521b0b9: je     0x00007f3e8521b5cd  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.27%    0.32%  │ ││  │    0x00007f3e8521b0bf: cmp    $0x9,%ebp
                  │ ││  │    0x00007f3e8521b0c2: je     0x00007f3e8521b60d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.44%    1.92%  │ ││  │    0x00007f3e8521b0c8: cmp    $0xc,%ebp
                  │ ││  │    0x00007f3e8521b0cb: jne    0x00007f3e8521b58d  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.84%    1.21%  │ ││  │    0x00007f3e8521b0d1: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.03%    0.03%  │ ││  │    0x00007f3e8521b0d4: cmp    0x18(%rsp),%eax
                  │ ││╭ │    0x00007f3e8521b0d8: je     0x00007f3e8521b1a2  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.42%    1.53%  │ │││ │    0x00007f3e8521b0de: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.20%    0.33%  │ │││ │    0x00007f3e8521b0e1: cmp    0x18(%rsp),%ebx
                  │ │││╭│    0x00007f3e8521b0e5: je     0x00007f3e8521b1a2  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.99%    1.98%  │ │││││    0x00007f3e8521b0eb: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.07%    0.12%  │ │││││    0x00007f3e8521b0ee: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f3e8521b0f2: je     0x00007f3e8521b6a1  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.91%    1.04%  │ │││││    0x00007f3e8521b0f8: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  0.15%    0.19%  │ │││││    0x00007f3e8521b0fb: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f3e8521b0ff: je     0x00007f3e8521b6e1  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@189 (line 299)
  1.87%    1.84%  │ │││││    0x00007f3e8521b105: mov    0x78(%rsp),%ebx
  0.02%    0.01%  │ │││││    0x00007f3e8521b109: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.11%    0.12%  │ │││││    0x00007f3e8521b110: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││                                                  ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │││││                                                  ; implicit exception: dispatches to 0x00007f3e8521bb9d
  0.10%    0.11%  │ │││││    0x00007f3e8521b115: cmp    %ebp,%r9d
                  │ │││││    0x00007f3e8521b118: jge    0x00007f3e8521b64d  ;*if_icmplt
                  │ │││││                                                  ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.52%    1.94%  │ │││││    0x00007f3e8521b11e: mov    %r9d,%esi
  0.02%           │ │││││    0x00007f3e8521b121: inc    %esi
  0.14%    0.11%  │ │││││    0x00007f3e8521b123: vmovq  %xmm1,%rax
  0.11%    0.12%  │ │││││    0x00007f3e8521b128: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││                                                  ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.85%    1.89%  │ │││││    0x00007f3e8521b12b: cmp    %ebp,%r9d
                  │ │││││    0x00007f3e8521b12e: jae    0x00007f3e8521b52d  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.02%  │ │││││    0x00007f3e8521b134: vmovq  %xmm0,%r10
  0.12%    0.11%  │ │││││    0x00007f3e8521b139: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.14%    0.21%  │ │││││    0x00007f3e8521b13d: shl    $0x3,%r11          ;*getfield pool
                  │ │││││                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  1.83%    1.99%  │ │││││    0x00007f3e8521b141: lea    0x10(%r11,%r9,4),%r11
           0.01%  │ │││││    0x00007f3e8521b146: mov    %r8d,(%r11)
  0.21%    0.14%  │ │││││    0x00007f3e8521b149: shr    $0x9,%r11
  0.14%    0.19%  │ │││││    0x00007f3e8521b14d: movabs $0x7f3e80dee000,%r8
  1.79%    1.31%  │ │││││    0x00007f3e8521b157: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@226 (line 303)
  0.06%    0.02%  │ │││││    0x00007f3e8521b15b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@232 (line 277)
  0.20%    0.15%  │ │││││ ↗  0x00007f3e8521b160: test   %eax,0x16569e9a(%rip)        # 0x00007f3e9b785000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ │││││ │                                                ;   {poll}
  0.17%    0.14%  │ │││││ │  0x00007f3e8521b166: cmp    %ecx,%edx
                  │ ││││╰ │  0x00007f3e8521b168: jl     0x00007f3e8521b031  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.34%    0.24%  ↘ ││││  │  0x00007f3e8521b16e: vmovq  %xmm0,%r10
  0.01%    0.01%    ││││  │  0x00007f3e8521b173: movzbl 0x18(%r10),%r11d
  0.04%    0.01%    ││││  │  0x00007f3e8521b178: test   %r11d,%r11d
                    ││││ ╭│  0x00007f3e8521b17b: jne    0x00007f3e8521b196  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.02%    ││││ ││  0x00007f3e8521b17d: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.38%    0.22%    ││││ ││  0x00007f3e8521b181: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.00%             ││││ ││  0x00007f3e8521b185: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.03%    0.02%    ││││ ││  0x00007f3e8521b18a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@236 (line 306)
           0.02%    ││││ ││  0x00007f3e8521b18e: test   %ebp,%ebp
                    ││││ ││  0x00007f3e8521b190: jne    0x00007f3e8521b749  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.32%    0.23%    ││││ ↘│  0x00007f3e8521b196: add    $0x60,%rsp
                    ││││  │  0x00007f3e8521b19a: pop    %rbp
  0.03%    0.02%    ││││  │  0x00007f3e8521b19b: test   %eax,0x16569e5f(%rip)        # 0x00007f3e9b785000
                    ││││  │                                                ;   {poll_return}
  0.04%    0.04%    ││││  │  0x00007f3e8521b1a1: retq   
  0.29%    0.26%    │↘↘↘  │  0x00007f3e8521b1a2: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.21%    0.16%    │     │  0x00007f3e8521b1a6: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f3e8521bbcd
  0.34%    0.23%    │     │  0x00007f3e8521b1ab: lea    (%r12,%r11,8),%r9
           0.01%    │     │  0x00007f3e8521b1af: xor    %edi,%edi
           0.00%    │     │  0x00007f3e8521b1b1: mov    $0x1,%eax
                    │     │  0x00007f3e8521b1b6: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007f3e8521b1bc: jne    0x00007f3e8521b3e0  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.06%    0.09%    │     │  0x00007f3e8521b1c2: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │     │  0x00007f3e8521b1c6: mov    0x8(%rsp),%r11
                    │     │  0x00007f3e8521b1cb: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007f3e8521bbed
  0.00%             │     │  0x00007f3e8521b1cf: cmp    $0x40,%ebx
                    │     │  0x00007f3e8521b1d2: jg     0x00007f3e8521b7ad  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.05%    │     │  0x00007f3e8521b1d8: mov    %ebx,%ecx
                    │     │  0x00007f3e8521b1da: shl    %cl,%rax           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.11%    │     │  0x00007f3e8521b1dd: mov    %rbp,%rcx
  0.00%             │     │  0x00007f3e8521b1e0: and    %rax,%rcx          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007f3e8521b1e3: test   %rcx,%rcx
                    │     │  0x00007f3e8521b1e6: jne    0x00007f3e8521b7f9  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.05%    │     │  0x00007f3e8521b1ec: cmp    $0x40,%ebx
                    │     │  0x00007f3e8521b1ef: jge    0x00007f3e8521b85d  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │     │  0x00007f3e8521b1f5: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007f3e8521b1f9: or     %rbp,%rax
                    │     │  0x00007f3e8521b1fc: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.04%    │     │  0x00007f3e8521b200: mov    %rsi,%rbx
  0.01%    0.00%    │     │  0x00007f3e8521b203: mov    %r9,%rcx
  0.01%    0.00%    │     │  0x00007f3e8521b206: shr    $0x3,%rcx
                    │     │  0x00007f3e8521b20a: mov    %ecx,0x10(%r12,%r8,8)
  0.08%    0.00%    │     │  0x00007f3e8521b20f: shr    $0x9,%rbx
  0.01%    0.00%    │     │  0x00007f3e8521b213: movabs $0x7f3e80dee000,%r9
  0.01%    0.01%    │     │  0x00007f3e8521b21d: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007f3e8521b221: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007f3e8521bc01
  0.08%    0.04%    │     │  0x00007f3e8521b226: test   %ebp,%ebp
                    │     │  0x00007f3e8521b228: jg     0x00007f3e8521b8a9  ;*ifle
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │     │  0x00007f3e8521b22e: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    │     │  0x00007f3e8521b232: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007f3e8521b236: mov    %ebp,%r9d
  0.09%    0.06%    │     │  0x00007f3e8521b239: inc    %r9d
  0.01%    0.00%    │     │  0x00007f3e8521b23c: mov    %r9d,0xc(%r11)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │  0x00007f3e8521b240: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f3e8521bc11
  0.01%             │     │  0x00007f3e8521b245: cmp    %ebx,%ebp
                    │     │  0x00007f3e8521b247: jae    0x00007f3e8521b761  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.09%    │     │  0x00007f3e8521b24d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │     │  0x00007f3e8521b251: lea    0x10(%r10,%rbp,4),%r10
  0.01%             │     │  0x00007f3e8521b256: mov    %r8d,(%r10)
  0.08%    0.01%    │     │  0x00007f3e8521b259: shr    $0x9,%r10
  0.08%    0.07%    │     │  0x00007f3e8521b25d: movabs $0x7f3e80dee000,%r8
           0.00%    │     │  0x00007f3e8521b267: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │     │  0x00007f3e8521b26b: vmovq  %xmm0,%r10
                    │     │  0x00007f3e8521b270: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.07%    │     │  0x00007f3e8521b274: mov    %ecx,%r10d
  0.02%    0.02%    │     │  0x00007f3e8521b277: mov    0x78(%rsp),%ebx
  0.01%    0.05%    │     │  0x00007f3e8521b27b: mov    0x80(%rsp),%edi
  0.00%             │     ╰  0x00007f3e8521b282: jmpq   0x00007f3e8521b160
                    ↘        0x00007f3e8521b287: mov    0x78(%rsp),%ebx
                             0x00007f3e8521b28b: cmp    $0x2,%ebx
                             0x00007f3e8521b28e: je     0x00007f3e8521b495  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@96 (line 288)
                             0x00007f3e8521b294: mov    0x80(%rsp),%edi    ;*aload
                                                                           ; - com.google.re2j.Machine::step@104 (line 289)
                             0x00007f3e8521b29b: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                           ; - com.google.re2j.Machine::step@109 (line 289)
                                                                           ; implicit exception: dispatches to 0x00007f3e8521bc5d
                             0x00007f3e8521b2a0: test   %ebp,%ebp
....................................................................................................
 45.92%   44.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 505 (1276 bytes) 

                     # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f3e8521f900: mov    0x8(%rsi),%r10d
                     0x00007f3e8521f904: shl    $0x3,%r10
                     0x00007f3e8521f908: cmp    %r10,%rax
                     0x00007f3e8521f90b: jne    0x00007f3e85045e20  ;   {runtime_call}
                     0x00007f3e8521f911: data16 xchg %ax,%ax
                     0x00007f3e8521f914: nopl   0x0(%rax,%rax,1)
                     0x00007f3e8521f91c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.31%    0.31%     0x00007f3e8521f920: mov    %eax,-0x14000(%rsp)
  0.12%    0.15%     0x00007f3e8521f927: push   %rbp
  0.19%    0.22%     0x00007f3e8521f928: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 273)
  0.18%    0.14%     0x00007f3e8521f92c: vmovq  %rsi,%xmm9
  0.04%    0.02%     0x00007f3e8521f931: vmovd  %ecx,%xmm1
  0.28%    0.25%     0x00007f3e8521f935: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 273)
  0.04%    0.06%     0x00007f3e8521f938: mov    0x10(%rdx),%r10    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                                                                   ; implicit exception: dispatches to 0x00007f3e852205c9
  0.09%    0.08%     0x00007f3e8521f93c: cmp    $0x40,%ecx
                     0x00007f3e8521f93f: jg     0x00007f3e85220175  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.02%    0.04%     0x00007f3e8521f945: mov    $0x1,%r14d
  0.16%    0.19%     0x00007f3e8521f94b: mov    $0x1,%ebx
  0.05%    0.07%     0x00007f3e8521f950: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.31%    0.31%     0x00007f3e8521f953: mov    %r10,%r11
  0.07%    0.05%     0x00007f3e8521f956: and    %rbx,%r11          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.06%    0.08%     0x00007f3e8521f959: test   %r11,%r11
                     0x00007f3e8521f95c: jne    0x00007f3e852201a9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.04%    0.03%     0x00007f3e8521f962: cmp    $0x40,%ecx
                     0x00007f3e8521f965: jge    0x00007f3e852201ed  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.22%    0.23%     0x00007f3e8521f96b: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.05%    0.06%     0x00007f3e8521f96f: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 278)
  0.08%    0.12%     0x00007f3e8521f972: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.02%    0.02%     0x00007f3e8521f975: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.24%    0.24%     0x00007f3e8521f979: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e852205dd
  0.07%    0.08%     0x00007f3e8521f97e: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f3e8521f985: jne    0x00007f3e8521ff65
  0.06%    0.11%     0x00007f3e8521f98b: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.04%     0x00007f3e8521f98f: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.22%    0.23%     0x00007f3e8521f993: cmp    $0x40,%r10d
                     0x00007f3e8521f997: jg     0x00007f3e85220221  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.08%    0.07%     0x00007f3e8521f99d: mov    $0x1,%esi
  0.08%    0.07%     0x00007f3e8521f9a2: mov    %r10d,%ecx
  0.02%    0.03%     0x00007f3e8521f9a5: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.48%    0.33%     0x00007f3e8521f9a8: mov    %rbx,%rcx
  0.04%    0.04%     0x00007f3e8521f9ab: and    %rsi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.25%    0.10%     0x00007f3e8521f9ae: test   %rcx,%rcx
                     0x00007f3e8521f9b1: jne    0x00007f3e85220261  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.11%     0x00007f3e8521f9b7: cmp    $0x40,%r10d
                     0x00007f3e8521f9bb: jge    0x00007f3e852202a9  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.16%     0x00007f3e8521f9c1: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.03%     0x00007f3e8521f9c4: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.21%    0.12%     0x00007f3e8521f9c8: mov    %r11,%r10
  0.08%    0.12%     0x00007f3e8521f9cb: shr    $0x3,%r10          ;*putfield inst
                                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.17%     0x00007f3e8521f9cf: movabs $0x7f3e80dee000,%r13
  0.02%    0.05%     0x00007f3e8521f9d9: test   %rdi,%rdi
                  ╭  0x00007f3e8521f9dc: jne    0x00007f3e8521fe1d  ;*ifnonnull
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.23%    0.36%  │  0x00007f3e8521f9e2: mov    0x70(%rsp),%rdi
  0.07%    0.11%  │  0x00007f3e8521f9e7: mov    0xc(%rdi),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e852206e9
  0.10%    0.15%  │  0x00007f3e8521f9ea: test   %ecx,%ecx
                  │  0x00007f3e8521f9ec: jle    0x00007f3e8522013d  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.06%  │  0x00007f3e8521f9f2: vmovd  %ecx,%xmm0
  0.22%    0.22%  │  0x00007f3e8521f9f6: mov    %r11,%rax
  0.06%    0.08%  │  0x00007f3e8521f9f9: mov    0x24(%rdi),%r11d   ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.13%  │  0x00007f3e8521f9fd: mov    %ecx,%ebp
  0.04%    0.06%  │  0x00007f3e8521f9ff: dec    %ebp               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.21%    0.25%  │  0x00007f3e8521fa01: mov    %ebp,0xc(%rdi)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.02%  │  0x00007f3e8521fa04: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f3e852206fd
  0.05%    0.09%  │  0x00007f3e8521fa09: cmp    %ecx,%ebp
                  │  0x00007f3e8521fa0b: jae    0x00007f3e85220041
  0.00%    0.05%  │  0x00007f3e8521fa11: lea    (%r12,%r11,8),%rcx
  0.20%    0.30%  │  0x00007f3e8521fa15: vmovd  %xmm0,%r11d
  0.09%    0.11%  │  0x00007f3e8521fa1a: mov    0xc(%rcx,%r11,4),%ecx  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.08%  │  0x00007f3e8521fa1f: mov    %r10d,0x10(%r12,%rcx,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e8522070d
  0.23%    0.20%  │  0x00007f3e8521fa24: lea    (%r12,%rcx,8),%rdi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.15%    0.22%  │  0x00007f3e8521fa28: mov    %rdi,%r10
  0.03%    0.05%  │  0x00007f3e8521fa2b: shr    $0x9,%r10
  0.08%    0.07%  │  0x00007f3e8521fa2f: mov    %r12b,0x0(%r13,%r10,1)  ;*aload_3
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.33%    0.34%  │  0x00007f3e8521fa34: mov    0xc(%r8),%ebp      ;*arraylength
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │                                                ; implicit exception: dispatches to 0x00007f3e85220605
  0.12%    0.11%  │  0x00007f3e8521fa38: test   %ebp,%ebp
                  │  0x00007f3e8521fa3a: jg     0x00007f3e852202e9  ;*ifle
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.03%  │  0x00007f3e8521fa40: mov    0xc(%rdx),%ecx     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.08%  │  0x00007f3e8521fa43: mov    0x20(%rdx),%r10d   ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.21%    0.16%  │  0x00007f3e8521fa47: vmovd  %r10d,%xmm0
  0.14%    0.12%  │  0x00007f3e8521fa4c: mov    %ecx,0x20(%rsp)
  0.02%    0.04%  │  0x00007f3e8521fa50: inc    %ecx               ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.06%  │  0x00007f3e8521fa52: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.27%    0.16%  │  0x00007f3e8521fa55: vmovd  %ecx,%xmm3
  0.13%    0.06%  │  0x00007f3e8521fa59: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f3e85220615
  0.04%    0.01%  │  0x00007f3e8521fa5e: mov    0x20(%rsp),%ecx
  0.42%    0.18%  │  0x00007f3e8521fa62: cmp    %r11d,%ecx
                  │  0x00007f3e8521fa65: jae    0x00007f3e8521fe32  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.21%    0.21%  │  0x00007f3e8521fa6b: vmovq  %xmm9,%r10
  0.12%    0.07%  │  0x00007f3e8521fa70: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 279)
  0.06%    0.03%  │  0x00007f3e8521fa74: mov    %rdi,%r10
  0.02%    0.05%  │  0x00007f3e8521fa77: shr    $0x3,%r10          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.16%    0.23%  │  0x00007f3e8521fa7b: vmovd  %xmm0,%ecx
  0.07%    0.19%  │  0x00007f3e8521fa7f: lea    (%r12,%rcx,8),%rdi  ;*getfield denseThreads
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.07%    0.06%  │  0x00007f3e8521fa83: mov    0x20(%rsp),%esi
  0.06%    0.07%  │  0x00007f3e8521fa87: lea    0x10(%rdi,%rsi,4),%rcx
  0.26%    0.18%  │  0x00007f3e8521fa8c: mov    %r10d,(%rcx)
  0.16%    0.13%  │  0x00007f3e8521fa8f: mov    %rcx,%r10
  0.02%    0.02%  │  0x00007f3e8521fa92: shr    $0x9,%r10
  0.05%    0.02%  │  0x00007f3e8521fa96: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.26%    0.36%  │  0x00007f3e8521fa9b: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e85220629
  0.09%    0.19%  │  0x00007f3e8521faa0: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e8521faa7: jne    0x00007f3e8521ff95
  0.02%    0.04%  │  0x00007f3e8521faad: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.07%    0.07%  │  0x00007f3e8521fab1: vmovq  %r10,%xmm2
  0.21%    0.26%  │  0x00007f3e8521fab6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.09%    0.13%  │  0x00007f3e8521faba: mov    %ecx,%eax
  0.02%    0.03%  │  0x00007f3e8521fabc: cmp    $0x40,%ecx
                  │  0x00007f3e8521fabf: jg     0x00007f3e85220319  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.06%    0.03%  │  0x00007f3e8521fac5: mov    $0x1,%r10d
  0.26%    0.29%  │  0x00007f3e8521facb: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.14%    0.22%  │  0x00007f3e8521face: mov    %rbx,%rcx
  0.23%    0.28%  │  0x00007f3e8521fad1: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.11%    0.15%  │  0x00007f3e8521fad4: test   %rcx,%rcx
                  │  0x00007f3e8521fad7: jne    0x00007f3e85220351  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.04%  │  0x00007f3e8521fadd: mov    %eax,%ecx
  0.04%    0.02%  │  0x00007f3e8521fadf: cmp    $0x40,%ecx
                  │  0x00007f3e8521fae2: jge    0x00007f3e85220395  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.22%    0.26%  │  0x00007f3e8521fae8: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.07%    0.08%  │  0x00007f3e8521faeb: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.04%    0.01%  │  0x00007f3e8521faef: mov    0x70(%rsp),%r10
  0.04%    0.08%  │  0x00007f3e8521faf4: mov    0xc(%r10),%ecx     ;*getfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │                                                ; implicit exception: dispatches to 0x00007f3e8522064d
  0.28%    0.30%  │  0x00007f3e8521faf8: vmovd  %ecx,%xmm5
  0.10%    0.21%  │  0x00007f3e8521fafc: test   %ecx,%ecx
                  │  0x00007f3e8521fafe: jle    0x00007f3e85220075  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
           0.01%  │  0x00007f3e8521fb04: mov    0x24(%r10),%ecx    ;*getfield pool
                  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.05%    0.07%  │  0x00007f3e8521fb08: vmovd  %ecx,%xmm4
  0.20%    0.24%  │  0x00007f3e8521fb0c: vmovd  %xmm5,%ecx
  0.15%    0.12%  │  0x00007f3e8521fb10: dec    %ecx               ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.04%  │  0x00007f3e8521fb12: vmovd  %ecx,%xmm6
  0.06%    0.09%  │  0x00007f3e8521fb16: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.23%    0.29%  │  0x00007f3e8521fb1a: vmovd  %xmm4,%ecx
  0.07%    0.13%  │  0x00007f3e8521fb1e: mov    0xc(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f3e85220661
  0.08%    0.06%  │  0x00007f3e8521fb23: vmovd  %xmm6,%r10d
  0.05%    0.03%  │  0x00007f3e8521fb28: cmp    %esi,%r10d
                  │  0x00007f3e8521fb2b: jae    0x00007f3e8521fe65
  0.23%    0.28%  │  0x00007f3e8521fb31: lea    (%r12,%rcx,8),%rax
  0.09%    0.09%  │  0x00007f3e8521fb35: vmovd  %xmm5,%r10d
           0.00%  │  0x00007f3e8521fb3a: mov    0xc(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.05%    0.06%  │  0x00007f3e8521fb3f: vmovd  %r10d,%xmm8
  0.23%    0.25%  │  0x00007f3e8521fb44: test   %r10d,%r10d
                  │  0x00007f3e8521fb47: je     0x00007f3e8521fe9d  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.14%    0.16%  │  0x00007f3e8521fb4d: vmovd  %r9d,%xmm12
  0.04%    0.02%  │  0x00007f3e8521fb52: vmovq  %r8,%xmm10
  0.03%    0.07%  │  0x00007f3e8521fb57: vmovq  %rdx,%xmm7
  0.27%    0.22%  │  0x00007f3e8521fb5c: shl    $0x3,%r10
  0.11%    0.11%  │  0x00007f3e8521fb60: mov    0x20(%rsp),%r8d
  0.03%    0.01%  │  0x00007f3e8521fb65: add    $0x2,%r8d
  0.03%    0.03%  │  0x00007f3e8521fb69: mov    %r8d,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.25%    0.12%  │  0x00007f3e8521fb6d: mov    0x20(%rsp),%r8d
  0.10%    0.13%  │  0x00007f3e8521fb72: add    $0x4,%r8d          ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.05%  │  0x00007f3e8521fb76: shr    $0x9,%r10
  0.04%    0.05%  │  0x00007f3e8521fb7a: mov    %r12b,0x0(%r13,%r10,1)
  1.26%    1.17%  │  0x00007f3e8521fb7f: vmovq  %xmm2,%r10
  0.02%    0.02%  │  0x00007f3e8521fb84: mov    %r10,%rcx
  0.00%           │  0x00007f3e8521fb87: shr    $0x3,%rcx
  0.00%    0.00%  │  0x00007f3e8521fb8b: vmovd  %xmm8,%r10d
  0.38%    0.32%  │  0x00007f3e8521fb90: mov    %ecx,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.19%    0.22%  │  0x00007f3e8521fb95: cmp    %r11d,%r8d
                  │  0x00007f3e8521fb98: jae    0x00007f3e8521feb1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │  0x00007f3e8521fb9e: vmovq  %xmm9,%r10
  0.00%    0.01%  │  0x00007f3e8521fba3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 280)
  0.24%    0.40%  │  0x00007f3e8521fba7: movslq 0x20(%rsp),%r10
  0.07%    0.06%  │  0x00007f3e8521fbac: lea    (%rdi,%r10,4),%r11  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
                  │  0x00007f3e8521fbb0: mov    %r11,%r9
           0.01%  │  0x00007f3e8521fbb3: add    $0x14,%r9
  0.25%    0.32%  │  0x00007f3e8521fbb7: vmovd  %xmm8,%r10d
  0.07%    0.11%  │  0x00007f3e8521fbbc: mov    %r10d,(%r9)
                  │  0x00007f3e8521fbbf: mov    %r9,%r10
  0.01%    0.00%  │  0x00007f3e8521fbc2: shr    $0x9,%r10
  0.40%    0.29%  │  0x00007f3e8521fbc6: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.06%    0.12%  │  0x00007f3e8521fbcb: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e85220675
                  │  0x00007f3e8521fbd0: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e8521fbd7: jne    0x00007f3e8521ffc1
  0.01%    0.00%  │  0x00007f3e8521fbdd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.33%    0.27%  │  0x00007f3e8521fbe1: vmovq  %r10,%xmm0
  0.09%    0.13%  │  0x00007f3e8521fbe6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007f3e8521fbea: cmp    $0x40,%ecx
                  │  0x00007f3e8521fbed: jg     0x00007f3e852203cd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.02%  │  0x00007f3e8521fbf3: mov    $0x1,%r10d
  0.35%    0.34%  │  0x00007f3e8521fbf9: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.11%    0.10%  │  0x00007f3e8521fbfc: mov    %rbx,%r9
  0.25%    0.34%  │  0x00007f3e8521fbff: and    %r10,%r9           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.12%  │  0x00007f3e8521fc02: test   %r9,%r9
                  │  0x00007f3e8521fc05: jne    0x00007f3e85220409  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │  0x00007f3e8521fc0b: cmp    $0x40,%ecx
                  │  0x00007f3e8521fc0e: jge    0x00007f3e85220451  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.00%  │  0x00007f3e8521fc14: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.34%    0.28%  │  0x00007f3e8521fc17: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.10%  │  0x00007f3e8521fc1b: vmovd  %xmm6,%ecx
           0.00%  │  0x00007f3e8521fc1f: test   %ecx,%ecx
                  │  0x00007f3e8521fc21: jle    0x00007f3e852200a9  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.00%  │  0x00007f3e8521fc27: vmovd  %xmm5,%r9d
  0.30%    0.31%  │  0x00007f3e8521fc2c: add    $0xfffffffc,%r9d   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.09%    0.12%  │  0x00007f3e8521fc30: vmovd  %xmm5,%r10d
                  │  0x00007f3e8521fc35: add    $0xfffffffe,%r10d  ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%    0.00%  │  0x00007f3e8521fc39: vmovd  %r10d,%xmm3
  0.28%    0.41%  │  0x00007f3e8521fc3e: mov    0x70(%rsp),%rcx
  0.11%    0.12%  │  0x00007f3e8521fc43: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.00%  │  0x00007f3e8521fc47: cmp    %esi,%r9d
                  │  0x00007f3e8521fc4a: jae    0x00007f3e8521feed
  0.00%    0.00%  │  0x00007f3e8521fc50: mov    0x10(%rax,%r10,4),%r10d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.38%    0.33%  │  0x00007f3e8521fc55: test   %r10d,%r10d
                  │  0x00007f3e8521fc58: je     0x00007f3e8521ff29  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.09%    0.07%  │  0x00007f3e8521fc5e: mov    %r11,%rcx
  0.00%           │  0x00007f3e8521fc61: add    $0x18,%rcx
  0.01%    0.02%  │  0x00007f3e8521fc65: mov    %r10d,(%rcx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.28%    0.26%  │  0x00007f3e8521fc68: vmovq  %xmm9,%rdx
  0.06%    0.07%  │  0x00007f3e8521fc6d: mov    0x28(%rdx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 281)
  0.04%    0.02%  │  0x00007f3e8521fc70: lea    (%r12,%r10,8),%rdx
           0.01%  │  0x00007f3e8521fc74: vmovq  %xmm0,%rsi
  0.30%    0.30%  │  0x00007f3e8521fc79: shr    $0x3,%rsi
  0.06%    0.06%  │  0x00007f3e8521fc7d: mov    %esi,0x10(%r12,%r10,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.00%  │  0x00007f3e8521fc82: mov    0x20(%rsp),%r10d
           0.01%  │  0x00007f3e8521fc87: add    $0x3,%r10d
  0.24%    0.24%  │  0x00007f3e8521fc8b: vmovq  %xmm7,%rsi
  0.10%    0.04%  │  0x00007f3e8521fc90: mov    %r10d,0xc(%rsi)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.03%  │  0x00007f3e8521fc94: shr    $0x9,%rdx
  0.01%    0.01%  │  0x00007f3e8521fc98: mov    %r12b,0x0(%r13,%rdx,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.35%    0.20%  │  0x00007f3e8521fc9d: mov    %rcx,%r10
  0.09%    0.11%  │  0x00007f3e8521fca0: shr    $0x9,%r10
  0.03%    0.01%  │  0x00007f3e8521fca4: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%           │  0x00007f3e8521fca9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3e85220699
  0.39%    0.16%  │  0x00007f3e8521fcae: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e8521fcb5: jne    0x00007f3e8521ffed
  0.10%    0.06%  │  0x00007f3e8521fcbb: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.01%  │  0x00007f3e8521fcbf: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%           │  0x00007f3e8521fcc2: vmovd  %ecx,%xmm2
  0.31%    0.16%  │  0x00007f3e8521fcc6: cmp    $0x40,%ecx
                  │  0x00007f3e8521fcc9: jg     0x00007f3e8522048d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.07%    0.03%  │  0x00007f3e8521fccf: mov    $0x1,%r10d
  0.01%    0.02%  │  0x00007f3e8521fcd5: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.43%    0.39%  │  0x00007f3e8521fcd8: mov    %rbx,%rcx
  0.00%    0.01%  │  0x00007f3e8521fcdb: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.00%  │  0x00007f3e8521fcde: test   %rcx,%rcx
                  │  0x00007f3e8521fce1: jne    0x00007f3e852204c9  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.34%    0.43%  │  0x00007f3e8521fce7: vmovd  %xmm2,%ecx
  0.04%    0.11%  │  0x00007f3e8521fceb: cmp    $0x40,%ecx
                  │  0x00007f3e8521fcee: jge    0x00007f3e85220511  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.04%    0.05%  │  0x00007f3e8521fcf4: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.00%  │  0x00007f3e8521fcf7: mov    %rbx,0x10(%rsi)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.37%    0.30%  │  0x00007f3e8521fcfb: vmovd  %xmm3,%ecx
  0.10%    0.05%  │  0x00007f3e8521fcff: test   %ecx,%ecx
                  │  0x00007f3e8521fd01: jle    0x00007f3e852200e1  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.02%  │  0x00007f3e8521fd07: vmovd  %xmm5,%ecx
  0.02%    0.01%  │  0x00007f3e8521fd0b: add    $0xfffffffd,%ecx   ;*isub
                  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.32%    0.28%  │  0x00007f3e8521fd0e: vmovd  %ecx,%xmm0
  0.09%    0.11%  │  0x00007f3e8521fd12: mov    0x70(%rsp),%r10
  0.01%    0.04%  │  0x00007f3e8521fd17: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.02%  │  0x00007f3e8521fd1b: mov    0x10(%rax,%rcx,4),%esi  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.27%    0.35%  │  0x00007f3e8521fd1f: test   %esi,%esi
                  │  0x00007f3e8521fd21: je     0x00007f3e8521ff3d  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.08%    0.12%  │  0x00007f3e8521fd27: vmovq  %xmm7,%r10
  0.01%    0.03%  │  0x00007f3e8521fd2c: mov    %r8d,0xc(%r10)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.02%  │  0x00007f3e8521fd30: vmovq  %xmm9,%r10
  0.29%    0.34%  │  0x00007f3e8521fd35: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 282)
  0.10%    0.12%  │  0x00007f3e8521fd39: mov    %r11,%r8
  0.03%    0.02%  │  0x00007f3e8521fd3c: add    $0x1c,%r8
  0.01%    0.00%  │  0x00007f3e8521fd40: mov    %esi,(%r8)         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.28%    0.23%  │  0x00007f3e8521fd43: mov    %rdx,%r10
  0.07%    0.07%  │  0x00007f3e8521fd46: shr    $0x3,%r10
  0.01%    0.04%  │  0x00007f3e8521fd4a: mov    %r10d,0x10(%r12,%rsi,8)
  0.03%    0.01%  │  0x00007f3e8521fd4f: mov    %r8,%r10
  0.21%    0.51%  │  0x00007f3e8521fd52: lea    (%r12,%rsi,8),%r8
  0.06%    0.15%  │  0x00007f3e8521fd56: shr    $0x9,%r10
  0.03%    0.05%  │  0x00007f3e8521fd5a: shr    $0x9,%r8
  0.01%    0.02%  │  0x00007f3e8521fd5e: mov    %r12b,0x0(%r13,%r8,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.32%    0.38%  │  0x00007f3e8521fd63: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.09%    0.09%  │  0x00007f3e8521fd68: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f3e852206c1
  0.03%    0.03%  │  0x00007f3e8521fd6d: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f3e8521fd73: jne    0x00007f3e85220019
  0.01%    0.00%  │  0x00007f3e8521fd79: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.26%    0.25%  │  0x00007f3e8521fd7d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.11%    0.08%  │  0x00007f3e8521fd81: cmp    $0x40,%ecx
                  │  0x00007f3e8521fd84: jg     0x00007f3e8522054d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.04%    0.04%  │  0x00007f3e8521fd8a: mov    %r10,%r8
  0.03%    0.02%  │  0x00007f3e8521fd8d: shl    %cl,%r14           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.37%    0.48%  │  0x00007f3e8521fd90: mov    %rbx,%r10
  0.00%    0.03%  │  0x00007f3e8521fd93: and    %r14,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.29%    0.43%  │  0x00007f3e8521fd96: test   %r10,%r10
                  │  0x00007f3e8521fd99: jne    0x00007f3e85220571  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.15%    0.10%  │  0x00007f3e8521fd9f: cmp    $0x40,%ecx
                  │  0x00007f3e8521fda2: jge    0x00007f3e852205a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │  0x00007f3e8521fda8: or     %r14,%rbx
  0.02%    0.02%  │  0x00007f3e8521fdab: vmovq  %xmm7,%rcx
  0.33%    0.29%  │  0x00007f3e8521fdb0: mov    %rbx,0x10(%rcx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.10%    0.09%  │  0x00007f3e8521fdb4: vmovd  %xmm0,%r10d
  0.02%    0.01%  │  0x00007f3e8521fdb9: test   %r10d,%r10d
                  │  0x00007f3e8521fdbc: jle    0x00007f3e85220119  ;*ifle
                  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.02%  │  0x00007f3e8521fdc2: mov    0x70(%rsp),%r10
  0.22%    0.26%  │  0x00007f3e8521fdc7: mov    %r9d,0xc(%r10)     ;*putfield poolSize
                  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.10%    0.05%  │  0x00007f3e8521fdcb: mov    0x10(%rax,%r9,4),%r9d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.00%  │  0x00007f3e8521fdd0: test   %r9d,%r9d
                  │  0x00007f3e8521fdd3: je     0x00007f3e8521ff51  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.02%  │  0x00007f3e8521fdd9: add    $0x20,%r11
  0.31%    0.28%  │  0x00007f3e8521fddd: mov    %r9d,(%r11)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.08%    0.09%  │  0x00007f3e8521fde0: shr    $0x3,%r8
  0.04%    0.02%  │  0x00007f3e8521fde4: mov    %r8d,0x10(%r12,%r9,8)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.03%  │  0x00007f3e8521fde9: mov    %r11,%r10
  0.25%    0.29%  │  0x00007f3e8521fdec: mov    0x20(%rsp),%r11d
  0.11%    0.08%  │  0x00007f3e8521fdf1: add    $0x5,%r11d
  0.04%    0.04%  │  0x00007f3e8521fdf5: mov    %r11d,0xc(%rcx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.01%  │  0x00007f3e8521fdf9: shr    $0x9,%r10
  0.29%    0.42%  │  0x00007f3e8521fdfd: lea    (%r12,%r9,8),%r11
  0.12%    0.14%  │  0x00007f3e8521fe01: shr    $0x9,%r11
  0.03%    0.01%  │  0x00007f3e8521fe05: mov    %r12b,0x0(%r13,%r11,1)  ;*putfield inst
                  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.04%  │  0x00007f3e8521fe0a: mov    %r12b,0x0(%r13,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.28%    0.32%  │  0x00007f3e8521fe0f: xor    %eax,%eax
  0.12%    0.11%  │  0x00007f3e8521fe11: add    $0x60,%rsp
  0.02%    0.02%  │  0x00007f3e8521fe15: pop    %rbp
  0.02%    0.01%  │  0x00007f3e8521fe16: test   %eax,0x165651e4(%rip)        # 0x00007f3e9b785000
                  │                                                ;   {poll_return}
  0.25%    0.23%  │  0x00007f3e8521fe1c: retq   
                  ↘  0x00007f3e8521fe1d: mov    %r10d,0x10(%rdi)
                     0x00007f3e8521fe21: mov    %rdi,%r10
                     0x00007f3e8521fe24: shr    $0x9,%r10
                     0x00007f3e8521fe28: mov    %r12b,0x0(%r13,%r10,1)  ;*putfield inst
                                                                   ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                     0x00007f3e8521fe2d: jmpq   0x00007f3e8521fa34  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
....................................................................................................
 30.89%   32.41%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 535 (910 bytes) 

                                                                                      ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 201)
                                        0x00007f3e85239571: mov    %ebx,%r10d
                                        0x00007f3e85239574: add    $0xffffff9f,%r10d
                                        0x00007f3e85239578: cmp    $0x1a,%r10d
                                        0x00007f3e8523957c: jae    0x00007f3e85239b4f  ;*iconst_1
                                                                                      ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.00%                        0x00007f3e85239582: or     $0x10,%r9d         ;*iload_2
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 201)
                                        0x00007f3e85239586: mov    %r8d,0x30(%rsp)
           0.01%                        0x00007f3e8523958b: mov    %r11d,0x2c(%rsp)
                                        0x00007f3e85239590: mov    0x44(%rsp),%r11d
                                        0x00007f3e85239595: and    $0x4,%r11d         ;*iand
                                                                                      ; - com.google.re2j.Machine::match@147 (line 208)
                                        0x00007f3e85239599: mov    %r11d,0x14(%rsp)
           0.00%                        0x00007f3e8523959e: mov    %r13,%r10
                                        0x00007f3e852395a1: shl    $0x3,%r10          ;*getfield q1
                                                                                      ; - com.google.re2j.Machine::match@53 (line 188)
                                        0x00007f3e852395a5: mov    %r10,0x50(%rsp)
           0.00%                        0x00007f3e852395aa: mov    %ebx,0x34(%rsp)
                                        0x00007f3e852395ae: xor    %eax,%eax
                                        0x00007f3e852395b0: xor    %r10d,%r10d
           0.00%                        0x00007f3e852395b3: mov    %r10d,0x58(%rsp)
  0.00%           ╭                     0x00007f3e852395b8: jmpq   0x00007f3e85239755
                  │                     0x00007f3e852395bd: data16 xchg %ax,%ax
  0.22%    0.21%  │          ↗          0x00007f3e852395c0: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │          │                                                        ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.04%  │          │          0x00007f3e852395c4: mov    %r8d,0x5c(%rsp)    ;*iload_2
                  │          │                                                        ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │          │                                                        ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.09%  │          │↗         0x00007f3e852395c9: mov    0x48(%rsp),%r9
  0.06%    0.08%  │          ││         0x00007f3e852395ce: mov    0x10(%r9),%r8d     ;*getfield end
                  │          ││                                                       ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │          ││                                                       ; - com.google.re2j.Machine::match@345 (line 242)
  0.27%    0.30%  │          ││         0x00007f3e852395d2: mov    0x58(%rsp),%ecx
  0.10%    0.12%  │          ││         0x00007f3e852395d6: cmp    %r8d,%ecx
                  │╭         ││         0x00007f3e852395d9: je     0x00007f3e852398e8  ;*if_icmpne
                  ││         ││                                                       ; - com.google.re2j.Machine::match@348 (line 242)
  0.12%    0.10%  ││         ││         0x00007f3e852395df: xor    %eax,%eax          ;*invokespecial step
                  ││         ││                                                       ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.04%  ││         ││     ↗   0x00007f3e852395e1: mov    %rax,-0x8(%rsp)
  0.19%    0.28%  ││         ││     │   0x00007f3e852395e6: mov    0x58(%rsp),%eax
  0.06%    0.10%  ││         ││     │   0x00007f3e852395ea: mov    %eax,0x1c(%rsp)
  0.10%    0.11%  ││         ││     │   0x00007f3e852395ee: mov    -0x8(%rsp),%rax
  0.08%    0.06%  ││         ││     │   0x00007f3e852395f3: add    0x28(%rsp),%ecx    ;*iadd
                  ││         ││     │                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.17%    0.24%  ││         ││     │   0x00007f3e852395f7: mov    %ecx,0x58(%rsp)
  0.08%    0.07%  ││         ││     │   0x00007f3e852395fb: mov    0x38(%rsp),%rsi
  0.08%    0.09%  ││         ││     │   0x00007f3e85239600: mov    0x20(%rsp),%rdx
  0.06%    0.05%  ││         ││     │   0x00007f3e85239605: mov    0x50(%rsp),%rcx
  0.17%    0.09%  ││         ││     │   0x00007f3e8523960a: mov    0x1c(%rsp),%r8d
  0.06%    0.04%  ││         ││     │   0x00007f3e8523960f: mov    0x58(%rsp),%r9d
  0.13%    0.14%  ││         ││     │   0x00007f3e85239614: mov    0x34(%rsp),%edi
  0.02%    0.08%  ││         ││     │   0x00007f3e85239618: mov    0x5c(%rsp),%r10d
  0.24%    0.26%  ││         ││     │   0x00007f3e8523961d: mov    %r10d,(%rsp)
  0.08%    0.10%  ││         ││     │   0x00007f3e85239621: mov    0x40(%rsp),%r11d
  0.13%    0.09%  ││         ││     │   0x00007f3e85239626: mov    %r11d,0x8(%rsp)
  0.04%    0.06%  ││         ││     │   0x00007f3e8523962b: mov    %eax,0x10(%rsp)
  0.22%    0.22%  ││         ││     │   0x00007f3e8523962f: callq  0x00007f3e85046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=660}
                  ││         ││     │                                                 ;*invokespecial step
                  ││         ││     │                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                  ││         ││     │                                                 ;   {optimized virtual_call}
  0.37%    0.15%  ││         ││     │   0x00007f3e85239634: mov    0x38(%rsp),%r10
  0.03%    0.01%  ││         ││     │   0x00007f3e85239639: movzbl 0x10(%r10),%eax    ;*getfield matched
                  ││         ││     │                                                 ; - com.google.re2j.Machine::match@376 (line 246)
  0.02%    0.04%  ││         ││     │   0x00007f3e8523963e: mov    0x28(%rsp),%r8d
  0.33%    0.21%  ││         ││     │   0x00007f3e85239643: test   %r8d,%r8d
                  ││╭        ││     │   0x00007f3e85239646: je     0x00007f3e85239906  ;*ifne
                  │││        ││     │                                                 ; - com.google.re2j.Machine::match@361 (line 243)
           0.01%  │││        ││     │   0x00007f3e8523964c: mov    0x28(%r10),%ebx    ;*getfield matchcap
                  │││        ││     │                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.02%    0.03%  │││        ││     │   0x00007f3e85239650: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                  │││        ││     │                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                  │││        ││     │                                                 ; implicit exception: dispatches to 0x00007f3e8523a675
  0.08%    0.06%  │││        ││     │   0x00007f3e85239655: test   %ebp,%ebp
                  │││        ││     │   0x00007f3e85239657: jne    0x00007f3e85239d5d  ;*ifne
                  │││        ││     │                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.36%    0.16%  │││        ││     │   0x00007f3e8523965d: test   %eax,%eax
                  │││        ││     │   0x00007f3e8523965f: jne    0x00007f3e85239e4d  ;*ifeq
                  │││        ││     │                                                 ; - com.google.re2j.Machine::match@379 (line 246)
                  │││        ││     │   0x00007f3e85239665: mov    0x2c(%rsp),%r9d
  0.04%    0.04%  │││        ││     │   0x00007f3e8523966a: cmp    $0xffffffff,%r9d
                  │││╭       ││     │   0x00007f3e8523966e: je     0x00007f3e852398f2  ;*if_icmpeq
                  ││││       ││     │                                                 ; - com.google.re2j.Machine::match@401 (line 254)
  0.02%    0.03%  ││││       ││     │   0x00007f3e85239674: mov    0x48(%rsp),%r8
  0.32%    0.42%  ││││       ││     │   0x00007f3e85239679: mov    0x10(%r8),%r11d    ;*getfield end
                  ││││       ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  ││││       ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%           ││││       ││     │   0x00007f3e8523967d: mov    0x30(%rsp),%r10d
  0.02%    0.05%  ││││       ││     │   0x00007f3e85239682: add    0x58(%rsp),%r10d
  0.02%    0.02%  ││││       ││     │   0x00007f3e85239687: add    0xc(%r8),%r10d     ;*iadd
                  ││││       ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  ││││       ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.30%    0.38%  ││││       ││     │   0x00007f3e8523968b: cmp    %r11d,%r10d
                  ││││╭      ││     │   0x00007f3e8523968e: jge    0x00007f3e852398d1  ;*if_icmpge
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.03%  │││││      ││     │   0x00007f3e85239694: mov    0x14(%r8),%ebp     ;*getfield str
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%  │││││      ││     │   0x00007f3e85239698: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f3e8523a685
  0.15%    0.17%  │││││      ││     │   0x00007f3e8523969d: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││      ││     │   0x00007f3e852396a3: jne    0x00007f3e85239c35
  0.35%    0.54%  │││││      ││     │   0x00007f3e852396a9: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%  │││││      ││     │   0x00007f3e852396ad: test   %r10d,%r10d
                  │││││      ││     │   0x00007f3e852396b0: jl     0x00007f3e85239da9  ;*iflt
                  │││││      ││     │                                                 ; - java.lang.String::charAt@1 (line 657)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.03%  │││││      ││     │   0x00007f3e852396b6: mov    %r10d,%edi
  0.02%    0.04%  │││││      ││     │   0x00007f3e852396b9: mov    0xc(%r9),%edx      ;*getfield value
                  │││││      ││     │                                                 ; - java.lang.String::charAt@6 (line 657)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.31%    0.49%  │││││      ││     │   0x00007f3e852396bd: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││││      ││     │                                                 ; - java.lang.String::charAt@9 (line 657)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                  │││││      ││     │                                                 ; implicit exception: dispatches to 0x00007f3e8523a699
  0.76%    0.85%  │││││      ││     │   0x00007f3e852396c2: cmp    %ebp,%r10d
                  │││││      ││     │   0x00007f3e852396c5: jge    0x00007f3e85239ea1  ;*if_icmplt
                  │││││      ││     │                                                 ; - java.lang.String::charAt@10 (line 657)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.43%    0.57%  │││││      ││     │   0x00007f3e852396cb: cmp    %ebp,%r10d
                  │││││      ││     │   0x00007f3e852396ce: jae    0x00007f3e85239bb9
  0.13%    0.11%  │││││      ││     │   0x00007f3e852396d4: lea    (%r12,%rdx,8),%r10
  0.01%    0.03%  │││││      ││     │   0x00007f3e852396d8: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                  │││││      ││     │                                                 ; - java.lang.String::charAt@27 (line 660)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.02%  │││││      ││     │   0x00007f3e852396de: cmp    $0xd800,%ecx
                  │││││      ││     │   0x00007f3e852396e4: jge    0x00007f3e85239f0d  ;*if_icmplt
                  │││││      ││     │                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││      ││     │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.21%    0.34%  │││││      ││     │   0x00007f3e852396ea: shl    $0x3,%ecx          ;*ishl
                  │││││      ││     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.15%  │││││      ││     │   0x00007f3e852396ed: mov    %ecx,%r10d
  0.02%    0.03%  │││││      ││     │   0x00007f3e852396f0: or     $0x1,%r10d
  0.33%    0.44%  │││││      ││     │   0x00007f3e852396f4: and    $0x7,%ecx
  0.08%    0.11%  │││││      ││     │   0x00007f3e852396f7: sar    $0x3,%r10d         ;*ishr
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.29%    0.31%  │││││      ││     │   0x00007f3e852396fb: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.05%  │││││      ││     │   0x00007f3e852396fe: mov    0x2c(%rsp),%r9d    ;*aload
                  │││││      ││     │                                                 ; - com.google.re2j.Machine::match@427 (line 259)
                  │││││      ││   ↗ │↗  0x00007f3e85239703: mov    %r8,0x48(%rsp)
  0.10%    0.04%  │││││      ││   │ ││  0x00007f3e85239708: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=877}
                  │││││      ││   │ ││                                                ;*goto
                  │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.30%    0.35%  │││││      ││   │ ││  0x00007f3e8523970d: test   %eax,0x1654b8ed(%rip)        # 0x00007f3e9b785000
                  │││││      ││   │ ││                                                ;*goto
                  │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  │││││      ││   │ ││                                                ;   {poll}
  0.02%    0.07%  │││││      ││   │ ││  0x00007f3e85239713: mov    0x38(%rsp),%r11
                  │││││      ││   │ ││  0x00007f3e85239718: mov    0x14(%r11),%r11d   ;*getfield re2
                  │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.06%    0.05%  │││││      ││   │ ││  0x00007f3e8523971c: vmovd  %r11d,%xmm3
  0.37%    0.30%  │││││      ││   │ ││  0x00007f3e85239721: mov    0x50(%rsp),%r11
  0.07%    0.05%  │││││      ││   │ ││  0x00007f3e85239726: shr    $0x3,%r11
  0.00%           │││││      ││   │ ││  0x00007f3e8523972a: mov    %r11d,0x18(%rsp)
  0.05%    0.08%  │││││      ││   │ ││  0x00007f3e8523972f: mov    0x5c(%rsp),%r9d
  0.31%    0.28%  │││││      ││   │ ││  0x00007f3e85239734: mov    0x20(%rsp),%r11
  0.05%    0.04%  │││││      ││   │ ││  0x00007f3e85239739: mov    %r11,0x50(%rsp)
  0.00%    0.00%  │││││      ││   │ ││  0x00007f3e8523973e: mov    0x30(%rsp),%r11d
  0.07%    0.04%  │││││      ││   │ ││  0x00007f3e85239743: mov    %r11d,0x28(%rsp)
  0.27%    0.46%  │││││      ││   │ ││  0x00007f3e85239748: mov    %ecx,0x30(%rsp)
  0.05%    0.08%  │││││      ││   │ ││  0x00007f3e8523974c: mov    %r10d,0x2c(%rsp)
           0.01%  │││││      ││   │ ││  0x00007f3e85239751: vmovd  %ebx,%xmm2         ;*aload
                  │││││      ││   │ ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.05%  ↘││││      ││   │ ││  0x00007f3e85239755: mov    0x18(%rsp),%r11d
  0.29%    0.34%   ││││      ││   │ ││  0x00007f3e8523975a: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f3e8523a625
  0.07%    0.08%   ││││      ││   │ ││  0x00007f3e85239760: test   %r11d,%r11d
                   ││││╭     ││   │ ││  0x00007f3e85239763: je     0x00007f3e852398b7  ;*ifeq
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.01%            │││││     ││   │ ││  0x00007f3e85239769: mov    0x14(%rsp),%ebx
  0.04%    0.04%   │││││     ││   │ ││  0x00007f3e8523976d: test   %ebx,%ebx
                   │││││     ││   │ ││  0x00007f3e8523976f: jne    0x00007f3e85239f8d  ;*ifeq
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.25%    0.34%   │││││     ││   │ ││  0x00007f3e85239775: test   %eax,%eax
                   │││││     ││   │ ││  0x00007f3e85239777: jne    0x00007f3e85239fed  ;*ifeq
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.05%    0.02%   │││││     ││   │ ││  0x00007f3e8523977d: vmovd  %xmm3,%r10d
  0.00%    0.00%   │││││     ││   │ ││  0x00007f3e85239782: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f3e8523a6a9
  0.04%    0.04%   │││││     ││   │ ││  0x00007f3e85239787: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   │││││     ││   │ ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f3e8523a6b9
  0.30%    0.27%   │││││     ││   │ ││  0x00007f3e8523978c: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││││     ││   │ ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││││     ││   │ ││                                                ; implicit exception: dispatches to 0x00007f3e8523a6c9
  0.39%    0.40%   │││││     ││   │ ││  0x00007f3e85239791: test   %ebp,%ebp
                   │││││     ││   │ ││  0x00007f3e85239793: jne    0x00007f3e85239f6d  ;*aload_0
                   │││││     ││   │ ││                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.22%    0.25%   │││││     ││↗  │ ││  0x00007f3e85239799: test   %eax,%eax
                   │││││     │││  │ ││  0x00007f3e8523979b: jne    0x00007f3e85239cba  ;*ifne
                   │││││     │││  │ ││                                                ; - com.google.re2j.Machine::match@271 (line 233)
           0.00%   │││││     │││  │ ││  0x00007f3e852397a1: mov    0x58(%rsp),%r11d
  0.15%    0.11%   │││││     │││  │ ││  0x00007f3e852397a6: test   %r11d,%r11d
                   │││││╭    │││  │ ││  0x00007f3e852397a9: je     0x00007f3e852398de  ;*ifeq
                   ││││││    │││  │ ││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.04%    0.07%   ││││││    │││  │ ││  0x00007f3e852397af: mov    0x40(%rsp),%r8d
  0.24%    0.23%   ││││││    │││  │ ││  0x00007f3e852397b4: test   %r8d,%r8d
                   ││││││    │││  │ ││  0x00007f3e852397b7: jne    0x00007f3e85239d05  ;*aload_0
                   ││││││    │││  │ ││                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.01%    0.00%   ││││││    │││  │↗││  0x00007f3e852397bd: vmovd  %xmm2,%r10d
  0.08%    0.13%   ││││││    │││  ││││  0x00007f3e852397c2: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                   ││││││    │││  ││││                                                ; implicit exception: dispatches to 0x00007f3e8523a635
  0.06%    0.05%   ││││││    │││  ││││  0x00007f3e852397c7: test   %ebp,%ebp
                   ││││││    │││  ││││  0x00007f3e852397c9: jg     0x00007f3e85239e29  ;*ifle
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.19%    0.19%   ││││││    │││  ││││  0x00007f3e852397cf: mov    0x38(%rsp),%rdx
  0.02%    0.01%   ││││││    │││  ││││  0x00007f3e852397d4: mov    0x18(%rdx),%edi    ;*getfield prog
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.11%    0.09%   ││││││    │││  ││││  0x00007f3e852397d7: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                   ││││││    │││  ││││                                                ; implicit exception: dispatches to 0x00007f3e8523a645
  0.03%    0.04%   ││││││    │││  ││││  0x00007f3e852397dc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f3e8523a655
  0.18%    0.33%   ││││││    │││  ││││  0x00007f3e852397e1: cmp    $0xf8019a53,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   ││││││    │││  ││││  0x00007f3e852397e7: jne    0x00007f3e85239b6f  ;*invokevirtual add
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.06%   ││││││    │││  ││││  0x00007f3e852397ed: mov    %ebx,0x14(%rsp)
  0.07%    0.05%   ││││││    │││  ││││  0x00007f3e852397f1: mov    %r8d,0x40(%rsp)    ;*ifle
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.02%    0.04%   ││││││    │││  ││││  0x00007f3e852397f6: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.20%    0.16%   ││││││    │││  ││││  0x00007f3e852397fa: mov    0x18(%rsp),%r11d
  0.04%    0.05%   ││││││    │││  ││││  0x00007f3e852397ff: shl    $0x3,%r11          ;*aload
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.08%    0.03%   ││││││    │││  ││││  0x00007f3e85239803: mov    %r11,0x20(%rsp)
  0.04%    0.01%   ││││││    │││  ││││  0x00007f3e85239808: mov    %r10,%r8
  0.26%    0.20%   ││││││    │││  ││││  0x00007f3e8523980b: shl    $0x3,%r8           ;*getfield matchcap
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.07%    0.04%   ││││││    │││  ││││  0x00007f3e8523980f: mov    %r11,%rdx
  0.11%    0.03%   ││││││    │││  ││││  0x00007f3e85239812: mov    0x58(%rsp),%ecx
  0.02%    0.02%   ││││││    │││  ││││  0x00007f3e85239816: xor    %edi,%edi
  0.25%    0.18%   ││││││    │││  ││││  0x00007f3e85239818: mov    0x38(%rsp),%r10
  0.08%    0.05%   ││││││    │││  ││││  0x00007f3e8523981d: mov    %r10,(%rsp)
  0.11%    0.02%   ││││││    │││  ││││  0x00007f3e85239821: xchg   %ax,%ax
  0.03%    0.07%   ││││││    │││  ││││  0x00007f3e85239823: callq  0x00007f3e85046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1160}
                   ││││││    │││  ││││                                                ;*invokevirtual add
                   ││││││    │││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   ││││││    │││  ││││                                                ;   {optimized virtual_call}
  0.10%    0.12%   ││││││    │││  ││││  0x00007f3e85239828: mov    0x34(%rsp),%r10d
  0.09%    0.07%   ││││││    │││  ││││  0x00007f3e8523982d: test   %r10d,%r10d
                   ││││││╭   │││  ││││  0x00007f3e85239830: jl     0x00007f3e852398c6  ;*ifge
                   │││││││   │││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │││││││   │││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.23%    0.43%   │││││││   │││  ││││  0x00007f3e85239836: xor    %r8d,%r8d          ;*iload_0
                   │││││││   │││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │││││││   │││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.15%   │││││││   │││ ↗││││  0x00007f3e85239839: cmp    $0xa,%r10d
                   │││││││   │││ │││││  0x00007f3e8523983d: je     0x00007f3e85239ad2  ;*iload_1
                   │││││││   │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││││││   │││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%   │││││││   │││ │││││  0x00007f3e85239843: mov    0x2c(%rsp),%r11d
  0.02%    0.04%   │││││││   │││ │││││  0x00007f3e85239848: test   %r11d,%r11d
                   │││││││╭  │││ │││││  0x00007f3e8523984b: jl     0x00007f3e852398c0  ;*iload_1
                   ││││││││  │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││││││  │││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.32%    0.38%   ││││││││  │││↗│││││  0x00007f3e8523984d: cmp    $0xa,%r11d
                   ││││││││  │││││││││  0x00007f3e85239851: je     0x00007f3e85239adb  ;*iload_0
                   ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.08%   ││││││││  │││││││││  0x00007f3e85239857: mov    0x34(%rsp),%r9d
  0.04%    0.04%   ││││││││  │││││││││  0x00007f3e8523985c: add    $0xffffffbf,%r9d
  0.02%    0.06%   ││││││││  │││││││││  0x00007f3e85239860: cmp    $0x1a,%r9d
                   ││││││││╭ │││││││││  0x00007f3e85239864: jb     0x00007f3e85239876  ;*if_icmple
                   │││││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││││ │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.32%    0.29%   │││││││││ │││││││││  0x00007f3e85239866: mov    0x34(%rsp),%ecx
  0.11%    0.13%   │││││││││ │││││││││  0x00007f3e8523986a: add    $0xffffff9f,%ecx
  0.02%    0.02%   │││││││││ │││││││││  0x00007f3e8523986d: cmp    $0x1a,%ecx
                   │││││││││ │││││││││  0x00007f3e85239870: jae    0x00007f3e85239ae4  ;*iconst_1
                   │││││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││││ │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%   ││││││││↘ │││││││││  0x00007f3e85239876: mov    $0x1,%ebp          ;*ireturn
                   ││││││││  │││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.24%   ││││││││  │││││││││  0x00007f3e8523987b: mov    0x2c(%rsp),%r9d
  0.09%    0.09%   ││││││││  │││││││││  0x00007f3e85239880: add    $0xffffffbf,%r9d
  0.06%    0.04%   ││││││││  │││││││││  0x00007f3e85239884: cmp    $0x1a,%r9d
                   ││││││││ ╭│││││││││  0x00007f3e85239888: jb     0x00007f3e8523989a  ;*if_icmple
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.09%   ││││││││ ││││││││││  0x00007f3e8523988a: mov    0x2c(%rsp),%ecx
  0.21%    0.26%   ││││││││ ││││││││││  0x00007f3e8523988e: add    $0xffffff9f,%ecx
  0.11%    0.09%   ││││││││ ││││││││││  0x00007f3e85239891: cmp    $0x1a,%ecx
                   ││││││││ ││││││││││  0x00007f3e85239894: jae    0x00007f3e85239b08  ;*iconst_1
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%   ││││││││ ↘│││││││││  0x00007f3e8523989a: mov    $0x1,%r9d          ;*ireturn
                   ││││││││  │││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││││││││  │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││││││││  │││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.19%    0.16%   ││││││││  │││││││││  0x00007f3e852398a0: cmp    %r9d,%ebp
                   ││││││││  ╰││││││││  0x00007f3e852398a3: je     0x00007f3e852395c0  ;*if_icmpeq
                   ││││││││   ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   ││││││││   ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%   ││││││││   ││││││││  0x00007f3e852398a9: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   ││││││││   ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%            ││││││││   ││││││││  0x00007f3e852398ad: mov    %r8d,0x5c(%rsp)
  0.04%    0.03%   ││││││││   ╰│││││││  0x00007f3e852398b2: jmpq   0x00007f3e852395c9
                   ││││↘│││    │││││││  0x00007f3e852398b7: mov    0x14(%rsp),%ebx
  0.02%    0.00%   ││││ │││    ╰││││││  0x00007f3e852398bb: jmpq   0x00007f3e85239799
  0.01%    0.00%   ││││ ││↘     ││││││  0x00007f3e852398c0: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   ││││ ││      ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%   ││││ ││      ╰│││││  0x00007f3e852398c4: jmp    0x00007f3e8523984d
           0.02%   ││││ │↘       │││││  0x00007f3e852398c6: mov    $0x5,%r8d
                   ││││ │        ╰││││  0x00007f3e852398cc: jmpq   0x00007f3e85239839
  0.00%            │││↘ │         ││││  0x00007f3e852398d1: mov    $0xffffffff,%r10d
           0.00%   │││  │         ││││  0x00007f3e852398d7: xor    %ecx,%ecx
                   │││  │         ╰│││  0x00007f3e852398d9: jmpq   0x00007f3e85239703
                   │││  ↘          │││  0x00007f3e852398de: mov    0x40(%rsp),%r8d
  0.00%            │││             ╰││  0x00007f3e852398e3: jmpq   0x00007f3e852397bd
                   ↘││              ││  0x00007f3e852398e8: mov    $0x1,%eax
                    ││              ╰│  0x00007f3e852398ed: jmpq   0x00007f3e852395e1
                    │↘               │  0x00007f3e852398f2: mov    0x30(%rsp),%ecx
  0.00%    0.01%    │                │  0x00007f3e852398f6: mov    $0xffffffff,%r10d
                    │                │  0x00007f3e852398fc: mov    0x48(%rsp),%r8
                    │                ╰  0x00007f3e85239901: jmpq   0x00007f3e85239703
                    ↘                   0x00007f3e85239906: mov    0x50(%rsp),%r10
  0.00%                                 0x00007f3e8523990b: mov    %r10,0x18(%rsp)
           0.00%                        0x00007f3e85239910: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                      ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                      ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                      ; implicit exception: dispatches to 0x00007f3e8523a731
                                        0x00007f3e85239914: test   %ebx,%ebx
                                        0x00007f3e85239916: jle    0x00007f3e85239a9b  ;*ifle
                                                                                      ; - com.google.re2j.Machine::freeQueue@8 (line 149)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                      ; - com.google.re2j.Machine::match@445 (line 263)
                                        0x00007f3e8523991c: mov    0x38(%rsp),%r10
....................................................................................................
 16.98%   18.11%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.92%   44.75%         C2, level 4  com.google.re2j.Machine::step, version 495 (674 bytes) 
 30.89%   32.41%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 505 (1276 bytes) 
 16.98%   18.11%         C2, level 4  com.google.re2j.Machine::match, version 535 (910 bytes) 
  1.86%    1.85%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.98%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 538 (289 bytes) 
  0.34%    0.45%         C2, level 4  com.google.re2j.Machine::match, version 535 (141 bytes) 
  0.21%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 538 (89 bytes) 
  0.16%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 538 (66 bytes) 
  0.11%    0.03%   [kernel.kallsyms]  [unknown] (53 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (70 bytes) 
  0.08%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 552 (25 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 552 (0 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 552 (61 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (32 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 552 (103 bytes) 
  0.05%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 552 (12 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 552 (8 bytes) 
  0.05%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 535 (77 bytes) 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 559 (27 bytes) 
  1.89%    1.78%  <...other 382 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 45.93%   44.76%         C2, level 4  com.google.re2j.Machine::step, version 495 
 30.89%   32.41%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 505 
 17.44%   18.63%         C2, level 4  com.google.re2j.Machine::match, version 535 
  2.89%    2.73%   [kernel.kallsyms]  [unknown] 
  1.38%    0.29%         C2, level 4  com.google.re2j.Machine::init, version 538 
  0.42%    0.23%         C2, level 4  com.google.re2j.RE2::match, version 552 
  0.12%    0.05%         C2, level 4  java.util.Collections::shuffle, version 559 
  0.09%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 611 
  0.06%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%              [vdso]  [unknown] 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%                 libc-2.26.so  __strchrnul_avx2 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%                 libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.48%    0.29%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.30%   96.41%         C2, level 4
  2.89%    2.73%   [kernel.kallsyms]
  0.40%    0.48%           libjvm.so
  0.20%    0.24%        libc-2.26.so
  0.07%    0.05%      hsdis-amd64.so
  0.06%    0.03%  libpthread-2.26.so
  0.04%    0.02%              [vdso]
  0.02%    0.00%         interpreter
  0.01%    0.01%        runtime stub
  0.01%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  11792.585 ± 48.652  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
