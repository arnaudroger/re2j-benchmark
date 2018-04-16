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
# Warmup Iteration   1: 9696.128 ops/s
# Warmup Iteration   2: 19719.897 ops/s
# Warmup Iteration   3: 20565.719 ops/s
# Warmup Iteration   4: 19953.895 ops/s
# Warmup Iteration   5: 20072.597 ops/s
# Warmup Iteration   6: 20193.801 ops/s
# Warmup Iteration   7: 19932.856 ops/s
# Warmup Iteration   8: 20379.955 ops/s
# Warmup Iteration   9: 20658.993 ops/s
# Warmup Iteration  10: 20243.393 ops/s
# Warmup Iteration  11: 20525.365 ops/s
# Warmup Iteration  12: 20780.184 ops/s
# Warmup Iteration  13: 20440.849 ops/s
# Warmup Iteration  14: 20771.902 ops/s
# Warmup Iteration  15: 20804.895 ops/s
# Warmup Iteration  16: 20045.611 ops/s
# Warmup Iteration  17: 20405.990 ops/s
# Warmup Iteration  18: 20492.051 ops/s
# Warmup Iteration  19: 19143.720 ops/s
# Warmup Iteration  20: 20596.523 ops/s
Iteration   1: 20447.395 ops/s
Iteration   2: 20193.001 ops/s
Iteration   3: 20318.702 ops/s
Iteration   4: 20485.215 ops/s
Iteration   5: 20732.069 ops/s
Iteration   6: 20792.364 ops/s
Iteration   7: 20732.537 ops/s
Iteration   8: 20786.531 ops/s
Iteration   9: 20871.791 ops/s
Iteration  10: 20750.175 ops/s
Iteration  11: 20665.280 ops/s
Iteration  12: 20579.617 ops/s
Iteration  13: 20757.923 ops/s
Iteration  14: 20824.226 ops/s
Iteration  15: 20786.295 ops/s
Iteration  16: 20583.823 ops/s
Iteration  17: 20745.744 ops/s
Iteration  18: 20845.256 ops/s
Iteration  19: 20836.563 ops/s
Iteration  20: 20797.766 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  20676.614 ±(99.9%) 161.647 ops/s [Average]
  (min, avg, max) = (20193.001, 20676.614, 20871.791), stdev = 186.153
  CI (99.9%): [20514.967, 20838.260] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 210868 total address lines.
Perf output processed (skipped 23.888 seconds):
 Column 1: cycles (20453 events)
 Column 2: instructions (20608 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 554 (546 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007f61d8e1abe0: mov    0x8(%rsi),%r10d
                             0x00007f61d8e1abe4: shl    $0x3,%r10
                             0x00007f61d8e1abe8: cmp    %r10,%rax
                             0x00007f61d8e1abeb: jne    0x00007f61d8c18e20  ;   {runtime_call}
                             0x00007f61d8e1abf1: data16 xchg %ax,%ax
                             0x00007f61d8e1abf4: nopl   0x0(%rax,%rax,1)
                             0x00007f61d8e1abfc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.26%    0.27%             0x00007f61d8e1ac00: mov    %eax,-0x14000(%rsp)
  0.30%    0.28%             0x00007f61d8e1ac07: push   %rbp
  0.20%    0.13%             0x00007f61d8e1ac08: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 280)
  0.39%    0.33%             0x00007f61d8e1ac0c: mov    %edi,0x18(%rsp)
  0.07%    0.02%             0x00007f61d8e1ac10: mov    %r9d,0x14(%rsp)
  0.21%    0.19%             0x00007f61d8e1ac15: mov    %r8d,0x10(%rsp)
  0.06%    0.07%             0x00007f61d8e1ac1a: mov    %rcx,0x8(%rsp)
  0.40%    0.40%             0x00007f61d8e1ac1f: mov    %rsi,%r13
  0.01%    0.01%             0x00007f61d8e1ac22: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 280)
  0.24%    0.19%             0x00007f61d8e1ac26: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                                                                           ; implicit exception: dispatches to 0x00007f61d8e1b61d
  0.06%    0.08%             0x00007f61d8e1ac2c: mov    %rdx,%r9
  0.40%    0.35%             0x00007f61d8e1ac2f: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007f61d8e1b62d
  0.01%    0.01%             0x00007f61d8e1ac33: test   %r10d,%r10d
                  ╭          0x00007f61d8e1ac36: jle    0x00007f61d8e1ad24  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 281)
  0.16%    0.13%  │          0x00007f61d8e1ac3c: xor    %r8d,%r8d
  0.06%    0.04%  │╭         0x00007f61d8e1ac3f: jmp    0x00007f61d8e1ac55
  0.22%    0.17%  ││   ↗     0x00007f61d8e1ac41: mov    %ebx,%r8d
  0.32%    0.42%  ││   │     0x00007f61d8e1ac44: mov    %r11d,0x78(%rsp)
  1.76%    1.94%  ││   │     0x00007f61d8e1ac49: mov    %edi,0x80(%rsp)
  0.13%    0.18%  ││   │     0x00007f61d8e1ac50: mov    %r10,0x8(%rsp)     ;*aload_0
                  ││   │                                                   ; - com.google.re2j.Machine::step@21 (line 284)
  0.46%    0.50%  │↘   │     0x00007f61d8e1ac55: movzbl 0x11(%r13),%r11d   ;*getfield captures
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 284)
  0.36%    0.51%  │    │     0x00007f61d8e1ac5a: test   %r11d,%r11d
                  │    │     0x00007f61d8e1ac5d: jne    0x00007f61d8e1afb1  ;*ifne
                  │    │                                                   ; - com.google.re2j.Machine::step@25 (line 284)
  2.05%    2.09%  │    │     0x00007f61d8e1ac63: mov    0x20(%r9),%ebp     ;*getfield denseThreadsInstructions
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 294)
  0.20%    0.16%  │    │     0x00007f61d8e1ac67: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f61d8e1b5f9
  0.84%    0.82%  │    │     0x00007f61d8e1ac6c: cmp    %r10d,%r8d
                  │    │     0x00007f61d8e1ac6f: jae    0x00007f61d8e1af47
  0.63%    0.88%  │    │     0x00007f61d8e1ac75: lea    (%r12,%rbp,8),%r10
  1.63%    1.72%  │    │     0x00007f61d8e1ac79: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@83 (line 294)
  0.21%    0.22%  │    │     0x00007f61d8e1ac7e: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f61d8e1b60d
  3.92%    4.20%  │    │     0x00007f61d8e1ac83: mov    %r8d,%ebx
  0.17%    0.16%  │    │     0x00007f61d8e1ac86: inc    %ebx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@165 (line 306)
  1.20%    1.15%  │    │     0x00007f61d8e1ac88: cmp    $0x6,%r11d
                  │    │     0x00007f61d8e1ac8c: je     0x00007f61d8e1aeac  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@93 (line 296)
  1.26%    1.29%  │    │     0x00007f61d8e1ac92: mov    0x8(%r12,%rbp,8),%r10d
  0.47%    0.58%  │    │     0x00007f61d8e1ac97: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007f61d8e1ac9e: jne    0x00007f61d8e1af69
  0.98%    0.98%  │    │     0x00007f61d8e1aca4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.91%    0.87%  │    │     0x00007f61d8e1aca8: mov    0xc(%r10),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.80%    0.74%  │    │     0x00007f61d8e1acac: cmp    $0xa,%ebp
                  │ ╭  │     0x00007f61d8e1acaf: je     0x00007f61d8e1ad53  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.66%    0.69%  │ │  │     0x00007f61d8e1acb5: cmp    $0xb,%ebp
                  │ │  │     0x00007f61d8e1acb8: je     0x00007f61d8e1b025  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.93%    0.96%  │ │  │     0x00007f61d8e1acbe: cmp    $0x9,%ebp
                  │ │  │     0x00007f61d8e1acc1: je     0x00007f61d8e1b071  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.59%    1.61%  │ │  │     0x00007f61d8e1acc7: cmp    $0xc,%ebp
                  │ │  │     0x00007f61d8e1acca: jne    0x00007f61d8e1afd9  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.04%    1.06%  │ │  │     0x00007f61d8e1acd0: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.26%    0.36%  │ │  │     0x00007f61d8e1acd4: cmp    0x18(%rsp),%ecx
                  │ │╭ │     0x00007f61d8e1acd8: je     0x00007f61d8e1ad53  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.52%    1.33%  │ ││ │     0x00007f61d8e1acda: mov    0x24(%r10),%r11d   ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.54%    0.57%  │ ││ │     0x00007f61d8e1acde: cmp    0x18(%rsp),%r11d
                  │ ││╭│     0x00007f61d8e1ace3: je     0x00007f61d8e1ad53  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  2.20%    2.20%  │ ││││     0x00007f61d8e1ace5: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.38%    0.37%  │ ││││     0x00007f61d8e1ace9: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f61d8e1aced: je     0x00007f61d8e1b0bd  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.79%    0.71%  │ ││││     0x00007f61d8e1acf3: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.55%    0.44%  │ ││││     0x00007f61d8e1acf7: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007f61d8e1acfb: je     0x00007f61d8e1b11d  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  2.03%    1.78%  │ ││││     0x00007f61d8e1ad01: mov    0x78(%rsp),%r11d
  0.16%    0.14%  │ ││││     0x00007f61d8e1ad06: mov    0x80(%rsp),%edi
  0.25%    0.18%  │ ││││     0x00007f61d8e1ad0d: mov    0x8(%rsp),%r10     ; OopMap{r10=Oop r9=Oop r13=Oop off=306}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@221 (line 281)
  0.43%    0.51%  │ ││││  ↗  0x00007f61d8e1ad12: test   %eax,0x15de92e8(%rip)        # 0x00007f61eec04000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │ ││││  │                                                ;   {poll}
  2.18%    2.16%  │ ││││  │  0x00007f61d8e1ad18: mov    0xc(%r9),%ecx
  0.20%    0.16%  │ ││││  │  0x00007f61d8e1ad1c: cmp    %ecx,%ebx
                  │ │││╰  │  0x00007f61d8e1ad1e: jl     0x00007f61d8e1ac41  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 281)
  0.04%    0.00%  ↘ │││   │  0x00007f61d8e1ad24: movzbl 0x18(%r9),%r10d
  0.12%    0.15%    │││   │  0x00007f61d8e1ad29: test   %r10d,%r10d
                    │││ ╭ │  0x00007f61d8e1ad2c: jne    0x00007f61d8e1ad47  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.36%    0.46%    │││ │ │  0x00007f61d8e1ad2e: mov    %r12d,0xc(%r9)     ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.01%             │││ │ │  0x00007f61d8e1ad32: mov    0x1c(%r9),%ebp     ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.02%    0.02%    │││ │ │  0x00007f61d8e1ad36: movb   $0x1,0x18(%r9)     ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.10%    0.11%    │││ │ │  0x00007f61d8e1ad3b: mov    %r12,0x10(%r9)     ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.39%    0.43%    │││ │ │  0x00007f61d8e1ad3f: test   %ebp,%ebp
                    │││ │ │  0x00007f61d8e1ad41: jne    0x00007f61d8e1b169  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 281)
  0.01%    0.01%    │││ ↘ │  0x00007f61d8e1ad47: add    $0x60,%rsp
  0.02%    0.03%    │││   │  0x00007f61d8e1ad4b: pop    %rbp
  0.16%    0.11%    │││   │  0x00007f61d8e1ad4c: test   %eax,0x15de92ae(%rip)        # 0x00007f61eec04000
                    │││   │                                                ;   {poll_return}
  0.43%    0.45%    │││   │  0x00007f61d8e1ad52: retq   
  0.34%    0.37%    ↘↘↘   │  0x00007f61d8e1ad53: mov    0x1c(%r10),%r10d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.31%    0.22%          │  0x00007f61d8e1ad57: mov    0x8(%r12,%r10,8),%esi  ; implicit exception: dispatches to 0x00007f61d8e1b63d
  0.39%    0.20%          │  0x00007f61d8e1ad5c: lea    (%r12,%r10,8),%r11
  0.01%    0.01%          │  0x00007f61d8e1ad60: xor    %eax,%eax
  0.00%                   │  0x00007f61d8e1ad62: movabs $0x7f61d4601000,%rdi
  0.00%    0.01%          │  0x00007f61d8e1ad6c: mov    $0x1,%edx
  0.10%    0.10%          │  0x00007f61d8e1ad71: cmp    $0xf8019993,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007f61d8e1ad77: jne    0x00007f61d8e1ae16  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@202 (line 311)
                         ││  0x00007f61d8e1ad7d: mov    0x18(%r11),%ecx    ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%         ││  0x00007f61d8e1ad81: mov    0x8(%rsp),%r10
  0.00%    0.02%         ││  0x00007f61d8e1ad86: mov    0x10(%r10),%rsi    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││                                                ; implicit exception: dispatches to 0x00007f61d8e1b651
  0.12%    0.12%         ││  0x00007f61d8e1ad8a: cmp    $0x40,%ecx
                         ││  0x00007f61d8e1ad8d: jg     0x00007f61d8e1b24d  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.01%         ││  0x00007f61d8e1ad93: shl    %cl,%rdx           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.20%         ││  0x00007f61d8e1ad96: mov    %rsi,%rbp
           0.02%         ││  0x00007f61d8e1ad99: and    %rdx,%rbp          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%                  ││  0x00007f61d8e1ad9c: test   %rbp,%rbp
                         ││  0x00007f61d8e1ad9f: jne    0x00007f61d8e1b2b9  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.05%         ││  0x00007f61d8e1ada5: cmp    $0x40,%ecx
                         ││  0x00007f61d8e1ada8: jge    0x00007f61d8e1b331  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.06%         ││  0x00007f61d8e1adae: mov    %r12b,0x18(%r10)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%                  ││  0x00007f61d8e1adb2: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││  0x00007f61d8e1adb6: or     %rsi,%rdx
  0.12%    0.03%         ││  0x00007f61d8e1adb9: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.03%         ││  0x00007f61d8e1adbd: mov    0x20(%r10),%ebp    ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%                  ││  0x00007f61d8e1adc1: mov    %ecx,%esi
                         ││  0x00007f61d8e1adc3: inc    %esi
  0.04%    0.04%         ││  0x00007f61d8e1adc5: mov    %esi,0xc(%r10)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%         ││  0x00007f61d8e1adc9: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f61d8e1b665
  0.01%    0.00%         ││  0x00007f61d8e1adce: cmp    %esi,%ecx
                         ││  0x00007f61d8e1add0: jae    0x00007f61d8e1b17d
  0.05%                  ││  0x00007f61d8e1add6: mov    0x8(%r12,%rbp,8),%esi
  0.04%    0.05%         ││  0x00007f61d8e1addb: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                         ││  0x00007f61d8e1ade1: jne    0x00007f61d8e1b1e5  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.01%         ││  0x00007f61d8e1ade7: lea    (%r12,%rbp,8),%r8  ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%         ││  0x00007f61d8e1adeb: lea    0x10(%r8,%rcx,4),%rcx
  0.03%    0.00%         ││  0x00007f61d8e1adf0: mov    %r11,%r8
  0.05%    0.05%         ││  0x00007f61d8e1adf3: shr    $0x3,%r8
  0.05%    0.03%         ││  0x00007f61d8e1adf7: mov    %r8d,(%rcx)
  0.08%    0.02%         ││  0x00007f61d8e1adfa: mov    %rcx,%r11
  0.01%    0.00%         ││  0x00007f61d8e1adfd: shr    $0x9,%r11
  0.08%    0.05%         ││  0x00007f61d8e1ae01: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.26%         ││  0x00007f61d8e1ae05: mov    0x78(%rsp),%r11d
                         ││  0x00007f61d8e1ae0a: mov    0x80(%rsp),%edi
  0.00%                  │╰  0x00007f61d8e1ae11: jmpq   0x00007f61d8e1ad12
                         ↘   0x00007f61d8e1ae16: cmp    $0xf801990d,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007f61d8e1ae1c: jne    0x00007f61d8e1b405  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%    0.00%             0x00007f61d8e1ae22: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                             0x00007f61d8e1ae26: mov    0x8(%rsp),%r10
                             0x00007f61d8e1ae2b: mov    0x10(%r10),%rsi    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                                                                           ; implicit exception: dispatches to 0x00007f61d8e1b67d
                             0x00007f61d8e1ae2f: cmp    $0x40,%ecx
....................................................................................................
 41.43%   41.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 566 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f61d8e1ea80: mov    0x8(%rsi),%r10d
                     0x00007f61d8e1ea84: shl    $0x3,%r10
                     0x00007f61d8e1ea88: cmp    %r10,%rax
                     0x00007f61d8e1ea8b: jne    0x00007f61d8c18e20  ;   {runtime_call}
                     0x00007f61d8e1ea91: data16 xchg %ax,%ax
                     0x00007f61d8e1ea94: nopl   0x0(%rax,%rax,1)
                     0x00007f61d8e1ea9c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.09%    0.03%     0x00007f61d8e1eaa0: mov    %eax,-0x14000(%rsp)
  0.49%    0.60%     0x00007f61d8e1eaa7: push   %rbp
  0.05%    0.09%     0x00007f61d8e1eaa8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.61%    0.60%     0x00007f61d8e1eaac: vmovq  %r8,%xmm6
  0.00%    0.00%     0x00007f61d8e1eab1: vmovq  %rsi,%xmm4
  0.04%    0.08%     0x00007f61d8e1eab6: vmovd  %ecx,%xmm0
  0.02%    0.01%     0x00007f61d8e1eaba: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.45%    0.41%     0x00007f61d8e1eabd: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007f61d8e1f431
                     0x00007f61d8e1eac1: cmp    $0x40,%ecx
                     0x00007f61d8e1eac4: jg     0x00007f61d8e1ef9d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.03%    0.08%     0x00007f61d8e1eaca: mov    $0x1,%eax
  0.01%    0.03%     0x00007f61d8e1eacf: mov    $0x1,%r8d
  0.56%    0.41%     0x00007f61d8e1ead5: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.09%    0.05%     0x00007f61d8e1ead8: mov    %r11,%r10
  0.42%    0.58%     0x00007f61d8e1eadb: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.01%     0x00007f61d8e1eade: xor    %r13d,%r13d
  0.06%    0.04%     0x00007f61d8e1eae1: test   %r10,%r10
                     0x00007f61d8e1eae4: jne    0x00007f61d8e1efd1  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%              0x00007f61d8e1eaea: cmp    $0x40,%ecx
                     0x00007f61d8e1eaed: jge    0x00007f61d8e1f015  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.45%    0.52%     0x00007f61d8e1eaf3: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.00%     0x00007f61d8e1eaf7: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.07%    0.05%     0x00007f61d8e1eafa: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.01%    0.02%     0x00007f61d8e1eafd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.48%    0.49%     0x00007f61d8e1eb01: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f61d8e1f445
  0.00%    0.02%     0x00007f61d8e1eb06: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f61d8e1eb0d: jne    0x00007f61d8e1ee71
  0.04%    0.06%     0x00007f61d8e1eb13: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.04%     0x00007f61d8e1eb17: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.48%    0.56%     0x00007f61d8e1eb1b: cmp    $0x40,%ecx
                     0x00007f61d8e1eb1e: jg     0x00007f61d8e1f049  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%     0x00007f61d8e1eb24: mov    $0x1,%r11d
  0.08%    0.06%     0x00007f61d8e1eb2a: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.41%    0.58%     0x00007f61d8e1eb2d: mov    %r8,%rbx
  0.07%    0.07%     0x00007f61d8e1eb30: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%     0x00007f61d8e1eb33: test   %rbx,%rbx
                     0x00007f61d8e1eb36: jne    0x00007f61d8e1f089  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.56%    0.68%     0x00007f61d8e1eb3c: cmp    $0x40,%ecx
                     0x00007f61d8e1eb3f: jge    0x00007f61d8e1f0d1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.02%     0x00007f61d8e1eb45: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.08%     0x00007f61d8e1eb48: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.02%     0x00007f61d8e1eb4c: mov    0x70(%rsp),%r11
  0.48%    0.33%     0x00007f61d8e1eb51: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007f61d8e1f46d
  0.00%    0.01%     0x00007f61d8e1eb56: test   %ebp,%ebp
                     0x00007f61d8e1eb58: jne    0x00007f61d8e1f111  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.12%     0x00007f61d8e1eb5e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.05%     0x00007f61d8e1eb61: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.44%    0.68%     0x00007f61d8e1eb64: mov    %ecx,%esi
  0.00%    0.01%     0x00007f61d8e1eb66: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.06%     0x00007f61d8e1eb68: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.06%     0x00007f61d8e1eb6b: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f61d8e1f47d
  0.46%    0.77%     0x00007f61d8e1eb70: cmp    %edi,%ecx
                  ╭  0x00007f61d8e1eb72: jae    0x00007f61d8e1edf5
  0.01%    0.02%  │  0x00007f61d8e1eb78: vmovd  %esi,%xmm1
  0.08%    0.05%  │  0x00007f61d8e1eb7c: vmovd  %ebx,%xmm2
  0.03%    0.01%  │  0x00007f61d8e1eb80: mov    %ecx,0x18(%rsp)
  0.45%    0.64%  │  0x00007f61d8e1eb84: mov    %r10,%rcx
  0.00%    0.01%  │  0x00007f61d8e1eb87: mov    0x70(%rsp),%r14
  0.03%    0.06%  │  0x00007f61d8e1eb8c: mov    0x8(%r12,%rbx,8),%r11d
  0.02%    0.02%  │  0x00007f61d8e1eb91: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f61d8e1eb98: jne    0x00007f61d8e1eea1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.44%    0.57%  │  0x00007f61d8e1eb9e: vmovq  %xmm4,%r10
  0.01%           │  0x00007f61d8e1eba3: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.03%    0.04%  │  0x00007f61d8e1eba7: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.00%  │  0x00007f61d8e1ebab: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.52%    0.41%  │  0x00007f61d8e1ebaf: mov    0x18(%rsp),%r10d
  0.19%    0.07%  │  0x00007f61d8e1ebb4: lea    0x10(%r11,%r10,4),%r10
  0.07%    0.06%  │  0x00007f61d8e1ebb9: mov    %ecx,(%r10)
  0.16%    0.16%  │  0x00007f61d8e1ebbc: shr    $0x9,%r10
  0.41%    0.46%  │  0x00007f61d8e1ebc0: movabs $0x7f61d4601000,%rbx
                  │  0x00007f61d8e1ebca: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.16%    0.14%  │  0x00007f61d8e1ebce: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f61d8e1f495
  0.03%    0.01%  │  0x00007f61d8e1ebd3: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f61d8e1ebda: jne    0x00007f61d8e1eed9
  0.36%    0.31%  │  0x00007f61d8e1ebe0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.01%  │  0x00007f61d8e1ebe4: vmovq  %r10,%xmm3
  0.11%    0.06%  │  0x00007f61d8e1ebe9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.01%  │  0x00007f61d8e1ebed: vmovd  %ecx,%xmm5
  0.38%    0.22%  │  0x00007f61d8e1ebf1: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ebf4: jg     0x00007f61d8e1f14d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
           0.00%  │  0x00007f61d8e1ebfa: mov    $0x1,%r10d
  0.13%    0.09%  │  0x00007f61d8e1ec00: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.44%    0.46%  │  0x00007f61d8e1ec03: mov    %r8,%rcx
  0.13%    0.14%  │  0x00007f61d8e1ec06: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.02%  │  0x00007f61d8e1ec09: test   %rcx,%rcx
                  │  0x00007f61d8e1ec0c: jne    0x00007f61d8e1f189  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.43%    0.53%  │  0x00007f61d8e1ec12: vmovd  %xmm5,%ecx
           0.00%  │  0x00007f61d8e1ec16: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ec19: jge    0x00007f61d8e1f1d1  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.13%  │  0x00007f61d8e1ec1f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.02%  │  0x00007f61d8e1ec22: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.42%    0.17%  │  0x00007f61d8e1ec26: mov    0x18(%rsp),%ecx
  0.01%           │  0x00007f61d8e1ec2a: add    $0x2,%ecx
  0.12%    0.10%  │  0x00007f61d8e1ec2d: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.04%  │  0x00007f61d8e1ec30: mov    0x18(%rsp),%r10d
  0.39%    0.57%  │  0x00007f61d8e1ec35: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.01%    0.00%  │  0x00007f61d8e1ec39: cmp    %edi,%r10d
                  │  0x00007f61d8e1ec3c: jae    0x00007f61d8e1ee31  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.17%  │  0x00007f61d8e1ec42: vmovd  %r9d,%xmm7
  0.05%    0.03%  │  0x00007f61d8e1ec47: vmovq  %xmm4,%r9
  0.40%    0.52%  │  0x00007f61d8e1ec4c: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.01%           │  0x00007f61d8e1ec50: vmovq  %xmm3,%r9
  0.09%    0.14%  │  0x00007f61d8e1ec55: mov    %r9,%rcx
  0.02%    0.03%  │  0x00007f61d8e1ec58: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.38%    0.54%  │  0x00007f61d8e1ec5c: movslq 0x18(%rsp),%r9
  0.00%    0.00%  │  0x00007f61d8e1ec61: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.13%    0.15%  │  0x00007f61d8e1ec65: mov    %r9,%rdi
  0.03%    0.03%  │  0x00007f61d8e1ec68: add    $0x14,%rdi
  0.37%    0.39%  │  0x00007f61d8e1ec6c: mov    %ecx,(%rdi)
  0.01%    0.01%  │  0x00007f61d8e1ec6e: mov    %rdi,%rcx
  0.16%    0.13%  │  0x00007f61d8e1ec71: shr    $0x9,%rcx
  0.03%    0.00%  │  0x00007f61d8e1ec75: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.49%    0.31%  │  0x00007f61d8e1ec79: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f61d8e1f4bd
  0.00%           │  0x00007f61d8e1ec7e: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f61d8e1ec84: jne    0x00007f61d8e1ef09
  0.11%    0.18%  │  0x00007f61d8e1ec8a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.08%  │  0x00007f61d8e1ec8e: vmovq  %rcx,%xmm1
  0.49%    0.59%  │  0x00007f61d8e1ec93: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.17%    0.18%  │  0x00007f61d8e1ec96: vmovd  %ecx,%xmm2
  0.12%    0.14%  │  0x00007f61d8e1ec9a: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ec9d: jg     0x00007f61d8e1f211  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.02%  │  0x00007f61d8e1eca3: mov    $0x1,%edi
  0.37%    0.54%  │  0x00007f61d8e1eca8: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.18%    0.20%  │  0x00007f61d8e1ecab: mov    %r8,%rcx
  0.35%    0.43%  │  0x00007f61d8e1ecae: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.02%  │  0x00007f61d8e1ecb1: test   %rcx,%rcx
                  │  0x00007f61d8e1ecb4: jne    0x00007f61d8e1f251  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.21%    0.16%  │  0x00007f61d8e1ecba: vmovd  %xmm2,%ecx
  0.01%    0.04%  │  0x00007f61d8e1ecbe: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ecc1: jge    0x00007f61d8e1f29d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.43%    0.64%  │  0x00007f61d8e1ecc7: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │  0x00007f61d8e1ecca: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.15%    0.14%  │  0x00007f61d8e1ecce: vmovq  %xmm4,%rcx
  0.03%    0.02%  │  0x00007f61d8e1ecd3: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.44%    0.34%  │  0x00007f61d8e1ecd6: mov    %r9,%rdi
                  │  0x00007f61d8e1ecd9: add    $0x18,%rdi
  0.15%    0.10%  │  0x00007f61d8e1ecdd: vmovq  %xmm1,%rsi
  0.03%    0.04%  │  0x00007f61d8e1ece2: mov    %rsi,%rcx
  0.44%    0.50%  │  0x00007f61d8e1ece5: shr    $0x3,%rcx
                  │  0x00007f61d8e1ece9: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.08%    0.04%  │  0x00007f61d8e1eceb: mov    0x18(%rsp),%ecx
  0.04%    0.01%  │  0x00007f61d8e1ecef: add    $0x3,%ecx
  0.39%    0.44%  │  0x00007f61d8e1ecf2: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │  0x00007f61d8e1ecf5: shr    $0x9,%rdi
  0.11%    0.10%  │  0x00007f61d8e1ecf9: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.02%  │  0x00007f61d8e1ecfd: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f61d8e1f4e5
  0.34%    0.40%  │  0x00007f61d8e1ed02: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f61d8e1ed08: jne    0x00007f61d8e1ef3d
  0.00%    0.01%  │  0x00007f61d8e1ed0e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.12%  │  0x00007f61d8e1ed12: vmovq  %rcx,%xmm1
  0.03%    0.05%  │  0x00007f61d8e1ed17: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.38%    0.64%  │  0x00007f61d8e1ed1a: vmovd  %ecx,%xmm3
                  │  0x00007f61d8e1ed1e: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ed21: jg     0x00007f61d8e1f2dd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.17%  │  0x00007f61d8e1ed27: mov    $0x1,%edi
  0.03%    0.02%  │  0x00007f61d8e1ed2c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.56%    0.69%  │  0x00007f61d8e1ed2f: mov    %r8,%rcx
  0.01%    0.02%  │  0x00007f61d8e1ed32: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.47%    0.30%  │  0x00007f61d8e1ed35: test   %rcx,%rcx
                  │  0x00007f61d8e1ed38: jne    0x00007f61d8e1f31d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
           0.00%  │  0x00007f61d8e1ed3e: vmovd  %xmm3,%ecx
  0.16%    0.15%  │  0x00007f61d8e1ed42: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ed45: jge    0x00007f61d8e1f369  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.06%  │  0x00007f61d8e1ed4b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.41%    0.58%  │  0x00007f61d8e1ed4f: vmovq  %xmm4,%r10
           0.00%  │  0x00007f61d8e1ed54: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.09%    0.12%  │  0x00007f61d8e1ed58: mov    %r9,%rcx
  0.04%    0.03%  │  0x00007f61d8e1ed5b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.42%  │  0x00007f61d8e1ed5f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%           │  0x00007f61d8e1ed62: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.12%  │  0x00007f61d8e1ed66: vmovq  %xmm1,%r10
  0.03%    0.03%  │  0x00007f61d8e1ed6b: shr    $0x3,%r10
  0.43%    0.50%  │  0x00007f61d8e1ed6f: mov    %r10d,(%rcx)
  0.00%    0.01%  │  0x00007f61d8e1ed72: mov    %rcx,%r10
  0.11%    0.12%  │  0x00007f61d8e1ed75: shr    $0x9,%r10
  0.03%    0.03%  │  0x00007f61d8e1ed79: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.42%  │  0x00007f61d8e1ed7d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f61d8e1f50d
           0.00%  │  0x00007f61d8e1ed82: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007f61d8e1ed89: jne    0x00007f61d8e1ef71
  0.12%    0.13%  │  0x00007f61d8e1ed8f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.04%  │  0x00007f61d8e1ed93: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.40%    0.38%  │  0x00007f61d8e1ed96: cmp    $0x40,%ecx
                  │  0x00007f61d8e1ed99: jg     0x00007f61d8e1f3a9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.00%           │  0x00007f61d8e1ed9f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.65%    0.62%  │  0x00007f61d8e1eda2: mov    %r8,%r10
  0.01%    0.00%  │  0x00007f61d8e1eda5: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.10%    0.10%  │  0x00007f61d8e1eda8: test   %r10,%r10
                  │  0x00007f61d8e1edab: jne    0x00007f61d8e1f3d1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.04%  │  0x00007f61d8e1edb1: cmp    $0x40,%ecx
                  │  0x00007f61d8e1edb4: jge    0x00007f61d8e1f409  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.42%    0.60%  │  0x00007f61d8e1edba: or     %rax,%r8
  0.00%    0.00%  │  0x00007f61d8e1edbd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.13%    0.09%  │  0x00007f61d8e1edc1: add    $0x20,%r9
  0.02%    0.03%  │  0x00007f61d8e1edc5: mov    %rdi,%r10
  0.44%    0.54%  │  0x00007f61d8e1edc8: shr    $0x3,%r10
                  │  0x00007f61d8e1edcc: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.10%    0.10%  │  0x00007f61d8e1edcf: mov    %r9,%r10
  0.06%    0.03%  │  0x00007f61d8e1edd2: mov    0x18(%rsp),%r11d
  0.52%    0.22%  │  0x00007f61d8e1edd7: add    $0x5,%r11d
           0.00%  │  0x00007f61d8e1eddb: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.10%  │  0x00007f61d8e1eddf: shr    $0x9,%r10
  0.04%    0.03%  │  0x00007f61d8e1ede3: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.43%    0.53%  │  0x00007f61d8e1ede7: xor    %eax,%eax
  0.00%    0.00%  │  0x00007f61d8e1ede9: add    $0x60,%rsp
  0.10%    0.24%  │  0x00007f61d8e1eded: pop    %rbp
  0.02%    0.02%  │  0x00007f61d8e1edee: test   %eax,0x15de520c(%rip)        # 0x00007f61eec04000
                  │                                                ;   {poll_return}
  0.43%    0.53%  │  0x00007f61d8e1edf4: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007f61d8e1edf5: mov    $0xffffffe4,%esi
                     0x00007f61d8e1edfa: vmovq  %xmm4,%rbp
                     0x00007f61d8e1edff: mov    %rdx,0x70(%rsp)
                     0x00007f61d8e1ee04: vmovss %xmm0,(%rsp)
                     0x00007f61d8e1ee09: vmovsd %xmm6,0x8(%rsp)
                     0x00007f61d8e1ee0f: mov    %r9d,0x4(%rsp)
....................................................................................................
 28.35%   30.94%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 600 (834 bytes) 

                                      0x00007f61d8e39107: mov    %rax,%r10
                                      0x00007f61d8e3910a: shl    $0x3,%r10          ;*getfield q1
                                                                                    ; - com.google.re2j.Machine::match@53 (line 192)
                                      0x00007f61d8e3910e: mov    %r10,0x58(%rsp)
                                      0x00007f61d8e39113: mov    %ebx,0x34(%rsp)
                                      0x00007f61d8e39117: xor    %eax,%eax
                                      0x00007f61d8e39119: xor    %r10d,%r10d
                                      0x00007f61d8e3911c: mov    %r10d,0x1c(%rsp)
                  ╭                   0x00007f61d8e39121: jmpq   0x00007f61d8e392bd
                  │                   0x00007f61d8e39126: data16 nopw 0x0(%rax,%rax,1)
  0.36%    0.23%  │         ↗         0x00007f61d8e39130: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │         │                                                       ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%           │         │         0x00007f61d8e39134: mov    %r11d,0x3c(%rsp)   ;*iload_2
                  │         │                                                       ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │         │                                                       ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.23%  │         │↗        0x00007f61d8e39139: mov    0x48(%rsp),%r11
  0.07%    0.09%  │         ││        0x00007f61d8e3913e: mov    0x10(%r11),%r10d   ;*getfield end
                  │         ││                                                      ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │         ││                                                      ; - com.google.re2j.Machine::match@344 (line 246)
  0.50%    0.64%  │         ││        0x00007f61d8e39142: mov    0x1c(%rsp),%ecx
  0.03%    0.02%  │         ││        0x00007f61d8e39146: cmp    %r10d,%ecx
                  │╭        ││        0x00007f61d8e39149: je     0x00007f61d8e39445  ;*if_icmpne
                  ││        ││                                                      ; - com.google.re2j.Machine::match@347 (line 246)
  0.26%    0.22%  ││        ││        0x00007f61d8e3914f: xor    %r10d,%r10d        ;*invokespecial step
                  ││        ││                                                      ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.04%  ││        ││    ↗   0x00007f61d8e39152: mov    0x1c(%rsp),%ebp
  0.34%    0.31%  ││        ││    │   0x00007f61d8e39156: add    0x28(%rsp),%ecx    ;*iadd
                  ││        ││    │                                                 ; - com.google.re2j.Machine::match@336 (line 246)
  0.01%    0.01%  ││        ││    │   0x00007f61d8e3915a: mov    %ecx,0x1c(%rsp)
  0.24%    0.20%  ││        ││    │   0x00007f61d8e3915e: mov    0x50(%rsp),%rsi
  0.03%    0.03%  ││        ││    │   0x00007f61d8e39163: mov    0x20(%rsp),%rdx
  0.29%    0.33%  ││        ││    │   0x00007f61d8e39168: mov    0x58(%rsp),%rcx
  0.00%    0.01%  ││        ││    │   0x00007f61d8e3916d: mov    %ebp,%r8d
  0.20%    0.21%  ││        ││    │   0x00007f61d8e39170: mov    0x1c(%rsp),%r9d
  0.11%    0.06%  ││        ││    │   0x00007f61d8e39175: mov    0x34(%rsp),%edi
  0.27%    0.28%  ││        ││    │   0x00007f61d8e39179: mov    0x3c(%rsp),%ebx
  0.02%    0.01%  ││        ││    │   0x00007f61d8e3917d: mov    %ebx,(%rsp)
  0.18%    0.16%  ││        ││    │   0x00007f61d8e39180: mov    0x38(%rsp),%r11d
  0.08%    0.07%  ││        ││    │   0x00007f61d8e39185: mov    %r11d,0x8(%rsp)
  0.25%    0.28%  ││        ││    │   0x00007f61d8e3918a: mov    %r10d,0x10(%rsp)
           0.02%  ││        ││    │   0x00007f61d8e3918f: callq  0x00007f61d8c19020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=660}
                  ││        ││    │                                                 ;*invokespecial step
                  ││        ││    │                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                  ││        ││    │                                                 ;   {optimized virtual_call}
  0.01%    0.01%  ││        ││    │   0x00007f61d8e39194: mov    0x50(%rsp),%r8
  0.16%    0.17%  ││        ││    │   0x00007f61d8e39199: movzbl 0x10(%r8),%eax     ;*getfield matched
                  ││        ││    │                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.46%    0.49%  ││        ││    │   0x00007f61d8e3919e: movzbl 0x11(%r8),%edi     ;*getfield captures
                  ││        ││    │                                                 ; - com.google.re2j.Machine::match@367 (line 250)
           0.03%  ││        ││    │   0x00007f61d8e391a3: mov    0x28(%rsp),%r10d
  0.01%    0.04%  ││        ││    │   0x00007f61d8e391a8: test   %r10d,%r10d
                  ││╭       ││    │   0x00007f61d8e391ab: je     0x00007f61d8e39465  ;*ifne
                  │││       ││    │                                                 ; - com.google.re2j.Machine::match@360 (line 247)
  0.13%    0.09%  │││       ││    │   0x00007f61d8e391b1: test   %edi,%edi
                  │││       ││    │   0x00007f61d8e391b3: jne    0x00007f61d8e39715  ;*ifne
                  │││       ││    │                                                 ; - com.google.re2j.Machine::match@370 (line 250)
  0.41%    0.47%  │││       ││    │   0x00007f61d8e391b9: test   %eax,%eax
                  │││       ││    │   0x00007f61d8e391bb: jne    0x00007f61d8e39831  ;*ifeq
                  │││       ││    │                                                 ; - com.google.re2j.Machine::match@377 (line 250)
  0.04%    0.08%  │││       ││    │   0x00007f61d8e391c1: mov    0x2c(%rsp),%r9d
  0.02%    0.02%  │││       ││    │   0x00007f61d8e391c6: cmp    $0xffffffff,%r9d
                  │││╭      ││    │   0x00007f61d8e391ca: je     0x00007f61d8e39450  ;*if_icmpeq
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@399 (line 258)
  0.10%    0.10%  ││││      ││    │   0x00007f61d8e391d0: mov    0x48(%rsp),%rdx
  0.41%    0.41%  ││││      ││    │   0x00007f61d8e391d5: mov    0x10(%rdx),%r11d   ;*getfield end
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.07%    0.09%  ││││      ││    │   0x00007f61d8e391d9: mov    0x30(%rsp),%ecx
  0.01%    0.01%  ││││      ││    │   0x00007f61d8e391dd: add    0x1c(%rsp),%ecx
  0.07%    0.09%  ││││      ││    │   0x00007f61d8e391e1: add    0xc(%rdx),%ecx     ;*iadd
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.43%    0.47%  ││││      ││    │   0x00007f61d8e391e4: cmp    %r11d,%ecx
                  ││││      ││    │   0x00007f61d8e391e7: jge    0x00007f61d8e394a4  ;*if_icmpge
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.19%  ││││      ││    │   0x00007f61d8e391ed: mov    0x14(%rdx),%ebp    ;*getfield str
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.02%  ││││      ││    │   0x00007f61d8e391f0: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f61d8e39fad
  1.33%    1.38%  ││││      ││    │   0x00007f61d8e391f5: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  ││││      ││    │   0x00007f61d8e391fc: jne    0x00007f61d8e39609
  0.58%    0.46%  ││││      ││    │   0x00007f61d8e39202: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
           0.00%  ││││      ││    │   0x00007f61d8e39206: test   %ecx,%ecx
                  ││││      ││    │   0x00007f61d8e39208: jl     0x00007f61d8e39765  ;*iflt
                  ││││      ││    │                                                 ; - java.lang.String::charAt@1 (line 657)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%  ││││      ││    │   0x00007f61d8e3920e: mov    %ecx,%r13d
           0.00%  ││││      ││    │   0x00007f61d8e39211: mov    %r8,%r9
  0.57%    0.52%  ││││      ││    │   0x00007f61d8e39214: mov    0xc(%rbx),%r11d    ;*getfield value
                  ││││      ││    │                                                 ; - java.lang.String::charAt@6 (line 657)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%  ││││      ││    │   0x00007f61d8e39218: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  ││││      ││    │                                                 ; - java.lang.String::charAt@9 (line 657)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
                  ││││      ││    │                                                 ; implicit exception: dispatches to 0x00007f61d8e39fc1
  2.71%    3.01%  ││││      ││    │   0x00007f61d8e3921d: cmp    %ebp,%r13d
                  ││││      ││    │   0x00007f61d8e39220: jge    0x00007f61d8e39881  ;*if_icmplt
                  ││││      ││    │                                                 ; - java.lang.String::charAt@10 (line 657)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.71%    0.76%  ││││      ││    │   0x00007f61d8e39226: cmp    %ebp,%r13d
                  ││││      ││    │   0x00007f61d8e39229: jae    0x00007f61d8e3958d
  0.13%    0.19%  ││││      ││    │   0x00007f61d8e3922f: lea    (%r12,%r11,8),%r10
                  ││││      ││    │   0x00007f61d8e39233: mov    %r13d,%r8d
                  ││││      ││    │   0x00007f61d8e39236: movzwl 0x10(%r10,%r8,2),%r11d  ;*caload
                  ││││      ││    │                                                 ; - java.lang.String::charAt@27 (line 660)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.43%    0.52%  ││││      ││    │   0x00007f61d8e3923c: cmp    $0xd800,%r11d
                  ││││      ││    │   0x00007f61d8e39243: jge    0x00007f61d8e398e9  ;*if_icmplt
                  ││││      ││    │                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  ││││      ││    │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.15%    0.17%  ││││      ││    │   0x00007f61d8e39249: shl    $0x3,%r11d         ;*ishl
                  ││││      ││    │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.04%    0.01%  ││││      ││    │   0x00007f61d8e3924d: mov    %r11d,%r10d
           0.00%  ││││      ││    │   0x00007f61d8e39250: or     $0x1,%r10d
  0.52%    0.63%  ││││      ││    │   0x00007f61d8e39254: and    $0x7,%r11d
  0.04%    0.06%  ││││      ││    │   0x00007f61d8e39258: sar    $0x3,%r10d         ;*ishr
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@415 (line 260)
  0.44%    0.65%  ││││      ││    │   0x00007f61d8e3925c: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.00%  ││││      ││    │   0x00007f61d8e39260: mov    %r9,%r8
  0.05%    0.10%  ││││      ││    │   0x00007f61d8e39263: mov    0x2c(%rsp),%r9d    ;*aload
                  ││││      ││    │                                                 ; - com.google.re2j.Machine::match@425 (line 263)
  0.06%    0.04%  ││││      ││    │↗  0x00007f61d8e39268: mov    %r8,%r13
  0.43%    0.60%  ││││      ││    ││  0x00007f61d8e3926b: mov    %rdx,0x48(%rsp)
  0.01%    0.00%  ││││      ││    ││  0x00007f61d8e39270: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rdx=Oop r13=Oop [32]=Oop [72]=Oop [88]=Oop off=885}
                  ││││      ││    ││                                                ;*goto
                  ││││      ││    ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.05%    0.10%  ││││      ││    ││  0x00007f61d8e39275: test   %eax,0x15dcad85(%rip)        # 0x00007f61eec04000
                  ││││      ││    ││                                                ;*goto
                  ││││      ││    ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  ││││      ││    ││                                                ;   {poll}
  0.02%    0.07%  ││││      ││    ││  0x00007f61d8e3927b: mov    0x28(%r8),%ebx     ;*getfield matchcap
                  ││││      ││    ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.42%    0.65%  ││││      ││    ││  0x00007f61d8e3927f: mov    0x14(%r8),%r9d     ;*getfield re2
                  ││││      ││    ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.01%    0.01%  ││││      ││    ││  0x00007f61d8e39283: vmovd  %r9d,%xmm3
  0.09%    0.06%  ││││      ││    ││  0x00007f61d8e39288: mov    0x58(%rsp),%r8
  0.05%    0.03%  ││││      ││    ││  0x00007f61d8e3928d: shr    $0x3,%r8
  0.49%    0.46%  ││││      ││    ││  0x00007f61d8e39291: mov    %r8d,0x18(%rsp)
  0.01%           ││││      ││    ││  0x00007f61d8e39296: mov    0x3c(%rsp),%r9d
  0.07%    0.04%  ││││      ││    ││  0x00007f61d8e3929b: mov    0x20(%rsp),%r8
  0.04%    0.01%  ││││      ││    ││  0x00007f61d8e392a0: mov    %r8,0x58(%rsp)
  0.40%    0.43%  ││││      ││    ││  0x00007f61d8e392a5: mov    0x30(%rsp),%r8d
  0.01%           ││││      ││    ││  0x00007f61d8e392aa: mov    %r8d,0x28(%rsp)
  0.06%    0.03%  ││││      ││    ││  0x00007f61d8e392af: mov    %r11d,0x30(%rsp)
  0.04%    0.05%  ││││      ││    ││  0x00007f61d8e392b4: mov    %r10d,0x2c(%rsp)
  0.49%    0.23%  ││││      ││    ││  0x00007f61d8e392b9: vmovd  %ebx,%xmm1         ;*aload
                  ││││      ││    ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%           ↘│││      ││    ││  0x00007f61d8e392bd: mov    0x18(%rsp),%r10d
  0.04%    0.03%   │││      ││    ││  0x00007f61d8e392c2: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f61d8e39f56
  0.06%    0.03%   │││      ││    ││  0x00007f61d8e392c8: test   %r11d,%r11d
                   │││╭     ││    ││  0x00007f61d8e392cb: je     0x00007f61d8e3941e  ;*ifeq
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.36%    0.25%   ││││     ││    ││  0x00007f61d8e392d1: mov    0x14(%rsp),%ecx
  0.00%            ││││     ││    ││  0x00007f61d8e392d5: test   %ecx,%ecx
                   ││││     ││    ││  0x00007f61d8e392d7: jne    0x00007f61d8e3998d  ;*ifeq
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.07%    0.06%   ││││     ││    ││  0x00007f61d8e392dd: test   %eax,%eax
                   ││││     ││    ││  0x00007f61d8e392df: jne    0x00007f61d8e399e5  ;*ifeq
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.01%   ││││     ││    ││  0x00007f61d8e392e5: vmovd  %xmm3,%r10d
  0.38%    0.28%   ││││     ││    ││  0x00007f61d8e392ea: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                   ││││     ││    ││                                                ; implicit exception: dispatches to 0x00007f61d8e39fd1
  0.01%    0.01%   ││││     ││    ││  0x00007f61d8e392ef: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   ││││     ││    ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││││     ││    ││                                                ; implicit exception: dispatches to 0x00007f61d8e39fe1
  0.10%    0.10%   ││││     ││    ││  0x00007f61d8e392f4: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   ││││     ││    ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││││     ││    ││                                                ; implicit exception: dispatches to 0x00007f61d8e39ff1
  0.22%    0.19%   ││││     ││    ││  0x00007f61d8e392f9: test   %ebp,%ebp
                   ││││     ││    ││  0x00007f61d8e392fb: jne    0x00007f61d8e3995d  ;*aload_0
                   ││││     ││    ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.48%    0.35%   ││││     ││↗   ││  0x00007f61d8e39301: test   %eax,%eax
                   ││││     │││   ││  0x00007f61d8e39303: jne    0x00007f61d8e39661  ;*ifne
                   ││││     │││   ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
           0.01%   ││││     │││   ││  0x00007f61d8e39309: mov    0x1c(%rsp),%r10d
  0.06%    0.02%   ││││     │││   ││  0x00007f61d8e3930e: test   %r10d,%r10d
                   ││││╭    │││   ││  0x00007f61d8e39311: je     0x00007f61d8e3943b  ;*ifeq
                   │││││    │││   ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.01%    0.01%   │││││    │││   ││  0x00007f61d8e39317: mov    0x38(%rsp),%r8d
  0.51%    0.20%   │││││    │││   ││  0x00007f61d8e3931c: test   %r8d,%r8d
                   │││││    │││   ││  0x00007f61d8e3931f: jne    0x00007f61d8e396b5  ;*aload_0
                   │││││    │││   ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.01%            │││││    │││  ↗││  0x00007f61d8e39325: test   %edi,%edi
                   │││││    │││  │││  0x00007f61d8e39327: jne    0x00007f61d8e397d9  ;*ifeq
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.06%            │││││    │││  │││  0x00007f61d8e3932d: mov    0x18(%r13),%ebx    ;*getfield prog
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.04%    0.00%   │││││    │││  │││  0x00007f61d8e39331: mov    0x1c(%r12,%rbx,8),%ebp  ;*getfield startInst
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                   │││││    │││  │││                                                ; implicit exception: dispatches to 0x00007f61d8e39f65
  0.46%    0.22%   │││││    │││  │││  0x00007f61d8e39336: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f61d8e39f75
  0.01%    0.00%   │││││    │││  │││  0x00007f61d8e3933b: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   │││││    │││  │││  0x00007f61d8e39342: jne    0x00007f61d8e39550  ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.00%   │││││    │││  │││  0x00007f61d8e39348: mov    %ecx,0x14(%rsp)
  0.03%    0.00%   │││││    │││  │││  0x00007f61d8e3934c: mov    %r8d,0x38(%rsp)
  0.44%    0.10%   │││││    │││  │││  0x00007f61d8e39351: mov    %r13,0x50(%rsp)    ;*ifeq
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@286 (line 240)
                   │││││    │││  │││  0x00007f61d8e39356: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.04%    0.00%   │││││    │││  │││  0x00007f61d8e3935a: mov    0x18(%rsp),%r11d
                   │││││    │││  │││  0x00007f61d8e3935f: lea    (%r12,%r11,8),%r10  ;*aload
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.45%    0.06%   │││││    │││  │││  0x00007f61d8e39363: mov    %r10,0x20(%rsp)
                   │││││    │││  │││  0x00007f61d8e39368: vmovd  %xmm1,%r11d
  0.07%            │││││    │││  │││  0x00007f61d8e3936d: mov    %r11,%r8
  0.01%            │││││    │││  │││  0x00007f61d8e39370: shl    $0x3,%r8           ;*getfield matchcap
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.58%    0.14%   │││││    │││  │││  0x00007f61d8e39374: mov    %r10,%rdx
  0.00%    0.01%   │││││    │││  │││  0x00007f61d8e39377: mov    0x1c(%rsp),%ecx
  0.05%    0.00%   │││││    │││  │││  0x00007f61d8e3937b: xor    %edi,%edi
  0.02%    0.01%   │││││    │││  │││  0x00007f61d8e3937d: mov    %r13,(%rsp)
  0.56%    0.23%   │││││    │││  │││  0x00007f61d8e39381: xchg   %ax,%ax
           0.00%   │││││    │││  │││  0x00007f61d8e39383: callq  0x00007f61d8c19020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1160}
                   │││││    │││  │││                                                ;*invokevirtual add
                   │││││    │││  │││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                   │││││    │││  │││                                                ;   {optimized virtual_call}
                   │││││    │││  │││  0x00007f61d8e39388: mov    0x34(%rsp),%ebx
  0.15%    0.16%   │││││    │││  │││  0x00007f61d8e3938c: test   %ebx,%ebx
                   │││││╭   │││  │││  0x00007f61d8e3938e: jl     0x00007f61d8e39427  ;*ifge
                   ││││││   │││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││││││   │││  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.38%    0.47%   ││││││   │││  │││  0x00007f61d8e39394: xor    %r11d,%r11d        ;*iload_0
                   ││││││   │││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││││││   │││  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%            ││││││   │││↗ │││  0x00007f61d8e39397: cmp    $0xa,%ebx
                   ││││││   ││││ │││  0x00007f61d8e3939a: je     0x00007f61d8e394b2  ;*iload_1
                   ││││││   ││││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││││││   ││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.17%   ││││││   ││││ │││  0x00007f61d8e393a0: mov    0x2c(%rsp),%r8d
  0.02%    0.03%   ││││││   ││││ │││  0x00007f61d8e393a5: test   %r8d,%r8d
                   ││││││╭  ││││ │││  0x00007f61d8e393a8: jl     0x00007f61d8e39432  ;*iload_1
                   │││││││  ││││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││││││  ││││ │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.44%    0.41%   │││││││  ││││↗│││  0x00007f61d8e393ae: cmp    $0xa,%r8d
                   │││││││  ││││││││  0x00007f61d8e393b2: je     0x00007f61d8e394bb  ;*iload_0
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%   │││││││  ││││││││  0x00007f61d8e393b8: mov    0x34(%rsp),%r10d
  0.13%    0.13%   │││││││  ││││││││  0x00007f61d8e393bd: add    $0xffffffbf,%r10d
  0.03%    0.02%   │││││││  ││││││││  0x00007f61d8e393c1: cmp    $0x1a,%r10d
                   │││││││╭ ││││││││  0x00007f61d8e393c5: jb     0x00007f61d8e393da  ;*if_icmple
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.40%    0.42%   ││││││││ ││││││││  0x00007f61d8e393c7: mov    0x34(%rsp),%r9d
           0.00%   ││││││││ ││││││││  0x00007f61d8e393cc: add    $0xffffff9f,%r9d
  0.11%    0.15%   ││││││││ ││││││││  0x00007f61d8e393d0: cmp    $0x1a,%r9d
                   ││││││││ ││││││││  0x00007f61d8e393d4: jae    0x00007f61d8e394c4  ;*iconst_1
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││││ ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.04%   │││││││↘ ││││││││  0x00007f61d8e393da: mov    $0x1,%ebp          ;*ireturn
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.28%    0.36%   │││││││  ││││││││  0x00007f61d8e393df: mov    0x2c(%rsp),%r10d
  0.02%    0.00%   │││││││  ││││││││  0x00007f61d8e393e4: add    $0xffffffbf,%r10d
  0.12%    0.06%   │││││││  ││││││││  0x00007f61d8e393e8: cmp    $0x1a,%r10d
                   │││││││ ╭││││││││  0x00007f61d8e393ec: jb     0x00007f61d8e39401  ;*if_icmple
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.15%    0.10%   │││││││ │││││││││  0x00007f61d8e393ee: mov    0x2c(%rsp),%r9d
  0.34%    0.39%   │││││││ │││││││││  0x00007f61d8e393f3: add    $0xffffff9f,%r9d
  0.01%    0.05%   │││││││ │││││││││  0x00007f61d8e393f7: cmp    $0x1a,%r9d
                   │││││││ │││││││││  0x00007f61d8e393fb: jae    0x00007f61d8e394e7  ;*iconst_1
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.06%   │││││││ ↘││││││││  0x00007f61d8e39401: mov    $0x1,%r10d         ;*ireturn
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││││  ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.25%   │││││││  ││││││││  0x00007f61d8e39407: cmp    %r10d,%ebp
                   │││││││  ╰│││││││  0x00007f61d8e3940a: je     0x00007f61d8e39130  ;*if_icmpeq
                   │││││││   │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││││   │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.04%   │││││││   │││││││  0x00007f61d8e39410: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││││   │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%   │││││││   │││││││  0x00007f61d8e39414: mov    %r11d,0x3c(%rsp)
  0.05%    0.08%   │││││││   ╰││││││  0x00007f61d8e39419: jmpq   0x00007f61d8e39139
  0.10%    0.04%   │││↘│││    ││││││  0x00007f61d8e3941e: mov    0x14(%rsp),%ecx
  0.00%            │││ │││    ╰│││││  0x00007f61d8e39422: jmpq   0x00007f61d8e39301
  0.01%            │││ │↘│     │││││  0x00007f61d8e39427: mov    $0x5,%r11d
                   │││ │ │     ╰││││  0x00007f61d8e3942d: jmpq   0x00007f61d8e39397
           0.01%   │││ │ ↘      ││││  0x00007f61d8e39432: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │││ │        ││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                   │││ │        ╰│││  0x00007f61d8e39436: jmpq   0x00007f61d8e393ae
                   │││ ↘         │││  0x00007f61d8e3943b: mov    0x38(%rsp),%r8d
                   │││           ╰││  0x00007f61d8e39440: jmpq   0x00007f61d8e39325
                   ↘││            ││  0x00007f61d8e39445: mov    $0x1,%r10d
                    ││            ╰│  0x00007f61d8e3944b: jmpq   0x00007f61d8e39152
  0.01%    0.01%    │↘             │  0x00007f61d8e39450: mov    0x30(%rsp),%r11d
  0.01%    0.01%    │              │  0x00007f61d8e39455: mov    $0xffffffff,%r10d
                    │              │  0x00007f61d8e3945b: mov    0x48(%rsp),%rdx
                    │              ╰  0x00007f61d8e39460: jmpq   0x00007f61d8e39268
                    ↘                 0x00007f61d8e39465: test   %edi,%edi
                                      0x00007f61d8e39467: jne    0x00007f61d8e39db9  ;*ifeq
                                                                                    ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                    ; - com.google.re2j.Machine::match@443 (line 267)
           0.01%                      0x00007f61d8e3946d: mov    0x58(%rsp),%r11
  0.00%                               0x00007f61d8e39472: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f61d8e3a059
                                      0x00007f61d8e39477: test   %r10d,%r10d
                                      0x00007f61d8e3947a: jne    0x00007f61d8e39495  ;*ifeq
                                                                                    ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                    ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                    ; - com.google.re2j.Machine::match@443 (line 267)
                                      0x00007f61d8e3947c: movb   $0x1,0x18(%r11)    ;*putfield empty
                                                                                    ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                                                                                    ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 146)
....................................................................................................
 24.96%   23.45%  <total for region 3>

....[Hottest Regions]...............................................................................
 41.43%   41.20%         C2, level 4  com.google.re2j.Machine::step, version 554 (546 bytes) 
 28.35%   30.94%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 566 (852 bytes) 
 24.96%   23.45%         C2, level 4  com.google.re2j.Machine::match, version 600 (834 bytes) 
  1.18%    1.16%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.74%    0.81%         C2, level 4  com.google.re2j.Machine::match, version 600 (99 bytes) 
  0.19%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 606 (46 bytes) 
  0.11%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 606 (20 bytes) 
  0.09%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 600 (175 bytes) 
  0.09%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 606 (33 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 606 (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%    0.04%         C2, level 4  java.util.Collections::shuffle, version 614 (44 bytes) 
  0.06%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 606 (45 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 606 (0 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::match, version 600 (65 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Machine::match, version 600 (30 bytes) 
  0.04%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 646 (58 bytes) 
  2.21%    1.97%  <...other 437 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 41.47%   41.22%         C2, level 4  com.google.re2j.Machine::step, version 554 
 28.35%   30.94%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 566 
 25.93%   24.35%         C2, level 4  com.google.re2j.Machine::match, version 600 
  2.26%    2.02%   [kernel.kallsyms]  [unknown] 
  0.78%    0.37%         C2, level 4  com.google.re2j.RE2::match, version 606 
  0.15%    0.08%         C2, level 4  java.util.Collections::shuffle, version 614 
  0.10%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 646 
  0.05%    0.06%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.02%              [vdso]  __vdso_clock_gettime 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.01%        libc-2.26.so  __strlen_avx2 
  0.03%    0.02%           libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.05%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%    0.04%           libjvm.so  xmlTextStream::write 
  0.02%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%                  C2, level 4  com.google.re2j.Machine::freeQueue, version 607 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.55%    0.40%  <...other 86 warm methods...>
....................................................................................................
100.00%   99.84%  <totals>

....[Distribution by Source]........................................................................
 96.80%   97.00%         C2, level 4
  2.26%    2.02%   [kernel.kallsyms]
  0.53%    0.60%           libjvm.so
  0.20%    0.24%        libc-2.26.so
  0.09%    0.04%              [vdso]
  0.06%    0.05%  libpthread-2.26.so
  0.04%                  interpreter
  0.01%    0.02%      hsdis-amd64.so
  0.00%               perf-19719.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  20676.614 ± 161.647  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
