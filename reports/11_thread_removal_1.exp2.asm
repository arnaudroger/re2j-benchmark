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
# Warmup Iteration   1: 8919.849 ops/s
# Warmup Iteration   2: 16179.072 ops/s
# Warmup Iteration   3: 16209.202 ops/s
# Warmup Iteration   4: 16234.328 ops/s
# Warmup Iteration   5: 16182.794 ops/s
# Warmup Iteration   6: 16091.990 ops/s
# Warmup Iteration   7: 16374.625 ops/s
# Warmup Iteration   8: 16175.979 ops/s
# Warmup Iteration   9: 15906.716 ops/s
# Warmup Iteration  10: 15961.805 ops/s
# Warmup Iteration  11: 15947.984 ops/s
# Warmup Iteration  12: 15975.591 ops/s
# Warmup Iteration  13: 15978.274 ops/s
# Warmup Iteration  14: 15954.952 ops/s
# Warmup Iteration  15: 15966.052 ops/s
# Warmup Iteration  16: 15963.231 ops/s
# Warmup Iteration  17: 16473.886 ops/s
# Warmup Iteration  18: 15829.996 ops/s
# Warmup Iteration  19: 16438.381 ops/s
# Warmup Iteration  20: 16161.336 ops/s
Iteration   1: 16169.069 ops/s
Iteration   2: 15882.113 ops/s
Iteration   3: 16164.821 ops/s
Iteration   4: 16160.612 ops/s
Iteration   5: 16166.369 ops/s
Iteration   6: 16163.726 ops/s
Iteration   7: 16102.432 ops/s
Iteration   8: 16152.413 ops/s
Iteration   9: 16156.139 ops/s
Iteration  10: 16156.064 ops/s
Iteration  11: 16161.341 ops/s
Iteration  12: 16161.039 ops/s
Iteration  13: 16165.137 ops/s
Iteration  14: 16157.070 ops/s
Iteration  15: 16159.176 ops/s
Iteration  16: 16166.380 ops/s
Iteration  17: 16159.554 ops/s
Iteration  18: 14949.062 ops/s
Iteration  19: 16159.921 ops/s
Iteration  20: 16199.694 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  16085.607 ±(99.9%) 238.901 ops/s [Average]
  (min, avg, max) = (14949.062, 16085.607, 16199.694), stdev = 275.119
  CI (99.9%): [15846.705, 16324.508] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194226 total address lines.
Perf output processed (skipped 23.378 seconds):
 Column 1: cycles (20777 events)
 Column 2: instructions (20770 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 500 (529 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f2da121b360: mov    0x8(%rsi),%r10d
                             0x00007f2da121b364: shl    $0x3,%r10
                             0x00007f2da121b368: cmp    %r10,%rax
                             0x00007f2da121b36b: jne    0x00007f2da1045e20  ;   {runtime_call}
                             0x00007f2da121b371: data16 xchg %ax,%ax
                             0x00007f2da121b374: nopl   0x0(%rax,%rax,1)
                             0x00007f2da121b37c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.26%    0.28%             0x00007f2da121b380: mov    %eax,-0x14000(%rsp)
  0.33%    0.33%             0x00007f2da121b387: push   %rbp
  0.28%    0.13%             0x00007f2da121b388: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.38%             0x00007f2da121b38c: mov    %edi,0x18(%rsp)
  0.19%    0.17%             0x00007f2da121b390: mov    %r9d,0x14(%rsp)
  0.16%    0.12%             0x00007f2da121b395: mov    %r8d,0x10(%rsp)
  0.14%    0.11%             0x00007f2da121b39a: mov    %rcx,0x8(%rsp)
  0.22%    0.21%             0x00007f2da121b39f: mov    %rsi,%r13
  0.15%    0.15%             0x00007f2da121b3a2: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 280)
  0.09%    0.08%             0x00007f2da121b3a6: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                                                                           ; implicit exception: dispatches to 0x00007f2da121bda9
  0.08%    0.11%             0x00007f2da121b3ac: mov    %rdx,%r9
  0.17%    0.22%             0x00007f2da121b3af: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f2da121bdb9
  0.14%    0.11%             0x00007f2da121b3b3: test   %r10d,%r10d
                  ╭          0x00007f2da121b3b6: jle    0x00007f2da121b4a4  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 281)
  0.11%    0.13%  │          0x00007f2da121b3bc: xor    %r8d,%r8d
  0.09%    0.10%  │╭         0x00007f2da121b3bf: jmp    0x00007f2da121b3d5
  0.23%    0.35%  ││    ↗    0x00007f2da121b3c1: mov    %ebx,%r8d
  0.40%    0.46%  ││    │    0x00007f2da121b3c4: mov    %r11d,0x78(%rsp)
  1.55%    1.57%  ││    │    0x00007f2da121b3c9: mov    %edi,0x80(%rsp)
  0.27%    0.30%  ││    │    0x00007f2da121b3d0: mov    %r10,0x8(%rsp)     ;*aload_0
                  ││    │                                                  ; - com.google.re2j.Machine::step@21 (line 284)
  0.48%    0.55%  │↘    │    0x00007f2da121b3d5: movzbl 0x11(%r13),%r11d   ;*getfield captures
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 284)
  0.67%    0.55%  │     │    0x00007f2da121b3da: test   %r11d,%r11d
                  │     │    0x00007f2da121b3dd: jne    0x00007f2da121b73d  ;*ifne
                  │     │                                                  ; - com.google.re2j.Machine::step@25 (line 284)
  1.47%    1.51%  │     │    0x00007f2da121b3e3: mov    0x20(%r9),%ebp     ;*getfield denseThreadsInstructions
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 294)
  0.39%    0.32%  │     │    0x00007f2da121b3e7: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f2da121bd85
  0.90%    0.70%  │     │    0x00007f2da121b3ec: cmp    %r10d,%r8d
                  │     │    0x00007f2da121b3ef: jae    0x00007f2da121b6d3
  0.91%    0.92%  │     │    0x00007f2da121b3f5: lea    (%r12,%rbp,8),%r10
  1.29%    1.40%  │     │    0x00007f2da121b3f9: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@83 (line 294)
  0.34%    0.30%  │     │    0x00007f2da121b3fe: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2da121bd99
  3.40%    4.15%  │     │    0x00007f2da121b403: mov    %r8d,%ebx
  0.29%    0.24%  │     │    0x00007f2da121b406: inc    %ebx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@165 (line 306)
  1.06%    1.06%  │     │    0x00007f2da121b408: cmp    $0x6,%r11d
                  │ ╭   │    0x00007f2da121b40c: je     0x00007f2da121b596  ;*if_icmpne
                  │ │   │                                                  ; - com.google.re2j.Machine::step@93 (line 296)
  1.15%    1.38%  │ │   │    0x00007f2da121b412: mov    0x8(%r12,%rbp,8),%r10d
  0.31%    0.45%  │ │   │    0x00007f2da121b417: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007f2da121b41e: jne    0x00007f2da121b6f5
  1.03%    1.10%  │ │   │    0x00007f2da121b424: lea    (%r12,%rbp,8),%r10  ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.89%    0.80%  │ │   │    0x00007f2da121b428: mov    0xc(%r10),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.63%    0.64%  │ │   │    0x00007f2da121b42c: cmp    $0xa,%ebp
                  │ │╭  │    0x00007f2da121b42f: je     0x00007f2da121b4d3  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.92%    0.98%  │ ││  │    0x00007f2da121b435: cmp    $0xb,%ebp
                  │ ││  │    0x00007f2da121b438: je     0x00007f2da121b7b1  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.93%    0.93%  │ ││  │    0x00007f2da121b43e: cmp    $0x9,%ebp
                  │ ││  │    0x00007f2da121b441: je     0x00007f2da121b7fd  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  1.95%    1.69%  │ ││  │    0x00007f2da121b447: cmp    $0xc,%ebp
                  │ ││  │    0x00007f2da121b44a: jne    0x00007f2da121b765  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.96%    0.99%  │ ││  │    0x00007f2da121b450: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.23%    0.25%  │ ││  │    0x00007f2da121b454: cmp    0x18(%rsp),%ecx
                  │ ││╭ │    0x00007f2da121b458: je     0x00007f2da121b4d3  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  1.48%    1.43%  │ │││ │    0x00007f2da121b45a: mov    0x24(%r10),%r11d   ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.80%    0.59%  │ │││ │    0x00007f2da121b45e: cmp    0x18(%rsp),%r11d
                  │ │││╭│    0x00007f2da121b463: je     0x00007f2da121b4d3  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  1.79%    1.84%  │ │││││    0x00007f2da121b465: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.40%    0.41%  │ │││││    0x00007f2da121b469: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f2da121b46d: je     0x00007f2da121b849  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.93%    1.03%  │ │││││    0x00007f2da121b473: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  0.60%    0.48%  │ │││││    0x00007f2da121b477: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007f2da121b47b: je     0x00007f2da121b8a9  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@181 (line 310)
  1.55%    1.85%  │ │││││    0x00007f2da121b481: mov    0x78(%rsp),%r11d
  0.22%    0.26%  │ │││││    0x00007f2da121b486: mov    0x80(%rsp),%edi
  0.30%    0.32%  │ │││││    0x00007f2da121b48d: mov    0x8(%rsp),%r10     ; OopMap{r10=Oop r9=Oop r13=Oop off=306}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@221 (line 281)
  0.60%    0.50%  │ │││││ ↗  0x00007f2da121b492: test   %eax,0x177aeb68(%rip)        # 0x00007f2db89ca000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │ │││││ │                                                ;   {poll}
  1.71%    1.95%  │ │││││ │  0x00007f2da121b498: mov    0xc(%r9),%ecx
  0.23%    0.26%  │ │││││ │  0x00007f2da121b49c: cmp    %ecx,%ebx
                  │ ││││╰ │  0x00007f2da121b49e: jl     0x00007f2da121b3c1  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 281)
  0.04%    0.06%  ↘ ││││  │  0x00007f2da121b4a4: movzbl 0x18(%r9),%r10d
  0.17%    0.17%    ││││  │  0x00007f2da121b4a9: test   %r10d,%r10d
                    ││││ ╭│  0x00007f2da121b4ac: jne    0x00007f2da121b4c7  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.39%    0.40%    ││││ ││  0x00007f2da121b4ae: mov    %r12d,0xc(%r9)     ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.01%    0.01%    ││││ ││  0x00007f2da121b4b2: mov    0x1c(%r9),%ebp     ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.06%    0.06%    ││││ ││  0x00007f2da121b4b6: movb   $0x1,0x18(%r9)     ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.14%    0.15%    ││││ ││  0x00007f2da121b4bb: mov    %r12,0x10(%r9)     ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.37%    0.45%    ││││ ││  0x00007f2da121b4bf: test   %ebp,%ebp
                    ││││ ││  0x00007f2da121b4c1: jne    0x00007f2da121b8f5  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.00%    0.02%    ││││ ↘│  0x00007f2da121b4c7: add    $0x60,%rsp
  0.04%    0.07%    ││││  │  0x00007f2da121b4cb: pop    %rbp
  0.14%    0.21%    ││││  │  0x00007f2da121b4cc: test   %eax,0x177aeb2e(%rip)        # 0x00007f2db89ca000
                    ││││  │                                                ;   {poll_return}
  0.39%    0.38%    ││││  │  0x00007f2da121b4d2: retq   
  0.36%    0.34%    │↘↘↘  │  0x00007f2da121b4d3: mov    0x1c(%r10),%r10d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.32%    0.21%    │     │  0x00007f2da121b4d7: mov    0x8(%r12,%r10,8),%esi  ; implicit exception: dispatches to 0x00007f2da121bdc9
  0.37%    0.21%    │     │  0x00007f2da121b4dc: lea    (%r12,%r10,8),%r11
  0.02%    0.00%    │     │  0x00007f2da121b4e0: xor    %eax,%eax
           0.01%    │     │  0x00007f2da121b4e2: movabs $0x7f2db13d2000,%rdi
  0.00%             │     │  0x00007f2da121b4ec: mov    $0x1,%edx
  0.10%    0.05%    │     │  0x00007f2da121b4f1: cmp    $0xf8019993,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007f2da121b4f7: jne    0x00007f2da121b5c4  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@202 (line 311)
  0.01%             │     │  0x00007f2da121b4fd: mov    0x18(%r11),%ecx    ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%             │     │  0x00007f2da121b501: mov    0x8(%rsp),%r10
  0.00%    0.01%    │     │  0x00007f2da121b506: mov    0x10(%r10),%rsi    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                    │     │                                                ; implicit exception: dispatches to 0x00007f2da121bddd
  0.13%    0.09%    │     │  0x00007f2da121b50a: cmp    $0x40,%ecx
                    │     │  0x00007f2da121b50d: jg     0x00007f2da121b9d9  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%    │     │  0x00007f2da121b513: shl    %cl,%rdx           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.12%    │     │  0x00007f2da121b516: mov    %rsi,%rbp
                    │     │  0x00007f2da121b519: and    %rdx,%rbp          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.00%    │     │  0x00007f2da121b51c: test   %rbp,%rbp
                    │     │  0x00007f2da121b51f: jne    0x00007f2da121ba45  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.05%    │     │  0x00007f2da121b525: cmp    $0x40,%ecx
                    │     │  0x00007f2da121b528: jge    0x00007f2da121babd  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.03%    │     │  0x00007f2da121b52e: mov    %r12b,0x18(%r10)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%             │     │  0x00007f2da121b532: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%    │     │  0x00007f2da121b536: or     %rsi,%rdx
  0.05%    0.04%    │     │  0x00007f2da121b539: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.01%    │     │  0x00007f2da121b53d: mov    0x20(%r10),%ebp    ;*getfield denseThreadsInstructions
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%    │     │  0x00007f2da121b541: mov    %ecx,%esi
           0.00%    │     │  0x00007f2da121b543: inc    %esi
  0.08%    0.06%    │     │  0x00007f2da121b545: mov    %esi,0xc(%r10)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.02%    │     │  0x00007f2da121b549: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f2da121bdf1
  0.03%    0.04%    │     │  0x00007f2da121b54e: cmp    %esi,%ecx
                    │     │  0x00007f2da121b550: jae    0x00007f2da121b909
  0.07%    0.01%    │     │  0x00007f2da121b556: mov    0x8(%r12,%rbp,8),%esi
  0.06%    0.05%    │     │  0x00007f2da121b55b: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    │     │  0x00007f2da121b561: jne    0x00007f2da121b971  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%    │     │  0x00007f2da121b567: lea    (%r12,%rbp,8),%r8  ;*getfield denseThreadsInstructions
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%    │     │  0x00007f2da121b56b: lea    0x10(%r8,%rcx,4),%rcx
  0.03%    0.00%    │     │  0x00007f2da121b570: mov    %r11,%r8
  0.08%    0.09%    │     │  0x00007f2da121b573: shr    $0x3,%r8
  0.03%    0.01%    │     │  0x00007f2da121b577: mov    %r8d,(%rcx)
  0.07%    0.03%    │     │  0x00007f2da121b57a: mov    %rcx,%r11
  0.02%    0.01%    │     │  0x00007f2da121b57d: shr    $0x9,%r11
  0.05%    0.04%    │     │  0x00007f2da121b581: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.15%    │     │  0x00007f2da121b585: mov    0x78(%rsp),%r11d
           0.01%    │     │  0x00007f2da121b58a: mov    0x80(%rsp),%edi
  0.02%    0.01%    │     ╰  0x00007f2da121b591: jmpq   0x00007f2da121b492
                    ↘        0x00007f2da121b596: mov    0x78(%rsp),%r11d
                             0x00007f2da121b59b: cmp    $0x2,%r11d
                             0x00007f2da121b59f: je     0x00007f2da121b65a  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@99 (line 299)
                             0x00007f2da121b5a5: mov    0x80(%rsp),%edi    ;*iload
                                                                           ; - com.google.re2j.Machine::step@155 (line 304)
                             0x00007f2da121b5ac: test   %r14d,%r14d
                             0x00007f2da121b5af: je     0x00007f2da121b673  ;*aload_0
                                                                           ; - com.google.re2j.Machine::step@169 (line 308)
                             0x00007f2da121b5b5: movb   $0x1,0x10(%r13)    ;*putfield matched
....................................................................................................
 40.45%   40.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 508 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f2da1221f00: mov    0x8(%rsi),%r10d
                     0x00007f2da1221f04: shl    $0x3,%r10
                     0x00007f2da1221f08: cmp    %r10,%rax
                     0x00007f2da1221f0b: jne    0x00007f2da1045e20  ;   {runtime_call}
                     0x00007f2da1221f11: data16 xchg %ax,%ax
                     0x00007f2da1221f14: nopl   0x0(%rax,%rax,1)
                     0x00007f2da1221f1c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.13%    0.03%     0x00007f2da1221f20: mov    %eax,-0x14000(%rsp)
  0.44%    0.37%     0x00007f2da1221f27: push   %rbp
  0.01%    0.04%     0x00007f2da1221f28: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.14%    0.13%     0x00007f2da1221f2c: vmovq  %r8,%xmm6
  0.39%    0.24%     0x00007f2da1221f31: vmovq  %rsi,%xmm4
  0.02%    0.02%     0x00007f2da1221f36: vmovd  %ecx,%xmm0
  0.08%    0.13%     0x00007f2da1221f3a: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
           0.00%     0x00007f2da1221f3d: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007f2da12228b1
  0.47%    0.32%     0x00007f2da1221f41: cmp    $0x40,%ecx
                     0x00007f2da1221f44: jg     0x00007f2da122241d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.04%    0.02%     0x00007f2da1221f4a: mov    $0x1,%eax
  0.15%    0.09%     0x00007f2da1221f4f: mov    $0x1,%r8d
           0.00%     0x00007f2da1221f55: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.51%    0.56%     0x00007f2da1221f58: mov    %r11,%r10
  0.01%    0.01%     0x00007f2da1221f5b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.38%    0.41%     0x00007f2da1221f5e: xor    %r13d,%r13d
  0.03%    0.04%     0x00007f2da1221f61: test   %r10,%r10
                     0x00007f2da1221f64: jne    0x00007f2da1222451  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.13%    0.11%     0x00007f2da1221f6a: cmp    $0x40,%ecx
                     0x00007f2da1221f6d: jge    0x00007f2da1222495  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                     0x00007f2da1221f73: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.34%    0.36%     0x00007f2da1221f77: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.03%    0.04%     0x00007f2da1221f7a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.10%    0.11%     0x00007f2da1221f7d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%              0x00007f2da1221f81: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2da12228c5
  0.42%    0.54%     0x00007f2da1221f86: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f2da1221f8d: jne    0x00007f2da12222f1
  0.00%    0.04%     0x00007f2da1221f93: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.09%    0.16%     0x00007f2da1221f97: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.01%     0x00007f2da1221f9b: cmp    $0x40,%ecx
                     0x00007f2da1221f9e: jg     0x00007f2da12224c9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.34%    0.37%     0x00007f2da1221fa4: mov    $0x1,%r11d
  0.01%    0.04%     0x00007f2da1221faa: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.52%    0.54%     0x00007f2da1221fad: mov    %r8,%rbx
  0.05%    0.04%     0x00007f2da1221fb0: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.11%    0.14%     0x00007f2da1221fb3: test   %rbx,%rbx
                     0x00007f2da1221fb6: jne    0x00007f2da1222509  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.01%     0x00007f2da1221fbc: cmp    $0x40,%ecx
                     0x00007f2da1221fbf: jge    0x00007f2da1222551  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.35%    0.59%     0x00007f2da1221fc5: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.06%     0x00007f2da1221fc8: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.21%     0x00007f2da1221fcc: mov    0x70(%rsp),%r11
  0.01%              0x00007f2da1221fd1: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f2da12228ed
  0.44%    0.37%     0x00007f2da1221fd6: test   %ebp,%ebp
                     0x00007f2da1221fd8: jne    0x00007f2da1222591  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.02%     0x00007f2da1221fde: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.12%    0.14%     0x00007f2da1221fe1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.00%     0x00007f2da1221fe4: mov    %ecx,%esi
  0.36%    0.77%     0x00007f2da1221fe6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.03%     0x00007f2da1221fe8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.09%    0.17%     0x00007f2da1221feb: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f2da12228fd
  0.00%    0.01%     0x00007f2da1221ff0: cmp    %edi,%ecx
                  ╭  0x00007f2da1221ff2: jae    0x00007f2da1222275
  0.39%    0.61%  │  0x00007f2da1221ff8: vmovd  %esi,%xmm1
  0.02%    0.06%  │  0x00007f2da1221ffc: vmovd  %ebx,%xmm2
  0.09%    0.12%  │  0x00007f2da1222000: mov    %ecx,0x18(%rsp)
           0.00%  │  0x00007f2da1222004: mov    %r10,%rcx
  0.45%    0.51%  │  0x00007f2da1222007: mov    0x70(%rsp),%r14
  0.03%    0.03%  │  0x00007f2da122200c: mov    0x8(%r12,%rbx,8),%r11d
  0.12%    0.16%  │  0x00007f2da1222011: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f2da1222018: jne    0x00007f2da1222321  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  │  0x00007f2da122201e: vmovq  %xmm4,%r10
  0.43%    0.42%  │  0x00007f2da1222023: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.01%    0.01%  │  0x00007f2da1222027: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.10%  │  0x00007f2da122202b: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.00%  │  0x00007f2da122202f: mov    0x18(%rsp),%r10d
  0.69%    0.61%  │  0x00007f2da1222034: lea    0x10(%r11,%r10,4),%r10
  0.06%    0.03%  │  0x00007f2da1222039: mov    %ecx,(%r10)
  0.28%    0.26%  │  0x00007f2da122203c: shr    $0x9,%r10
           0.00%  │  0x00007f2da1222040: movabs $0x7f2db13d2000,%rbx
  0.30%    0.40%  │  0x00007f2da122204a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.26%    0.13%  │  0x00007f2da122204e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f2da1222915
  0.11%    0.09%  │  0x00007f2da1222053: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f2da122205a: jne    0x00007f2da1222359
                  │  0x00007f2da1222060: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.32%    0.17%  │  0x00007f2da1222064: vmovq  %r10,%xmm3
  0.12%    0.07%  │  0x00007f2da1222069: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.10%  │  0x00007f2da122206d: vmovd  %ecx,%xmm5
  0.00%           │  0x00007f2da1222071: cmp    $0x40,%ecx
                  │  0x00007f2da1222074: jg     0x00007f2da12225cd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.37%    0.26%  │  0x00007f2da122207a: mov    $0x1,%r10d
  0.08%    0.10%  │  0x00007f2da1222080: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.48%    0.48%  │  0x00007f2da1222083: mov    %r8,%rcx
  0.09%    0.15%  │  0x00007f2da1222086: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.12%    0.13%  │  0x00007f2da1222089: test   %rcx,%rcx
                  │  0x00007f2da122208c: jne    0x00007f2da1222609  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │  0x00007f2da1222092: vmovd  %xmm5,%ecx
  0.36%    0.42%  │  0x00007f2da1222096: cmp    $0x40,%ecx
                  │  0x00007f2da1222099: jge    0x00007f2da1222651  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.09%  │  0x00007f2da122209f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.12%    0.05%  │  0x00007f2da12220a2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.00%  │  0x00007f2da12220a6: mov    0x18(%rsp),%ecx
  0.41%    0.20%  │  0x00007f2da12220aa: add    $0x2,%ecx
  0.11%    0.18%  │  0x00007f2da12220ad: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.08%    0.11%  │  0x00007f2da12220b0: mov    0x18(%rsp),%r10d
  0.04%    0.06%  │  0x00007f2da12220b5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.31%    0.50%  │  0x00007f2da12220b9: cmp    %edi,%r10d
                  │  0x00007f2da12220bc: jae    0x00007f2da12222b1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.13%    0.12%  │  0x00007f2da12220c2: vmovd  %r9d,%xmm7
  0.13%    0.16%  │  0x00007f2da12220c7: vmovq  %xmm4,%r9
                  │  0x00007f2da12220cc: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.32%    0.35%  │  0x00007f2da12220d0: vmovq  %xmm3,%r9
  0.15%    0.11%  │  0x00007f2da12220d5: mov    %r9,%rcx
  0.11%    0.13%  │  0x00007f2da12220d8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
           0.00%  │  0x00007f2da12220dc: movslq 0x18(%rsp),%r9
  0.36%    0.44%  │  0x00007f2da12220e1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.14%    0.15%  │  0x00007f2da12220e5: mov    %r9,%rdi
  0.11%    0.11%  │  0x00007f2da12220e8: add    $0x14,%rdi
           0.00%  │  0x00007f2da12220ec: mov    %ecx,(%rdi)
  0.58%    0.51%  │  0x00007f2da12220ee: mov    %rdi,%rcx
  0.11%    0.14%  │  0x00007f2da12220f1: shr    $0x9,%rcx
  0.13%    0.08%  │  0x00007f2da12220f5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.10%  │  0x00007f2da12220f9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2da122293d
  0.34%    0.39%  │  0x00007f2da12220fe: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f2da1222104: jne    0x00007f2da1222389
  0.09%    0.11%  │  0x00007f2da122210a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.18%  │  0x00007f2da122210e: vmovq  %rcx,%xmm1
  0.04%    0.03%  │  0x00007f2da1222113: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.30%    0.37%  │  0x00007f2da1222116: vmovd  %ecx,%xmm2
  0.09%    0.13%  │  0x00007f2da122211a: cmp    $0x40,%ecx
                  │  0x00007f2da122211d: jg     0x00007f2da1222691  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.09%  │  0x00007f2da1222123: mov    $0x1,%edi
  0.05%    0.04%  │  0x00007f2da1222128: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.48%    0.64%  │  0x00007f2da122212b: mov    %r8,%rcx
  0.08%    0.03%  │  0x00007f2da122212e: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.37%    0.36%  │  0x00007f2da1222131: test   %rcx,%rcx
                  │  0x00007f2da1222134: jne    0x00007f2da12226d1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.16%    0.08%  │  0x00007f2da122213a: vmovd  %xmm2,%ecx
  0.10%    0.08%  │  0x00007f2da122213e: cmp    $0x40,%ecx
                  │  0x00007f2da1222141: jge    0x00007f2da122271d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.08%  │  0x00007f2da1222147: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.27%    0.39%  │  0x00007f2da122214a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.09%  │  0x00007f2da122214e: vmovq  %xmm4,%rcx
  0.10%    0.07%  │  0x00007f2da1222153: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.06%    0.05%  │  0x00007f2da1222156: mov    %r9,%rdi
  0.34%    0.38%  │  0x00007f2da1222159: add    $0x18,%rdi
  0.13%    0.07%  │  0x00007f2da122215d: vmovq  %xmm1,%rsi
  0.11%    0.09%  │  0x00007f2da1222162: mov    %rsi,%rcx
  0.03%    0.07%  │  0x00007f2da1222165: shr    $0x3,%rcx
  0.29%    0.36%  │  0x00007f2da1222169: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.05%  │  0x00007f2da122216b: mov    0x18(%rsp),%ecx
  0.12%    0.09%  │  0x00007f2da122216f: add    $0x3,%ecx
  0.01%    0.02%  │  0x00007f2da1222172: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.29%    0.30%  │  0x00007f2da1222175: shr    $0x9,%rdi
  0.12%    0.03%  │  0x00007f2da1222179: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.10%  │  0x00007f2da122217d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2da1222965
  0.07%    0.04%  │  0x00007f2da1222182: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f2da1222188: jne    0x00007f2da12223bd
  0.37%    0.32%  │  0x00007f2da122218e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.12%  │  0x00007f2da1222192: vmovq  %rcx,%xmm1
  0.10%    0.09%  │  0x00007f2da1222197: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.03%  │  0x00007f2da122219a: vmovd  %ecx,%xmm3
  0.27%    0.34%  │  0x00007f2da122219e: cmp    $0x40,%ecx
                  │  0x00007f2da12221a1: jg     0x00007f2da122275d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.12%  │  0x00007f2da12221a7: mov    $0x1,%edi
  0.11%    0.12%  │  0x00007f2da12221ac: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.44%    0.30%  │  0x00007f2da12221af: mov    %r8,%rcx
  0.13%    0.05%  │  0x00007f2da12221b2: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.03%  │  0x00007f2da12221b5: test   %rcx,%rcx
                  │  0x00007f2da12221b8: jne    0x00007f2da122279d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.27%    0.39%  │  0x00007f2da12221be: vmovd  %xmm3,%ecx
  0.09%    0.09%  │  0x00007f2da12221c2: cmp    $0x40,%ecx
                  │  0x00007f2da12221c5: jge    0x00007f2da12227e9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.15%  │  0x00007f2da12221cb: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.04%  │  0x00007f2da12221cf: vmovq  %xmm4,%r10
  0.36%    0.55%  │  0x00007f2da12221d4: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.13%    0.08%  │  0x00007f2da12221d8: mov    %r9,%rcx
  0.10%    0.07%  │  0x00007f2da12221db: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.05%    0.02%  │  0x00007f2da12221df: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.38%    0.33%  │  0x00007f2da12221e2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.09%  │  0x00007f2da12221e6: vmovq  %xmm1,%r10
  0.09%    0.10%  │  0x00007f2da12221eb: shr    $0x3,%r10
  0.04%    0.02%  │  0x00007f2da12221ef: mov    %r10d,(%rcx)
  0.33%    0.35%  │  0x00007f2da12221f2: mov    %rcx,%r10
  0.12%    0.18%  │  0x00007f2da12221f5: shr    $0x9,%r10
  0.10%    0.08%  │  0x00007f2da12221f9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.06%  │  0x00007f2da12221fd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f2da122298d
  0.28%    0.26%  │  0x00007f2da1222202: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f2da1222209: jne    0x00007f2da12223f1
  0.07%    0.09%  │  0x00007f2da122220f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.05%    0.09%  │  0x00007f2da1222213: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.03%  │  0x00007f2da1222216: cmp    $0x40,%ecx
                  │  0x00007f2da1222219: jg     0x00007f2da1222829  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.28%    0.34%  │  0x00007f2da122221f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.28%    0.26%  │  0x00007f2da1222222: mov    %r8,%r10
  0.35%    0.36%  │  0x00007f2da1222225: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.07%  │  0x00007f2da1222228: test   %r10,%r10
                  │  0x00007f2da122222b: jne    0x00007f2da1222851  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.12%  │  0x00007f2da1222231: cmp    $0x40,%ecx
                  │  0x00007f2da1222234: jge    0x00007f2da1222889  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.10%  │  0x00007f2da122223a: or     %rax,%r8
  0.33%    0.39%  │  0x00007f2da122223d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.13%    0.13%  │  0x00007f2da1222241: add    $0x20,%r9
  0.10%    0.08%  │  0x00007f2da1222245: mov    %rdi,%r10
  0.06%    0.07%  │  0x00007f2da1222248: shr    $0x3,%r10
  0.32%    0.41%  │  0x00007f2da122224c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.11%  │  0x00007f2da122224f: mov    %r9,%r10
  0.09%    0.07%  │  0x00007f2da1222252: mov    0x18(%rsp),%r11d
  0.05%    0.02%  │  0x00007f2da1222257: add    $0x5,%r11d
  0.33%    0.15%  │  0x00007f2da122225b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.08%  │  0x00007f2da122225f: shr    $0x9,%r10
  0.08%    0.13%  │  0x00007f2da1222263: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.05%    0.08%  │  0x00007f2da1222267: xor    %eax,%eax
  0.30%    0.43%  │  0x00007f2da1222269: add    $0x60,%rsp
  0.10%    0.14%  │  0x00007f2da122226d: pop    %rbp
  0.06%    0.09%  │  0x00007f2da122226e: test   %eax,0x177a7d8c(%rip)        # 0x00007f2db89ca000
                  │                                                ;   {poll_return}
  0.05%    0.07%  │  0x00007f2da1222274: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007f2da1222275: mov    $0xffffffe4,%esi
                     0x00007f2da122227a: vmovq  %xmm4,%rbp
                     0x00007f2da122227f: mov    %rdx,0x70(%rsp)
                     0x00007f2da1222284: vmovss %xmm0,(%rsp)
                     0x00007f2da1222289: vmovsd %xmm6,0x8(%rsp)
                     0x00007f2da122228f: mov    %r9d,0x4(%rsp)
....................................................................................................
 28.01%   29.47%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 535 (1057 bytes) 

                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f2da12351f4: mov    $0x5,%r9d          ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                    ↗   0x00007f2da12351fa: cmp    $0xa,%r8d
                  ╭                                 │   0x00007f2da12351fe: je     0x00007f2da1235645  ;*iload_0
                  │                                 │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                  │                                 │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                 │↗  0x00007f2da1235204: mov    %r8d,%edi
  0.01%    0.00%  │                                 ││  0x00007f2da1235207: add    $0xffffffbf,%edi
                  │                                 ││  0x00007f2da123520a: cmp    $0x1a,%edi
                  │╭                                ││  0x00007f2da123520d: jb     0x00007f2da1235220  ;*if_icmple
                  ││                                ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  ││                                ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  ││                                ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  ││                                ││  0x00007f2da123520f: mov    %r8d,%r10d
                  ││                                ││  0x00007f2da1235212: add    $0xffffff9f,%r10d
           0.01%  ││                                ││  0x00007f2da1235216: cmp    $0x1a,%r10d
                  ││╭                               ││  0x00007f2da123521a: jae    0x00007f2da123564e  ;*iconst_1
                  │││                               ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │││                               ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││                               ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  │↘│                               ││  0x00007f2da1235220: or     $0x10,%r9d         ;*iload_2
                  │ │                               ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  │ │                               ││  0x00007f2da1235224: mov    %r11d,0x30(%rsp)
  0.00%    0.00%  │ │                               ││  0x00007f2da1235229: mov    %ecx,0x2c(%rsp)
  0.00%    0.00%  │ │                               ││  0x00007f2da123522d: movzbl 0x11(%rbx),%ecx    ;*getfield captures
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@283 (line 240)
                  │ │                               ││  0x00007f2da1235231: mov    0x44(%rsp),%r11d
                  │ │                               ││  0x00007f2da1235236: and    $0x4,%r11d         ;*iand
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%           │ │                               ││  0x00007f2da123523a: mov    %r11d,0x14(%rsp)
  0.01%           │ │                               ││  0x00007f2da123523f: mov    %r13,%r10
                  │ │                               ││  0x00007f2da1235242: shl    $0x3,%r10          ;*getfield q1
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@53 (line 192)
                  │ │                               ││  0x00007f2da1235246: mov    %r10,0x58(%rsp)
           0.00%  │ │                               ││  0x00007f2da123524b: mov    %r8d,0x34(%rsp)
  0.00%    0.01%  │ │                               ││  0x00007f2da1235250: xor    %eax,%eax
                  │ │                               ││  0x00007f2da1235252: xor    %r10d,%r10d
                  │ │                               ││  0x00007f2da1235255: mov    %r10d,0x1c(%rsp)
           0.00%  │ │╭                              ││  0x00007f2da123525a: jmpq   0x00007f2da12353dd
                  │ ││                              ││  0x00007f2da123525f: nop
  0.04%    0.11%  │ ││              ↗               ││  0x00007f2da1235260: or     $0x20,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │ ││              │               ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.18%    0.25%  │ ││              │               ││  0x00007f2da1235263: mov    %ecx,0x3c(%rsp)    ;*iload_2
                  │ ││              │               ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │ ││              │               ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.22%    0.19%  │ ││              │↗              ││  0x00007f2da1235267: mov    0x1c(%rsp),%ebp
  0.13%    0.14%  │ ││              ││              ││  0x00007f2da123526b: cmp    %ebx,%ebp
                  │ ││╭             ││              ││  0x00007f2da123526d: je     0x00007f2da123556b  ;*if_icmpne
                  │ │││             ││              ││                                                ; - com.google.re2j.Machine::match@347 (line 246)
  0.10%    0.15%  │ │││             ││              ││  0x00007f2da1235273: xor    %r10d,%r10d
  0.24%    0.25%  │ │││             ││    ↗         ││  0x00007f2da1235276: mov    %edi,0x1c(%rsp)
  0.19%    0.21%  │ │││             ││    │         ││  0x00007f2da123527a: mov    0x50(%rsp),%rsi
  0.10%    0.12%  │ │││             ││    │         ││  0x00007f2da123527f: mov    0x20(%rsp),%rdx
  0.12%    0.13%  │ │││             ││    │         ││  0x00007f2da1235284: mov    0x58(%rsp),%rcx
  0.15%    0.26%  │ │││             ││    │         ││  0x00007f2da1235289: mov    %ebp,%r8d
  0.16%    0.14%  │ │││             ││    │         ││  0x00007f2da123528c: mov    %edi,%r9d
  0.10%    0.18%  │ │││             ││    │         ││  0x00007f2da123528f: mov    0x34(%rsp),%edi
  0.07%    0.14%  │ │││             ││    │         ││  0x00007f2da1235293: mov    0x3c(%rsp),%ebx
  0.14%    0.20%  │ │││             ││    │         ││  0x00007f2da1235297: mov    %ebx,(%rsp)
  0.16%    0.14%  │ │││             ││    │         ││  0x00007f2da123529a: mov    0x38(%rsp),%r11d
  0.08%    0.07%  │ │││             ││    │         ││  0x00007f2da123529f: mov    %r11d,0x8(%rsp)
  0.18%    0.09%  │ │││             ││    │         ││  0x00007f2da12352a4: mov    %r10d,0x10(%rsp)
  0.23%    0.30%  │ │││             ││    │         ││  0x00007f2da12352a9: xchg   %ax,%ax
  0.08%    0.12%  │ │││             ││    │         ││  0x00007f2da12352ab: callq  0x00007f2da1046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=624}
                  │ │││             ││    │         ││                                                ;*invokespecial step
                  │ │││             ││    │         ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  │ │││             ││    │         ││                                                ;   {optimized virtual_call}
  0.01%    0.01%  │ │││             ││    │         ││  0x00007f2da12352b0: mov    0x50(%rsp),%r10
  0.39%    0.56%  │ │││             ││    │         ││  0x00007f2da12352b5: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │ │││             ││    │         ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.80%    0.71%  │ │││             ││    │         ││  0x00007f2da12352ba: movzbl 0x11(%r10),%ecx    ;*getfield captures
                  │ │││             ││    │         ││                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.04%    0.08%  │ │││             ││    │         ││  0x00007f2da12352bf: mov    0x28(%rsp),%r11d
  0.02%    0.03%  │ │││             ││    │         ││  0x00007f2da12352c4: test   %r11d,%r11d
                  │ │││╭            ││    │         ││  0x00007f2da12352c7: je     0x00007f2da1235576  ;*ifne
                  │ ││││            ││    │         ││                                                ; - com.google.re2j.Machine::match@360 (line 247)
  0.09%    0.12%  │ ││││            ││    │         ││  0x00007f2da12352cd: test   %ecx,%ecx
                  │ ││││            ││    │         ││  0x00007f2da12352cf: jne    0x00007f2da1235831  ;*ifne
                  │ ││││            ││    │         ││                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.36%    0.45%  │ ││││            ││    │         ││  0x00007f2da12352d5: test   %eax,%eax
                  │ ││││            ││    │         ││  0x00007f2da12352d7: jne    0x00007f2da123594d  ;*ifeq
                  │ ││││            ││    │         ││                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.08%    0.09%  │ ││││            ││    │         ││  0x00007f2da12352dd: mov    0x2c(%rsp),%r9d
  0.01%    0.04%  │ ││││            ││    │         ││  0x00007f2da12352e2: cmp    $0xffffffff,%r9d
                  │ ││││╭           ││    │         ││  0x00007f2da12352e6: je     0x00007f2da12355b5  ;*if_icmpeq
                  │ │││││           ││    │         ││                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.08%    0.13%  │ │││││           ││    │         ││  0x00007f2da12352ec: mov    0x48(%rsp),%rdi
  0.30%    0.40%  │ │││││           ││    │         ││  0x00007f2da12352f1: mov    0x10(%rdi),%r11d   ;*getfield end
                  │ │││││           ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │ │││││           ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.14%    0.16%  │ │││││           ││    │         ││  0x00007f2da12352f5: mov    0x30(%rsp),%r8d
  0.03%    0.05%  │ │││││           ││    │         ││  0x00007f2da12352fa: add    0x1c(%rsp),%r8d
  0.12%    0.10%  │ │││││           ││    │         ││  0x00007f2da12352ff: add    0xc(%rdi),%r8d     ;*iadd
                  │ │││││           ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │ │││││           ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.32%    0.34%  │ │││││           ││    │         ││  0x00007f2da1235303: cmp    %r11d,%r8d
                  │ │││││╭          ││    │         ││  0x00007f2da1235306: jge    0x00007f2da12355ca  ;*if_icmpge
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.14%    0.19%  │ ││││││          ││    │         ││  0x00007f2da123530c: mov    0x14(%rdi),%ebp    ;*getfield str
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.05%  │ ││││││          ││    │         ││  0x00007f2da123530f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2da12360e9
  1.34%    1.44%  │ ││││││          ││    │         ││  0x00007f2da1235314: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │ ││││││          ││    │         ││  0x00007f2da123531b: jne    0x00007f2da1235725
  0.58%    0.62%  │ ││││││          ││    │         ││  0x00007f2da1235321: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%           │ ││││││          ││    │         ││  0x00007f2da1235325: test   %r8d,%r8d
                  │ ││││││          ││    │         ││  0x00007f2da1235328: jl     0x00007f2da1235881  ;*iflt
                  │ ││││││          ││    │         ││                                                ; - java.lang.String::charAt@1 (line 657)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.02%    0.00%  │ ││││││          ││    │         ││  0x00007f2da123532e: mov    %r8d,%edx
           0.00%  │ ││││││          ││    │         ││  0x00007f2da1235331: mov    %r10,%r9
  0.51%    0.58%  │ ││││││          ││    │         ││  0x00007f2da1235334: mov    0xc(%rbx),%r10d    ;*getfield value
                  │ ││││││          ││    │         ││                                                ; - java.lang.String::charAt@6 (line 657)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.01%  │ ││││││          ││    │         ││  0x00007f2da1235338: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                  │ ││││││          ││    │         ││                                                ; - java.lang.String::charAt@9 (line 657)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │ ││││││          ││    │         ││                                                ; implicit exception: dispatches to 0x00007f2da12360fd
  2.21%    2.46%  │ ││││││          ││    │         ││  0x00007f2da123533d: cmp    %ebp,%r8d
  0.62%    0.49%  │ ││││││          ││    │         ││  0x00007f2da1235340: jge    0x00007f2da123599d  ;*if_icmplt
                  │ ││││││          ││    │         ││                                                ; - java.lang.String::charAt@10 (line 657)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.49%    0.51%  │ ││││││          ││    │         ││  0x00007f2da1235346: cmp    %ebp,%r8d
                  │ ││││││          ││    │         ││  0x00007f2da1235349: jae    0x00007f2da12356ad
           0.00%  │ ││││││          ││    │         ││  0x00007f2da123534f: shl    $0x3,%r10
                  │ ││││││          ││    │         ││  0x00007f2da1235353: mov    %r8d,%r11d
                  │ ││││││          ││    │         ││  0x00007f2da1235356: movzwl 0x10(%r10,%r8,2),%r8d  ;*caload
                  │ ││││││          ││    │         ││                                                ; - java.lang.String::charAt@27 (line 660)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.52%    0.54%  │ ││││││          ││    │         ││  0x00007f2da123535c: cmp    $0xd800,%r8d
                  │ ││││││          ││    │         ││  0x00007f2da1235363: jge    0x00007f2da1235a05  ;*if_icmplt
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │ ││││││          ││    │         ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%  │ ││││││          ││    │         ││  0x00007f2da1235369: shl    $0x3,%r8d          ;*ishl
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.04%    0.05%  │ ││││││          ││    │         ││  0x00007f2da123536d: mov    %r8d,%r11d
  0.22%    0.23%  │ ││││││          ││    │         ││  0x00007f2da1235370: or     $0x1,%r11d
  0.50%    0.40%  │ ││││││          ││    │         ││  0x00007f2da1235374: and    $0x7,%r8d
  0.04%    0.03%  │ ││││││          ││    │         ││  0x00007f2da1235378: sar    $0x3,%r11d         ;*ishr
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.36%    0.34%  │ ││││││          ││    │         ││  0x00007f2da123537c: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.01%  │ ││││││          ││    │         ││  0x00007f2da1235380: mov    %r9,%r10
  0.19%    0.17%  │ ││││││          ││    │         ││  0x00007f2da1235383: mov    0x2c(%rsp),%r9d    ;*aload
                  │ ││││││          ││    │         ││                                                ; - com.google.re2j.Machine::match@425 (line 263)
  0.00%    0.02%  │ ││││││          ││    │ ↗↗      ││  0x00007f2da1235388: mov    %r10,%rbx
  0.32%    0.31%  │ ││││││          ││    │ ││      ││  0x00007f2da123538b: mov    %rdi,0x48(%rsp)
  0.05%    0.05%  │ ││││││          ││    │ ││      ││  0x00007f2da1235390: mov    %r9d,0x34(%rsp)    ; OopMap{r10=Oop rbx=Oop rdi=Oop [32]=Oop [72]=Oop [88]=Oop off=853}
                  │ ││││││          ││    │ ││      ││                                                ;*goto
                  │ ││││││          ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.17%    0.17%  │ ││││││          ││    │ ││      ││  0x00007f2da1235395: test   %eax,0x17794c65(%rip)        # 0x00007f2db89ca000
                  │ ││││││          ││    │ ││      ││                                                ;*goto
                  │ ││││││          ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  │ ││││││          ││    │ ││      ││                                                ;   {poll}
  0.01%           │ ││││││          ││    │ ││      ││  0x00007f2da123539b: mov    0x28(%r10),%edx    ;*getfield matchcap
                  │ ││││││          ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.34%    0.37%  │ ││││││          ││    │ ││      ││  0x00007f2da123539f: mov    0x14(%r10),%r9d    ;*getfield re2
                  │ ││││││          ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.03%    0.02%  │ ││││││          ││    │ ││      ││  0x00007f2da12353a3: vmovd  %r9d,%xmm1
  0.19%    0.15%  │ ││││││          ││    │ ││      ││  0x00007f2da12353a8: mov    0x58(%rsp),%r10
           0.00%  │ ││││││          ││    │ ││      ││  0x00007f2da12353ad: shr    $0x3,%r10
  0.26%    0.26%  │ ││││││          ││    │ ││      ││  0x00007f2da12353b1: mov    %r10d,0x18(%rsp)
  0.03%    0.01%  │ ││││││          ││    │ ││      ││  0x00007f2da12353b6: mov    0x3c(%rsp),%r9d
  0.17%    0.17%  │ ││││││          ││    │ ││      ││  0x00007f2da12353bb: mov    0x20(%rsp),%r10
  0.01%           │ ││││││          ││    │ ││      ││  0x00007f2da12353c0: mov    %r10,0x58(%rsp)
  0.32%    0.23%  │ ││││││          ││    │ ││      ││  0x00007f2da12353c5: mov    0x30(%rsp),%r10d
  0.03%    0.02%  │ ││││││          ││    │ ││      ││  0x00007f2da12353ca: mov    %r10d,0x28(%rsp)
  0.20%    0.13%  │ ││││││          ││    │ ││      ││  0x00007f2da12353cf: mov    %r8d,0x30(%rsp)
           0.00%  │ ││││││          ││    │ ││      ││  0x00007f2da12353d4: mov    %r11d,0x2c(%rsp)
  0.30%    0.16%  │ ││││││          ││    │ ││      ││  0x00007f2da12353d9: vmovd  %edx,%xmm2         ;*aload
                  │ ││││││          ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.01%  │ │↘││││          ││    │ ││      ││  0x00007f2da12353dd: mov    0x18(%rsp),%r10d
  0.19%    0.12%  │ │ ││││          ││    │ ││      ││  0x00007f2da12353e2: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f2da1236092
  0.04%    0.02%  │ │ ││││          ││    │ ││      ││  0x00007f2da12353e8: test   %r11d,%r11d
                  │ │ ││││╭         ││    │ ││      ││  0x00007f2da12353eb: je     0x00007f2da1235546  ;*ifeq
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.30%    0.20%  │ │ │││││         ││    │ ││      ││  0x00007f2da12353f1: mov    0x14(%rsp),%edx
  0.03%    0.04%  │ │ │││││         ││    │ ││      ││  0x00007f2da12353f5: test   %edx,%edx
                  │ │ │││││         ││    │ ││      ││  0x00007f2da12353f7: jne    0x00007f2da1235aad  ;*ifeq
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.12%    0.11%  │ │ │││││         ││    │ ││      ││  0x00007f2da12353fd: test   %eax,%eax
                  │ │ │││││         ││    │ ││      ││  0x00007f2da12353ff: jne    0x00007f2da1235b05  ;*ifeq
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
                  │ │ │││││         ││    │ ││      ││  0x00007f2da1235405: vmovd  %xmm1,%r10d
  0.33%    0.26%  │ │ │││││         ││    │ ││      ││  0x00007f2da123540a: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                  │ │ │││││         ││    │ ││      ││                                                ; implicit exception: dispatches to 0x00007f2da123610d
  0.02%    0.01%  │ │ │││││         ││    │ ││      ││  0x00007f2da123540f: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                  │ │ │││││         ││    │ ││      ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                  │ │ │││││         ││    │ ││      ││                                                ; implicit exception: dispatches to 0x00007f2da123611d
  0.10%    0.14%  │ │ │││││         ││    │ ││      ││  0x00007f2da1235414: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                  │ │ │││││         ││    │ ││      ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                  │ │ │││││         ││    │ ││      ││                                                ; implicit exception: dispatches to 0x00007f2da123612d
  0.04%    0.08%  │ │ │││││         ││    │ ││      ││  0x00007f2da1235419: test   %ebp,%ebp
                  │ │ │││││         ││    │ ││      ││  0x00007f2da123541b: jne    0x00007f2da1235a7d  ;*aload_0
                  │ │ │││││         ││    │ ││      ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.45%    0.26%  │ │ │││││         ││↗   │ ││      ││  0x00007f2da1235421: test   %eax,%eax
                  │ │ │││││         │││   │ ││      ││  0x00007f2da1235423: jne    0x00007f2da123577d  ;*ifne
                  │ │ │││││         │││   │ ││      ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.02%    0.01%  │ │ │││││         │││   │ ││      ││  0x00007f2da1235429: mov    0x1c(%rsp),%edi
  0.07%    0.03%  │ │ │││││         │││   │ ││      ││  0x00007f2da123542d: test   %edi,%edi
                  │ │ │││││╭        │││   │ ││      ││  0x00007f2da123542f: je     0x00007f2da1235561  ;*ifeq
                  │ │ ││││││        │││   │ ││      ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.00%    0.01%  │ │ ││││││        │││   │ ││      ││  0x00007f2da1235435: mov    0x38(%rsp),%r8d
  0.41%    0.21%  │ │ ││││││        │││   │ ││      ││  0x00007f2da123543a: test   %r8d,%r8d
                  │ │ ││││││        │││   │ ││      ││  0x00007f2da123543d: jne    0x00007f2da12357d1  ;*aload_0
                  │ │ ││││││        │││   │ ││      ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.04%    0.01%  │ │ ││││││        │││  ↗│ ││      ││  0x00007f2da1235443: test   %ecx,%ecx
                  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235445: jne    0x00007f2da12358f5  ;*ifeq
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.10%    0.03%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123544b: mov    0x18(%rbx),%r10d   ;*getfield prog
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.01%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123544f: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield startInst
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                  │ │ ││││││        │││  ││ ││      ││                                                ; implicit exception: dispatches to 0x00007f2da12360a1
  0.44%    0.09%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235454: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f2da12360b1
  0.04%           │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235459: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235460: jne    0x00007f2da1235670  ;*invokevirtual add
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.13%    0.00%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235466: mov    %edx,0x14(%rsp)
                  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123546a: mov    %r8d,0x38(%rsp)
  0.43%    0.06%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123546f: mov    %rbx,0x50(%rsp)    ;*ifeq
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.02%    0.01%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235474: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.12%           │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235478: mov    0x18(%rsp),%r10d
           0.01%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123547d: shl    $0x3,%r10          ;*aload
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.47%    0.13%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235481: mov    %r10,0x20(%rsp)
  0.02%    0.02%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235486: vmovd  %xmm2,%r11d
  0.13%    0.00%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123548b: mov    %r11,%r8
  0.01%           │ │ ││││││        │││  ││ ││      ││  0x00007f2da123548e: shl    $0x3,%r8           ;*getfield matchcap
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.40%    0.13%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235492: mov    %r10,%rdx
  0.01%    0.03%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235495: mov    0x1c(%rsp),%ecx
  0.12%    0.03%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da1235499: xor    %edi,%edi
  0.00%    0.00%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123549b: mov    %rbx,(%rsp)
  0.34%    0.44%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da123549f: callq  0x00007f2da1046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1124}
                  │ │ ││││││        │││  ││ ││      ││                                                ;*invokevirtual add
                  │ │ ││││││        │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                  │ │ ││││││        │││  ││ ││      ││                                                ;   {optimized virtual_call}
  0.31%    0.33%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da12354a4: mov    0x34(%rsp),%r11d
  0.17%    0.22%  │ │ ││││││        │││  ││ ││      ││  0x00007f2da12354a9: test   %r11d,%r11d
                  │ │ ││││││╭       │││  ││ ││      ││  0x00007f2da12354ac: jl     0x00007f2da123554f  ;*ifge
                  │ │ │││││││       │││  ││ ││      ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                  │ │ │││││││       │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%  │ │ │││││││       │││  ││ ││      ││  0x00007f2da12354b2: xor    %ecx,%ecx          ;*iload_0
                  │ │ │││││││       │││  ││ ││      ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                  │ │ │││││││       │││  ││ ││      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.39%  │ │ │││││││       │││↗ ││ ││      ││  0x00007f2da12354b4: cmp    $0xa,%r11d
                  │ │ │││││││╭      ││││ ││ ││      ││  0x00007f2da12354b8: je     0x00007f2da12355d8  ;*iload_1
                  │ │ ││││││││      ││││ ││ ││      ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                  │ │ ││││││││      ││││ ││ ││      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.11%  │ │ ││││││││      ││││ ││ ││↗     ││  0x00007f2da12354be: mov    0x2c(%rsp),%r8d
  0.09%    0.12%  │ │ ││││││││      ││││ ││ │││     ││  0x00007f2da12354c3: test   %r8d,%r8d
                  │ │ ││││││││╭     ││││ ││ │││     ││  0x00007f2da12354c6: jl     0x00007f2da1235559  ;*iload_1
                  │ │ │││││││││     ││││ ││ │││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                  │ │ │││││││││     ││││ ││ │││     ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.05%  │ │ │││││││││     ││││↗││ │││     ││  0x00007f2da12354cc: cmp    $0xa,%r8d
                  │ │ │││││││││╭    │││││││ │││     ││  0x00007f2da12354d0: je     0x00007f2da12355e0  ;*iload_0
                  │ │ ││││││││││    │││││││ │││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                  │ │ ││││││││││    │││││││ │││     ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.31%    0.30%  │ │ ││││││││││    │││││││ │││↗    ││  0x00007f2da12354d6: mov    0x34(%rsp),%r9d
  0.09%    0.11%  │ │ ││││││││││    │││││││ ││││    ││  0x00007f2da12354db: add    $0xffffffbf,%r9d
  0.09%    0.09%  │ │ ││││││││││    │││││││ ││││    ││  0x00007f2da12354df: cmp    $0x1a,%r9d
                  │ │ ││││││││││╭   │││││││ ││││    ││  0x00007f2da12354e3: jb     0x00007f2da12354f8  ;*if_icmple
                  │ │ │││││││││││   │││││││ ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │ │ │││││││││││   │││││││ ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │ │││││││││││   │││││││ ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.10%  │ │ │││││││││││   │││││││ ││││    ││  0x00007f2da12354e5: mov    0x34(%rsp),%r10d
  0.37%    0.29%  │ │ │││││││││││   │││││││ ││││    ││  0x00007f2da12354ea: add    $0xffffff9f,%r10d
  0.13%    0.14%  │ │ │││││││││││   │││││││ ││││    ││  0x00007f2da12354ee: cmp    $0x1a,%r10d
                  │ │ │││││││││││╭  │││││││ ││││    ││  0x00007f2da12354f2: jae    0x00007f2da12355e8  ;*iconst_1
                  │ │ ││││││││││││  │││││││ ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │ │ ││││││││││││  │││││││ ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │ ││││││││││││  │││││││ ││││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.06%  │ │ ││││││││││↘│  │││││││ ││││↗   ││  0x00007f2da12354f8: mov    $0x1,%ebp          ;*ireturn
                  │ │ ││││││││││ │  │││││││ │││││   ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │ │ ││││││││││ │  │││││││ │││││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │ ││││││││││ │  │││││││ │││││   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.09%  │ │ ││││││││││ │  │││││││ │││││↗  ││  0x00007f2da12354fd: mov    0x48(%rsp),%r9
  0.70%    0.75%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da1235502: mov    0x10(%r9),%ebx     ;*getfield end
                  │ │ ││││││││││ │  │││││││ ││││││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │ │ ││││││││││ │  │││││││ ││││││  ││                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.61%    0.64%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da1235506: mov    0x1c(%rsp),%edi
  0.07%    0.11%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da123550a: add    0x28(%rsp),%edi    ;*iadd
                  │ │ ││││││││││ │  │││││││ ││││││  ││                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.09%    0.08%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da123550e: mov    0x2c(%rsp),%edx
  0.21%    0.21%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da1235512: add    $0xffffffbf,%edx
  0.17%    0.17%  │ │ ││││││││││ │  │││││││ ││││││  ││  0x00007f2da1235515: cmp    $0x1a,%edx
                  │ │ ││││││││││ │╭ │││││││ ││││││  ││  0x00007f2da1235518: jb     0x00007f2da123552d  ;*if_icmple
                  │ │ ││││││││││ ││ │││││││ ││││││  ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │ │ ││││││││││ ││ │││││││ ││││││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │ ││││││││││ ││ │││││││ ││││││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.03%  │ │ ││││││││││ ││ │││││││ ││││││  ││  0x00007f2da123551a: mov    0x2c(%rsp),%r10d
  0.07%    0.10%  │ │ ││││││││││ ││ │││││││ ││││││  ││  0x00007f2da123551f: add    $0xffffff9f,%r10d
  0.25%    0.13%  │ │ ││││││││││ ││ │││││││ ││││││  ││  0x00007f2da1235523: cmp    $0x1a,%r10d
                  │ │ ││││││││││ ││╭│││││││ ││││││  ││  0x00007f2da1235527: jae    0x00007f2da123560c  ;*iconst_1
                  │ │ ││││││││││ ││││││││││ ││││││  ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │ │ ││││││││││ ││││││││││ ││││││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │ ││││││││││ ││││││││││ ││││││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.14%  │ │ ││││││││││ │↘││││││││ ││││││↗ ││  0x00007f2da123552d: mov    $0x1,%edx          ;*ireturn
                  │ │ ││││││││││ │ ││││││││ │││││││ ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │ │ ││││││││││ │ ││││││││ │││││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │ ││││││││││ │ ││││││││ │││││││ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.15%  │ │ ││││││││││ │ ││││││││ │││││││↗││  0x00007f2da1235532: cmp    %edx,%ebp
                  │ │ ││││││││││ │ │╰││││││ ││││││││││  0x00007f2da1235534: je     0x00007f2da1235260  ;*if_icmpeq
                  │ │ ││││││││││ │ │ ││││││ ││││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                  │ │ ││││││││││ │ │ ││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.10%  │ │ ││││││││││ │ │ ││││││ ││││││││││  0x00007f2da123553a: or     $0x10,%ecx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                  │ │ ││││││││││ │ │ ││││││ ││││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.01%  │ │ ││││││││││ │ │ ││││││ ││││││││││  0x00007f2da123553d: mov    %ecx,0x3c(%rsp)
  0.05%    0.13%  │ │ ││││││││││ │ │ ╰│││││ ││││││││││  0x00007f2da1235541: jmpq   0x00007f2da1235267
  0.03%    0.02%  │ │ ││││↘│││││ │ │  │││││ ││││││││││  0x00007f2da1235546: mov    0x14(%rsp),%edx
  0.01%           │ │ ││││ │││││ │ │  ╰││││ ││││││││││  0x00007f2da123554a: jmpq   0x00007f2da1235421
  0.01%           │ │ ││││ │↘│││ │ │   ││││ ││││││││││  0x00007f2da123554f: mov    $0x5,%ecx
                  │ │ ││││ │ │││ │ │   ╰│││ ││││││││││  0x00007f2da1235554: jmpq   0x00007f2da12354b4
  0.00%    0.01%  │ │ ││││ │ │↘│ │ │    │││ ││││││││││  0x00007f2da1235559: or     $0xa,%ecx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                  │ │ ││││ │ │ │ │ │    │││ ││││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                  │ │ ││││ │ │ │ │ │    ╰││ ││││││││││  0x00007f2da123555c: jmpq   0x00007f2da12354cc
                  │ │ ││││ ↘ │ │ │ │     ││ ││││││││││  0x00007f2da1235561: mov    0x38(%rsp),%r8d
                  │ │ ││││   │ │ │ │     ╰│ ││││││││││  0x00007f2da1235566: jmpq   0x00007f2da1235443
  0.00%           │ │ ↘│││   │ │ │ │      │ ││││││││││  0x00007f2da123556b: mov    $0x1,%r10d
                  │ │  │││   │ │ │ │      ╰ ││││││││││  0x00007f2da1235571: jmpq   0x00007f2da1235276
                  │ │  ↘││   │ │ │ │        ││││││││││  0x00007f2da1235576: test   %ecx,%ecx
                  │ │   ││   │ │ │ │        ││││││││││  0x00007f2da1235578: jne    0x00007f2da1235ee1  ;*ifeq
                  │ │   ││   │ │ │ │        ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                  │ │   ││   │ │ │ │        ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │        ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
  0.00%           │ │   ││   │ │ │ │        ││││││││││  0x00007f2da123557e: mov    0x58(%rsp),%r11
                  │ │   ││   │ │ │ │        ││││││││││  0x00007f2da1235583: movzbl 0x18(%r11),%r8d    ; implicit exception: dispatches to 0x00007f2da1236195
  0.01%           │ │   ││   │ │ │ │        ││││││││││  0x00007f2da1235588: test   %r8d,%r8d
                  │ │   ││   │ │ │ │       ╭││││││││││  0x00007f2da123558b: jne    0x00007f2da12355a6  ;*ifeq
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da123558d: movb   $0x1,0x18(%r11)    ;*putfield empty
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da1235592: mov    0x1c(%r11),%ebp    ;*getfield pcs
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da1235596: mov    %r12,0x10(%r11)    ;*putfield pcsl
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da123559a: mov    %r12d,0xc(%r11)    ;*putfield size
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da123559e: test   %ebp,%ebp
                  │ │   ││   │ │ │ │       │││││││││││  0x00007f2da12355a0: jne    0x00007f2da1235fb1  ;*if_icmpne
                  │ │   ││   │ │ │ │       │││││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.00%  │ │   ││   │ │ │ │       ↘││││││││││  0x00007f2da12355a6: add    $0x80,%rsp
  0.00%           │ │   ││   │ │ │ │        ││││││││││  0x00007f2da12355ad: pop    %rbp
                  │ │   ││   │ │ │ │        ││││││││││  0x00007f2da12355ae: test   %eax,0x17794a4c(%rip)        # 0x00007f2db89ca000
                  │ │   ││   │ │ │ │        ││││││││││                                                ;   {poll_return}
                  │ │   ││   │ │ │ │        ││││││││││  0x00007f2da12355b4: retq   
           0.00%  │ │   ↘│   │ │ │ │        ││││││││││  0x00007f2da12355b5: mov    0x30(%rsp),%r8d
  0.01%    0.00%  │ │    │   │ │ │ │        ││││││││││  0x00007f2da12355ba: mov    $0xffffffff,%r11d
                  │ │    │   │ │ │ │        ││││││││││  0x00007f2da12355c0: mov    0x48(%rsp),%rdi
                  │ │    │   │ │ │ │        ╰│││││││││  0x00007f2da12355c5: jmpq   0x00007f2da1235388
  0.01%    0.00%  │ │    ↘   │ │ │ │         │││││││││  0x00007f2da12355ca: mov    $0xffffffff,%r11d
  0.01%    0.00%  │ │        │ │ │ │         │││││││││  0x00007f2da12355d0: xor    %r8d,%r8d
                  │ │        │ │ │ │         ╰││││││││  0x00007f2da12355d3: jmpq   0x00007f2da1235388
                  │ │        ↘ │ │ │          ││││││││  0x00007f2da12355d8: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                  │ │          │ │ │          ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                  │ │          │ │ │          ╰│││││││  0x00007f2da12355db: jmpq   0x00007f2da12354be
  0.00%    0.00%  │ │          ↘ │ │           │││││││  0x00007f2da12355e0: or     $0x2,%ecx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                  │ │            │ │           │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                  │ │            │ │           ╰││││││  0x00007f2da12355e3: jmpq   0x00007f2da12354d6
  0.02%    0.02%  │ │            ↘ │            ││││││  0x00007f2da12355e8: mov    0x34(%rsp),%r9d
           0.01%  │ │              │            ││││││  0x00007f2da12355ed: add    $0xffffffd0,%r9d
  0.05%    0.07%  │ │              │            ││││││  0x00007f2da12355f1: cmp    $0xa,%r9d
                  │ │              │            ╰│││││  0x00007f2da12355f5: jb     0x00007f2da12354f8  ;*if_icmple
                  │ │              │             │││││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                  │ │              │             │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │              │             │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%  │ │              │             │││││  0x00007f2da12355fb: cmp    $0x5f,%r11d
                  │ │              │             │││││  0x00007f2da12355ff: je     0x00007f2da1235fc1  ;*if_icmpne
                  │ │              │             │││││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │ │              │             │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │              │             │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%  │ │              │             │││││  0x00007f2da1235605: xor    %ebp,%ebp
  0.01%           │ │              │             ╰││││  0x00007f2da1235607: jmpq   0x00007f2da12354fd
  0.07%    0.05%  │ │              ↘              ││││  0x00007f2da123560c: mov    0x2c(%rsp),%edx
  0.20%    0.21%  │ │                             ││││  0x00007f2da1235610: add    $0xffffffd0,%edx
  0.05%    0.04%  │ │                             ││││  0x00007f2da1235613: cmp    $0xa,%edx
                  │ │                             ╰│││  0x00007f2da1235616: jb     0x00007f2da123552d  ;*if_icmple
                  │ │                              │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                  │ │                              │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │                              │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.05%  │ │                              │││  0x00007f2da123561c: cmp    $0x5f,%r8d
                  │ │                              │││  0x00007f2da1235620: je     0x00007f2da1235ffd  ;*if_icmpne
                  │ │                              │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │ │                              │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │                              │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.05%  │ │                              │││  0x00007f2da1235626: xor    %edx,%edx
  0.01%    0.03%  │ │                              ╰││  0x00007f2da1235628: jmpq   0x00007f2da1235532
                  │ │                               ││  0x00007f2da123562d: mov    $0xf,%r9d
                  │ │                               ╰│  0x00007f2da1235633: jmpq   0x00007f2da12351fa
                  │ │                                │  0x00007f2da1235638: mov    $0xffffffff,%ecx
                  │ │                                │  0x00007f2da123563d: xor    %r11d,%r11d
                  │ │                                │  0x00007f2da1235640: jmpq   0x00007f2da12351dd
                  ↘ │                                │  0x00007f2da1235645: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                    │                                │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                    │                                ╰  0x00007f2da1235649: jmpq   0x00007f2da1235204
                    ↘                                   0x00007f2da123564e: mov    %r8d,%edi
                                                        0x00007f2da1235651: add    $0xffffffd0,%edi
....................................................................................................
 26.31%   25.14%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.45%   40.91%         C2, level 4  com.google.re2j.Machine::step, version 500 (529 bytes) 
 28.01%   29.47%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 508 (852 bytes) 
 26.31%   25.14%         C2, level 4  com.google.re2j.Machine::match, version 535 (1057 bytes) 
  2.29%    2.28%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.12%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 555 (28 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 555 (0 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 555 (8 bytes) 
  0.08%    0.04%         C2, level 4  java.util.Collections::shuffle, version 564 (15 bytes) 
  0.07%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 555 (12 bytes) 
  0.06%    0.02%   [kernel.kallsyms]  [unknown] (42 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (21 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 535 (180 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 555 (114 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 555 (35 bytes) 
  0.05%                       [vdso]  [unknown] (2 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.04%    0.00%         C2, level 4  java.util.Collections::shuffle, version 564 (51 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 555 (70 bytes) 
  1.86%    1.77%  <...other 384 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.47%   40.93%         C2, level 4  com.google.re2j.Machine::step, version 500 
 28.01%   29.47%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 508 
 26.40%   25.17%         C2, level 4  com.google.re2j.Machine::match, version 535 
  3.36%    3.04%   [kernel.kallsyms]  [unknown] 
  0.63%    0.30%         C2, level 4  com.google.re2j.Pattern::find, version 555 
  0.20%    0.08%         C2, level 4  java.util.Collections::shuffle, version 564 
  0.09%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 599 
  0.08%    0.00%              [vdso]  [unknown] 
  0.05%    0.03%      hsdis-amd64.so  decode_instructions 
  0.05%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.01%        libc-2.26.so  __clock_gettime 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%                    libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 563 
  0.02%    0.01%           libjvm.so  _ZN13ObjArrayKlass17oop_push_contentsEP18PSPromotionManagerP7oopDesc 
  0.02%                    libjvm.so  _ZN9StealTask5do_itEP13GCTaskManagerj 
  0.39%    0.48%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 95.84%   95.97%         C2, level 4
  3.36%    3.04%   [kernel.kallsyms]
  0.38%    0.59%           libjvm.so
  0.17%    0.30%        libc-2.26.so
  0.08%    0.00%              [vdso]
  0.07%    0.03%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.04%    0.01%         interpreter
  0.01%    0.01%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  16085.607 ± 238.901  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
