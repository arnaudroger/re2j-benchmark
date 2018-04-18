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
# Warmup Iteration   1: 5007.009 ops/s
# Warmup Iteration   2: 10015.648 ops/s
# Warmup Iteration   3: 10091.373 ops/s
# Warmup Iteration   4: 10090.547 ops/s
# Warmup Iteration   5: 10040.482 ops/s
# Warmup Iteration   6: 10049.654 ops/s
# Warmup Iteration   7: 10064.128 ops/s
# Warmup Iteration   8: 9954.742 ops/s
# Warmup Iteration   9: 10067.607 ops/s
# Warmup Iteration  10: 10073.475 ops/s
# Warmup Iteration  11: 9898.238 ops/s
# Warmup Iteration  12: 10158.086 ops/s
# Warmup Iteration  13: 10190.979 ops/s
# Warmup Iteration  14: 10198.354 ops/s
# Warmup Iteration  15: 10146.755 ops/s
# Warmup Iteration  16: 10119.584 ops/s
# Warmup Iteration  17: 9976.860 ops/s
# Warmup Iteration  18: 9970.481 ops/s
# Warmup Iteration  19: 9973.288 ops/s
# Warmup Iteration  20: 9940.323 ops/s
Iteration   1: 9927.210 ops/s
Iteration   2: 9921.938 ops/s
Iteration   3: 9927.116 ops/s
Iteration   4: 9925.525 ops/s
Iteration   5: 9930.307 ops/s
Iteration   6: 10117.968 ops/s
Iteration   7: 10118.944 ops/s
Iteration   8: 10118.103 ops/s
Iteration   9: 10111.075 ops/s
Iteration  10: 10088.780 ops/s
Iteration  11: 10101.211 ops/s
Iteration  12: 10105.081 ops/s
Iteration  13: 10106.182 ops/s
Iteration  14: 10105.230 ops/s
Iteration  15: 10100.637 ops/s
Iteration  16: 10148.864 ops/s
Iteration  17: 10154.742 ops/s
Iteration  18: 10154.849 ops/s
Iteration  19: 10152.110 ops/s
Iteration  20: 10145.556 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  10073.071 ±(99.9%) 77.341 ops/s [Average]
  (min, avg, max) = (9921.938, 10073.071, 10154.849), stdev = 89.066
  CI (99.9%): [9995.731, 10150.412] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 195406 total address lines.
Perf output processed (skipped 23.360 seconds):
 Column 1: cycles (20516 events)
 Column 2: instructions (20478 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 516 (667 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f36b9220480: mov    0x8(%rsi),%r10d
                             0x00007f36b9220484: shl    $0x3,%r10
                             0x00007f36b9220488: cmp    %r10,%rax
                             0x00007f36b922048b: jne    0x00007f36b9045e20  ;   {runtime_call}
                             0x00007f36b9220491: data16 xchg %ax,%ax
                             0x00007f36b9220494: nopl   0x0(%rax,%rax,1)
                             0x00007f36b922049c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.18%    0.18%             0x00007f36b92204a0: mov    %eax,-0x14000(%rsp)
  0.18%    0.21%             0x00007f36b92204a7: push   %rbp
  0.11%    0.13%             0x00007f36b92204a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.15%             0x00007f36b92204ac: mov    %edi,0x18(%rsp)
  0.16%    0.16%             0x00007f36b92204b0: mov    %r9d,0x14(%rsp)
  0.16%    0.09%             0x00007f36b92204b5: mov    %r8d,0x10(%rsp)
  0.11%    0.09%             0x00007f36b92204ba: mov    %rcx,0x8(%rsp)
  0.05%    0.10%             0x00007f36b92204bf: vmovq  %rdx,%xmm0
  0.09%    0.09%             0x00007f36b92204c4: vmovq  %rsi,%xmm1
  0.10%    0.05%             0x00007f36b92204c9: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.09%    0.12%             0x00007f36b92204cd: movzbl 0x18(%r12,%r10,8),%r11d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007f36b9221071
  0.06%    0.11%             0x00007f36b92204d3: vmovd  %r11d,%xmm3
  0.12%    0.13%             0x00007f36b92204d8: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007f36b9221081
  0.10%    0.07%             0x00007f36b92204db: test   %ecx,%ecx
                  ╭          0x00007f36b92204dd: jle    0x00007f36b922062e  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.08%    0.09%  │          0x00007f36b92204e3: test   %r11d,%r11d
                  │          0x00007f36b92204e6: jne    0x00007f36b9220be5
  0.11%    0.12%  │          0x00007f36b92204ec: xor    %r10d,%r10d
  0.11%    0.08%  │╭         0x00007f36b92204ef: jmp    0x00007f36b9220507
  1.09%    0.82%  ││   ↗     0x00007f36b92204f1: mov    %r10d,%ecx
  0.12%    0.14%  ││   │     0x00007f36b92204f4: mov    %r11,0x8(%rsp)
  0.15%    0.20%  ││   │     0x00007f36b92204f9: mov    %ebx,0x78(%rsp)
  0.06%    0.10%  ││   │     0x00007f36b92204fd: mov    %edi,0x80(%rsp)
  1.16%    0.73%  ││   │     0x00007f36b9220504: mov    %edx,%r10d         ;*getfield size
                  ││   │                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.15%    0.16%  │↘   │     0x00007f36b9220507: vmovq  %xmm0,%r11
  0.26%    0.30%  │    │     0x00007f36b922050c: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.18%    0.17%  │    │     0x00007f36b9220510: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f36b922102d
  1.36%    0.92%  │    │     0x00007f36b9220515: cmp    %r9d,%r10d
                  │    │     0x00007f36b9220518: jae    0x00007f36b922096c
  0.22%    0.20%  │    │     0x00007f36b922051e: lea    (%r12,%r8,8),%r11
  0.25%    0.28%  │    │     0x00007f36b9220522: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.42%    0.46%  │    │     0x00007f36b9220527: mov    0x10(%r12,%r8,8),%edi  ;*getfield inst
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                  │    │                                                   ; implicit exception: dispatches to 0x00007f36b9221041
  2.47%    2.02%  │    │     0x00007f36b922052c: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f36b9221051
  4.71%    5.10%  │    │     0x00007f36b9220531: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │    │                                                   ; - com.google.re2j.Machine::step@106 (line 289)
  0.13%    0.09%  │    │     0x00007f36b9220536: vmovq  %xmm1,%r11
  0.02%    0.03%  │    │     0x00007f36b922053b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │    │                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.37%    0.29%  │    │     0x00007f36b922053f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │    │                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │    │                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.32%    1.19%  │    │     0x00007f36b9220543: mov    %r10d,%edx
  0.13%    0.11%  │    │     0x00007f36b9220546: inc    %edx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@173 (line 295)
  0.01%    0.01%  │    │     0x00007f36b9220548: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.42%    0.43%  │    │     0x00007f36b922054c: cmp    $0x6,%eax
                  │    │     0x00007f36b922054f: je     0x00007f36b92207fc  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@90 (line 285)
  1.35%    1.56%  │    │     0x00007f36b9220555: mov    0x8(%r12,%rdi,8),%ebx
  0.08%    0.05%  │    │     0x00007f36b922055a: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f36b9220560: jne    0x00007f36b92209b5
  0.03%    0.04%  │    │     0x00007f36b9220566: shl    $0x3,%rdi          ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.43%    0.39%  │    │     0x00007f36b922056a: mov    0xc(%rdi),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │    │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.44%    1.51%  │    │     0x00007f36b922056d: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f36b9220570: je     0x00007f36b9220662  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.28%    0.22%  │ │  │     0x00007f36b9220576: cmp    $0xb,%ebp
                  │ │  │     0x00007f36b9220579: je     0x00007f36b9220a91  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.41%    0.41%  │ │  │     0x00007f36b922057f: cmp    $0x9,%ebp
                  │ │  │     0x00007f36b9220582: je     0x00007f36b9220ad1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.25%    1.44%  │ │  │     0x00007f36b9220588: cmp    $0xc,%ebp
                  │ │  │     0x00007f36b922058b: jne    0x00007f36b9220a51  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.85%    0.99%  │ │  │     0x00007f36b9220591: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.28%    0.40%  │ │  │     0x00007f36b9220594: cmp    0x18(%rsp),%eax
                  │ │╭ │     0x00007f36b9220598: je     0x00007f36b9220662  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.25%    1.67%  │ ││ │     0x00007f36b922059e: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.15%    0.23%  │ ││ │     0x00007f36b92205a1: cmp    0x18(%rsp),%ebx
                  │ ││╭│     0x00007f36b92205a5: je     0x00007f36b9220662  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.53%    1.67%  │ ││││     0x00007f36b92205ab: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.16%    0.14%  │ ││││     0x00007f36b92205ae: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f36b92205b2: je     0x00007f36b9220b65  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.93%    1.01%  │ ││││     0x00007f36b92205b8: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  0.11%    0.15%  │ ││││     0x00007f36b92205bb: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f36b92205bf: je     0x00007f36b9220ba5  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@189 (line 299)
  1.42%    1.26%  │ ││││     0x00007f36b92205c5: mov    0x78(%rsp),%ebx
  0.05%    0.01%  │ ││││     0x00007f36b92205c9: mov    0x80(%rsp),%edi    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.22%    0.18%  │ ││││     0x00007f36b92205d0: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
                  │ ││││                                                   ; implicit exception: dispatches to 0x00007f36b9221061
  0.09%    0.08%  │ ││││     0x00007f36b92205d5: cmp    %ebp,%r9d
                  │ ││││     0x00007f36b92205d8: jge    0x00007f36b9220b11  ;*if_icmplt
                  │ ││││                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.38%    1.48%  │ ││││     0x00007f36b92205de: mov    %r9d,%esi
  0.07%           │ ││││     0x00007f36b92205e1: inc    %esi
  0.24%    0.17%  │ ││││     0x00007f36b92205e3: vmovq  %xmm1,%rax
  0.09%    0.08%  │ ││││     0x00007f36b92205e8: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ ││││                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.30%    1.41%  │ ││││     0x00007f36b92205eb: cmp    %ebp,%r9d
                  │ ││││     0x00007f36b92205ee: jae    0x00007f36b92209f1  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.07%    0.09%  │ ││││     0x00007f36b92205f4: vmovq  %xmm0,%r10
  0.21%    0.18%  │ ││││     0x00007f36b92205f9: mov    0xc(%r10),%r10d    ;*getfield size
                  │ ││││                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.12%    0.09%  │ ││││     0x00007f36b92205fd: shl    $0x3,%r11          ;*getfield pool
                  │ ││││                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  1.53%    1.41%  │ ││││     0x00007f36b9220601: lea    0x10(%r11,%r9,4),%r11
  0.06%    0.10%  │ ││││     0x00007f36b9220606: mov    %r8d,(%r11)
  0.30%    0.21%  │ ││││     0x00007f36b9220609: shr    $0x9,%r11
  0.14%    0.11%  │ ││││     0x00007f36b922060d: movabs $0x7f36b4a2e000,%r8
  1.31%    1.23%  │ ││││     0x00007f36b9220617: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ ││││                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@226 (line 303)
  0.09%    0.11%  │ ││││     0x00007f36b922061b: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=416}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@232 (line 277)
  0.28%    0.20%  │ ││││  ↗  0x00007f36b9220620: test   %eax,0x161699da(%rip)        # 0x00007f36cf38a000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                  │ ││││  │                                                ;   {poll}
  0.09%    0.13%  │ ││││  │  0x00007f36b9220626: cmp    %ecx,%edx
                  │ │││╰  │  0x00007f36b9220628: jl     0x00007f36b92204f1  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.31%    0.19%  ↘ │││   │  0x00007f36b922062e: vmovq  %xmm0,%r10
  0.00%             │││   │  0x00007f36b9220633: movzbl 0x18(%r10),%r11d
  0.01%    0.04%    │││   │  0x00007f36b9220638: test   %r11d,%r11d
                    │││ ╭ │  0x00007f36b922063b: jne    0x00007f36b9220656  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.00%    0.01%    │││ │ │  0x00007f36b922063d: mov    %r12d,0xc(%r10)    ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.35%    0.18%    │││ │ │  0x00007f36b9220641: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.00%             │││ │ │  0x00007f36b9220645: movb   $0x1,0x18(%r10)    ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.01%    0.01%    │││ │ │  0x00007f36b922064a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@236 (line 306)
  0.01%    0.01%    │││ │ │  0x00007f36b922064e: test   %ebp,%ebp
                    │││ │ │  0x00007f36b9220650: jne    0x00007f36b9220c0d  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.28%    0.21%    │││ ↘ │  0x00007f36b9220656: add    $0x60,%rsp
  0.00%             │││   │  0x00007f36b922065a: pop    %rbp
  0.02%    0.01%    │││   │  0x00007f36b922065b: test   %eax,0x1616999f(%rip)        # 0x00007f36cf38a000
                    │││   │                                                ;   {poll_return}
  0.01%    0.02%    │││   │  0x00007f36b9220661: retq   
  0.39%    0.36%    ↘↘↘   │  0x00007f36b9220662: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.28%    0.27%          │  0x00007f36b9220666: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007f36b9221091
  0.33%    0.16%          │  0x00007f36b922066b: lea    (%r12,%r11,8),%r9
  0.00%                   │  0x00007f36b922066f: xor    %edi,%edi
                          │  0x00007f36b9220671: mov    $0x1,%eax
                          │  0x00007f36b9220676: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f36b922067c: jne    0x00007f36b9220747  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.09%    0.05%         ││  0x00007f36b9220682: mov    0x18(%r9),%ebx     ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f36b9220686: mov    0x8(%rsp),%r11
                         ││  0x00007f36b922068b: mov    0x10(%r11),%rbp    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f36b92210b1
  0.03%                  ││  0x00007f36b922068f: cmp    $0x40,%ebx
                         ││  0x00007f36b9220692: jg     0x00007f36b9220c71  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.03%         ││  0x00007f36b9220698: mov    %ebx,%ecx
                         ││  0x00007f36b922069a: shl    %cl,%rax           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.07%         ││  0x00007f36b922069d: mov    %rbp,%rcx
                         ││  0x00007f36b92206a0: and    %rax,%rcx          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f36b92206a3: test   %rcx,%rcx
                         ││  0x00007f36b92206a6: jne    0x00007f36b9220cbd  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%         ││  0x00007f36b92206ac: cmp    $0x40,%ebx
                         ││  0x00007f36b92206af: jge    0x00007f36b9220d21  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                  ││  0x00007f36b92206b5: mov    %r12b,0x18(%r11)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%                  ││  0x00007f36b92206b9: or     %rbp,%rax
                         ││  0x00007f36b92206bc: mov    %rax,0x10(%r11)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.03%         ││  0x00007f36b92206c0: mov    %rsi,%rbx
           0.01%         ││  0x00007f36b92206c3: mov    %r9,%rcx
  0.02%                  ││  0x00007f36b92206c6: shr    $0x3,%rcx
                         ││  0x00007f36b92206ca: mov    %ecx,0x10(%r12,%r8,8)
  0.04%    0.01%         ││  0x00007f36b92206cf: shr    $0x9,%rbx
                         ││  0x00007f36b92206d3: movabs $0x7f36b4a2e000,%r9
  0.02%                  ││  0x00007f36b92206dd: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f36b92206e1: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││                                                ; implicit exception: dispatches to 0x00007f36b92210c5
  0.04%    0.02%         ││  0x00007f36b92206e6: test   %ebp,%ebp
                         ││  0x00007f36b92206e8: jg     0x00007f36b9220d6d  ;*ifle
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%                  ││  0x00007f36b92206ee: mov    0x20(%r11),%ecx    ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                  ││  0x00007f36b92206f2: mov    0xc(%r11),%ebp     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                         ││  0x00007f36b92206f6: mov    %ebp,%r9d
  0.04%    0.05%         ││  0x00007f36b92206f9: inc    %r9d
  0.01%    0.00%         ││  0x00007f36b92206fc: mov    %r9d,0xc(%r11)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                  ││  0x00007f36b9220700: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f36b92210d5
  0.02%                  ││  0x00007f36b9220705: cmp    %ebx,%ebp
                         ││  0x00007f36b9220707: jae    0x00007f36b9220c25  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.07%         ││  0x00007f36b922070d: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%                  ││  0x00007f36b9220711: lea    0x10(%r10,%rbp,4),%r10
  0.01%                  ││  0x00007f36b9220716: mov    %r8d,(%r10)
  0.10%    0.00%         ││  0x00007f36b9220719: shr    $0x9,%r10
  0.05%    0.04%         ││  0x00007f36b922071d: movabs $0x7f36b4a2e000,%r8
  0.02%    0.02%         ││  0x00007f36b9220727: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.02%         ││  0x00007f36b922072b: vmovq  %xmm0,%r10
                         ││  0x00007f36b9220730: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.03%    0.05%         ││  0x00007f36b9220734: mov    %ecx,%r10d
           0.01%         ││  0x00007f36b9220737: mov    0x78(%rsp),%ebx
  0.03%    0.01%         ││  0x00007f36b922073b: mov    0x80(%rsp),%edi
                         │╰  0x00007f36b9220742: jmpq   0x00007f36b9220620
                         ↘   0x00007f36b9220747: cmp    $0xf801990c,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f36b922074d: jne    0x00007f36b9220e05  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f36b9220753: mov    0x18(%r9),%ebx     ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@213 (line 300)
                             0x00007f36b9220757: mov    0x8(%rsp),%r11
                             0x00007f36b922075c: mov    0x10(%r11),%rbp    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
....................................................................................................
 39.64%   38.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 525 (1006 bytes) 

                        0x00007f36b9225d08: movabs $0x7f36b4a2e000,%r11
                        0x00007f36b9225d12: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007f36b9225d16: mov    %rbx,%rdx
                        0x00007f36b9225d19: mov    0xa0(%rsp),%r10
                        0x00007f36b9225d21: mov    %r8d,%edi
                  ╭     0x00007f36b9225d24: jmpq   0x00007f36b9226016  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.19%  │     0x00007f36b9225d29: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.29%  │     0x00007f36b9225d2d: cmp    $0x40,%ecx
                  │     0x00007f36b9225d30: jg     0x00007f36b9226439  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.35%  │     0x00007f36b9225d36: mov    $0x1,%r9d
  0.04%    0.07%  │     0x00007f36b9225d3c: shl    %cl,%r9            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.65%    0.55%  │     0x00007f36b9225d3f: mov    %rbx,%rsi
  0.05%    0.06%  │     0x00007f36b9225d42: and    %r9,%rsi           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.11%  │     0x00007f36b9225d45: test   %rsi,%rsi
                  │     0x00007f36b9225d48: jne    0x00007f36b9226481  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.49%  │     0x00007f36b9225d4e: cmp    $0x40,%ecx
                  │     0x00007f36b9225d51: jge    0x00007f36b92264cd  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.21%  │     0x00007f36b9225d57: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.05%  │     0x00007f36b9225d5b: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.15%  │     0x00007f36b9225d5e: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.38%  │     0x00007f36b9225d62: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f36b9226af5
  0.24%    0.43%  │     0x00007f36b9225d67: lea    (%r12,%rbp,8),%r9
  0.05%    0.08%  │     0x00007f36b9225d6b: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007f36b9225d71: je     0x00007f36b9225ea4
  0.03%    0.02%  ││    0x00007f36b9225d77: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007f36b9225d7d: jne    0x00007f36b9226705  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.07%  ││    0x00007f36b9225d83: mov    0x18(%r9),%ecx     ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.25%  ││    0x00007f36b9225d87: cmp    $0x40,%ecx
                  ││    0x00007f36b9225d8a: jg     0x00007f36b922692d  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.01%  ││    0x00007f36b9225d90: mov    $0x1,%esi
  0.04%    0.04%  ││    0x00007f36b9225d95: shl    %cl,%rsi           ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.29%  ││    0x00007f36b9225d98: mov    %rbx,%rbp
  0.01%    0.02%  ││    0x00007f36b9225d9b: and    %rsi,%rbp          ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.11%  ││    0x00007f36b9225d9e: test   %rbp,%rbp
                  ││    0x00007f36b9225da1: jne    0x00007f36b922697d  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.23%  ││    0x00007f36b9225da7: cmp    $0x40,%ecx
                  ││    0x00007f36b9225daa: jge    0x00007f36b92269d5  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││    0x00007f36b9225db0: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  ││    0x00007f36b9225db3: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.04%  ││    0x00007f36b9225db7: mov    %r9,%rcx
  0.22%    0.27%  ││    0x00007f36b9225dba: shr    $0x3,%rcx          ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││    0x00007f36b9225dbe: test   %rdi,%rdi
                  ││    0x00007f36b9225dc1: jne    0x00007f36b922615b  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.01%  ││    0x00007f36b9225dc7: mov    0xa0(%rsp),%r14
  0.09%    0.04%  ││    0x00007f36b9225dcf: mov    0xc(%r14),%edi     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f36b9226c1d
  0.26%    0.11%  ││    0x00007f36b9225dd3: test   %edi,%edi
                  ││    0x00007f36b9225dd5: jle    0x00007f36b92268d9  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  ││    0x00007f36b9225ddb: vmovd  %edi,%xmm2
  0.02%    0.00%  ││    0x00007f36b9225ddf: mov    %r9,%rdi
  0.09%    0.05%  ││    0x00007f36b9225de2: vmovd  %r8d,%xmm1
  0.18%    0.12%  ││    0x00007f36b9225de7: mov    %r10,%r8
  0.00%    0.02%  ││    0x00007f36b9225dea: mov    %r11d,%r9d
  0.03%    0.02%  ││    0x00007f36b9225ded: mov    0x24(%r14),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.04%  ││    0x00007f36b9225df1: vmovd  %r10d,%xmm3
  0.22%    0.30%  ││    0x00007f36b9225df6: vmovd  %xmm2,%ebp
  0.01%    0.02%  ││    0x00007f36b9225dfa: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  ││    0x00007f36b9225dfc: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.04%  ││    0x00007f36b9225e00: vmovd  %xmm3,%r10d
  0.29%    0.21%  ││    0x00007f36b9225e05: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f36b9226c31
  0.15%    0.17%  ││    0x00007f36b9225e0a: cmp    %r10d,%ebp
                  ││    0x00007f36b9225e0d: jae    0x00007f36b922674d
  0.22%    0.23%  ││    0x00007f36b9225e13: vmovd  %xmm3,%r10d
  0.06%    0.07%  ││    0x00007f36b9225e18: lea    (%r12,%r10,8),%r11
  0.17%    0.08%  ││    0x00007f36b9225e1c: vmovd  %xmm2,%r10d
  0.00%           ││    0x00007f36b9225e21: mov    0xc(%r11,%r10,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.18%  ││    0x00007f36b9225e26: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f36b9226c41
  2.24%    2.39%  ││    0x00007f36b9225e2b: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007f36b9225e2f: mov    %rdi,%r10
           0.00%  ││    0x00007f36b9225e32: shr    $0x9,%r10
                  ││    0x00007f36b9225e36: movabs $0x7f36b4a2e000,%r11
  0.46%    0.48%  ││    0x00007f36b9225e40: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.46%  ││    0x00007f36b9225e44: mov    %r9d,%r11d
                  ││    0x00007f36b9225e47: mov    %r8,%r10
                  ││    0x00007f36b9225e4a: vmovd  %xmm1,%r8d         ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.12%  ││    0x00007f36b9225e4f: mov    0x58(%rsp),%r14
  0.29%    0.27%  ││    0x00007f36b9225e54: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007f36b9226bf1
  0.03%    0.03%  ││    0x00007f36b9225e58: test   %ebp,%ebp
                  ││    0x00007f36b9225e5a: jg     0x00007f36b9226a25  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  ││    0x00007f36b9225e60: mov    %r8d,0xc(%rax)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.12%  ││    0x00007f36b9225e64: vmovd  %xmm0,%ecx
  0.20%    0.28%  ││    0x00007f36b9225e68: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f36b9226c01
                  ││    0x00007f36b9225e6d: cmp    %ecx,%r11d
                  ││    0x00007f36b9225e70: jae    0x00007f36b92266bd
  0.01%    0.02%  ││    0x00007f36b9225e76: mov    %rdi,%rcx
  0.15%    0.07%  ││    0x00007f36b9225e79: shr    $0x3,%rcx          ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.27%  ││    0x00007f36b9225e7d: vmovd  %xmm0,%esi
                  ││    0x00007f36b9225e81: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.02%  ││    0x00007f36b9225e85: lea    0x10(%r11,%rdx,1),%r11
  0.08%    0.10%  ││    0x00007f36b9225e8a: mov    %ecx,(%r11)
  0.23%    0.41%  ││    0x00007f36b9225e8d: shr    $0x9,%r11
                  ││    0x00007f36b9225e91: movabs $0x7f36b4a2e000,%r9
  0.02%    0.01%  ││    0x00007f36b9225e9b: mov    %r12b,(%r9,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.10%  ││    0x00007f36b9225e9f: xor    %r11d,%r11d
  0.23%    0.27%  ││╭   0x00007f36b9225ea2: jmp    0x00007f36b9225f10
  0.11%    0.14%  │↘│   0x00007f36b9225ea4: mov    %r10,0x18(%rsp)
  0.21%    0.32%  │ │   0x00007f36b9225ea9: mov    %r13,0x10(%rsp)
  0.02%           │ │   0x00007f36b9225eae: mov    %rax,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.02%  │ │   0x00007f36b9225eb3: mov    %r9,%rsi           ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.08%  │ │   0x00007f36b9225eb6: mov    %rax,%rdx
  0.21%    0.31%  │ │   0x00007f36b9225eb9: mov    0x30(%rsp),%ecx
  0.01%    0.01%  │ │   0x00007f36b9225ebd: mov    0x58(%rsp),%r8
  0.02%    0.02%  │ │   0x00007f36b9225ec2: mov    0x54(%rsp),%r9d
  0.05%    0.04%  │ │   0x00007f36b9225ec7: mov    0xa0(%rsp),%r10
  0.26%    0.28%  │ │   0x00007f36b9225ecf: mov    %r10,(%rsp)
  0.01%    0.02%  │ │   0x00007f36b9225ed3: mov    %ecx,0x20(%rsp)
  0.03%    0.02%  │ │   0x00007f36b9225ed7: mov    %r8,0x28(%rsp)
  0.07%    0.07%  │ │   0x00007f36b9225edc: mov    %r9d,0x24(%rsp)
  0.27%    0.27%  │ │   0x00007f36b9225ee1: xchg   %ax,%ax
  0.02%    0.00%  │ │   0x00007f36b9225ee3: callq  0x00007f36b9046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [88]=Oop off=904}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
           0.01%  │ │   0x00007f36b9225ee8: mov    %rax,%r11
  0.09%    0.11%  │ │   0x00007f36b9225eeb: mov    0x8(%rsp),%rax
  0.29%    0.34%  │ │   0x00007f36b9225ef0: mov    0xc(%rax),%r8d     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%           │ │   0x00007f36b9225ef4: mov    0x10(%rax),%rbx    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  │ │   0x00007f36b9225ef8: mov    0x20(%rax),%r9d    ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  │ │   0x00007f36b9225efc: vmovd  %r9d,%xmm0
  0.09%    0.14%  │ │   0x00007f36b9225f01: mov    0x10(%rsp),%r13
  0.06%    0.03%  │ │   0x00007f36b9225f06: mov    0x28(%rsp),%r14
  0.09%    0.10%  │ │   0x00007f36b9225f0b: mov    0x18(%rsp),%r10    ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.21%  │ ↘   0x00007f36b9225f10: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.05%  │     0x00007f36b9225f14: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f36b9226b0d
  0.13%    0.12%  │     0x00007f36b9225f19: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007f36b9225f20: jne    0x00007f36b9226229
  0.32%    0.38%  │     0x00007f36b9225f26: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.17%  │     0x00007f36b9225f2a: mov    0x18(%r9),%ecx     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.11%  │     0x00007f36b9225f2e: cmp    $0x40,%ecx
                  │     0x00007f36b9225f31: jg     0x00007f36b9226515  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.12%  │     0x00007f36b9225f37: mov    $0x1,%edx
  0.35%    0.29%  │     0x00007f36b9225f3c: shl    %cl,%rdx           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.38%    0.40%  │     0x00007f36b9225f3f: mov    %rdx,%r10
  0.26%    0.26%  │     0x00007f36b9225f42: and    %rbx,%r10          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.28%  │     0x00007f36b9225f45: test   %r10,%r10
                  │     0x00007f36b9225f48: jne    0x00007f36b9226559  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.14%  │     0x00007f36b9225f4e: cmp    $0x40,%ecx
                  │     0x00007f36b9225f51: jge    0x00007f36b92265a1  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.06%  │     0x00007f36b9225f57: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.35%    0.33%  │     0x00007f36b9225f5b: or     %rbx,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.10%  │     0x00007f36b9225f5e: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.07%  │     0x00007f36b9225f62: mov    %r9,%rsi
  0.10%    0.05%  │     0x00007f36b9225f65: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.32%    0.37%  │     0x00007f36b9225f69: test   %r11,%r11
                  │  ╭  0x00007f36b9225f6c: jne    0x00007f36b9226118  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.25%  │  │  0x00007f36b9225f72: mov    0xa0(%rsp),%r10
  0.08%    0.16%  │  │  0x00007f36b9225f7a: mov    0xc(%r10),%edi     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f36b9226b55
  0.08%    0.03%  │  │  0x00007f36b9225f7e: test   %edi,%edi
  0.34%    0.20%  │  │  0x00007f36b9225f80: jle    0x00007f36b9226405  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.20%  │  │  0x00007f36b9225f86: mov    0x24(%r10),%r11d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.15%  │  │  0x00007f36b9225f8a: mov    %edi,%ebp
  0.11%    0.03%  │  │  0x00007f36b9225f8c: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.19%  │  │  0x00007f36b9225f8e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.23%  │  │  0x00007f36b9225f92: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f36b9226b69
  0.12%    0.06%  │  │  0x00007f36b9225f97: cmp    %ecx,%ebp
                  │  │  0x00007f36b9225f99: jae    0x00007f36b9226259
  0.10%    0.02%  │  │  0x00007f36b9225f9f: shl    $0x3,%r11
  0.32%    0.15%  │  │  0x00007f36b9225fa3: mov    0xc(%r11,%rdi,4),%ecx  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.24%  │  │  0x00007f36b9225fa8: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f36b9226b79
  0.93%    0.73%  │  │  0x00007f36b9225fad: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.02%  │  │  0x00007f36b9225fb1: mov    %r11,%r9
  0.22%    0.06%  │  │  0x00007f36b9225fb4: shr    $0x9,%r9
  0.11%    0.17%  │  │  0x00007f36b9225fb8: movabs $0x7f36b4a2e000,%rcx
  0.26%    0.30%  │  │  0x00007f36b9225fc2: mov    %r12b,(%rcx,%r9,1)  ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.51%    0.43%  │  │  0x00007f36b9225fc6: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007f36b9226b29
  0.11%    0.08%  │  │  0x00007f36b9225fca: test   %r9d,%r9d
                  │  │  0x00007f36b9225fcd: jg     0x00007f36b92265e5  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.15%  │  │  0x00007f36b9225fd3: mov    %r8d,%edi
  0.18%    0.18%  │  │  0x00007f36b9225fd6: inc    %edi               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.22%  │  │  0x00007f36b9225fd8: mov    %edi,0xc(%rax)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.20%  │  │  0x00007f36b9225fdb: vmovd  %xmm0,%ecx
  0.11%    0.13%  │  │  0x00007f36b9225fdf: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f36b9226b39
  0.19%    0.21%  │  │  0x00007f36b9225fe4: cmp    %ecx,%r8d
                  │  │  0x00007f36b9225fe7: jae    0x00007f36b92261f5
  0.34%    0.31%  │  │  0x00007f36b9225fed: mov    %r11,%rcx
  0.16%    0.07%  │  │  0x00007f36b9225ff0: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.17%  │  │  0x00007f36b9225ff4: vmovd  %xmm0,%esi
  0.20%    0.17%  │  │  0x00007f36b9225ff8: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.31%  │  │  0x00007f36b9225ffc: lea    0x10(%r11,%r8,4),%r11
  0.17%    0.16%  │  │  0x00007f36b9226001: mov    %ecx,(%r11)
  0.08%    0.10%  │  │  0x00007f36b9226004: shr    $0x9,%r11
  0.19%    0.20%  │  │  0x00007f36b9226008: movabs $0x7f36b4a2e000,%r8
  0.31%    0.32%  │  │  0x00007f36b9226012: mov    %r12b,(%r8,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.21%  ↘  │  0x00007f36b9226016: mov    0x20(%r13),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.08%    0.08%     │  0x00007f36b922601a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f36b9226a9d
  0.14%    0.18%     │  0x00007f36b922601f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007f36b9226026: jne    0x00007f36b92261d1
  0.30%    0.23%     │  0x00007f36b922602c: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.19%     │  0x00007f36b9226030: mov    0x18(%rbx),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.10%     │  0x00007f36b9226033: cmp    $0x40,%ecx
                     │  0x00007f36b9226036: jg     0x00007f36b922634d  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.18%     │  0x00007f36b922603c: mov    $0x1,%r8d
  0.29%    0.30%     │  0x00007f36b9226042: shl    %cl,%r8            ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.47%    0.45%     │  0x00007f36b9226045: mov    %r8,%r11
  0.27%    0.31%     │  0x00007f36b9226048: and    %rdx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.16%     │  0x00007f36b922604b: test   %r11,%r11
                     │  0x00007f36b922604e: jne    0x00007f36b9226379  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.08%     │  0x00007f36b9226054: cmp    $0x40,%ecx
                     │  0x00007f36b9226057: jge    0x00007f36b92263b5  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.22%     │  0x00007f36b922605d: mov    %r12b,0x18(%rax)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.33%    0.29%     │  0x00007f36b9226061: or     %rdx,%r8
  0.14%    0.23%     │  0x00007f36b9226064: mov    %r8,0x10(%rax)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.18%     │  0x00007f36b9226068: mov    0xc(%r10),%r11d    ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007f36b9226ab9
  0.18%    0.20%     │  0x00007f36b922606c: test   %r11d,%r11d
                     │  0x00007f36b922606f: jle    0x00007f36b9226295  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.42%     │  0x00007f36b9226075: mov    0x24(%r10),%ecx    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.24%     │  0x00007f36b9226079: mov    %r11d,%ebp
  0.10%    0.13%     │  0x00007f36b922607c: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.17%     │  0x00007f36b922607e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.31%    0.27%     │  0x00007f36b9226082: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f36b9226acd
  0.12%    0.08%     │  0x00007f36b9226087: cmp    %r10d,%ebp
                     │  0x00007f36b922608a: jae    0x00007f36b9226178
  0.11%    0.06%     │  0x00007f36b9226090: lea    (%r12,%rcx,8),%r10
  0.15%    0.14%     │  0x00007f36b9226094: mov    0xc(%r10,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.30%    0.26%     │  0x00007f36b9226099: test   %ebp,%ebp
                     │  0x00007f36b922609b: je     0x00007f36b922619d
  0.17%    0.26%     │  0x00007f36b92260a1: lea    (%r12,%rbp,8),%r10
  0.11%    0.12%     │  0x00007f36b92260a5: mov    %rbx,%r8
  0.17%    0.15%     │  0x00007f36b92260a8: shr    $0x3,%r8
  0.28%    0.28%     │  0x00007f36b92260ac: mov    %r8d,0x10(%r12,%rbp,8)
  0.15%    0.20%     │  0x00007f36b92260b1: shr    $0x9,%r10
  0.10%    0.06%     │  0x00007f36b92260b5: movabs $0x7f36b4a2e000,%r11
  0.14%    0.12%     │  0x00007f36b92260bf: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.38%    0.37%     │  0x00007f36b92260c3: test   %r9d,%r9d
                     │  0x00007f36b92260c6: jg     0x00007f36b92263e1  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.22%     │  0x00007f36b92260cc: mov    %edi,%r11d
  0.11%    0.12%     │  0x00007f36b92260cf: inc    %r11d
  0.18%    0.09%     │  0x00007f36b92260d2: mov    %r11d,0xc(%rax)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.29%    0.20%     │  0x00007f36b92260d6: vmovd  %xmm0,%r10d
  0.19%    0.19%     │  0x00007f36b92260db: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f36b9226add
  0.10%    0.10%     │  0x00007f36b92260e0: cmp    %r11d,%edi
                     │  0x00007f36b92260e3: jae    0x00007f36b92261b1  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.10%     │  0x00007f36b92260e9: shl    $0x3,%r10          ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.34%    0.30%     │  0x00007f36b92260ed: lea    0x10(%r10,%rdi,4),%r10
  0.14%    0.19%     │  0x00007f36b92260f2: mov    %ebp,(%r10)
  0.08%    0.08%     │  0x00007f36b92260f5: shr    $0x9,%r10
  0.18%    0.07%     │  0x00007f36b92260f9: movabs $0x7f36b4a2e000,%r11
  0.37%    0.28%     │  0x00007f36b9226103: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.12%    0.16%     │  0x00007f36b9226107: xor    %eax,%eax
  0.11%    0.10%     │  0x00007f36b9226109: add    $0x90,%rsp
  0.13%    0.16%     │  0x00007f36b9226110: pop    %rbp
  0.28%    0.16%     │  0x00007f36b9226111: test   %eax,0x16163ee9(%rip)        # 0x00007f36cf38a000
                     │                                                ;   {poll_return}
  0.15%    0.20%     │  0x00007f36b9226117: retq   
                     ↘  0x00007f36b9226118: mov    %esi,0x10(%r11)
                        0x00007f36b922611c: mov    %r11,%r10
                        0x00007f36b922611f: shr    $0x9,%r10
                        0x00007f36b9226123: movabs $0x7f36b4a2e000,%r9
                        0x00007f36b922612d: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007f36b9226131: mov    0xa0(%rsp),%r10
....................................................................................................
 33.60%   34.37%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 560 (882 bytes) 

                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                                    0x00007f36b92404af: mov    %ebx,%r8d
                                    0x00007f36b92404b2: add    $0xffffff9f,%r8d
                                    0x00007f36b92404b6: cmp    $0x1a,%r8d
                                    0x00007f36b92404ba: jae    0x00007f36b924098e  ;*iconst_1
                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%                    0x00007f36b92404c0: or     $0x10,%r9d         ;*iload_2
                                                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                                    0x00007f36b92404c4: mov    %r10d,0x30(%rsp)
  0.02%    0.00%                    0x00007f36b92404c9: mov    %ecx,0x2c(%rsp)
                                    0x00007f36b92404cd: mov    0x44(%rsp),%r10d
           0.00%                    0x00007f36b92404d2: and    $0x4,%r10d         ;*iand
                                                                                  ; - com.google.re2j.Machine::match@147 (line 208)
                                    0x00007f36b92404d6: mov    %r10d,0x14(%rsp)
  0.00%                             0x00007f36b92404db: mov    %r13,%r10
                                    0x00007f36b92404de: shl    $0x3,%r10          ;*getfield q1
                                                                                  ; - com.google.re2j.Machine::match@53 (line 188)
           0.00%                    0x00007f36b92404e2: mov    %r10,0x50(%rsp)
                                    0x00007f36b92404e7: mov    %ebx,0x34(%rsp)
                                    0x00007f36b92404eb: xor    %eax,%eax
                                    0x00007f36b92404ed: xor    %r11d,%r11d
  0.00%                             0x00007f36b92404f0: mov    %r11d,0x58(%rsp)
                  ╭                 0x00007f36b92404f5: jmpq   0x00007f36b92406a8
  0.01%    0.01%  │   ↗             0x00007f36b92404fa: mov    0x14(%rsp),%ecx
  0.00%           │╭  │             0x00007f36b92404fe: jmpq   0x00007f36b92406ec
  0.10%    0.10%  ││  │     ↗       0x00007f36b9240503: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.06%  ││  │     │       0x00007f36b9240507: mov    %r11d,0x5c(%rsp)   ;*iload_2
                  ││  │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││  │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.14%  ││  │     │↗      0x00007f36b924050c: mov    0x48(%rsp),%r8
  0.10%    0.09%  ││  │     ││      0x00007f36b9240511: mov    0x10(%r8),%r11d    ;*getfield end
                  ││  │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  ││  │     ││                                                    ; - com.google.re2j.Machine::match@345 (line 242)
  0.25%    0.27%  ││  │     ││      0x00007f36b9240515: mov    0x58(%rsp),%ecx
  0.10%    0.16%  ││  │     ││      0x00007f36b9240519: cmp    %r11d,%ecx
                  ││╭ │     ││      0x00007f36b924051c: je     0x00007f36b9240822  ;*if_icmpne
                  │││ │     ││                                                    ; - com.google.re2j.Machine::match@348 (line 242)
  0.18%    0.20%  │││ │     ││      0x00007f36b9240522: xor    %r11d,%r11d        ;*invokespecial step
                  │││ │     ││                                                    ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.10%  │││ │     ││   ↗  0x00007f36b9240525: mov    %rax,-0x8(%rsp)
  0.06%    0.07%  │││ │     ││   │  0x00007f36b924052a: mov    0x58(%rsp),%eax
  0.11%    0.12%  │││ │     ││   │  0x00007f36b924052e: mov    %eax,0x1c(%rsp)
  0.14%    0.07%  │││ │     ││   │  0x00007f36b9240532: mov    -0x8(%rsp),%rax
  0.17%    0.17%  │││ │     ││   │  0x00007f36b9240537: add    0x28(%rsp),%ecx    ;*iadd
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.07%    0.11%  │││ │     ││   │  0x00007f36b924053b: mov    %ecx,0x58(%rsp)
  0.11%    0.11%  │││ │     ││   │  0x00007f36b924053f: mov    0x38(%rsp),%rsi
  0.07%    0.06%  │││ │     ││   │  0x00007f36b9240544: mov    0x20(%rsp),%rdx
  0.08%    0.11%  │││ │     ││   │  0x00007f36b9240549: mov    0x50(%rsp),%rcx
  0.05%    0.10%  │││ │     ││   │  0x00007f36b924054e: mov    0x1c(%rsp),%r8d
  0.11%    0.16%  │││ │     ││   │  0x00007f36b9240553: mov    0x58(%rsp),%r9d
  0.28%    0.09%  │││ │     ││   │  0x00007f36b9240558: mov    0x34(%rsp),%edi
  0.07%    0.12%  │││ │     ││   │  0x00007f36b924055c: mov    0x5c(%rsp),%ebx
  0.07%    0.08%  │││ │     ││   │  0x00007f36b9240560: mov    %ebx,(%rsp)
  0.08%    0.12%  │││ │     ││   │  0x00007f36b9240563: mov    0x40(%rsp),%r10d
  0.11%    0.09%  │││ │     ││   │  0x00007f36b9240568: mov    %r10d,0x8(%rsp)
  0.12%    0.09%  │││ │     ││   │  0x00007f36b924056d: mov    %r11d,0x10(%rsp)
  0.06%    0.10%  │││ │     ││   │  0x00007f36b9240572: nop
  0.16%    0.09%  │││ │     ││   │  0x00007f36b9240573: callq  0x00007f36b9046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=664}
                  │││ │     ││   │                                                ;*invokespecial step
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                  │││ │     ││   │                                                ;   {optimized virtual_call}
  0.29%    0.21%  │││ │     ││   │  0x00007f36b9240578: mov    0x38(%rsp),%r10
  0.01%    0.02%  │││ │     ││   │  0x00007f36b924057d: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │││ │     ││   │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.03%    0.03%  │││ │     ││   │  0x00007f36b9240582: mov    0x28(%rsp),%r11d
  0.28%    0.18%  │││ │     ││   │  0x00007f36b9240587: test   %r11d,%r11d
                  │││╭│     ││   │  0x00007f36b924058a: je     0x00007f36b924082d  ;*ifne
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@361 (line 243)
                  │││││     ││   │  0x00007f36b9240590: mov    0x28(%r10),%ebx    ;*getfield matchcap
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.01%    0.01%  │││││     ││   │  0x00007f36b9240594: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                  │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f36b924142d
  0.09%    0.11%  │││││     ││   │  0x00007f36b9240599: test   %ebp,%ebp
                  │││││     ││   │  0x00007f36b924059b: jne    0x00007f36b9240b71  ;*ifne
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.37%    0.29%  │││││     ││   │  0x00007f36b92405a1: test   %eax,%eax
                  │││││     ││   │  0x00007f36b92405a3: jne    0x00007f36b9240c61  ;*ifeq
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@379 (line 246)
  0.00%           │││││     ││   │  0x00007f36b92405a9: mov    0x2c(%rsp),%ecx
  0.02%    0.02%  │││││     ││   │  0x00007f36b92405ad: cmp    $0xffffffff,%ecx
                  │││││     ││   │  0x00007f36b92405b0: je     0x00007f36b92408ef  ;*if_icmpeq
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.01%    0.02%  │││││     ││   │  0x00007f36b92405b6: mov    0x48(%rsp),%r8
  0.24%    0.42%  │││││     ││   │  0x00007f36b92405bb: mov    0x10(%r8),%r11d    ;*getfield end
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%  │││││     ││   │  0x00007f36b92405bf: mov    0x30(%rsp),%r10d
  0.02%    0.02%  │││││     ││   │  0x00007f36b92405c4: add    0x58(%rsp),%r10d
  0.01%    0.01%  │││││     ││   │  0x00007f36b92405c9: add    0xc(%r8),%r10d     ;*iadd
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.33%    0.37%  │││││     ││   │  0x00007f36b92405cd: cmp    %r11d,%r10d
                  │││││     ││   │  0x00007f36b92405d0: jge    0x00007f36b9240904  ;*if_icmpge
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%  │││││     ││   │  0x00007f36b92405d6: mov    0x14(%r8),%ebp     ;*getfield str
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%  │││││     ││   │  0x00007f36b92405da: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f36b924143d
  0.03%    0.06%  │││││     ││   │  0x00007f36b92405df: cmp    $0xf80002da,%r9d   ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││     ││   │  0x00007f36b92405e6: jne    0x00007f36b9240a79
  0.31%    0.43%  │││││     ││   │  0x00007f36b92405ec: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  │││││     ││   │  0x00007f36b92405f0: test   %r10d,%r10d
                  │││││     ││   │  0x00007f36b92405f3: jl     0x00007f36b9240bbd  ;*iflt
                  │││││     ││   │                                                ; - java.lang.String::charAt@1 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.03%  │││││     ││   │  0x00007f36b92405f9: mov    %r9,%rdi
           0.01%  │││││     ││   │  0x00007f36b92405fc: mov    %r10d,%r9d
  0.31%    0.44%  │││││     ││   │  0x00007f36b92405ff: mov    0xc(%rdi),%edx     ;*getfield value
                  │││││     ││   │                                                ; - java.lang.String::charAt@6 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%           │││││     ││   │  0x00007f36b9240602: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││││     ││   │                                                ; - java.lang.String::charAt@9 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                  │││││     ││   │                                                ; implicit exception: dispatches to 0x00007f36b9241451
  0.47%    0.59%  │││││     ││   │  0x00007f36b9240607: cmp    %ebp,%r10d
                  │││││     ││   │  0x00007f36b924060a: jge    0x00007f36b9240cb5  ;*if_icmplt
                  │││││     ││   │                                                ; - java.lang.String::charAt@10 (line 657)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.39%    0.42%  │││││     ││   │  0x00007f36b9240610: cmp    %ebp,%r10d
                  │││││     ││   │  0x00007f36b9240613: jae    0x00007f36b92409f9
  0.11%    0.15%  │││││     ││   │  0x00007f36b9240619: lea    (%r12,%rdx,8),%r10
                  │││││     ││   │  0x00007f36b924061d: movzwl 0x10(%r10,%r9,2),%r11d  ;*caload
                  │││││     ││   │                                                ; - java.lang.String::charAt@27 (line 660)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.07%  │││││     ││   │  0x00007f36b9240623: cmp    $0xd800,%r11d
                  │││││     ││   │  0x00007f36b924062a: jge    0x00007f36b9240d21  ;*if_icmplt
                  │││││     ││   │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││     ││   │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.26%    0.42%  │││││     ││   │  0x00007f36b9240630: shl    $0x3,%r11d         ;*ishl
                  │││││     ││   │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.05%  │││││     ││   │  0x00007f36b9240634: mov    %r11d,%r10d
                  │││││     ││   │  0x00007f36b9240637: or     $0x1,%r10d
  0.15%    0.24%  │││││     ││   │  0x00007f36b924063b: and    $0x7,%r11d
  0.13%    0.16%  │││││     ││   │  0x00007f36b924063f: sar    $0x3,%r10d         ;*ishr
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.25%    0.27%  │││││     ││   │  0x00007f36b9240643: or     $0x1,%r11d         ;*aload
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@427 (line 259)
  0.01%    0.01%  │││││     ││   │  0x00007f36b9240647: mov    %r8,0x48(%rsp)
  0.01%           │││││     ││   │  0x00007f36b924064c: mov    %rax,-0x8(%rsp)
  0.14%    0.16%  │││││     ││   │  0x00007f36b9240651: mov    0x2c(%rsp),%eax
  0.24%    0.23%  │││││     ││   │  0x00007f36b9240655: mov    %eax,0x34(%rsp)
                  │││││     ││   │  0x00007f36b9240659: mov    -0x8(%rsp),%rax    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=894}
                  │││││     ││   │                                                ;*goto
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.04%           │││││     ││   │  0x00007f36b924065e: test   %eax,0x1614999c(%rip)        # 0x00007f36cf38a000
                  │││││     ││   │                                                ;*goto
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                  │││││     ││   │                                                ;   {poll}
  0.09%    0.17%  │││││     ││   │  0x00007f36b9240664: mov    0x38(%rsp),%r8
  0.16%    0.29%  │││││     ││   │  0x00007f36b9240669: mov    0x14(%r8),%r9d     ;*getfield re2
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@169 (line 216)
           0.00%  │││││     ││   │  0x00007f36b924066d: vmovd  %r9d,%xmm4
  0.01%    0.01%  │││││     ││   │  0x00007f36b9240672: mov    0x50(%rsp),%r8
  0.11%    0.13%  │││││     ││   │  0x00007f36b9240677: mov    %r8,%r9
  0.25%    0.27%  │││││     ││   │  0x00007f36b924067a: shr    $0x3,%r9
  0.01%           │││││     ││   │  0x00007f36b924067e: mov    %r9d,0x18(%rsp)
           0.01%  │││││     ││   │  0x00007f36b9240683: mov    0x5c(%rsp),%r9d
  0.12%    0.11%  │││││     ││   │  0x00007f36b9240688: mov    0x20(%rsp),%r8
  0.21%    0.24%  │││││     ││   │  0x00007f36b924068d: mov    %r8,0x50(%rsp)
           0.00%  │││││     ││   │  0x00007f36b9240692: mov    0x30(%rsp),%ecx
           0.00%  │││││     ││   │  0x00007f36b9240696: mov    %ecx,0x28(%rsp)
  0.10%    0.21%  │││││     ││   │  0x00007f36b924069a: mov    %r11d,0x30(%rsp)
  0.19%    0.27%  │││││     ││   │  0x00007f36b924069f: mov    %r10d,0x2c(%rsp)
                  │││││     ││   │  0x00007f36b92406a4: vmovd  %ebx,%xmm3         ;*aload
                  │││││     ││   │                                                ; - com.google.re2j.Machine::match@136 (line 207)
           0.00%  ↘││││     ││   │  0x00007f36b92406a8: mov    0x18(%rsp),%r10d
  0.14%    0.24%   ││││     ││   │  0x00007f36b92406ad: movzbl 0x18(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f36b92413dd
  0.34%    0.38%   ││││     ││   │  0x00007f36b92406b3: test   %r10d,%r10d
                   │││╰     ││   │  0x00007f36b92406b6: je     0x00007f36b92404fa  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.04%    0.05%   │││      ││   │  0x00007f36b92406bc: mov    0x14(%rsp),%ecx
                   │││      ││   │  0x00007f36b92406c0: test   %ecx,%ecx
                   │││      ││   │  0x00007f36b92406c2: jne    0x00007f36b9240da1  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.07%    0.13%   │││      ││   │  0x00007f36b92406c8: test   %eax,%eax
                   │││      ││   │  0x00007f36b92406ca: jne    0x00007f36b9240e01  ;*ifeq
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@162 (line 212)
  0.18%    0.19%   │││      ││   │  0x00007f36b92406d0: vmovd  %xmm4,%r10d
  0.02%    0.04%   │││      ││   │  0x00007f36b92406d5: mov    0x24(%r12,%r10,8),%r10d  ;*getfield prefix
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f36b9241461
                   │││      ││   │  0x00007f36b92406da: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                   │││      ││   │                                                ; - java.lang.String::isEmpty@1 (line 635)
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f36b9241471
  0.05%    0.10%   │││      ││   │  0x00007f36b92406df: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │││      ││   │                                                ; - java.lang.String::isEmpty@4 (line 635)
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                   │││      ││   │                                                ; implicit exception: dispatches to 0x00007f36b9241481
  0.28%    0.42%   │││      ││   │  0x00007f36b92406e4: test   %ebp,%ebp
                   │││      ││   │  0x00007f36b92406e6: jne    0x00007f36b9240d81  ;*aload_0
                   │││      ││   │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.23%    0.25%   ↘││      ││   │  0x00007f36b92406ec: test   %eax,%eax
                    ││      ││   │  0x00007f36b92406ee: jne    0x00007f36b9240acd  ;*ifne
                    ││      ││   │                                                ; - com.google.re2j.Machine::match@271 (line 233)
                    ││      ││   │  0x00007f36b92406f4: mov    0x58(%rsp),%ebx
  0.03%    0.03%    ││      ││   │  0x00007f36b92406f8: test   %ebx,%ebx
                    ││ ╭    ││   │  0x00007f36b92406fa: je     0x00007f36b9240818  ;*ifeq
                    ││ │    ││   │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.07%    0.09%    ││ │    ││   │  0x00007f36b9240700: mov    0x40(%rsp),%r8d
  0.21%    0.28%    ││ │    ││   │  0x00007f36b9240705: test   %r8d,%r8d
                    ││ │    ││   │  0x00007f36b9240708: jne    0x00007f36b9240b19  ;*aload_0
                    ││ │    ││   │                                                ; - com.google.re2j.Machine::match@282 (line 236)
                    ││ │    ││  ↗│  0x00007f36b924070e: vmovd  %xmm3,%r10d
  0.02%    0.05%    ││ │    ││  ││  0x00007f36b9240713: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                    ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f36b92413ed
  0.11%    0.05%    ││ │    ││  ││  0x00007f36b9240718: test   %ebp,%ebp
                    ││ │    ││  ││  0x00007f36b924071a: jg     0x00007f36b9240c3d  ;*ifle
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.22%    0.28%    ││ │    ││  ││  0x00007f36b9240720: mov    0x38(%rsp),%rdx
  0.00%             ││ │    ││  ││  0x00007f36b9240725: mov    0x18(%rdx),%edi    ;*getfield prog
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.03%    0.04%    ││ │    ││  ││  0x00007f36b9240728: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                    ││ │    ││  ││                                                ; implicit exception: dispatches to 0x00007f36b92413fd
  0.06%    0.04%    ││ │    ││  ││  0x00007f36b924072d: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f36b924140d
  0.34%    0.22%    ││ │    ││  ││  0x00007f36b9240732: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    ││ │    ││  ││  0x00007f36b9240739: jne    0x00007f36b92409b1  ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%             ││ │    ││  ││  0x00007f36b924073f: mov    %ecx,0x14(%rsp)
  0.02%    0.02%    ││ │    ││  ││  0x00007f36b9240743: mov    %r8d,0x40(%rsp)    ;*ifle
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.08%    0.05%    ││ │    ││  ││  0x00007f36b9240748: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.28%    0.23%    ││ │    ││  ││  0x00007f36b924074c: mov    0x18(%rsp),%r11d
  0.02%    0.01%    ││ │    ││  ││  0x00007f36b9240751: shl    $0x3,%r11          ;*aload
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.05%             ││ │    ││  ││  0x00007f36b9240755: mov    %r11,0x20(%rsp)
  0.08%    0.03%    ││ │    ││  ││  0x00007f36b924075a: mov    %r10,%r8
  0.27%    0.23%    ││ │    ││  ││  0x00007f36b924075d: shl    $0x3,%r8           ;*getfield matchcap
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.03%    0.02%    ││ │    ││  ││  0x00007f36b9240761: mov    %r11,%rdx
  0.02%    0.01%    ││ │    ││  ││  0x00007f36b9240764: mov    0x58(%rsp),%ecx
  0.06%    0.06%    ││ │    ││  ││  0x00007f36b9240768: xor    %edi,%edi
  0.21%    0.24%    ││ │    ││  ││  0x00007f36b924076a: mov    0x38(%rsp),%r10
  0.02%    0.01%    ││ │    ││  ││  0x00007f36b924076f: mov    %r10,(%rsp)
  0.01%    0.01%    ││ │    ││  ││  0x00007f36b9240773: callq  0x00007f36b9046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1176}
                    ││ │    ││  ││                                                ;*invokevirtual add
                    ││ │    ││  ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                    ││ │    ││  ││                                                ;   {optimized virtual_call}
  0.11%    0.11%    ││ │    ││  ││  0x00007f36b9240778: mov    0x34(%rsp),%r10d
  0.23%    0.25%    ││ │    ││  ││  0x00007f36b924077d: test   %r10d,%r10d
  0.07%    0.07%    ││ │╭   ││  ││  0x00007f36b9240780: jl     0x00007f36b9240807  ;*ifge
                    ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.07%    ││ ││   ││  ││  0x00007f36b9240786: xor    %r11d,%r11d        ;*iload_0
                    ││ ││   ││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││ ││   ││  ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.10%    ││ ││   ││↗ ││  0x00007f36b9240789: cmp    $0xa,%r10d
                    ││ ││   │││ ││  0x00007f36b924078d: je     0x00007f36b9240912  ;*iload_1
                    ││ ││   │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    ││ ││   │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.14%    ││ ││   │││ ││  0x00007f36b9240793: mov    0x2c(%rsp),%r9d
  0.06%    0.10%    ││ ││   │││ ││  0x00007f36b9240798: test   %r9d,%r9d
                    ││ ││╭  │││ ││  0x00007f36b924079b: jl     0x00007f36b9240812  ;*iload_1
                    ││ │││  │││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    ││ │││  │││ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.11%    ││ │││  │││↗││  0x00007f36b924079d: cmp    $0xa,%r9d
                    ││ │││  ││││││  0x00007f36b92407a1: je     0x00007f36b924091b  ;*iload_0
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.09%    ││ │││  ││││││  0x00007f36b92407a7: mov    0x34(%rsp),%r8d
  0.14%    0.22%    ││ │││  ││││││  0x00007f36b92407ac: add    $0xffffffbf,%r8d
  0.05%    0.05%    ││ │││  ││││││  0x00007f36b92407b0: cmp    $0x1a,%r8d
                    ││ │││╭ ││││││  0x00007f36b92407b4: jb     0x00007f36b92407c6  ;*if_icmple
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.06%    ││ ││││ ││││││  0x00007f36b92407b6: mov    0x34(%rsp),%ecx
  0.06%    0.12%    ││ ││││ ││││││  0x00007f36b92407ba: add    $0xffffff9f,%ecx
  0.17%    0.17%    ││ ││││ ││││││  0x00007f36b92407bd: cmp    $0x1a,%ecx
  0.06%    0.05%    ││ ││││ ││││││  0x00007f36b92407c0: jae    0x00007f36b9240924  ;*iconst_1
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ ││││ ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.08%    ││ │││↘ ││││││  0x00007f36b92407c6: mov    $0x1,%ebp          ;*ireturn
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.11%    ││ │││  ││││││  0x00007f36b92407cb: mov    0x2c(%rsp),%r8d
  0.07%    0.14%    ││ │││  ││││││  0x00007f36b92407d0: add    $0xffffffbf,%r8d
  0.04%    0.07%    ││ │││  ││││││  0x00007f36b92407d4: cmp    $0x1a,%r8d
                    ││ │││ ╭││││││  0x00007f36b92407d8: jb     0x00007f36b92407ea  ;*if_icmple
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.08%    ││ │││ │││││││  0x00007f36b92407da: mov    0x2c(%rsp),%ecx
  0.11%    0.06%    ││ │││ │││││││  0x00007f36b92407de: add    $0xffffff9f,%ecx
  0.05%    0.16%    ││ │││ │││││││  0x00007f36b92407e1: cmp    $0x1a,%ecx
                    ││ │││ │││││││  0x00007f36b92407e4: jae    0x00007f36b9240948  ;*iconst_1
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.04%    ││ │││ ↘││││││  0x00007f36b92407ea: mov    $0x1,%r8d          ;*ireturn
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││ │││  ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │││  ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.13%    ││ │││  ││││││  0x00007f36b92407f0: cmp    %r8d,%ebp
                    ││ │││  ╰│││││  0x00007f36b92407f3: je     0x00007f36b9240503  ;*if_icmpeq
                    ││ │││   │││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%    ││ │││   │││││  0x00007f36b92407f9: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││ │││   │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
           0.01%    ││ │││   │││││  0x00007f36b92407fd: mov    %r11d,0x5c(%rsp)
  0.07%    0.06%    ││ │││   ╰││││  0x00007f36b9240802: jmpq   0x00007f36b924050c
                    ││ │↘│    ││││  0x00007f36b9240807: mov    $0x5,%r11d
                    ││ │ │    ╰│││  0x00007f36b924080d: jmpq   0x00007f36b9240789
  0.00%             ││ │ ↘     │││  0x00007f36b9240812: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    ││ │       │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                    ││ │       ╰││  0x00007f36b9240816: jmp    0x00007f36b924079d
                    ││ ↘        ││  0x00007f36b9240818: mov    0x40(%rsp),%r8d
                    ││          ╰│  0x00007f36b924081d: jmpq   0x00007f36b924070e
                    ↘│           │  0x00007f36b9240822: mov    $0x1,%r11d
                     │           ╰  0x00007f36b9240828: jmpq   0x00007f36b9240525
                     ↘              0x00007f36b924082d: mov    0x50(%rsp),%r10
           0.00%                    0x00007f36b9240832: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                  ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                  ; implicit exception: dispatches to 0x00007f36b92414e9
                                    0x00007f36b9240836: test   %ebx,%ebx
                                    0x00007f36b9240838: jle    0x00007f36b92408b8  ;*ifle
                                                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 149)
                                                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                  ; - com.google.re2j.Machine::match@445 (line 263)
                                    0x00007f36b924083a: mov    0x38(%rsp),%r10
....................................................................................................
 15.02%   16.79%  <total for region 3>

....[Hottest Regions]...............................................................................
 39.64%   38.16%         C2, level 4  com.google.re2j.Machine::step, version 516 (667 bytes) 
 33.60%   34.37%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 (1006 bytes) 
 15.02%   16.79%         C2, level 4  com.google.re2j.Machine::match, version 560 (882 bytes) 
  6.50%    6.70%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 (133 bytes) 
  0.95%    0.15%         C2, level 4  com.google.re2j.Machine::init, version 554 (279 bytes) 
  0.49%    0.49%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.44%    0.63%         C2, level 4  com.google.re2j.Machine::match, version 560 (116 bytes) 
  0.14%    0.03%   [kernel.kallsyms]  [unknown] (71 bytes) 
  0.13%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 554 (18 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 554 (79 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 569 (30 bytes) 
  0.09%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 560 (212 bytes) 
  0.07%    0.04%         C2, level 4  java.util.Collections::shuffle, version 577 (94 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 569 (0 bytes) 
  0.04%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 569 (126 bytes) 
  0.04%    0.00%  libpthread-2.26.so  pthread_cond_destroy@@GLIBC_2.3.2 (28 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.03%    0.02%   [kernel.kallsyms]  [unknown] (24 bytes) 
  2.39%    2.34%  <...other 492 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.10%   41.07%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 525 
 39.66%   38.19%         C2, level 4  com.google.re2j.Machine::step, version 516 
 15.57%   17.48%         C2, level 4  com.google.re2j.Machine::match, version 560 
  1.84%    1.55%   [kernel.kallsyms]  [unknown] 
  1.21%    0.25%         C2, level 4  com.google.re2j.Machine::init, version 554 
  0.36%    0.24%         C2, level 4  com.google.re2j.RE2::match, version 569 
  0.14%    0.07%         C2, level 4  java.util.Collections::shuffle, version 577 
  0.08%    0.04%      hsdis-amd64.so  bfd_scan_arch 
  0.07%    0.02%              [vdso]  [unknown] 
  0.06%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 628 
  0.04%    0.00%  libpthread-2.26.so  pthread_cond_destroy@@GLIBC_2.3.2 
  0.04%    0.01%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.06%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.00%           libjvm.so  _ZNK12MutableSpace13used_in_wordsEv 
  0.02%    0.02%           libjvm.so  _ZN7Monitor5IWaitEP6Threadl 
  0.02%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.00%           libjvm.so  _ZN6Thread10muxAcquireEPVlPKc 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%           libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.65%    0.56%  <...other 89 warm methods...>
....................................................................................................
100.00%   99.72%  <totals>

....[Distribution by Source]........................................................................
 97.11%   97.33%         C2, level 4
  1.84%    1.55%   [kernel.kallsyms]
  0.54%    0.58%           libjvm.so
  0.15%    0.10%  libpthread-2.26.so
  0.15%    0.34%        libc-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.07%    0.02%              [vdso]
  0.04%    0.01%         interpreter
  0.00%                             
  0.00%    0.02%        runtime stub
  0.00%                    libnet.so
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  10073.071 ± 77.341  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
