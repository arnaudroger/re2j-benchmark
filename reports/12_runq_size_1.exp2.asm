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
# Warmup Iteration   1: 12954.024 ops/s
# Warmup Iteration   2: 22258.113 ops/s
# Warmup Iteration   3: 22928.840 ops/s
# Warmup Iteration   4: 22358.648 ops/s
# Warmup Iteration   5: 22571.732 ops/s
# Warmup Iteration   6: 22823.699 ops/s
# Warmup Iteration   7: 22651.359 ops/s
# Warmup Iteration   8: 22993.229 ops/s
# Warmup Iteration   9: 22724.042 ops/s
# Warmup Iteration  10: 22939.312 ops/s
# Warmup Iteration  11: 22836.811 ops/s
# Warmup Iteration  12: 22627.103 ops/s
# Warmup Iteration  13: 23086.791 ops/s
# Warmup Iteration  14: 22972.253 ops/s
# Warmup Iteration  15: 23041.968 ops/s
# Warmup Iteration  16: 22925.391 ops/s
# Warmup Iteration  17: 22809.641 ops/s
# Warmup Iteration  18: 23007.134 ops/s
# Warmup Iteration  19: 23022.295 ops/s
# Warmup Iteration  20: 23093.587 ops/s
Iteration   1: 22961.772 ops/s
Iteration   2: 22844.793 ops/s
Iteration   3: 22993.603 ops/s
Iteration   4: 22948.830 ops/s
Iteration   5: 22989.233 ops/s
Iteration   6: 22894.737 ops/s
Iteration   7: 22915.137 ops/s
Iteration   8: 22977.479 ops/s
Iteration   9: 23050.377 ops/s
Iteration  10: 23073.268 ops/s
Iteration  11: 23012.716 ops/s
Iteration  12: 22910.880 ops/s
Iteration  13: 23070.057 ops/s
Iteration  14: 23033.365 ops/s
Iteration  15: 23072.205 ops/s
Iteration  16: 22890.593 ops/s
Iteration  17: 22894.086 ops/s
Iteration  18: 23084.820 ops/s
Iteration  19: 23069.839 ops/s
Iteration  20: 23028.824 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  22985.831 ±(99.9%) 64.992 ops/s [Average]
  (min, avg, max) = (22844.793, 22985.831, 23084.820), stdev = 74.845
  CI (99.9%): [22920.838, 23050.823] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 211392 total address lines.
Perf output processed (skipped 23.051 seconds):
 Column 1: cycles (20264 events)
 Column 2: instructions (20329 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 540 (564 bytes) 

                               # parm6:    [sp+0x78]   = int
                               # parm7:    [sp+0x80]   = boolean
                               0x00007f96dd2488a0: mov    0x8(%rsi),%r10d
                               0x00007f96dd2488a4: shl    $0x3,%r10
                               0x00007f96dd2488a8: cmp    %r10,%rax
                               0x00007f96dd2488ab: jne    0x00007f96dd045e20  ;   {runtime_call}
                               0x00007f96dd2488b1: data16 xchg %ax,%ax
                               0x00007f96dd2488b4: nopl   0x0(%rax,%rax,1)
                               0x00007f96dd2488bc: data16 data16 xchg %ax,%ax
                             [Verified Entry Point]
  0.22%    0.29%               0x00007f96dd2488c0: mov    %eax,-0x14000(%rsp)
  0.36%    0.35%               0x00007f96dd2488c7: push   %rbp
  0.20%    0.19%               0x00007f96dd2488c8: sub    $0x60,%rsp         ;*synchronization entry
                                                                             ; - com.google.re2j.Machine::step@-1 (line 280)
  0.47%    0.60%               0x00007f96dd2488cc: mov    %edi,(%rsp)
  0.01%    0.01%               0x00007f96dd2488cf: vmovd  %r9d,%xmm2
  0.16%    0.21%               0x00007f96dd2488d4: vmovd  %r8d,%xmm1
  0.06%    0.06%               0x00007f96dd2488d9: vmovq  %rcx,%xmm0
  0.42%    0.51%               0x00007f96dd2488de: mov    %rsi,%r13
  0.01%    0.00%               0x00007f96dd2488e1: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                             ; - com.google.re2j.Machine::step@1 (line 280)
  0.24%    0.16%               0x00007f96dd2488e5: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                             ; - com.google.re2j.Machine::step@4 (line 280)
                                                                             ; implicit exception: dispatches to 0x00007f96dd2490b9
  0.03%    0.04%               0x00007f96dd2488eb: mov    %rdx,%rax
  0.43%    0.30%               0x00007f96dd2488ee: mov    0xc(%rdx),%r9d     ;*getfield size
                                                                             ; - com.google.re2j.Machine::step@10 (line 281)
                                                                             ; implicit exception: dispatches to 0x00007f96dd2490c9
  0.02%    0.00%               0x00007f96dd2488f2: test   %r9d,%r9d
                  ╭            0x00007f96dd2488f5: jle    0x00007f96dd2489de  ;*if_icmpge
                  │                                                          ; - com.google.re2j.Machine::step@22 (line 282)
  0.16%    0.14%  │            0x00007f96dd2488fb: movzbl 0x11(%rsi),%r11d
  0.04%    0.06%  │            0x00007f96dd248900: test   %r11d,%r11d
                  │            0x00007f96dd248903: jne    0x00007f96dd248d4d  ;*aload_0
                  │                                                          ; - com.google.re2j.Machine::step@25 (line 285)
  0.35%    0.41%  │            0x00007f96dd248909: mov    0x20(%rdx),%r11d   ;*getfield denseThreadsInstructions
                  │                                                          ; - com.google.re2j.Machine::step@82 (line 295)
  0.02%    0.02%  │            0x00007f96dd24890d: mov    0xc(%r12,%r11,8),%r10d  ;*aaload
                  │                                                          ; - com.google.re2j.Machine::step@87 (line 295)
                  │                                                          ; implicit exception: dispatches to 0x00007f96dd248d4d
  0.17%    0.16%  │            0x00007f96dd248912: test   %r10d,%r10d
                  │            0x00007f96dd248915: jbe    0x00007f96dd248d4d
  0.07%    0.04%  │            0x00007f96dd24891b: mov    %r9d,%ecx
  0.37%    0.35%  │            0x00007f96dd24891e: dec    %ecx
  0.01%           │            0x00007f96dd248920: cmp    %r10d,%ecx
                  │            0x00007f96dd248923: jae    0x00007f96dd248d4d
  0.23%    0.28%  │            0x00007f96dd248929: lea    (%r12,%r11,8),%rbx
  0.04%    0.05%  │            0x00007f96dd24892d: xor    %r11d,%r11d
  0.45%    0.29%  │╭           0x00007f96dd248930: jmp    0x00007f96dd248943
  0.78%    1.06%  ││    ↗      0x00007f96dd248932: vmovq  %r10,%xmm0
  0.50%    0.60%  ││    │      0x00007f96dd248937: mov    %r8d,0x78(%rsp)
  0.38%    0.50%  ││    │      0x00007f96dd24893c: mov    %edi,0x80(%rsp)    ;*aload_0
                  ││    │                                                    ; - com.google.re2j.Machine::step@25 (line 285)
  1.10%    1.32%  │↘    │      0x00007f96dd248943: mov    0x10(%rbx,%r11,4),%r10d  ;*aaload
                  │     │                                                    ; - com.google.re2j.Machine::step@87 (line 295)
  1.01%    1.09%  │     │      0x00007f96dd248948: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f96dd2490a9
  1.17%    1.27%  │     │      0x00007f96dd24894d: cmp    $0x6,%r8d
                  │ ╭   │      0x00007f96dd248951: je     0x00007f96dd248ad9  ;*if_icmpne
                  │ │   │                                                    ; - com.google.re2j.Machine::step@97 (line 297)
  1.55%    1.61%  │ │   │      0x00007f96dd248957: mov    0x8(%r12,%r10,8),%ecx
  1.08%    1.14%  │ │   │      0x00007f96dd24895c: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │      0x00007f96dd248962: jne    0x00007f96dd248bcd
  0.87%    1.22%  │ │   │      0x00007f96dd248968: shl    $0x3,%r10          ;*invokevirtual matchRune
                  │ │   │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.44%    0.42%  │ │   │      0x00007f96dd24896c: mov    0xc(%r10),%ebp     ;*getfield op
                  │ │   │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │ │   │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.94%    1.13%  │ │   │      0x00007f96dd248970: cmp    $0xa,%ebp
                  │ │╭  │      0x00007f96dd248973: je     0x00007f96dd248a0b  ;*if_icmpne
                  │ ││  │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ ││  │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.53%    1.53%  │ ││  │      0x00007f96dd248979: cmp    $0xb,%ebp
                  │ ││  │      0x00007f96dd24897c: je     0x00007f96dd248c4d  ;*if_icmpne
                  │ ││  │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ ││  │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.79%    0.99%  │ ││  │      0x00007f96dd248982: cmp    $0x9,%ebp
                  │ ││  │      0x00007f96dd248985: je     0x00007f96dd248c8d  ;*if_icmpne
                  │ ││  │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ ││  │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.11%    1.13%  │ ││  │      0x00007f96dd24898b: cmp    $0xc,%ebp
                  │ ││  │      0x00007f96dd24898e: jne    0x00007f96dd248c0d  ;*if_icmpne
                  │ ││  │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ ││  │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.15%    1.24%  │ ││  │      0x00007f96dd248994: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ ││  │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ ││  │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.89%    1.02%  │ ││  │      0x00007f96dd248998: cmp    (%rsp),%ecx
                  │ ││╭ │      0x00007f96dd24899b: je     0x00007f96dd248a0b  ;*if_icmpeq
                  │ │││ │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ │││ │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.16%    1.47%  │ │││ │      0x00007f96dd24899d: mov    0x24(%r10),%r8d    ;*getfield f1
                  │ │││ │                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ │││ │                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.48%    0.64%  │ │││ │      0x00007f96dd2489a1: cmp    (%rsp),%r8d
                  │ │││╭│      0x00007f96dd2489a5: je     0x00007f96dd248a0b  ;*if_icmpeq
                  │ │││││                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ │││││                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.52%    1.70%  │ │││││      0x00007f96dd2489a7: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ │││││                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ │││││                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.99%    1.19%  │ │││││      0x00007f96dd2489ab: cmp    (%rsp),%ebp
                  │ │││││      0x00007f96dd2489ae: je     0x00007f96dd248ccd  ;*if_icmpeq
                  │ │││││                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ │││││                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.10%    1.07%  │ │││││      0x00007f96dd2489b4: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ │││││                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ │││││                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  0.35%    0.36%  │ │││││      0x00007f96dd2489b8: cmp    (%rsp),%ebp
                  │ │││││      0x00007f96dd2489bb: je     0x00007f96dd248d0d  ;*if_icmpne
                  │ │││││                                                    ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ │││││                                                    ; - com.google.re2j.Machine::step@181 (line 312)
  1.44%    1.74%  │ │││││      0x00007f96dd2489c1: vmovq  %xmm0,%r10
  0.99%    0.91%  │ │││││      0x00007f96dd2489c6: mov    0x78(%rsp),%r8d
  0.34%    0.49%  │ │││││      0x00007f96dd2489cb: mov    0x80(%rsp),%edi    ;*aload
                  │ │││││                                                    ; - com.google.re2j.Machine::step@207 (line 315)
  0.43%    0.55%  │ │││││  ↗↗  0x00007f96dd2489d2: inc    %r11d              ;*iinc
                  │ │││││  ││                                                ; - com.google.re2j.Machine::step@218 (line 282)
  1.54%    1.67%  │ │││││  ││  0x00007f96dd2489d5: cmp    %r9d,%r11d
                  │ ││││╰  ││  0x00007f96dd2489d8: jl     0x00007f96dd248932  ;*if_icmpge
                  │ ││││   ││                                                ; - com.google.re2j.Machine::step@22 (line 282)
  0.10%    0.15%  ↘ ││││   ││  0x00007f96dd2489de: movzbl 0x18(%rax),%r10d
  0.05%    0.08%    ││││   ││  0x00007f96dd2489e3: test   %r10d,%r10d
                    ││││ ╭ ││  0x00007f96dd2489e6: jne    0x00007f96dd2489ff  ;*ifeq
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.04%    0.06%    ││││ │ ││  0x00007f96dd2489e8: mov    %r12d,0xc(%rax)    ;*putfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.45%    0.51%    ││││ │ ││  0x00007f96dd2489ec: mov    0x1c(%rax),%ebp    ;*getfield pcs
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.10%    0.22%    ││││ │ ││  0x00007f96dd2489ef: movb   $0x1,0x18(%rax)    ;*putfield empty
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.06%    0.09%    ││││ │ ││  0x00007f96dd2489f3: mov    %r12,0x10(%rax)    ;*putfield pcsl
                    ││││ │ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
  0.03%    0.04%    ││││ │ ││  0x00007f96dd2489f7: test   %ebp,%ebp
                    ││││ │ ││  0x00007f96dd2489f9: jne    0x00007f96dd248d81  ;*getfield size
                    ││││ │ ││                                                ; - com.google.re2j.Machine::step@10 (line 281)
  0.38%    0.56%    ││││ ↘ ││  0x00007f96dd2489ff: add    $0x60,%rsp
  0.10%    0.07%    ││││   ││  0x00007f96dd248a03: pop    %rbp
  0.10%    0.07%    ││││   ││  0x00007f96dd248a04: test   %eax,0x186865f6(%rip)        # 0x00007f96f58cf000
                    ││││   ││                                                ;   {poll_return}
  0.03%    0.02%    ││││   ││  0x00007f96dd248a0a: retq   
  0.37%    0.42%    │↘↘↘   ││  0x00007f96dd248a0b: mov    0x1c(%r10),%ecx    ;*getfield outInst
                    │      ││                                                ; - com.google.re2j.Machine::step@189 (line 313)
  0.20%    0.23%    │      ││  0x00007f96dd248a0f: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f96dd2490d9
  0.36%    0.35%    │      ││  0x00007f96dd248a14: lea    (%r12,%rcx,8),%r8
  0.01%    0.00%    │      ││  0x00007f96dd248a18: xor    %esi,%esi
  0.01%    0.01%    │      ││  0x00007f96dd248a1a: movabs $0x7f96ee2d7000,%rdi
  0.01%    0.01%    │      ││  0x00007f96dd248a24: mov    $0x1,%edx
  0.13%    0.07%    │      ││  0x00007f96dd248a29: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     ╭││  0x00007f96dd248a30: jne    0x00007f96dd248b07  ;*invokevirtual add
                    │     │││                                                ; - com.google.re2j.Machine::step@202 (line 313)
  0.00%    0.01%    │     │││  0x00007f96dd248a36: mov    0x18(%r8),%ecx     ;*getfield pc
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%    │     │││  0x00007f96dd248a3a: vmovq  %xmm0,%r10
           0.00%    │     │││  0x00007f96dd248a3f: mov    0x10(%r10),%rbp    ;*getfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                    │     │││                                                ; implicit exception: dispatches to 0x00007f96dd2490f9
  0.14%    0.06%    │     │││  0x00007f96dd248a43: cmp    $0x40,%ecx
                    │     │││  0x00007f96dd248a46: jg     0x00007f96dd248e1d  ;*if_icmpgt
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%    │     │││  0x00007f96dd248a4c: vmovd  %r11d,%xmm0
  0.03%    0.02%    │     │││  0x00007f96dd248a51: shl    %cl,%rdx           ;*lshl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.18%    │     │││  0x00007f96dd248a54: mov    %rbp,%r11
  0.01%    0.02%    │     │││  0x00007f96dd248a57: and    %rdx,%r11          ;*land
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%    │     │││  0x00007f96dd248a5a: test   %r11,%r11
                    │     │││  0x00007f96dd248a5d: jne    0x00007f96dd248e65  ;*ifeq
                    │     │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.12%    │     │││  0x00007f96dd248a63: cmp    $0x40,%ecx
                    │     │││  0x00007f96dd248a66: jge    0x00007f96dd248eb9  ;*if_icmpge
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%    │     │││  0x00007f96dd248a6c: mov    %r12b,0x18(%r10)   ;*putfield empty
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%    │     │││  0x00007f96dd248a70: mov    0x20(%r10),%r11d   ;*getfield denseThreadsInstructions
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%             │     │││  0x00007f96dd248a74: or     %rbp,%rdx
  0.09%    0.11%    │     │││  0x00007f96dd248a77: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                    │     │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%    │     │││  0x00007f96dd248a7b: mov    0xc(%r10),%ebp     ;*getfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%    │     │││  0x00007f96dd248a7f: mov    %ebp,%esi
                    │     │││  0x00007f96dd248a81: inc    %esi
  0.09%    0.08%    │     │││  0x00007f96dd248a83: mov    %esi,0xc(%r10)     ;*putfield size
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%    │     │││  0x00007f96dd248a87: mov    0xc(%r12,%r11,8),%esi  ; implicit exception: dispatches to 0x00007f96dd24910d
  0.04%    0.01%    │     │││  0x00007f96dd248a8c: cmp    %esi,%ebp
                    │     │││  0x00007f96dd248a8e: jae    0x00007f96dd248d95
  0.05%             │     │││  0x00007f96dd248a94: mov    0x8(%r12,%r11,8),%esi
  0.07%    0.05%    │     │││  0x00007f96dd248a99: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    │     │││  0x00007f96dd248a9f: jne    0x00007f96dd248dd9  ;*aastore
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%    │     │││  0x00007f96dd248aa5: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                    │     │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%    │     │││  0x00007f96dd248aa9: lea    0x10(%r11,%rbp,4),%rcx
  0.00%    0.01%    │     │││  0x00007f96dd248aae: mov    %r8,%r11
  0.09%    0.05%    │     │││  0x00007f96dd248ab1: shr    $0x3,%r11
  0.02%    0.02%    │     │││  0x00007f96dd248ab5: mov    %r11d,(%rcx)
  0.20%    0.03%    │     │││  0x00007f96dd248ab8: mov    %rcx,%r11
  0.00%    0.01%    │     │││  0x00007f96dd248abb: shr    $0x9,%r11
  0.08%    0.06%    │     │││  0x00007f96dd248abf: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                    │     │││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.06%    │     │││  0x00007f96dd248ac3: mov    0x78(%rsp),%r8d
  0.02%    0.00%    │     │││  0x00007f96dd248ac8: mov    0x80(%rsp),%edi
  0.00%    0.00%    │     │││  0x00007f96dd248acf: vmovd  %xmm0,%r11d
  0.07%    0.04%    │     │╰│  0x00007f96dd248ad4: jmpq   0x00007f96dd2489d2
           0.00%    ↘     │ │  0x00007f96dd248ad9: mov    0x78(%rsp),%r8d
                          │ │  0x00007f96dd248ade: cmp    $0x2,%r8d
                          │ │  0x00007f96dd248ae2: je     0x00007f96dd248ba0  ;*if_icmpne
                          │ │                                                ; - com.google.re2j.Machine::step@103 (line 300)
                          │ │  0x00007f96dd248ae8: mov    0x80(%rsp),%edi    ;*aload_0
                          │ │                                                ; - com.google.re2j.Machine::step@159 (line 305)
                          │ │  0x00007f96dd248aef: movb   $0x1,0x10(%r13)    ;*putfield matched
                          │ │                                                ; - com.google.re2j.Machine::step@161 (line 305)
  0.00%                   │ │  0x00007f96dd248af4: test   %r14d,%r14d
                          │ │  0x00007f96dd248af7: je     0x00007f96dd248bb9  ;*ifne
                          │ │                                                ; - com.google.re2j.Machine::step@166 (line 306)
                          │ │  0x00007f96dd248afd: vmovq  %xmm0,%r10
                          │ ╰  0x00007f96dd248b02: jmpq   0x00007f96dd2489d2
                          ↘    0x00007f96dd248b07: cmp    $0xf801990d,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                               0x00007f96dd248b0e: jne    0x00007f96dd248f45  ;*invokevirtual add
                                                                             ; - com.google.re2j.Machine::step@202 (line 313)
                               0x00007f96dd248b14: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                             ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
....................................................................................................
 34.47%   37.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 548 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f96dd24a200: mov    0x8(%rsi),%r10d
                     0x00007f96dd24a204: shl    $0x3,%r10
                     0x00007f96dd24a208: cmp    %r10,%rax
                     0x00007f96dd24a20b: jne    0x00007f96dd045e20  ;   {runtime_call}
                     0x00007f96dd24a211: data16 xchg %ax,%ax
                     0x00007f96dd24a214: nopl   0x0(%rax,%rax,1)
                     0x00007f96dd24a21c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.03%    0.00%     0x00007f96dd24a220: mov    %eax,-0x14000(%rsp)
  0.56%    0.56%     0x00007f96dd24a227: push   %rbp
  0.03%    0.02%     0x00007f96dd24a228: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.58%    0.65%     0x00007f96dd24a22c: vmovq  %r8,%xmm6
           0.00%     0x00007f96dd24a231: vmovq  %rsi,%xmm4
  0.03%    0.02%     0x00007f96dd24a236: vmovd  %ecx,%xmm0
  0.00%    0.01%     0x00007f96dd24a23a: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.61%    0.36%     0x00007f96dd24a23d: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007f96dd24abb1
                     0x00007f96dd24a241: cmp    $0x40,%ecx
                     0x00007f96dd24a244: jg     0x00007f96dd24a71d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.02%    0.03%     0x00007f96dd24a24a: mov    $0x1,%eax
  0.01%              0x00007f96dd24a24f: mov    $0x1,%r8d
  0.59%    0.45%     0x00007f96dd24a255: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.06%    0.02%     0x00007f96dd24a258: mov    %r11,%r10
  0.70%    0.61%     0x00007f96dd24a25b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.00%              0x00007f96dd24a25e: xor    %r13d,%r13d
  0.02%    0.01%     0x00007f96dd24a261: test   %r10,%r10
                     0x00007f96dd24a264: jne    0x00007f96dd24a751  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.00%     0x00007f96dd24a26a: cmp    $0x40,%ecx
                     0x00007f96dd24a26d: jge    0x00007f96dd24a795  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.62%    0.65%     0x00007f96dd24a273: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                     0x00007f96dd24a277: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.02%    0.02%     0x00007f96dd24a27a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.01%     0x00007f96dd24a27d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.58%    0.58%     0x00007f96dd24a281: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f96dd24abc5
                     0x00007f96dd24a286: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f96dd24a28d: jne    0x00007f96dd24a5f1
  0.03%    0.03%     0x00007f96dd24a293: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%     0x00007f96dd24a297: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.69%    0.60%     0x00007f96dd24a29b: cmp    $0x40,%ecx
                     0x00007f96dd24a29e: jg     0x00007f96dd24a7c9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.01%     0x00007f96dd24a2a4: mov    $0x1,%r11d
  0.01%    0.03%     0x00007f96dd24a2aa: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.67%    0.64%     0x00007f96dd24a2ad: mov    %r8,%rbx
  0.05%    0.03%     0x00007f96dd24a2b0: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.03%     0x00007f96dd24a2b3: test   %rbx,%rbx
                     0x00007f96dd24a2b6: jne    0x00007f96dd24a809  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.71%    1.04%     0x00007f96dd24a2bc: cmp    $0x40,%ecx
                     0x00007f96dd24a2bf: jge    0x00007f96dd24a851  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                     0x00007f96dd24a2c5: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.05%     0x00007f96dd24a2c8: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%     0x00007f96dd24a2cc: mov    0x70(%rsp),%r11
  0.49%    0.59%     0x00007f96dd24a2d1: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f96dd24abed
  0.01%              0x00007f96dd24a2d6: test   %ebp,%ebp
                     0x00007f96dd24a2d8: jne    0x00007f96dd24a891  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.03%     0x00007f96dd24a2de: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.02%     0x00007f96dd24a2e1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.65%    1.00%     0x00007f96dd24a2e4: mov    %ecx,%esi
                     0x00007f96dd24a2e6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.04%     0x00007f96dd24a2e8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.02%     0x00007f96dd24a2eb: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f96dd24abfd
  0.64%    0.91%     0x00007f96dd24a2f0: cmp    %edi,%ecx
                  ╭  0x00007f96dd24a2f2: jae    0x00007f96dd24a575
           0.00%  │  0x00007f96dd24a2f8: vmovd  %esi,%xmm1
  0.02%    0.01%  │  0x00007f96dd24a2fc: vmovd  %ebx,%xmm2
  0.01%    0.01%  │  0x00007f96dd24a300: mov    %ecx,0x18(%rsp)
  0.66%    0.71%  │  0x00007f96dd24a304: mov    %r10,%rcx
           0.01%  │  0x00007f96dd24a307: mov    0x70(%rsp),%r14
  0.02%    0.03%  │  0x00007f96dd24a30c: mov    0x8(%r12,%rbx,8),%r11d
  0.00%           │  0x00007f96dd24a311: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f96dd24a318: jne    0x00007f96dd24a621  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.68%    0.59%  │  0x00007f96dd24a31e: vmovq  %xmm4,%r10
           0.00%  │  0x00007f96dd24a323: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.02%    0.02%  │  0x00007f96dd24a327: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.01%  │  0x00007f96dd24a32b: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.71%    0.51%  │  0x00007f96dd24a32f: mov    0x18(%rsp),%r10d
  0.17%    0.04%  │  0x00007f96dd24a334: lea    0x10(%r11,%r10,4),%r10
  0.03%    0.02%  │  0x00007f96dd24a339: mov    %ecx,(%r10)
  0.17%    0.13%  │  0x00007f96dd24a33c: shr    $0x9,%r10
  0.64%    0.54%  │  0x00007f96dd24a340: movabs $0x7f96ee2d7000,%rbx
                  │  0x00007f96dd24a34a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.12%  │  0x00007f96dd24a34e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f96dd24ac15
  0.03%    0.01%  │  0x00007f96dd24a353: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f96dd24a35a: jne    0x00007f96dd24a659
  0.47%    0.49%  │  0x00007f96dd24a360: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │  0x00007f96dd24a364: vmovq  %r10,%xmm3
  0.05%    0.06%  │  0x00007f96dd24a369: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.01%  │  0x00007f96dd24a36d: vmovd  %ecx,%xmm5
  0.49%    0.33%  │  0x00007f96dd24a371: cmp    $0x40,%ecx
                  │  0x00007f96dd24a374: jg     0x00007f96dd24a8cd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │  0x00007f96dd24a37a: mov    $0x1,%r10d
  0.12%    0.06%  │  0x00007f96dd24a380: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.59%    0.58%  │  0x00007f96dd24a383: mov    %r8,%rcx
  0.09%    0.06%  │  0x00007f96dd24a386: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.02%  │  0x00007f96dd24a389: test   %rcx,%rcx
                  │  0x00007f96dd24a38c: jne    0x00007f96dd24a909  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.57%    0.64%  │  0x00007f96dd24a392: vmovd  %xmm5,%ecx
  0.00%           │  0x00007f96dd24a396: cmp    $0x40,%ecx
                  │  0x00007f96dd24a399: jge    0x00007f96dd24a951  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.07%  │  0x00007f96dd24a39f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.03%  │  0x00007f96dd24a3a2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.57%    0.30%  │  0x00007f96dd24a3a6: mov    0x18(%rsp),%ecx
                  │  0x00007f96dd24a3aa: add    $0x2,%ecx
  0.08%    0.06%  │  0x00007f96dd24a3ad: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.04%  │  0x00007f96dd24a3b0: mov    0x18(%rsp),%r10d
  0.50%    0.57%  │  0x00007f96dd24a3b5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%           │  0x00007f96dd24a3b9: cmp    %edi,%r10d
                  │  0x00007f96dd24a3bc: jae    0x00007f96dd24a5b1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.10%  │  0x00007f96dd24a3c2: vmovd  %r9d,%xmm7
  0.02%    0.04%  │  0x00007f96dd24a3c7: vmovq  %xmm4,%r9
  0.52%    0.62%  │  0x00007f96dd24a3cc: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.00%           │  0x00007f96dd24a3d0: vmovq  %xmm3,%r9
  0.08%    0.08%  │  0x00007f96dd24a3d5: mov    %r9,%rcx
  0.04%    0.01%  │  0x00007f96dd24a3d8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.52%    0.67%  │  0x00007f96dd24a3dc: movslq 0x18(%rsp),%r9
                  │  0x00007f96dd24a3e1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.08%    0.09%  │  0x00007f96dd24a3e5: mov    %r9,%rdi
  0.02%    0.03%  │  0x00007f96dd24a3e8: add    $0x14,%rdi
  0.56%    0.45%  │  0x00007f96dd24a3ec: mov    %ecx,(%rdi)
  0.00%    0.00%  │  0x00007f96dd24a3ee: mov    %rdi,%rcx
  0.07%    0.04%  │  0x00007f96dd24a3f1: shr    $0x9,%rcx
  0.03%           │  0x00007f96dd24a3f5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.45%    0.47%  │  0x00007f96dd24a3f9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f96dd24ac3d
  0.00%           │  0x00007f96dd24a3fe: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f96dd24a404: jne    0x00007f96dd24a689
  0.05%    0.10%  │  0x00007f96dd24a40a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.01%  │  0x00007f96dd24a40e: vmovq  %rcx,%xmm1
  0.48%    0.77%  │  0x00007f96dd24a413: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.00%           │  0x00007f96dd24a416: vmovd  %ecx,%xmm2
  0.04%    0.05%  │  0x00007f96dd24a41a: cmp    $0x40,%ecx
                  │  0x00007f96dd24a41d: jg     0x00007f96dd24a991  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.03%  │  0x00007f96dd24a423: mov    $0x1,%edi
  0.51%    0.67%  │  0x00007f96dd24a428: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.09%  │  0x00007f96dd24a42b: mov    %r8,%rcx
  0.50%    0.61%  │  0x00007f96dd24a42e: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.00%           │  0x00007f96dd24a431: test   %rcx,%rcx
                  │  0x00007f96dd24a434: jne    0x00007f96dd24a9d1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.06%  │  0x00007f96dd24a43a: vmovd  %xmm2,%ecx
  0.01%    0.00%  │  0x00007f96dd24a43e: cmp    $0x40,%ecx
                  │  0x00007f96dd24a441: jge    0x00007f96dd24aa1d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.51%    0.69%  │  0x00007f96dd24a447: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
           0.00%  │  0x00007f96dd24a44a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.08%    0.03%  │  0x00007f96dd24a44e: vmovq  %xmm4,%rcx
  0.01%    0.01%  │  0x00007f96dd24a453: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.51%    0.60%  │  0x00007f96dd24a456: mov    %r9,%rdi
           0.00%  │  0x00007f96dd24a459: add    $0x18,%rdi
  0.07%    0.07%  │  0x00007f96dd24a45d: vmovq  %xmm1,%rsi
  0.02%    0.01%  │  0x00007f96dd24a462: mov    %rsi,%rcx
  0.62%    0.69%  │  0x00007f96dd24a465: shr    $0x3,%rcx
           0.00%  │  0x00007f96dd24a469: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.10%    0.02%  │  0x00007f96dd24a46b: mov    0x18(%rsp),%ecx
  0.01%    0.02%  │  0x00007f96dd24a46f: add    $0x3,%ecx
  0.50%    0.61%  │  0x00007f96dd24a472: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │  0x00007f96dd24a475: shr    $0x9,%rdi
  0.09%    0.06%  │  0x00007f96dd24a479: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.03%  │  0x00007f96dd24a47d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f96dd24ac65
  0.48%    0.43%  │  0x00007f96dd24a482: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f96dd24a488: jne    0x00007f96dd24a6bd
  0.00%           │  0x00007f96dd24a48e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.08%    0.09%  │  0x00007f96dd24a492: vmovq  %rcx,%xmm1
  0.01%    0.04%  │  0x00007f96dd24a497: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.54%    0.69%  │  0x00007f96dd24a49a: vmovd  %ecx,%xmm3
  0.00%           │  0x00007f96dd24a49e: cmp    $0x40,%ecx
                  │  0x00007f96dd24a4a1: jg     0x00007f96dd24aa5d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.07%  │  0x00007f96dd24a4a7: mov    $0x1,%edi
  0.00%    0.04%  │  0x00007f96dd24a4ac: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.73%    0.55%  │  0x00007f96dd24a4af: mov    %r8,%rcx
  0.01%    0.01%  │  0x00007f96dd24a4b2: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.55%    0.44%  │  0x00007f96dd24a4b5: test   %rcx,%rcx
                  │  0x00007f96dd24a4b8: jne    0x00007f96dd24aa9d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
           0.01%  │  0x00007f96dd24a4be: vmovd  %xmm3,%ecx
  0.07%    0.07%  │  0x00007f96dd24a4c2: cmp    $0x40,%ecx
                  │  0x00007f96dd24a4c5: jge    0x00007f96dd24aae9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.02%  │  0x00007f96dd24a4cb: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.51%    0.86%  │  0x00007f96dd24a4cf: vmovq  %xmm4,%r10
                  │  0x00007f96dd24a4d4: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.09%    0.12%  │  0x00007f96dd24a4d8: mov    %r9,%rcx
  0.01%    0.01%  │  0x00007f96dd24a4db: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.59%    0.49%  │  0x00007f96dd24a4df: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
                  │  0x00007f96dd24a4e2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.08%    0.06%  │  0x00007f96dd24a4e6: vmovq  %xmm1,%r10
  0.03%    0.01%  │  0x00007f96dd24a4eb: shr    $0x3,%r10
  0.51%    0.61%  │  0x00007f96dd24a4ef: mov    %r10d,(%rcx)
  0.00%    0.00%  │  0x00007f96dd24a4f2: mov    %rcx,%r10
  0.09%    0.11%  │  0x00007f96dd24a4f5: shr    $0x9,%r10
  0.02%    0.02%  │  0x00007f96dd24a4f9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.58%    0.46%  │  0x00007f96dd24a4fd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f96dd24ac8d
                  │  0x00007f96dd24a502: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f96dd24a509: jne    0x00007f96dd24a6f1
  0.08%    0.07%  │  0x00007f96dd24a50f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.02%  │  0x00007f96dd24a513: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.62%    0.49%  │  0x00007f96dd24a516: cmp    $0x40,%ecx
                  │  0x00007f96dd24a519: jg     0x00007f96dd24ab29  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
                  │  0x00007f96dd24a51f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.56%    0.66%  │  0x00007f96dd24a522: mov    %r8,%r10
  0.00%           │  0x00007f96dd24a525: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.06%  │  0x00007f96dd24a528: test   %r10,%r10
                  │  0x00007f96dd24a52b: jne    0x00007f96dd24ab51  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.03%  │  0x00007f96dd24a531: cmp    $0x40,%ecx
                  │  0x00007f96dd24a534: jge    0x00007f96dd24ab89  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.50%    0.70%  │  0x00007f96dd24a53a: or     %rax,%r8
                  │  0x00007f96dd24a53d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.07%  │  0x00007f96dd24a541: add    $0x20,%r9
  0.02%    0.02%  │  0x00007f96dd24a545: mov    %rdi,%r10
  0.57%    0.78%  │  0x00007f96dd24a548: shr    $0x3,%r10
                  │  0x00007f96dd24a54c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.05%  │  0x00007f96dd24a54f: mov    %r9,%r10
  0.03%    0.01%  │  0x00007f96dd24a552: mov    0x18(%rsp),%r11d
  0.59%    0.28%  │  0x00007f96dd24a557: add    $0x5,%r11d
                  │  0x00007f96dd24a55b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.07%  │  0x00007f96dd24a55f: shr    $0x9,%r10
  0.03%    0.04%  │  0x00007f96dd24a563: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.56%    0.68%  │  0x00007f96dd24a567: xor    %eax,%eax
           0.01%  │  0x00007f96dd24a569: add    $0x60,%rsp
  0.06%    0.15%  │  0x00007f96dd24a56d: pop    %rbp
  0.01%    0.03%  │  0x00007f96dd24a56e: test   %eax,0x18684a8c(%rip)        # 0x00007f96f58cf000
                  │                                                ;   {poll_return}
  0.51%    0.63%  │  0x00007f96dd24a574: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007f96dd24a575: mov    $0xffffffe4,%esi
                     0x00007f96dd24a57a: vmovq  %xmm4,%rbp
                     0x00007f96dd24a57f: mov    %rdx,0x70(%rsp)
                     0x00007f96dd24a584: vmovss %xmm0,(%rsp)
                     0x00007f96dd24a589: vmovsd %xmm6,0x8(%rsp)
                     0x00007f96dd24a58f: mov    %r9d,0x4(%rsp)
....................................................................................................
 32.02%   33.34%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 578 (882 bytes) 

                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                                    0x00007f96dd25ffd6: mov    %ebx,%r10d
                                    0x00007f96dd25ffd9: add    $0xffffff9f,%r10d
                                    0x00007f96dd25ffdd: cmp    $0x1a,%r10d
                                    0x00007f96dd25ffe1: jae    0x00007f96dd260429  ;*iconst_1
                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                    0x00007f96dd25ffe7: or     $0x10,%r9d         ;*iload_2
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                             0x00007f96dd25ffeb: mov    %r11d,0x30(%rsp)
  0.01%    0.01%                    0x00007f96dd25fff0: mov    %ecx,0x2c(%rsp)
                                    0x00007f96dd25fff4: movzbl 0x11(%r13),%edi    ;*getfield captures
                                                                                  ; - com.google.re2j.Machine::match@283 (line 240)
           0.01%                    0x00007f96dd25fff9: mov    0x44(%rsp),%r11d
           0.00%                    0x00007f96dd25fffe: and    $0x4,%r11d         ;*iand
                                                                                  ; - com.google.re2j.Machine::match@147 (line 212)
           0.00%                    0x00007f96dd260002: mov    %r11d,0x14(%rsp)
                                    0x00007f96dd260007: mov    %rax,%r10
  0.01%    0.01%                    0x00007f96dd26000a: shl    $0x3,%r10          ;*getfield q1
                                                                                  ; - com.google.re2j.Machine::match@53 (line 192)
                                    0x00007f96dd26000e: mov    %r10,0x58(%rsp)
           0.00%                    0x00007f96dd260013: mov    %ebx,0x34(%rsp)
                                    0x00007f96dd260017: xor    %eax,%eax
  0.00%                             0x00007f96dd260019: xor    %r10d,%r10d
                                    0x00007f96dd26001c: mov    %r10d,0x1c(%rsp)
                  ╭                 0x00007f96dd260021: jmpq   0x00007f96dd2601cd
  0.00%    0.00%  │       ↗         0x00007f96dd260026: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                  │       │                                                       ; - com.google.re2j.Machine::match@322 (line 245)
                  │╭      │         0x00007f96dd26002a: jmpq   0x00007f96dd2602be
                  ││     ↗│         0x00007f96dd26002f: mov    $0x5,%r11d
                  ││╭    ││         0x00007f96dd260035: jmpq   0x00007f96dd2602a7
                  │││    ││         0x00007f96dd26003a: nopw   0x0(%rax,%rax,1)
  0.41%    0.26%  │││    ││  ↗      0x00007f96dd260040: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │││    ││  │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%  │││    ││  │      0x00007f96dd260044: mov    %r11d,0x3c(%rsp)   ;*iload_2
                  │││    ││  │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││    ││  │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.25%    0.24%  │││    ││  │↗     0x00007f96dd260049: mov    0x48(%rsp),%r11
  0.03%    0.03%  │││    ││  ││     0x00007f96dd26004e: mov    0x10(%r11),%r10d   ;*getfield end
                  │││    ││  ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │││    ││  ││                                                   ; - com.google.re2j.Machine::match@344 (line 246)
  0.56%    0.67%  │││    ││  ││     0x00007f96dd260052: mov    0x1c(%rsp),%ecx
  0.02%    0.02%  │││    ││  ││     0x00007f96dd260056: cmp    %r10d,%ecx
                  │││╭   ││  ││     0x00007f96dd260059: je     0x00007f96dd260341  ;*if_icmpne
                  ││││   ││  ││                                                   ; - com.google.re2j.Machine::match@347 (line 246)
  0.31%    0.26%  ││││   ││  ││     0x00007f96dd26005f: xor    %r10d,%r10d        ;*invokespecial step
                  ││││   ││  ││                                                   ; - com.google.re2j.Machine::match@355 (line 246)
  0.00%    0.04%  ││││   ││  ││  ↗  0x00007f96dd260062: mov    0x1c(%rsp),%ebp
  0.38%    0.31%  ││││   ││  ││  │  0x00007f96dd260066: add    0x28(%rsp),%ecx    ;*iadd
                  ││││   ││  ││  │                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.01%    0.01%  ││││   ││  ││  │  0x00007f96dd26006a: mov    %ecx,0x1c(%rsp)
  0.26%    0.21%  ││││   ││  ││  │  0x00007f96dd26006e: mov    0x50(%rsp),%rsi
  0.02%    0.03%  ││││   ││  ││  │  0x00007f96dd260073: mov    0x20(%rsp),%rdx
  0.43%    0.38%  ││││   ││  ││  │  0x00007f96dd260078: mov    0x58(%rsp),%rcx
  0.02%    0.01%  ││││   ││  ││  │  0x00007f96dd26007d: mov    %ebp,%r8d
  0.23%    0.22%  ││││   ││  ││  │  0x00007f96dd260080: mov    0x1c(%rsp),%r9d
  0.08%    0.06%  ││││   ││  ││  │  0x00007f96dd260085: mov    0x34(%rsp),%edi
  0.35%    0.41%  ││││   ││  ││  │  0x00007f96dd260089: mov    0x3c(%rsp),%ebx
  0.00%    0.01%  ││││   ││  ││  │  0x00007f96dd26008d: mov    %ebx,(%rsp)
  0.21%    0.19%  ││││   ││  ││  │  0x00007f96dd260090: mov    0x38(%rsp),%r11d
  0.06%    0.03%  ││││   ││  ││  │  0x00007f96dd260095: mov    %r11d,0x8(%rsp)
  0.37%    0.47%  ││││   ││  ││  │  0x00007f96dd26009a: mov    %r10d,0x10(%rsp)
  0.01%    0.00%  ││││   ││  ││  │  0x00007f96dd26009f: callq  0x00007f96dd046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=676}
                  ││││   ││  ││  │                                                ;*invokespecial step
                  ││││   ││  ││  │                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  ││││   ││  ││  │                                                ;   {optimized virtual_call}
  0.42%    0.55%  ││││   ││  ││  │  0x00007f96dd2600a4: mov    0x50(%rsp),%r8
  0.23%    0.14%  ││││   ││  ││  │  0x00007f96dd2600a9: movzbl 0x10(%r8),%eax     ;*getfield matched
                  ││││   ││  ││  │                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.05%    0.03%  ││││   ││  ││  │  0x00007f96dd2600ae: movzbl 0x11(%r8),%edi     ;*getfield captures
                  ││││   ││  ││  │                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.36%    0.68%  ││││   ││  ││  │  0x00007f96dd2600b3: mov    0x28(%rsp),%r10d
  0.16%    0.11%  ││││   ││  ││  │  0x00007f96dd2600b8: test   %r10d,%r10d
                  ││││╭  ││  ││  │  0x00007f96dd2600bb: je     0x00007f96dd26034c  ;*ifne
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@360 (line 247)
  0.04%    0.10%  │││││  ││  ││  │  0x00007f96dd2600c1: test   %edi,%edi
                  │││││  ││  ││  │  0x00007f96dd2600c3: jne    0x00007f96dd260611  ;*ifne
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.05%    0.04%  │││││  ││  ││  │  0x00007f96dd2600c9: test   %eax,%eax
                  │││││  ││  ││  │  0x00007f96dd2600cb: jne    0x00007f96dd26072d  ;*ifeq
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.50%    0.60%  │││││  ││  ││  │  0x00007f96dd2600d1: mov    0x2c(%rsp),%r9d
  0.10%    0.12%  │││││  ││  ││  │  0x00007f96dd2600d6: cmp    $0xffffffff,%r9d
                  │││││  ││  ││  │  0x00007f96dd2600da: je     0x00007f96dd26038b  ;*if_icmpeq
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.09%    0.02%  │││││  ││  ││  │  0x00007f96dd2600e0: mov    0x48(%rsp),%rdx
  0.03%    0.02%  │││││  ││  ││  │  0x00007f96dd2600e5: mov    0x10(%rdx),%r11d   ;*getfield end
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.59%    0.80%  │││││  ││  ││  │  0x00007f96dd2600e9: mov    0x30(%rsp),%ecx
  0.07%    0.10%  │││││  ││  ││  │  0x00007f96dd2600ed: add    0x1c(%rsp),%ecx
  0.07%    0.06%  │││││  ││  ││  │  0x00007f96dd2600f1: add    0xc(%rdx),%ecx     ;*iadd
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  1.02%    1.23%  │││││  ││  ││  │  0x00007f96dd2600f4: cmp    %r11d,%ecx
                  │││││  ││  ││  │  0x00007f96dd2600f7: jge    0x00007f96dd2603a0  ;*if_icmpge
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.55%    0.32%  │││││  ││  ││  │  0x00007f96dd2600fd: mov    0x14(%rdx),%ebp    ;*getfield str
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.04%  │││││  ││  ││  │  0x00007f96dd260100: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f96dd260ea9
  1.84%    2.17%  │││││  ││  ││  │  0x00007f96dd260105: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││  ││  ││  │  0x00007f96dd26010c: jne    0x00007f96dd260505
  0.57%    0.69%  │││││  ││  ││  │  0x00007f96dd260112: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%  │││││  ││  ││  │  0x00007f96dd260116: test   %ecx,%ecx
                  │││││  ││  ││  │  0x00007f96dd260118: jl     0x00007f96dd260661  ;*iflt
                  │││││  ││  ││  │                                                ; - java.lang.String::charAt@1 (line 657)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.03%  │││││  ││  ││  │  0x00007f96dd26011e: mov    %ecx,%r13d
  0.02%    0.01%  │││││  ││  ││  │  0x00007f96dd260121: mov    %r8,%r9
  0.49%    0.60%  │││││  ││  ││  │  0x00007f96dd260124: mov    0xc(%rbx),%r11d    ;*getfield value
                  │││││  ││  ││  │                                                ; - java.lang.String::charAt@6 (line 657)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%  │││││  ││  ││  │  0x00007f96dd260128: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │││││  ││  ││  │                                                ; - java.lang.String::charAt@9 (line 657)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │││││  ││  ││  │                                                ; implicit exception: dispatches to 0x00007f96dd260ebd
  2.80%    3.08%  │││││  ││  ││  │  0x00007f96dd26012d: cmp    %ebp,%r13d
                  │││││  ││  ││  │  0x00007f96dd260130: jge    0x00007f96dd26077d  ;*if_icmplt
                  │││││  ││  ││  │                                                ; - java.lang.String::charAt@10 (line 657)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.86%    0.78%  │││││  ││  ││  │  0x00007f96dd260136: cmp    %ebp,%r13d
                  │││││  ││  ││  │  0x00007f96dd260139: jae    0x00007f96dd260489
  0.09%    0.13%  │││││  ││  ││  │  0x00007f96dd26013f: lea    (%r12,%r11,8),%r10
                  │││││  ││  ││  │  0x00007f96dd260143: mov    %r13d,%r8d
                  │││││  ││  ││  │  0x00007f96dd260146: movzwl 0x10(%r10,%r8,2),%r11d  ;*caload
                  │││││  ││  ││  │                                                ; - java.lang.String::charAt@27 (line 660)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.62%    0.58%  │││││  ││  ││  │  0x00007f96dd26014c: cmp    $0xd800,%r11d
                  │││││  ││  ││  │  0x00007f96dd260153: jge    0x00007f96dd2607e5  ;*if_icmplt
                  │││││  ││  ││  │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││  ││  ││  │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.21%    0.18%  │││││  ││  ││  │  0x00007f96dd260159: shl    $0x3,%r11d         ;*ishl
                  │││││  ││  ││  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.09%  │││││  ││  ││  │  0x00007f96dd26015d: mov    %r11d,%r10d
  0.00%    0.00%  │││││  ││  ││  │  0x00007f96dd260160: or     $0x1,%r10d
  0.67%    0.64%  │││││  ││  ││  │  0x00007f96dd260164: and    $0x7,%r11d
  0.04%    0.01%  │││││  ││  ││  │  0x00007f96dd260168: sar    $0x3,%r10d         ;*ishr
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.54%    0.42%  │││││  ││  ││  │  0x00007f96dd26016c: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.01%  │││││  ││  ││  │  0x00007f96dd260170: mov    %r9,%r8
  0.05%    0.02%  │││││  ││  ││  │  0x00007f96dd260173: mov    0x2c(%rsp),%r9d    ;*aload
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@425 (line 263)
  0.01%    0.01%  │││││  ││  ││  │  0x00007f96dd260178: mov    %r8,%r13
  0.54%    0.36%  │││││  ││  ││  │  0x00007f96dd26017b: mov    %rdx,0x48(%rsp)
  0.01%    0.01%  │││││  ││  ││  │  0x00007f96dd260180: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rdx=Oop r13=Oop [32]=Oop [72]=Oop [88]=Oop off=901}
                  │││││  ││  ││  │                                                ;*goto
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.04%    0.03%  │││││  ││  ││  │  0x00007f96dd260185: test   %eax,0x1866ee75(%rip)        # 0x00007f96f58cf000
                  │││││  ││  ││  │                                                ;*goto
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  │││││  ││  ││  │                                                ;   {poll}
  0.01%    0.00%  │││││  ││  ││  │  0x00007f96dd26018b: mov    0x28(%r8),%ebx     ;*getfield matchcap
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.55%    0.24%  │││││  ││  ││  │  0x00007f96dd26018f: mov    0x14(%r8),%r9d     ;*getfield re2
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.00%    0.01%  │││││  ││  ││  │  0x00007f96dd260193: vmovd  %r9d,%xmm3
  0.04%    0.04%  │││││  ││  ││  │  0x00007f96dd260198: mov    0x58(%rsp),%r8
  0.04%    0.04%  │││││  ││  ││  │  0x00007f96dd26019d: shr    $0x3,%r8
  0.48%    0.27%  │││││  ││  ││  │  0x00007f96dd2601a1: mov    %r8d,0x18(%rsp)
  0.02%    0.00%  │││││  ││  ││  │  0x00007f96dd2601a6: mov    0x3c(%rsp),%r9d
  0.04%    0.03%  │││││  ││  ││  │  0x00007f96dd2601ab: mov    0x20(%rsp),%r8
  0.01%    0.02%  │││││  ││  ││  │  0x00007f96dd2601b0: mov    %r8,0x58(%rsp)
  0.56%    0.23%  │││││  ││  ││  │  0x00007f96dd2601b5: mov    0x30(%rsp),%r8d
  0.02%           │││││  ││  ││  │  0x00007f96dd2601ba: mov    %r8d,0x28(%rsp)
  0.05%    0.03%  │││││  ││  ││  │  0x00007f96dd2601bf: mov    %r11d,0x30(%rsp)
  0.02%    0.01%  │││││  ││  ││  │  0x00007f96dd2601c4: mov    %r10d,0x2c(%rsp)
  0.60%    0.19%  │││││  ││  ││  │  0x00007f96dd2601c9: vmovd  %ebx,%xmm1         ;*aload
                  │││││  ││  ││  │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.02%    0.00%  ↘││││  ││  ││  │  0x00007f96dd2601cd: mov    0x18(%rsp),%r10d
  0.02%    0.01%   ││││  ││  ││  │  0x00007f96dd2601d2: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f96dd260e52
  0.03%    0.03%   ││││  ││  ││  │  0x00007f96dd2601d8: test   %r11d,%r11d
                   ││││╭ ││  ││  │  0x00007f96dd2601db: je     0x00007f96dd26032e  ;*ifeq
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.50%    0.09%   │││││ ││  ││  │  0x00007f96dd2601e1: mov    0x14(%rsp),%ecx
  0.01%            │││││ ││  ││  │  0x00007f96dd2601e5: test   %ecx,%ecx
                   │││││ ││  ││  │  0x00007f96dd2601e7: jne    0x00007f96dd260889  ;*ifeq
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.01%    0.02%   │││││ ││  ││  │  0x00007f96dd2601ed: test   %eax,%eax
                   │││││ ││  ││  │  0x00007f96dd2601ef: jne    0x00007f96dd2608e1  ;*ifeq
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.00%   │││││ ││  ││  │  0x00007f96dd2601f5: vmovd  %xmm3,%r10d
  0.44%    0.21%   │││││ ││  ││  │  0x00007f96dd2601fa: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@172 (line 220)
                   │││││ ││  ││  │                                                ; implicit exception: dispatches to 0x00007f96dd260ecd
  0.00%    0.00%   │││││ ││  ││  │  0x00007f96dd2601ff: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   │││││ ││  ││  │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   │││││ ││  ││  │                                                ; implicit exception: dispatches to 0x00007f96dd260edd
  0.06%    0.05%   │││││ ││  ││  │  0x00007f96dd260204: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││││ ││  ││  │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   │││││ ││  ││  │                                                ; implicit exception: dispatches to 0x00007f96dd260eed
  0.05%    0.02%   │││││ ││  ││  │  0x00007f96dd260209: test   %ebp,%ebp
                   │││││ ││  ││  │  0x00007f96dd26020b: jne    0x00007f96dd260859  ;*aload_0
                   │││││ ││  ││  │                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.61%    0.50%   │││││ ││  ││↗ │  0x00007f96dd260211: test   %eax,%eax
                   │││││ ││  │││ │  0x00007f96dd260213: jne    0x00007f96dd26055d  ;*ifne
                   │││││ ││  │││ │                                                ; - com.google.re2j.Machine::match@271 (line 237)
                   │││││ ││  │││ │  0x00007f96dd260219: mov    0x1c(%rsp),%r10d
  0.02%    0.01%   │││││ ││  │││ │  0x00007f96dd26021e: test   %r10d,%r10d
                   │││││╭││  │││ │  0x00007f96dd260221: je     0x00007f96dd260337  ;*ifeq
                   ││││││││  │││ │                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.02%    0.01%   ││││││││  │││ │  0x00007f96dd260227: mov    0x38(%rsp),%r8d
  0.59%    0.37%   ││││││││  │││ │  0x00007f96dd26022c: test   %r8d,%r8d
                   ││││││││  │││ │  0x00007f96dd26022f: jne    0x00007f96dd2605b1  ;*aload_0
                   ││││││││  │││ │                                                ; - com.google.re2j.Machine::match@282 (line 240)
           0.00%   ││││││││  │││↗│  0x00007f96dd260235: test   %edi,%edi
                   ││││││││  │││││  0x00007f96dd260237: jne    0x00007f96dd2606d5  ;*ifeq
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.03%    0.00%   ││││││││  │││││  0x00007f96dd26023d: mov    0x18(%r13),%ebx    ;*getfield prog
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.00%            ││││││││  │││││  0x00007f96dd260241: mov    0x1c(%r12,%rbx,8),%ebp  ;*getfield startInst
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                   ││││││││  │││││                                                ; implicit exception: dispatches to 0x00007f96dd260e61
  0.59%    0.22%   ││││││││  │││││  0x00007f96dd260246: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f96dd260e71
  0.00%            ││││││││  │││││  0x00007f96dd26024b: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   ││││││││  │││││  0x00007f96dd260252: jne    0x00007f96dd26044c  ;*invokevirtual add
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.03%            ││││││││  │││││  0x00007f96dd260258: mov    %ecx,0x14(%rsp)
  0.01%            ││││││││  │││││  0x00007f96dd26025c: mov    %r8d,0x38(%rsp)
  0.57%    0.08%   ││││││││  │││││  0x00007f96dd260261: mov    %r13,0x50(%rsp)    ;*ifeq
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
                   ││││││││  │││││  0x00007f96dd260266: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.00%   ││││││││  │││││  0x00007f96dd26026a: mov    0x18(%rsp),%r11d
  0.02%            ││││││││  │││││  0x00007f96dd26026f: lea    (%r12,%r11,8),%r10  ;*aload
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.53%    0.09%   ││││││││  │││││  0x00007f96dd260273: mov    %r10,0x20(%rsp)
  0.00%            ││││││││  │││││  0x00007f96dd260278: vmovd  %xmm1,%r11d
  0.03%            ││││││││  │││││  0x00007f96dd26027d: mov    %r11,%r8
  0.00%            ││││││││  │││││  0x00007f96dd260280: shl    $0x3,%r8           ;*getfield matchcap
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.62%    0.12%   ││││││││  │││││  0x00007f96dd260284: mov    %r10,%rdx
           0.00%   ││││││││  │││││  0x00007f96dd260287: mov    0x1c(%rsp),%ecx
  0.02%            ││││││││  │││││  0x00007f96dd26028b: xor    %edi,%edi
  0.01%    0.01%   ││││││││  │││││  0x00007f96dd26028d: mov    %r13,(%rsp)
  0.64%    0.28%   ││││││││  │││││  0x00007f96dd260291: xchg   %ax,%ax
  0.00%            ││││││││  │││││  0x00007f96dd260293: callq  0x00007f96dd046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1176}
                   ││││││││  │││││                                                ;*invokevirtual add
                   ││││││││  │││││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                   ││││││││  │││││                                                ;   {optimized virtual_call}
  0.00%            ││││││││  │││││  0x00007f96dd260298: mov    0x34(%rsp),%ebx
  0.10%    0.09%   ││││││││  │││││  0x00007f96dd26029c: test   %ebx,%ebx
                   ││││││╰│  │││││  0x00007f96dd26029e: jl     0x00007f96dd26002f  ;*ifge
                   ││││││ │  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││││││ │  │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.58%    0.59%   ││││││ │  │││││  0x00007f96dd2602a4: xor    %r11d,%r11d        ;*iload_0
                   ││││││ │  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││││││ │  │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%            │↘││││ │  │││││  0x00007f96dd2602a7: cmp    $0xa,%ebx
                   │ ││││ │  │││││  0x00007f96dd2602aa: je     0x00007f96dd2603ae  ;*iload_1
                   │ ││││ │  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │ ││││ │  │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.08%   │ ││││ │  │││││  0x00007f96dd2602b0: mov    0x2c(%rsp),%r8d
  0.01%    0.01%   │ ││││ │  │││││  0x00007f96dd2602b5: test   %r8d,%r8d
                   │ ││││ ╰  │││││  0x00007f96dd2602b8: jl     0x00007f96dd260026  ;*iload_1
                   │ ││││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │ ││││    │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.50%    0.59%   ↘ ││││    │││││  0x00007f96dd2602be: cmp    $0xa,%r8d
                     ││││    │││││  0x00007f96dd2602c2: je     0x00007f96dd2603b7  ;*iload_0
                     ││││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││││    │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%              ││││    │││││  0x00007f96dd2602c8: mov    0x34(%rsp),%r10d
  0.08%    0.03%     ││││    │││││  0x00007f96dd2602cd: add    $0xffffffbf,%r10d
  0.03%    0.04%     ││││    │││││  0x00007f96dd2602d1: cmp    $0x1a,%r10d
                     ││││  ╭ │││││  0x00007f96dd2602d5: jb     0x00007f96dd2602ea  ;*if_icmple
                     ││││  │ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││││  │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││││  │ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.58%    0.48%     ││││  │ │││││  0x00007f96dd2602d7: mov    0x34(%rsp),%r9d
                     ││││  │ │││││  0x00007f96dd2602dc: add    $0xffffff9f,%r9d
  0.05%    0.10%     ││││  │ │││││  0x00007f96dd2602e0: cmp    $0x1a,%r9d
                     ││││  │ │││││  0x00007f96dd2602e4: jae    0x00007f96dd2603c0  ;*iconst_1
                     ││││  │ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││││  │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││││  │ │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.05%     ││││  ↘ │││││  0x00007f96dd2602ea: mov    $0x1,%ebp          ;*ireturn
                     ││││    │││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││││    │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.55%     ││││    │││││  0x00007f96dd2602ef: mov    0x2c(%rsp),%r10d
  0.00%              ││││    │││││  0x00007f96dd2602f4: add    $0xffffffbf,%r10d
  0.03%    0.08%     ││││    │││││  0x00007f96dd2602f8: cmp    $0x1a,%r10d
                     ││││   ╭│││││  0x00007f96dd2602fc: jb     0x00007f96dd260311  ;*if_icmple
                     ││││   ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││││   ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.06%     ││││   ││││││  0x00007f96dd2602fe: mov    0x2c(%rsp),%r9d
  0.39%    0.60%     ││││   ││││││  0x00007f96dd260303: add    $0xffffff9f,%r9d
  0.02%    0.06%     ││││   ││││││  0x00007f96dd260307: cmp    $0x1a,%r9d
                     ││││   ││││││  0x00007f96dd26030b: jae    0x00007f96dd2603e3  ;*iconst_1
                     ││││   ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││││   ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.08%     ││││   ↘│││││  0x00007f96dd260311: mov    $0x1,%r10d         ;*ireturn
                     ││││    │││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││││    │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.19%     ││││    │││││  0x00007f96dd260317: cmp    %r10d,%ebp
                     ││││    ╰││││  0x00007f96dd26031a: je     0x00007f96dd260040  ;*if_icmpeq
                     ││││     ││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││││     ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.05%     ││││     ││││  0x00007f96dd260320: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││││     ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%              ││││     ││││  0x00007f96dd260324: mov    %r11d,0x3c(%rsp)
  0.04%    0.04%     ││││     ╰│││  0x00007f96dd260329: jmpq   0x00007f96dd260049
  0.10%    0.05%     ││↘│      │││  0x00007f96dd26032e: mov    0x14(%rsp),%ecx
                     ││ │      ╰││  0x00007f96dd260332: jmpq   0x00007f96dd260211
                     ││ ↘       ││  0x00007f96dd260337: mov    0x38(%rsp),%r8d
  0.01%              ││         ╰│  0x00007f96dd26033c: jmpq   0x00007f96dd260235
                     ↘│          │  0x00007f96dd260341: mov    $0x1,%r10d
                      │          ╰  0x00007f96dd260347: jmpq   0x00007f96dd260062
                      ↘             0x00007f96dd26034c: test   %edi,%edi
                                    0x00007f96dd26034e: jne    0x00007f96dd260cb5  ;*ifeq
                                                                                  ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                  ; - com.google.re2j.Machine::match@443 (line 267)
                                    0x00007f96dd260354: mov    0x58(%rsp),%r11
  0.01%    0.01%                    0x00007f96dd260359: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f96dd260f55
                                    0x00007f96dd26035e: test   %r10d,%r10d
                                    0x00007f96dd260361: jne    0x00007f96dd26037c  ;*ifeq
                                                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                  ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                  ; - com.google.re2j.Machine::match@443 (line 267)
                                    0x00007f96dd260363: movb   $0x1,0x18(%r11)    ;*putfield empty
                                                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                  ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 146)
....................................................................................................
 29.57%   25.94%  <total for region 3>

....[Hottest Regions]...............................................................................
 34.47%   37.69%         C2, level 4  com.google.re2j.Machine::step, version 540 (564 bytes) 
 32.02%   33.34%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 548 (852 bytes) 
 29.57%   25.94%         C2, level 4  com.google.re2j.Machine::match, version 578 (882 bytes) 
  0.65%    0.71%         C2, level 4  com.google.re2j.Machine::match, version 578 (135 bytes) 
  0.28%    0.27%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.20%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 594 (80 bytes) 
  0.18%    0.09%         C2, level 4  java.util.Collections::shuffle, version 602 (195 bytes) 
  0.12%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 594 (5 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 594 (33 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 594 (32 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 594 (20 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (35 bytes) 
  0.07%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 578 (161 bytes) 
  0.07%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 594 (63 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 594 (0 bytes) 
  0.07%    0.03%              [vdso]  [unknown] (9 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 594 (14 bytes) 
  0.04%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 635 (62 bytes) 
  1.70%    1.52%  <...other 365 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 34.49%   37.71%         C2, level 4  com.google.re2j.Machine::step, version 540 
 32.02%   33.34%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 548 
 30.41%   26.73%         C2, level 4  com.google.re2j.Machine::match, version 578 
  1.01%    0.90%   [kernel.kallsyms]  [unknown] 
  0.89%    0.35%         C2, level 4  com.google.re2j.RE2::match, version 594 
  0.23%    0.13%         C2, level 4  java.util.Collections::shuffle, version 602 
  0.10%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 635 
  0.07%    0.03%              [vdso]  [unknown] 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%                 libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.01%    0.00%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.01%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.44%    0.27%  <...other 74 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 98.16%   98.29%         C2, level 4
  1.01%    0.90%   [kernel.kallsyms]
  0.37%    0.41%           libjvm.so
  0.19%    0.24%        libc-2.26.so
  0.10%    0.04%              [vdso]
  0.07%    0.05%      hsdis-amd64.so
  0.05%    0.03%  libpthread-2.26.so
  0.03%    0.00%         interpreter
  0.01%    0.01%        runtime stub
  0.01%             Unknown, level 0
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  22985.831 ± 64.992  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
