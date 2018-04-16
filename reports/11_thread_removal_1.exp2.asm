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
# Warmup Iteration   1: 11379.432 ops/s
# Warmup Iteration   2: 20420.189 ops/s
# Warmup Iteration   3: 20803.355 ops/s
# Warmup Iteration   4: 20463.138 ops/s
# Warmup Iteration   5: 20693.365 ops/s
# Warmup Iteration   6: 20404.106 ops/s
# Warmup Iteration   7: 20733.996 ops/s
# Warmup Iteration   8: 20903.872 ops/s
# Warmup Iteration   9: 20478.894 ops/s
# Warmup Iteration  10: 20986.799 ops/s
# Warmup Iteration  11: 20757.779 ops/s
# Warmup Iteration  12: 20970.556 ops/s
# Warmup Iteration  13: 20959.491 ops/s
# Warmup Iteration  14: 20955.816 ops/s
# Warmup Iteration  15: 20864.334 ops/s
# Warmup Iteration  16: 20580.582 ops/s
# Warmup Iteration  17: 20984.024 ops/s
# Warmup Iteration  18: 20994.135 ops/s
# Warmup Iteration  19: 21019.111 ops/s
# Warmup Iteration  20: 21019.291 ops/s
Iteration   1: 20896.461 ops/s
Iteration   2: 20954.268 ops/s
Iteration   3: 20889.030 ops/s
Iteration   4: 20912.691 ops/s
Iteration   5: 20926.743 ops/s
Iteration   6: 20887.988 ops/s
Iteration   7: 20970.869 ops/s
Iteration   8: 20989.522 ops/s
Iteration   9: 19475.860 ops/s
Iteration  10: 21004.951 ops/s
Iteration  11: 20823.613 ops/s
Iteration  12: 20961.567 ops/s
Iteration  13: 21040.596 ops/s
Iteration  14: 20963.943 ops/s
Iteration  15: 20930.604 ops/s
Iteration  16: 20821.941 ops/s
Iteration  17: 20948.101 ops/s
Iteration  18: 21035.783 ops/s
Iteration  19: 20962.486 ops/s
Iteration  20: 20961.280 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20867.915 ±(99.9%) 289.009 ops/s [Average]
  (min, avg, max) = (19475.860, 20867.915, 21040.596), stdev = 332.823
  CI (99.9%): [20578.906, 21156.924] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 202880 total address lines.
Perf output processed (skipped 23.017 seconds):
 Column 1: cycles (20678 events)
 Column 2: instructions (20664 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 537 (571 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007fcb3d232120: mov    0x8(%rsi),%r10d
                             0x00007fcb3d232124: shl    $0x3,%r10
                             0x00007fcb3d232128: cmp    %r10,%rax
                             0x00007fcb3d23212b: jne    0x00007fcb3d045e20  ;   {runtime_call}
                             0x00007fcb3d232131: data16 xchg %ax,%ax
                             0x00007fcb3d232134: nopl   0x0(%rax,%rax,1)
                             0x00007fcb3d23213c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.30%    0.31%             0x00007fcb3d232140: mov    %eax,-0x14000(%rsp)
  0.34%    0.32%             0x00007fcb3d232147: push   %rbp
  0.24%    0.19%             0x00007fcb3d232148: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 280)
  0.35%    0.36%             0x00007fcb3d23214c: mov    %edi,0x18(%rsp)
  0.02%    0.04%             0x00007fcb3d232150: mov    %r9d,0x14(%rsp)
  0.22%    0.19%             0x00007fcb3d232155: mov    %r8d,0x10(%rsp)
  0.05%    0.03%             0x00007fcb3d23215a: mov    %rcx,0x8(%rsp)
  0.40%    0.37%             0x00007fcb3d23215f: mov    %rsi,%r13
  0.01%    0.01%             0x00007fcb3d232162: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 280)
  0.15%    0.22%             0x00007fcb3d232166: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                                                                           ; implicit exception: dispatches to 0x00007fcb3d232b5d
  0.04%    0.04%             0x00007fcb3d23216c: mov    %rdx,%r9
  0.35%    0.20%             0x00007fcb3d23216f: mov    0xc(%rdx),%r10d    ; implicit exception: dispatches to 0x00007fcb3d232b6d
  0.02%    0.01%             0x00007fcb3d232173: test   %r10d,%r10d
                  ╭          0x00007fcb3d232176: jle    0x00007fcb3d232264  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 281)
  0.15%    0.15%  │          0x00007fcb3d23217c: xor    %r8d,%r8d
  0.06%    0.05%  │╭         0x00007fcb3d23217f: jmp    0x00007fcb3d232195
  0.25%    0.33%  ││   ↗     0x00007fcb3d232181: mov    %ebx,%r8d
  0.43%    0.45%  ││   │     0x00007fcb3d232184: mov    %r11d,0x78(%rsp)
  1.66%    1.88%  ││   │     0x00007fcb3d232189: mov    %edi,0x80(%rsp)
  0.15%    0.18%  ││   │     0x00007fcb3d232190: mov    %r10,0x8(%rsp)     ;*aload_0
                  ││   │                                                   ; - com.google.re2j.Machine::step@21 (line 284)
  0.56%    0.55%  │↘   │     0x00007fcb3d232195: movzbl 0x11(%r13),%r11d   ;*getfield captures
                  │    │                                                   ; - com.google.re2j.Machine::step@22 (line 284)
  0.44%    0.48%  │    │     0x00007fcb3d23219a: test   %r11d,%r11d
                  │    │     0x00007fcb3d23219d: jne    0x00007fcb3d2324f1  ;*ifne
                  │    │                                                   ; - com.google.re2j.Machine::step@25 (line 284)
  1.74%    2.04%  │    │     0x00007fcb3d2321a3: mov    0x20(%r9),%ebp     ;*getfield denseThreadsInstructions
                  │    │                                                   ; - com.google.re2j.Machine::step@78 (line 294)
  0.24%    0.21%  │    │     0x00007fcb3d2321a7: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcb3d232b39
  1.03%    1.16%  │    │     0x00007fcb3d2321ac: cmp    %r10d,%r8d
                  │    │     0x00007fcb3d2321af: jae    0x00007fcb3d232487
  0.73%    0.87%  │    │     0x00007fcb3d2321b5: lea    (%r12,%rbp,8),%r10
  1.42%    1.59%  │    │     0x00007fcb3d2321b9: mov    0x10(%r10,%r8,4),%ebp  ;*aaload
                  │    │                                                   ; - com.google.re2j.Machine::step@83 (line 294)
  0.22%    0.18%  │    │     0x00007fcb3d2321be: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fcb3d232b4d
  3.33%    4.20%  │    │     0x00007fcb3d2321c3: mov    %r8d,%ebx
  0.27%    0.23%  │    │     0x00007fcb3d2321c6: inc    %ebx               ;*iadd
                  │    │                                                   ; - com.google.re2j.Machine::step@165 (line 306)
  1.19%    1.17%  │    │     0x00007fcb3d2321c8: cmp    $0x6,%r11d
                  │    │     0x00007fcb3d2321cc: je     0x00007fcb3d2323ec  ;*if_icmpne
                  │    │                                                   ; - com.google.re2j.Machine::step@93 (line 296)
  1.23%    1.34%  │    │     0x00007fcb3d2321d2: mov    0x8(%r12,%rbp,8),%r10d
  0.45%    0.54%  │    │     0x00007fcb3d2321d7: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    │     0x00007fcb3d2321de: jne    0x00007fcb3d2324a9
  0.97%    1.01%  │    │     0x00007fcb3d2321e4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual matchRune
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.82%    0.88%  │    │     0x00007fcb3d2321e8: mov    0xc(%r10),%ebp     ;*getfield op
                  │    │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 136)
                  │    │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.97%    0.83%  │    │     0x00007fcb3d2321ec: cmp    $0xa,%ebp
                  │ ╭  │     0x00007fcb3d2321ef: je     0x00007fcb3d232293  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 136)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.72%    0.80%  │ │  │     0x00007fcb3d2321f5: cmp    $0xb,%ebp
                  │ │  │     0x00007fcb3d2321f8: je     0x00007fcb3d232565  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 140)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.02%    0.84%  │ │  │     0x00007fcb3d2321fe: cmp    $0x9,%ebp
                  │ │  │     0x00007fcb3d232201: je     0x00007fcb3d2325b1  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 144)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.70%    1.67%  │ │  │     0x00007fcb3d232207: cmp    $0xc,%ebp
                  │ │  │     0x00007fcb3d23220a: jne    0x00007fcb3d232519  ;*if_icmpne
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 148)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.95%    0.91%  │ │  │     0x00007fcb3d232210: mov    0x20(%r10),%ecx    ;*getfield f0
                  │ │  │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 149)
                  │ │  │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.26%    0.34%  │ │  │     0x00007fcb3d232214: cmp    0x18(%rsp),%ecx
                  │ │╭ │     0x00007fcb3d232218: je     0x00007fcb3d232293  ;*if_icmpeq
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.51%    1.63%  │ ││ │     0x00007fcb3d23221a: mov    0x24(%r10),%r11d   ;*getfield f1
                  │ ││ │                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 149)
                  │ ││ │                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.59%    0.50%  │ ││ │     0x00007fcb3d23221e: cmp    0x18(%rsp),%r11d
                  │ ││╭│     0x00007fcb3d232223: je     0x00007fcb3d232293  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  2.11%    1.97%  │ ││││     0x00007fcb3d232225: mov    0x28(%r10),%ebp    ;*getfield f2
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.34%    0.37%  │ ││││     0x00007fcb3d232229: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007fcb3d23222d: je     0x00007fcb3d2325fd  ;*if_icmpeq
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.85%    0.73%  │ ││││     0x00007fcb3d232233: mov    0x2c(%r10),%ebp    ;*getfield f3
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  0.44%    0.50%  │ ││││     0x00007fcb3d232237: cmp    0x18(%rsp),%ebp
                  │ ││││     0x00007fcb3d23223b: je     0x00007fcb3d23265d  ;*if_icmpne
                  │ ││││                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 149)
                  │ ││││                                                   ; - com.google.re2j.Machine::step@181 (line 310)
  1.98%    2.11%  │ ││││     0x00007fcb3d232241: mov    0x78(%rsp),%r11d
  0.20%    0.19%  │ ││││     0x00007fcb3d232246: mov    0x80(%rsp),%edi
  0.20%    0.22%  │ ││││     0x00007fcb3d23224d: mov    0x8(%rsp),%r10     ; OopMap{r10=Oop r9=Oop r13=Oop off=306}
                  │ ││││                                                   ;*goto
                  │ ││││                                                   ; - com.google.re2j.Machine::step@221 (line 281)
  0.56%    0.56%  │ ││││  ↗  0x00007fcb3d232252: test   %eax,0x174a0da8(%rip)        # 0x00007fcb546d3000
                  │ ││││  │                                                ;*goto
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@221 (line 281)
                  │ ││││  │                                                ;   {poll}
  2.06%    2.28%  │ ││││  │  0x00007fcb3d232258: mov    0xc(%r9),%ecx
  0.19%    0.19%  │ ││││  │  0x00007fcb3d23225c: cmp    %ecx,%ebx
                  │ │││╰  │  0x00007fcb3d23225e: jl     0x00007fcb3d232181  ;*if_icmpge
                  │ │││   │                                                ; - com.google.re2j.Machine::step@18 (line 281)
  0.03%    0.02%  ↘ │││   │  0x00007fcb3d232264: movzbl 0x18(%r9),%r10d
  0.13%    0.11%    │││   │  0x00007fcb3d232269: test   %r10d,%r10d
                    │││ ╭ │  0x00007fcb3d23226c: jne    0x00007fcb3d232287  ;*ifeq
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.42%    0.42%    │││ │ │  0x00007fcb3d23226e: mov    %r12d,0xc(%r9)     ;*putfield size
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.01%    0.00%    │││ │ │  0x00007fcb3d232272: mov    0x1c(%r9),%ebp     ;*getfield pcs
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.03%    0.02%    │││ │ │  0x00007fcb3d232276: movb   $0x1,0x18(%r9)     ;*putfield empty
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.10%    0.17%    │││ │ │  0x00007fcb3d23227b: mov    %r12,0x10(%r9)     ;*putfield pcsl
                    │││ │ │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │││ │ │                                                ; - com.google.re2j.Machine::step@225 (line 317)
  0.51%    0.50%    │││ │ │  0x00007fcb3d23227f: test   %ebp,%ebp
                    │││ │ │  0x00007fcb3d232281: jne    0x00007fcb3d2326a9  ;*getfield size
                    │││ │ │                                                ; - com.google.re2j.Machine::step@15 (line 281)
           0.01%    │││ ↘ │  0x00007fcb3d232287: add    $0x60,%rsp
  0.03%    0.02%    │││   │  0x00007fcb3d23228b: pop    %rbp
  0.15%    0.12%    │││   │  0x00007fcb3d23228c: test   %eax,0x174a0d6e(%rip)        # 0x00007fcb546d3000
                    │││   │                                                ;   {poll_return}
  0.46%    0.43%    │││   │  0x00007fcb3d232292: retq   
  0.37%    0.36%    ↘↘↘   │  0x00007fcb3d232293: mov    0x1c(%r10),%r10d   ;*getfield outInst
                          │                                                ; - com.google.re2j.Machine::step@189 (line 311)
  0.23%    0.27%          │  0x00007fcb3d232297: mov    0x8(%r12,%r10,8),%esi  ; implicit exception: dispatches to 0x00007fcb3d232b7d
  0.34%    0.24%          │  0x00007fcb3d23229c: lea    (%r12,%r10,8),%r11
           0.00%          │  0x00007fcb3d2322a0: xor    %eax,%eax
           0.01%          │  0x00007fcb3d2322a2: movabs $0x7fcb4d0db000,%rdi
  0.01%    0.02%          │  0x00007fcb3d2322ac: mov    $0x1,%edx
  0.09%    0.05%          │  0x00007fcb3d2322b1: cmp    $0xf8019993,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ╭│  0x00007fcb3d2322b7: jne    0x00007fcb3d232356  ;*invokevirtual add
                         ││                                                ; - com.google.re2j.Machine::step@202 (line 311)
           0.00%         ││  0x00007fcb3d2322bd: mov    0x18(%r11),%ecx    ;*getfield pc
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%                  ││  0x00007fcb3d2322c1: mov    0x8(%rsp),%r10
  0.02%    0.04%         ││  0x00007fcb3d2322c6: mov    0x10(%r10),%rsi    ;*getfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││                                                ; implicit exception: dispatches to 0x00007fcb3d232b91
  0.13%    0.07%         ││  0x00007fcb3d2322ca: cmp    $0x40,%ecx
                         ││  0x00007fcb3d2322cd: jg     0x00007fcb3d23278d  ;*if_icmpgt
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%         ││  0x00007fcb3d2322d3: shl    %cl,%rdx           ;*lshl
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.19%         ││  0x00007fcb3d2322d6: mov    %rsi,%rbp
  0.00%                  ││  0x00007fcb3d2322d9: and    %rdx,%rbp          ;*land
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.00%         ││  0x00007fcb3d2322dc: test   %rbp,%rbp
                         ││  0x00007fcb3d2322df: jne    0x00007fcb3d2327f9  ;*ifeq
                         ││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.05%         ││  0x00007fcb3d2322e5: cmp    $0x40,%ecx
                         ││  0x00007fcb3d2322e8: jge    0x00007fcb3d232871  ;*if_icmpge
                         ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.05%         ││  0x00007fcb3d2322ee: mov    %r12b,0x18(%r10)   ;*putfield empty
                         ││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││  0x00007fcb3d2322f2: mov    0xc(%r10),%ecx     ;*getfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
                         ││  0x00007fcb3d2322f6: or     %rsi,%rdx
  0.10%    0.03%         ││  0x00007fcb3d2322f9: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                         ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.02%         ││  0x00007fcb3d2322fd: mov    0x20(%r10),%ebp    ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%         ││  0x00007fcb3d232301: mov    %ecx,%esi
  0.01%                  ││  0x00007fcb3d232303: inc    %esi
  0.04%    0.03%         ││  0x00007fcb3d232305: mov    %esi,0xc(%r10)     ;*putfield size
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%         ││  0x00007fcb3d232309: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007fcb3d232ba5
  0.02%    0.00%         ││  0x00007fcb3d23230e: cmp    %esi,%ecx
                         ││  0x00007fcb3d232310: jae    0x00007fcb3d2326bd
  0.06%    0.00%         ││  0x00007fcb3d232316: mov    0x8(%r12,%rbp,8),%esi
  0.07%    0.04%         ││  0x00007fcb3d23231b: cmp    $0xf8019808,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                         ││  0x00007fcb3d232321: jne    0x00007fcb3d232725  ;*aastore
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%         ││  0x00007fcb3d232327: lea    (%r12,%rbp,8),%r8  ;*getfield denseThreadsInstructions
                         ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                         ││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%         ││  0x00007fcb3d23232b: lea    0x10(%r8,%rcx,4),%rcx
  0.03%    0.01%         ││  0x00007fcb3d232330: mov    %r11,%r8
  0.05%    0.06%         ││  0x00007fcb3d232333: shr    $0x3,%r8
  0.05%    0.03%         ││  0x00007fcb3d232337: mov    %r8d,(%rcx)
  0.07%    0.02%         ││  0x00007fcb3d23233a: mov    %rcx,%r11
  0.01%    0.00%         ││  0x00007fcb3d23233d: shr    $0x9,%r11
  0.03%    0.05%         ││  0x00007fcb3d232341: mov    %r12b,(%rdi,%r11,1)  ;*synchronization entry
                         ││                                                ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.19%         ││  0x00007fcb3d232345: mov    0x78(%rsp),%r11d
           0.00%         ││  0x00007fcb3d23234a: mov    0x80(%rsp),%edi
  0.01%                  │╰  0x00007fcb3d232351: jmpq   0x00007fcb3d232252
  0.00%                  ↘   0x00007fcb3d232356: cmp    $0xf801990d,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             0x00007fcb3d23235c: jne    0x00007fcb3d232945  ;*invokevirtual add
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
  0.00%                      0x00007fcb3d232362: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                             0x00007fcb3d232366: mov    0x8(%rsp),%r10
                             0x00007fcb3d23236b: mov    0x10(%r10),%rsi    ;*getfield pcsl
                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                                                                           ; implicit exception: dispatches to 0x00007fcb3d232bbd
  0.00%                      0x00007fcb3d23236f: cmp    $0x40,%ecx
                             0x00007fcb3d232372: jg     0x00007fcb3d2329e9  ;*if_icmpgt
                                                                           ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                             0x00007fcb3d232378: shl    %cl,%rdx           ;*lshl
                                                                           ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
           0.00%             0x00007fcb3d23237b: mov    %rsi,%rbp
                             0x00007fcb3d23237e: and    %rdx,%rbp          ;*land
                                                                           ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                           ; - com.google.re2j.Machine::step@202 (line 311)
                             0x00007fcb3d232381: test   %rbp,%rbp
                             0x00007fcb3d232384: jne    0x00007fcb3d232a55  ;*ifeq
                                                                           ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
....................................................................................................
 40.89%   42.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 545 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007fcb3d23d8c0: mov    0x8(%rsi),%r10d
                     0x00007fcb3d23d8c4: shl    $0x3,%r10
                     0x00007fcb3d23d8c8: cmp    %r10,%rax
                     0x00007fcb3d23d8cb: jne    0x00007fcb3d045e20  ;   {runtime_call}
                     0x00007fcb3d23d8d1: data16 xchg %ax,%ax
                     0x00007fcb3d23d8d4: nopl   0x0(%rax,%rax,1)
                     0x00007fcb3d23d8dc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.07%    0.02%     0x00007fcb3d23d8e0: mov    %eax,-0x14000(%rsp)
  0.44%    0.51%     0x00007fcb3d23d8e7: push   %rbp
  0.09%    0.15%     0x00007fcb3d23d8e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.50%    0.61%     0x00007fcb3d23d8ec: vmovq  %r8,%xmm6
  0.01%              0x00007fcb3d23d8f1: vmovq  %rsi,%xmm4
  0.07%    0.09%     0x00007fcb3d23d8f6: vmovd  %ecx,%xmm0
  0.05%    0.02%     0x00007fcb3d23d8fa: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.44%    0.32%     0x00007fcb3d23d8fd: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                   ; implicit exception: dispatches to 0x00007fcb3d23e271
  0.01%    0.00%     0x00007fcb3d23d901: cmp    $0x40,%ecx
                     0x00007fcb3d23d904: jg     0x00007fcb3d23dddd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.08%    0.10%     0x00007fcb3d23d90a: mov    $0x1,%eax
  0.05%    0.02%     0x00007fcb3d23d90f: mov    $0x1,%r8d
  0.44%    0.43%     0x00007fcb3d23d915: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.10%    0.08%     0x00007fcb3d23d918: mov    %r11,%r10
  0.43%    0.42%     0x00007fcb3d23d91b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.00%     0x00007fcb3d23d91e: xor    %r13d,%r13d
  0.10%    0.06%     0x00007fcb3d23d921: test   %r10,%r10
                     0x00007fcb3d23d924: jne    0x00007fcb3d23de11  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.03%     0x00007fcb3d23d92a: cmp    $0x40,%ecx
                     0x00007fcb3d23d92d: jge    0x00007fcb3d23de55  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.47%    0.53%     0x00007fcb3d23d933: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.00%     0x00007fcb3d23d937: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.06%    0.05%     0x00007fcb3d23d93a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.04%    0.02%     0x00007fcb3d23d93d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.52%    0.46%     0x00007fcb3d23d941: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fcb3d23e285
  0.00%              0x00007fcb3d23d946: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007fcb3d23d94d: jne    0x00007fcb3d23dcb1
  0.09%    0.07%     0x00007fcb3d23d953: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.03%     0x00007fcb3d23d957: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.46%    0.60%     0x00007fcb3d23d95b: cmp    $0x40,%ecx
                     0x00007fcb3d23d95e: jg     0x00007fcb3d23de89  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.01%     0x00007fcb3d23d964: mov    $0x1,%r11d
  0.08%    0.09%     0x00007fcb3d23d96a: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.57%    0.46%     0x00007fcb3d23d96d: mov    %r8,%rbx
  0.06%    0.12%     0x00007fcb3d23d970: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.04%     0x00007fcb3d23d973: test   %rbx,%rbx
                     0x00007fcb3d23d976: jne    0x00007fcb3d23dec9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.47%    0.67%     0x00007fcb3d23d97c: cmp    $0x40,%ecx
                     0x00007fcb3d23d97f: jge    0x00007fcb3d23df11  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.00%     0x00007fcb3d23d985: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.14%     0x00007fcb3d23d988: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.06%     0x00007fcb3d23d98c: mov    0x70(%rsp),%r11
  0.49%    0.37%     0x00007fcb3d23d991: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fcb3d23e2ad
  0.01%    0.01%     0x00007fcb3d23d996: test   %ebp,%ebp
                     0x00007fcb3d23d998: jne    0x00007fcb3d23df51  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.12%     0x00007fcb3d23d99e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.02%     0x00007fcb3d23d9a1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.53%    0.83%     0x00007fcb3d23d9a4: mov    %ecx,%esi
           0.01%     0x00007fcb3d23d9a6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.12%     0x00007fcb3d23d9a8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%    0.03%     0x00007fcb3d23d9ab: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007fcb3d23e2bd
  0.55%    0.67%     0x00007fcb3d23d9b0: cmp    %edi,%ecx
                  ╭  0x00007fcb3d23d9b2: jae    0x00007fcb3d23dc35
  0.00%    0.01%  │  0x00007fcb3d23d9b8: vmovd  %esi,%xmm1
  0.08%    0.08%  │  0x00007fcb3d23d9bc: vmovd  %ebx,%xmm2
  0.01%    0.03%  │  0x00007fcb3d23d9c0: mov    %ecx,0x18(%rsp)
  0.57%    0.63%  │  0x00007fcb3d23d9c4: mov    %r10,%rcx
           0.01%  │  0x00007fcb3d23d9c7: mov    0x70(%rsp),%r14
  0.10%    0.09%  │  0x00007fcb3d23d9cc: mov    0x8(%r12,%rbx,8),%r11d
  0.01%    0.03%  │  0x00007fcb3d23d9d1: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fcb3d23d9d8: jne    0x00007fcb3d23dce1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.49%    0.40%  │  0x00007fcb3d23d9de: vmovq  %xmm4,%r10
  0.01%    0.01%  │  0x00007fcb3d23d9e3: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.10%    0.11%  │  0x00007fcb3d23d9e7: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.04%  │  0x00007fcb3d23d9eb: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.50%    0.47%  │  0x00007fcb3d23d9ef: mov    0x18(%rsp),%r10d
  0.16%    0.08%  │  0x00007fcb3d23d9f4: lea    0x10(%r11,%r10,4),%r10
  0.12%    0.07%  │  0x00007fcb3d23d9f9: mov    %ecx,(%r10)
  0.17%    0.16%  │  0x00007fcb3d23d9fc: shr    $0x9,%r10
  0.41%    0.44%  │  0x00007fcb3d23da00: movabs $0x7fcb4d0db000,%rbx
  0.00%           │  0x00007fcb3d23da0a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.17%    0.13%  │  0x00007fcb3d23da0e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcb3d23e2d5
  0.03%    0.04%  │  0x00007fcb3d23da13: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fcb3d23da1a: jne    0x00007fcb3d23dd19
  0.34%    0.31%  │  0x00007fcb3d23da20: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │  0x00007fcb3d23da24: vmovq  %r10,%xmm3
  0.15%    0.07%  │  0x00007fcb3d23da29: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.03%    0.03%  │  0x00007fcb3d23da2d: vmovd  %ecx,%xmm5
  0.36%    0.23%  │  0x00007fcb3d23da31: cmp    $0x40,%ecx
                  │  0x00007fcb3d23da34: jg     0x00007fcb3d23df8d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │  0x00007fcb3d23da3a: mov    $0x1,%r10d
  0.20%    0.11%  │  0x00007fcb3d23da40: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.34%    0.48%  │  0x00007fcb3d23da43: mov    %r8,%rcx
  0.14%    0.15%  │  0x00007fcb3d23da46: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.04%  │  0x00007fcb3d23da49: test   %rcx,%rcx
                  │  0x00007fcb3d23da4c: jne    0x00007fcb3d23dfc9  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.41%    0.49%  │  0x00007fcb3d23da52: vmovd  %xmm5,%ecx
                  │  0x00007fcb3d23da56: cmp    $0x40,%ecx
                  │  0x00007fcb3d23da59: jge    0x00007fcb3d23e011  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.13%    0.13%  │  0x00007fcb3d23da5f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.01%  │  0x00007fcb3d23da62: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.38%    0.21%  │  0x00007fcb3d23da66: mov    0x18(%rsp),%ecx
  0.00%           │  0x00007fcb3d23da6a: add    $0x2,%ecx
  0.12%    0.17%  │  0x00007fcb3d23da6d: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.04%  │  0x00007fcb3d23da70: mov    0x18(%rsp),%r10d
  0.38%    0.53%  │  0x00007fcb3d23da75: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
                  │  0x00007fcb3d23da79: cmp    %edi,%r10d
                  │  0x00007fcb3d23da7c: jae    0x00007fcb3d23dc71  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.15%    0.16%  │  0x00007fcb3d23da82: vmovd  %r9d,%xmm7
  0.05%    0.05%  │  0x00007fcb3d23da87: vmovq  %xmm4,%r9
  0.43%    0.45%  │  0x00007fcb3d23da8c: mov    0x24(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.01%    0.00%  │  0x00007fcb3d23da90: vmovq  %xmm3,%r9
  0.10%    0.15%  │  0x00007fcb3d23da95: mov    %r9,%rcx
  0.03%    0.07%  │  0x00007fcb3d23da98: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.44%    0.57%  │  0x00007fcb3d23da9c: movslq 0x18(%rsp),%r9
           0.01%  │  0x00007fcb3d23daa1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.17%    0.16%  │  0x00007fcb3d23daa5: mov    %r9,%rdi
  0.01%    0.01%  │  0x00007fcb3d23daa8: add    $0x14,%rdi
  0.38%    0.40%  │  0x00007fcb3d23daac: mov    %ecx,(%rdi)
           0.00%  │  0x00007fcb3d23daae: mov    %rdi,%rcx
  0.14%    0.13%  │  0x00007fcb3d23dab1: shr    $0x9,%rcx
  0.04%    0.03%  │  0x00007fcb3d23dab5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.43%    0.26%  │  0x00007fcb3d23dab9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcb3d23e2fd
                  │  0x00007fcb3d23dabe: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fcb3d23dac4: jne    0x00007fcb3d23dd49
  0.12%    0.20%  │  0x00007fcb3d23daca: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.01%  │  0x00007fcb3d23dace: vmovq  %rcx,%xmm1
  0.50%    0.57%  │  0x00007fcb3d23dad3: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
           0.00%  │  0x00007fcb3d23dad6: vmovd  %ecx,%xmm2
  0.15%    0.18%  │  0x00007fcb3d23dada: cmp    $0x40,%ecx
                  │  0x00007fcb3d23dadd: jg     0x00007fcb3d23e051  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.05%  │  0x00007fcb3d23dae3: mov    $0x1,%edi
  0.44%    0.52%  │  0x00007fcb3d23dae8: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.19%    0.14%  │  0x00007fcb3d23daeb: mov    %r8,%rcx
  0.37%    0.44%  │  0x00007fcb3d23daee: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
           0.00%  │  0x00007fcb3d23daf1: test   %rcx,%rcx
                  │  0x00007fcb3d23daf4: jne    0x00007fcb3d23e091  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.14%    0.13%  │  0x00007fcb3d23dafa: vmovd  %xmm2,%ecx
  0.02%    0.06%  │  0x00007fcb3d23dafe: cmp    $0x40,%ecx
                  │  0x00007fcb3d23db01: jge    0x00007fcb3d23e0dd  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.37%    0.56%  │  0x00007fcb3d23db07: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │  0x00007fcb3d23db0a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.15%    0.08%  │  0x00007fcb3d23db0e: vmovq  %xmm4,%rcx
  0.04%    0.04%  │  0x00007fcb3d23db13: mov    0x28(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.36%    0.51%  │  0x00007fcb3d23db16: mov    %r9,%rdi
                  │  0x00007fcb3d23db19: add    $0x18,%rdi
  0.13%    0.14%  │  0x00007fcb3d23db1d: vmovq  %xmm1,%rsi
  0.03%    0.03%  │  0x00007fcb3d23db22: mov    %rsi,%rcx
  0.39%    0.60%  │  0x00007fcb3d23db25: shr    $0x3,%rcx
           0.00%  │  0x00007fcb3d23db29: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.15%    0.08%  │  0x00007fcb3d23db2b: mov    0x18(%rsp),%ecx
  0.03%    0.03%  │  0x00007fcb3d23db2f: add    $0x3,%ecx
  0.37%    0.37%  │  0x00007fcb3d23db32: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.00%  │  0x00007fcb3d23db35: shr    $0x9,%rdi
  0.12%    0.08%  │  0x00007fcb3d23db39: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.04%    0.04%  │  0x00007fcb3d23db3d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcb3d23e325
  0.47%    0.40%  │  0x00007fcb3d23db42: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fcb3d23db48: jne    0x00007fcb3d23dd7d
                  │  0x00007fcb3d23db4e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.16%    0.15%  │  0x00007fcb3d23db52: vmovq  %rcx,%xmm1
  0.05%    0.03%  │  0x00007fcb3d23db57: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.40%    0.51%  │  0x00007fcb3d23db5a: vmovd  %ecx,%xmm3
  0.00%           │  0x00007fcb3d23db5e: cmp    $0x40,%ecx
                  │  0x00007fcb3d23db61: jg     0x00007fcb3d23e11d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.14%    0.12%  │  0x00007fcb3d23db67: mov    $0x1,%edi
  0.04%    0.04%  │  0x00007fcb3d23db6c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.50%    0.54%  │  0x00007fcb3d23db6f: mov    %r8,%rcx
  0.01%    0.01%  │  0x00007fcb3d23db72: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.46%    0.28%  │  0x00007fcb3d23db75: test   %rcx,%rcx
                  │  0x00007fcb3d23db78: jne    0x00007fcb3d23e15d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%    0.00%  │  0x00007fcb3d23db7e: vmovd  %xmm3,%ecx
  0.14%    0.20%  │  0x00007fcb3d23db82: cmp    $0x40,%ecx
                  │  0x00007fcb3d23db85: jge    0x00007fcb3d23e1a9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.04%  │  0x00007fcb3d23db8b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.55%  │  0x00007fcb3d23db8f: vmovq  %xmm4,%r10
  0.01%           │  0x00007fcb3d23db94: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.13%    0.12%  │  0x00007fcb3d23db98: mov    %r9,%rcx
  0.04%    0.04%  │  0x00007fcb3d23db9b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.37%    0.41%  │  0x00007fcb3d23db9f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
                  │  0x00007fcb3d23dba2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.12%    0.10%  │  0x00007fcb3d23dba6: vmovq  %xmm1,%r10
  0.05%    0.06%  │  0x00007fcb3d23dbab: shr    $0x3,%r10
  0.29%    0.47%  │  0x00007fcb3d23dbaf: mov    %r10d,(%rcx)
  0.00%           │  0x00007fcb3d23dbb2: mov    %rcx,%r10
  0.14%    0.12%  │  0x00007fcb3d23dbb5: shr    $0x9,%r10
  0.02%    0.03%  │  0x00007fcb3d23dbb9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.39%    0.32%  │  0x00007fcb3d23dbbd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcb3d23e34d
                  │  0x00007fcb3d23dbc2: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │  0x00007fcb3d23dbc9: jne    0x00007fcb3d23ddb1
  0.10%    0.15%  │  0x00007fcb3d23dbcf: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.01%  │  0x00007fcb3d23dbd3: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.38%    0.42%  │  0x00007fcb3d23dbd6: cmp    $0x40,%ecx
                  │  0x00007fcb3d23dbd9: jg     0x00007fcb3d23e1e9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.00%  │  0x00007fcb3d23dbdf: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.58%    0.58%  │  0x00007fcb3d23dbe2: mov    %r8,%r10
                  │  0x00007fcb3d23dbe5: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.10%  │  0x00007fcb3d23dbe8: test   %r10,%r10
                  │  0x00007fcb3d23dbeb: jne    0x00007fcb3d23e211  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.04%  │  0x00007fcb3d23dbf1: cmp    $0x40,%ecx
                  │  0x00007fcb3d23dbf4: jge    0x00007fcb3d23e249  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.50%    0.50%  │  0x00007fcb3d23dbfa: or     %rax,%r8
  0.00%    0.00%  │  0x00007fcb3d23dbfd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.12%  │  0x00007fcb3d23dc01: add    $0x20,%r9
  0.04%    0.04%  │  0x00007fcb3d23dc05: mov    %rdi,%r10
  0.40%    0.52%  │  0x00007fcb3d23dc08: shr    $0x3,%r10
           0.00%  │  0x00007fcb3d23dc0c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.18%    0.14%  │  0x00007fcb3d23dc0f: mov    %r9,%r10
  0.04%    0.03%  │  0x00007fcb3d23dc12: mov    0x18(%rsp),%r11d
  0.40%    0.24%  │  0x00007fcb3d23dc17: add    $0x5,%r11d
                  │  0x00007fcb3d23dc1b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.13%    0.08%  │  0x00007fcb3d23dc1f: shr    $0x9,%r10
  0.04%    0.04%  │  0x00007fcb3d23dc23: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.44%    0.54%  │  0x00007fcb3d23dc27: xor    %eax,%eax
           0.00%  │  0x00007fcb3d23dc29: add    $0x60,%rsp
  0.09%    0.18%  │  0x00007fcb3d23dc2d: pop    %rbp
  0.04%    0.04%  │  0x00007fcb3d23dc2e: test   %eax,0x174953cc(%rip)        # 0x00007fcb546d3000
                  │                                                ;   {poll_return}
  0.35%    0.56%  │  0x00007fcb3d23dc34: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ↘  0x00007fcb3d23dc35: mov    $0xffffffe4,%esi
                     0x00007fcb3d23dc3a: vmovq  %xmm4,%rbp
                     0x00007fcb3d23dc3f: mov    %rdx,0x70(%rsp)
                     0x00007fcb3d23dc44: vmovss %xmm0,(%rsp)
                     0x00007fcb3d23dc49: vmovsd %xmm6,0x8(%rsp)
                     0x00007fcb3d23dc4f: mov    %r9d,0x4(%rsp)
....................................................................................................
 28.68%   30.49%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 574 (1066 bytes) 

                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007fcb3d2500fa: mov    $0x5,%r9d          ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                    ↗   0x00007fcb3d250100: cmp    $0xa,%ebx
                  ╭                                 │   0x00007fcb3d250103: je     0x00007fcb3d250557  ;*iload_0
                  │                                 │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                  │                                 │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                 │↗  0x00007fcb3d250109: mov    %ebx,%r8d
                  │                                 ││  0x00007fcb3d25010c: add    $0xffffffbf,%r8d
  0.00%           │                                 ││  0x00007fcb3d250110: cmp    $0x1a,%r8d
                  │╭                                ││  0x00007fcb3d250114: jb     0x00007fcb3d250127  ;*if_icmple
                  ││                                ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  ││                                ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  ││                                ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  ││                                ││  0x00007fcb3d250116: mov    %ebx,%r10d
                  ││                                ││  0x00007fcb3d250119: add    $0xffffff9f,%r10d
                  ││                                ││  0x00007fcb3d25011d: cmp    $0x1a,%r10d
                  ││╭                               ││  0x00007fcb3d250121: jae    0x00007fcb3d250560  ;*iconst_1
                  │││                               ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │││                               ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││                               ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  │↘│                               ││  0x00007fcb3d250127: or     $0x10,%r9d         ;*iload_2
                  │ │                               ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                  │ │                               ││  0x00007fcb3d25012b: mov    %r11d,0x30(%rsp)
  0.02%    0.00%  │ │                               ││  0x00007fcb3d250130: mov    %ecx,0x2c(%rsp)
                  │ │                               ││  0x00007fcb3d250134: movzbl 0x11(%r13),%edi    ;*getfield captures
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%           │ │                               ││  0x00007fcb3d250139: mov    0x44(%rsp),%r11d
                  │ │                               ││  0x00007fcb3d25013e: and    $0x4,%r11d         ;*iand
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@147 (line 212)
                  │ │                               ││  0x00007fcb3d250142: mov    %r11d,0x14(%rsp)
                  │ │                               ││  0x00007fcb3d250147: mov    %rax,%r10
  0.01%    0.00%  │ │                               ││  0x00007fcb3d25014a: shl    $0x3,%r10          ;*getfield q1
                  │ │                               ││                                                ; - com.google.re2j.Machine::match@53 (line 192)
                  │ │                               ││  0x00007fcb3d25014e: mov    %r10,0x58(%rsp)
                  │ │                               ││  0x00007fcb3d250153: mov    %ebx,0x34(%rsp)
                  │ │                               ││  0x00007fcb3d250157: xor    %eax,%eax
           0.00%  │ │                               ││  0x00007fcb3d250159: xor    %r10d,%r10d
                  │ │                               ││  0x00007fcb3d25015c: mov    %r10d,0x1c(%rsp)
                  │ │╭                              ││  0x00007fcb3d250161: jmpq   0x00007fcb3d2502fd
  0.08%    0.07%  │ ││     ↗                        ││  0x00007fcb3d250166: mov    0x14(%rsp),%ecx
                  │ ││╭    │                        ││  0x00007fcb3d25016a: jmpq   0x00007fcb3d250341
                  │ │││    │                        ││  0x00007fcb3d25016f: nop
  0.31%    0.15%  │ │││    │         ↗              ││  0x00007fcb3d250170: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │ │││    │         │              ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%           │ │││    │         │              ││  0x00007fcb3d250174: mov    %r11d,0x3c(%rsp)   ;*iload_2
                  │ │││    │         │              ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │ │││    │         │              ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.27%    0.26%  │ │││    │         │↗             ││  0x00007fcb3d250179: mov    0x48(%rsp),%r11
  0.02%    0.06%  │ │││    │         ││             ││  0x00007fcb3d25017e: mov    0x10(%r11),%r10d   ;*getfield end
                  │ │││    │         ││             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │ │││    │         ││             ││                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.39%    0.60%  │ │││    │         ││             ││  0x00007fcb3d250182: mov    0x1c(%rsp),%ecx
           0.03%  │ │││    │         ││             ││  0x00007fcb3d250186: cmp    %r10d,%ecx
                  │ │││╭   │         ││             ││  0x00007fcb3d250189: je     0x00007fcb3d250486  ;*if_icmpne
                  │ ││││   │         ││             ││                                                ; - com.google.re2j.Machine::match@347 (line 246)
  0.24%    0.29%  │ ││││   │         ││             ││  0x00007fcb3d25018f: xor    %r10d,%r10d        ;*invokespecial step
                  │ ││││   │         ││             ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.04%  │ ││││   │         ││    ↗        ││  0x00007fcb3d250192: mov    0x1c(%rsp),%ebp
  0.25%    0.27%  │ ││││   │         ││    │        ││  0x00007fcb3d250196: add    0x28(%rsp),%ecx    ;*iadd
                  │ ││││   │         ││    │        ││                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.01%    0.02%  │ ││││   │         ││    │        ││  0x00007fcb3d25019a: mov    %ecx,0x1c(%rsp)
  0.21%    0.23%  │ ││││   │         ││    │        ││  0x00007fcb3d25019e: mov    0x50(%rsp),%rsi
  0.03%    0.04%  │ ││││   │         ││    │        ││  0x00007fcb3d2501a3: mov    0x20(%rsp),%rdx
  0.33%    0.27%  │ ││││   │         ││    │        ││  0x00007fcb3d2501a8: mov    0x58(%rsp),%rcx
  0.01%    0.01%  │ ││││   │         ││    │        ││  0x00007fcb3d2501ad: mov    %ebp,%r8d
  0.26%    0.22%  │ ││││   │         ││    │        ││  0x00007fcb3d2501b0: mov    0x1c(%rsp),%r9d
  0.10%    0.06%  │ ││││   │         ││    │        ││  0x00007fcb3d2501b5: mov    0x34(%rsp),%edi
  0.31%    0.32%  │ ││││   │         ││    │        ││  0x00007fcb3d2501b9: mov    0x3c(%rsp),%ebx
  0.02%    0.01%  │ ││││   │         ││    │        ││  0x00007fcb3d2501bd: mov    %ebx,(%rsp)
  0.18%    0.10%  │ ││││   │         ││    │        ││  0x00007fcb3d2501c0: mov    0x38(%rsp),%r11d
  0.06%    0.06%  │ ││││   │         ││    │        ││  0x00007fcb3d2501c5: mov    %r11d,0x8(%rsp)
  0.25%    0.38%  │ ││││   │         ││    │        ││  0x00007fcb3d2501ca: mov    %r10d,0x10(%rsp)
  0.02%           │ ││││   │         ││    │        ││  0x00007fcb3d2501cf: callq  0x00007fcb3d046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=660}
                  │ ││││   │         ││    │        ││                                                ;*invokespecial step
                  │ ││││   │         ││    │        ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  │ ││││   │         ││    │        ││                                                ;   {optimized virtual_call}
  0.01%    0.00%  │ ││││   │         ││    │        ││  0x00007fcb3d2501d4: mov    0x50(%rsp),%r8
  0.12%    0.15%  │ ││││   │         ││    │        ││  0x00007fcb3d2501d9: movzbl 0x10(%r8),%eax     ;*getfield matched
                  │ ││││   │         ││    │        ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.43%    0.53%  │ ││││   │         ││    │        ││  0x00007fcb3d2501de: movzbl 0x11(%r8),%edi     ;*getfield captures
                  │ ││││   │         ││    │        ││                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.02%    0.01%  │ ││││   │         ││    │        ││  0x00007fcb3d2501e3: mov    0x28(%rsp),%r10d
  0.04%    0.02%  │ ││││   │         ││    │        ││  0x00007fcb3d2501e8: test   %r10d,%r10d
                  │ ││││╭  │         ││    │        ││  0x00007fcb3d2501eb: je     0x00007fcb3d250491  ;*ifne
                  │ │││││  │         ││    │        ││                                                ; - com.google.re2j.Machine::match@360 (line 247)
  0.13%    0.14%  │ │││││  │         ││    │        ││  0x00007fcb3d2501f1: test   %edi,%edi
                  │ │││││  │         ││    │        ││  0x00007fcb3d2501f3: jne    0x00007fcb3d250749  ;*ifne
                  │ │││││  │         ││    │        ││                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.35%    0.44%  │ │││││  │         ││    │        ││  0x00007fcb3d2501f9: test   %eax,%eax
                  │ │││││  │         ││    │        ││  0x00007fcb3d2501fb: jne    0x00007fcb3d250865  ;*ifeq
                  │ │││││  │         ││    │        ││                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.04%    0.04%  │ │││││  │         ││    │        ││  0x00007fcb3d250201: mov    0x2c(%rsp),%r9d
  0.01%    0.03%  │ │││││  │         ││    │        ││  0x00007fcb3d250206: cmp    $0xffffffff,%r9d
                  │ │││││╭ │         ││    │        ││  0x00007fcb3d25020a: je     0x00007fcb3d2504d0  ;*if_icmpeq
                  │ ││││││ │         ││    │        ││                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.06%    0.09%  │ ││││││ │         ││    │        ││  0x00007fcb3d250210: mov    0x48(%rsp),%rdx
  0.42%    0.42%  │ ││││││ │         ││    │        ││  0x00007fcb3d250215: mov    0x10(%rdx),%r11d   ;*getfield end
                  │ ││││││ │         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │ ││││││ │         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.07%    0.07%  │ ││││││ │         ││    │        ││  0x00007fcb3d250219: mov    0x30(%rsp),%ecx
  0.02%    0.04%  │ ││││││ │         ││    │        ││  0x00007fcb3d25021d: add    0x1c(%rsp),%ecx
  0.09%    0.11%  │ ││││││ │         ││    │        ││  0x00007fcb3d250221: add    0xc(%rdx),%ecx     ;*iadd
                  │ ││││││ │         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │ ││││││ │         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.47%    0.41%  │ ││││││ │         ││    │        ││  0x00007fcb3d250224: cmp    %r11d,%ecx
                  │ ││││││╭│         ││    │        ││  0x00007fcb3d250227: jge    0x00007fcb3d25046e  ;*if_icmpge
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.11%    0.17%  │ ││││││││         ││    │        ││  0x00007fcb3d25022d: mov    0x14(%rdx),%ebp    ;*getfield str
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.01%    0.04%  │ ││││││││         ││    │        ││  0x00007fcb3d250230: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fcb3d250fe1
  1.33%    1.37%  │ ││││││││         ││    │        ││  0x00007fcb3d250235: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │ ││││││││         ││    │        ││  0x00007fcb3d25023c: jne    0x00007fcb3d25063d
  0.64%    0.52%  │ ││││││││         ││    │        ││  0x00007fcb3d250242: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%    0.00%  │ ││││││││         ││    │        ││  0x00007fcb3d250246: test   %ecx,%ecx
                  │ ││││││││         ││    │        ││  0x00007fcb3d250248: jl     0x00007fcb3d250799  ;*iflt
                  │ ││││││││         ││    │        ││                                                ; - java.lang.String::charAt@1 (line 657)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.00%           │ ││││││││         ││    │        ││  0x00007fcb3d25024e: mov    %ecx,%r13d
                  │ ││││││││         ││    │        ││  0x00007fcb3d250251: mov    %r8,%r9
  0.59%    0.55%  │ ││││││││         ││    │        ││  0x00007fcb3d250254: mov    0xc(%rbx),%r11d    ;*getfield value
                  │ ││││││││         ││    │        ││                                                ; - java.lang.String::charAt@6 (line 657)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.05%    0.04%  │ ││││││││         ││    │        ││  0x00007fcb3d250258: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ ││││││││         ││    │        ││                                                ; - java.lang.String::charAt@9 (line 657)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │ ││││││││         ││    │        ││                                                ; implicit exception: dispatches to 0x00007fcb3d250ff5
  2.70%    3.37%  │ ││││││││         ││    │        ││  0x00007fcb3d25025d: cmp    %ebp,%r13d
                  │ ││││││││         ││    │        ││  0x00007fcb3d250260: jge    0x00007fcb3d2508b5  ;*if_icmplt
                  │ ││││││││         ││    │        ││                                                ; - java.lang.String::charAt@10 (line 657)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.78%    0.79%  │ ││││││││         ││    │        ││  0x00007fcb3d250266: cmp    %ebp,%r13d
                  │ ││││││││         ││    │        ││  0x00007fcb3d250269: jae    0x00007fcb3d2505c1
  0.09%    0.13%  │ ││││││││         ││    │        ││  0x00007fcb3d25026f: lea    (%r12,%r11,8),%r10
                  │ ││││││││         ││    │        ││  0x00007fcb3d250273: mov    %r13d,%r8d
  0.00%           │ ││││││││         ││    │        ││  0x00007fcb3d250276: movzwl 0x10(%r10,%r8,2),%r11d  ;*caload
                  │ ││││││││         ││    │        ││                                                ; - java.lang.String::charAt@27 (line 660)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.37%    0.45%  │ ││││││││         ││    │        ││  0x00007fcb3d25027c: cmp    $0xd800,%r11d
                  │ ││││││││         ││    │        ││  0x00007fcb3d250283: jge    0x00007fcb3d25091d  ;*if_icmplt
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │ ││││││││         ││    │        ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.15%  │ ││││││││         ││    │        ││  0x00007fcb3d250289: shl    $0x3,%r11d         ;*ishl
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.03%  │ ││││││││         ││    │        ││  0x00007fcb3d25028d: mov    %r11d,%r10d
                  │ ││││││││         ││    │        ││  0x00007fcb3d250290: or     $0x1,%r10d
  0.52%    0.52%  │ ││││││││         ││    │        ││  0x00007fcb3d250294: and    $0x7,%r11d
  0.03%    0.05%  │ ││││││││         ││    │        ││  0x00007fcb3d250298: sar    $0x3,%r10d         ;*ishr
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.39%    0.50%  │ ││││││││         ││    │        ││  0x00007fcb3d25029c: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
           0.01%  │ ││││││││         ││    │        ││  0x00007fcb3d2502a0: mov    %r9,%r8
  0.06%    0.09%  │ ││││││││         ││    │        ││  0x00007fcb3d2502a3: mov    0x2c(%rsp),%r9d    ;*aload
                  │ ││││││││         ││    │        ││                                                ; - com.google.re2j.Machine::match@425 (line 263)
  0.06%    0.07%  │ ││││││││         ││  ↗ │ ↗      ││  0x00007fcb3d2502a8: mov    %r8,%r13
  0.44%    0.45%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502ab: mov    %rdx,0x48(%rsp)
  0.00%    0.00%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502b0: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rdx=Oop r13=Oop [32]=Oop [72]=Oop [88]=Oop off=885}
                  │ ││││││││         ││  │ │ │      ││                                                ;*goto
                  │ ││││││││         ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.10%    0.13%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502b5: test   %eax,0x17482d45(%rip)        # 0x00007fcb546d3000
                  │ ││││││││         ││  │ │ │      ││                                                ;*goto
                  │ ││││││││         ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  │ ││││││││         ││  │ │ │      ││                                                ;   {poll}
  0.04%    0.06%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502bb: mov    0x28(%r8),%ebx     ;*getfield matchcap
                  │ ││││││││         ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.46%    0.39%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502bf: mov    0x14(%r8),%r9d     ;*getfield re2
                  │ ││││││││         ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
           0.00%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502c3: vmovd  %r9d,%xmm3
  0.09%    0.11%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502c8: mov    0x58(%rsp),%r8
  0.04%    0.02%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502cd: shr    $0x3,%r8
  0.41%    0.42%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502d1: mov    %r8d,0x18(%rsp)
  0.00%    0.00%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502d6: mov    0x3c(%rsp),%r9d
  0.09%    0.04%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502db: mov    0x20(%rsp),%r8
  0.04%    0.02%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502e0: mov    %r8,0x58(%rsp)
  0.53%    0.41%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502e5: mov    0x30(%rsp),%r8d
                  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502ea: mov    %r8d,0x28(%rsp)
  0.05%    0.02%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502ef: mov    %r11d,0x30(%rsp)
  0.04%    0.03%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502f4: mov    %r10d,0x2c(%rsp)
  0.44%    0.33%  │ ││││││││         ││  │ │ │      ││  0x00007fcb3d2502f9: vmovd  %ebx,%xmm1         ;*aload
                  │ ││││││││         ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%           │ │↘││││││         ││  │ │ │      ││  0x00007fcb3d2502fd: mov    0x18(%rsp),%r10d
  0.10%    0.02%  │ │ ││││││         ││  │ │ │      ││  0x00007fcb3d250302: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fcb3d250f8a
  0.12%    0.05%  │ │ ││││││         ││  │ │ │      ││  0x00007fcb3d250308: test   %r11d,%r11d
                  │ │ │││││╰         ││  │ │ │      ││  0x00007fcb3d25030b: je     0x00007fcb3d250166  ;*ifeq
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.43%    0.20%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250311: mov    0x14(%rsp),%ecx
  0.02%           │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250315: test   %ecx,%ecx
                  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250317: jne    0x00007fcb3d2509c1  ;*ifeq
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.11%    0.03%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d25031d: test   %eax,%eax
                  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d25031f: jne    0x00007fcb3d250a19  ;*ifeq
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.04%    0.01%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250325: vmovd  %xmm3,%r10d
  0.40%    0.30%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d25032a: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                  │ │ │││││          ││  │ │ │      ││                                                ; implicit exception: dispatches to 0x00007fcb3d251005
  0.00%    0.01%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d25032f: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                  │ │ │││││          ││  │ │ │      ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                  │ │ │││││          ││  │ │ │      ││                                                ; implicit exception: dispatches to 0x00007fcb3d251015
  0.11%    0.06%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250334: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                  │ │ │││││          ││  │ │ │      ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                  │ │ │││││          ││  │ │ │      ││                                                ; implicit exception: dispatches to 0x00007fcb3d251025
  0.14%    0.19%  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d250339: test   %ebp,%ebp
                  │ │ │││││          ││  │ │ │      ││  0x00007fcb3d25033b: jne    0x00007fcb3d250991  ;*aload_0
                  │ │ │││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.49%    0.31%  │ │ ↘││││          ││  │ │ │      ││  0x00007fcb3d250341: test   %eax,%eax
                  │ │  ││││          ││  │ │ │      ││  0x00007fcb3d250343: jne    0x00007fcb3d250695  ;*ifne
                  │ │  ││││          ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
                  │ │  ││││          ││  │ │ │      ││  0x00007fcb3d250349: mov    0x1c(%rsp),%r10d
  0.06%    0.03%  │ │  ││││          ││  │ │ │      ││  0x00007fcb3d25034e: test   %r10d,%r10d
                  │ │  ││││ ╭        ││  │ │ │      ││  0x00007fcb3d250351: je     0x00007fcb3d25047c  ;*ifeq
                  │ │  ││││ │        ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.04%    0.01%  │ │  ││││ │        ││  │ │ │      ││  0x00007fcb3d250357: mov    0x38(%rsp),%r8d
  0.47%    0.20%  │ │  ││││ │        ││  │ │ │      ││  0x00007fcb3d25035c: test   %r8d,%r8d
                  │ │  ││││ │        ││  │ │ │      ││  0x00007fcb3d25035f: jne    0x00007fcb3d2506e9  ;*aload_0
                  │ │  ││││ │        ││  │ │ │      ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.01%           │ │  ││││ │        ││  │↗│ │      ││  0x00007fcb3d250365: test   %edi,%edi
                  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250367: jne    0x00007fcb3d25080d  ;*ifeq
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.08%    0.00%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d25036d: mov    0x18(%r13),%ebx    ;*getfield prog
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250371: mov    0x1c(%r12,%rbx,8),%ebp  ;*getfield startInst
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                  │ │  ││││ │        ││  │││ │      ││                                                ; implicit exception: dispatches to 0x00007fcb3d250f99
  0.48%    0.16%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250376: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fcb3d250fa9
  0.01%    0.01%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d25037b: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250382: jne    0x00007fcb3d250583  ;*invokevirtual add
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.05%    0.01%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250388: mov    %ecx,0x14(%rsp)
  0.02%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d25038c: mov    %r8d,0x38(%rsp)
  0.50%    0.11%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250391: mov    %r13,0x50(%rsp)    ;*ifeq
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.00%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d250396: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.06%    0.00%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d25039a: mov    0x18(%rsp),%r11d
  0.01%    0.00%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d25039f: lea    (%r12,%r11,8),%r10  ;*aload
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.50%    0.06%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503a3: mov    %r10,0x20(%rsp)
  0.00%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503a8: vmovd  %xmm1,%r11d
  0.08%    0.01%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503ad: mov    %r11,%r8
  0.05%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503b0: shl    $0x3,%r8           ;*getfield matchcap
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.51%    0.12%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503b4: mov    %r10,%rdx
  0.01%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503b7: mov    0x1c(%rsp),%ecx
  0.08%           │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503bb: xor    %edi,%edi
  0.02%    0.01%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503bd: mov    %r13,(%rsp)
  0.37%    0.20%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503c1: xchg   %ax,%ax
  0.01%    0.01%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503c3: callq  0x00007fcb3d046020  ; OopMap{[24]=NarrowOop [32]=Oop [72]=Oop [80]=Oop [88]=Oop off=1160}
                  │ │  ││││ │        ││  │││ │      ││                                                ;*invokevirtual add
                  │ │  ││││ │        ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                  │ │  ││││ │        ││  │││ │      ││                                                ;   {optimized virtual_call}
                  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503c8: mov    0x34(%rsp),%ebx
  0.14%    0.16%  │ │  ││││ │        ││  │││ │      ││  0x00007fcb3d2503cc: test   %ebx,%ebx
                  │ │  ││││ │╭       ││  │││ │      ││  0x00007fcb3d2503ce: jl     0x00007fcb3d25045a  ;*ifge
                  │ │  ││││ ││       ││  │││ │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                  │ │  ││││ ││       ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.36%  │ │  ││││ ││       ││  │││ │      ││  0x00007fcb3d2503d4: xor    %r11d,%r11d        ;*iload_0
                  │ │  ││││ ││       ││  │││ │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                  │ │  ││││ ││       ││  │││ │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.00%  │ │  ││││ ││       ││↗ │││ │      ││  0x00007fcb3d2503d7: cmp    $0xa,%ebx
                  │ │  ││││ ││╭      │││ │││ │      ││  0x00007fcb3d2503da: je     0x00007fcb3d2504e5  ;*iload_1
                  │ │  ││││ │││      │││ │││ │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                  │ │  ││││ │││      │││ │││ │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.12%  │ │  ││││ │││      │││ │││ │↗     ││  0x00007fcb3d2503e0: mov    0x2c(%rsp),%r8d
  0.03%    0.04%  │ │  ││││ │││      │││ │││ ││     ││  0x00007fcb3d2503e5: test   %r8d,%r8d
                  │ │  ││││ │││╭     │││ │││ ││     ││  0x00007fcb3d2503e8: jl     0x00007fcb3d250465  ;*iload_1
                  │ │  ││││ ││││     │││ │││ ││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                  │ │  ││││ ││││     │││ │││ ││     ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.45%    0.40%  │ │  ││││ ││││     │││↗│││ ││     ││  0x00007fcb3d2503ea: cmp    $0xa,%r8d
                  │ │  ││││ ││││╭    │││││││ ││     ││  0x00007fcb3d2503ee: je     0x00007fcb3d2504ee  ;*iload_0
                  │ │  ││││ │││││    │││││││ ││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                  │ │  ││││ │││││    │││││││ ││     ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%  │ │  ││││ │││││    │││││││ ││↗    ││  0x00007fcb3d2503f4: mov    0x34(%rsp),%r10d
  0.13%    0.12%  │ │  ││││ │││││    │││││││ │││    ││  0x00007fcb3d2503f9: add    $0xffffffbf,%r10d
  0.04%    0.04%  │ │  ││││ │││││    │││││││ │││    ││  0x00007fcb3d2503fd: cmp    $0x1a,%r10d
                  │ │  ││││ │││││╭   │││││││ │││    ││  0x00007fcb3d250401: jb     0x00007fcb3d250416  ;*if_icmple
                  │ │  ││││ ││││││   │││││││ │││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │ │  ││││ ││││││   │││││││ │││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │  ││││ ││││││   │││││││ │││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.42%    0.40%  │ │  ││││ ││││││   │││││││ │││    ││  0x00007fcb3d250403: mov    0x34(%rsp),%r9d
           0.02%  │ │  ││││ ││││││   │││││││ │││    ││  0x00007fcb3d250408: add    $0xffffff9f,%r9d
  0.08%    0.13%  │ │  ││││ ││││││   │││││││ │││    ││  0x00007fcb3d25040c: cmp    $0x1a,%r9d
                  │ │  ││││ ││││││╭  │││││││ │││    ││  0x00007fcb3d250410: jae    0x00007fcb3d2504f7  ;*iconst_1
                  │ │  ││││ │││││││  │││││││ │││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │ │  ││││ │││││││  │││││││ │││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │  ││││ │││││││  │││││││ │││    ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.03%  │ │  ││││ │││││↘│  │││││││ │││↗   ││  0x00007fcb3d250416: mov    $0x1,%ebp          ;*ireturn
                  │ │  ││││ │││││ │  │││││││ ││││   ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │ │  ││││ │││││ │  │││││││ ││││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │  ││││ │││││ │  │││││││ ││││   ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.31%    0.36%  │ │  ││││ │││││ │  │││││││ ││││↗  ││  0x00007fcb3d25041b: mov    0x2c(%rsp),%r10d
  0.03%    0.03%  │ │  ││││ │││││ │  │││││││ │││││  ││  0x00007fcb3d250420: add    $0xffffffbf,%r10d
  0.12%    0.10%  │ │  ││││ │││││ │  │││││││ │││││  ││  0x00007fcb3d250424: cmp    $0x1a,%r10d
                  │ │  ││││ │││││ │╭ │││││││ │││││  ││  0x00007fcb3d250428: jb     0x00007fcb3d25043d  ;*if_icmple
                  │ │  ││││ │││││ ││ │││││││ │││││  ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │ │  ││││ │││││ ││ │││││││ │││││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │  ││││ │││││ ││ │││││││ │││││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.12%  │ │  ││││ │││││ ││ │││││││ │││││  ││  0x00007fcb3d25042a: mov    0x2c(%rsp),%r9d
  0.32%    0.44%  │ │  ││││ │││││ ││ │││││││ │││││  ││  0x00007fcb3d25042f: add    $0xffffff9f,%r9d
  0.01%    0.03%  │ │  ││││ │││││ ││ │││││││ │││││  ││  0x00007fcb3d250433: cmp    $0x1a,%r9d
                  │ │  ││││ │││││ ││╭│││││││ │││││  ││  0x00007fcb3d250437: jae    0x00007fcb3d25051a  ;*iconst_1
                  │ │  ││││ │││││ ││││││││││ │││││  ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │ │  ││││ │││││ ││││││││││ │││││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │  ││││ │││││ ││││││││││ │││││  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.08%  │ │  ││││ │││││ │↘││││││││ │││││↗ ││  0x00007fcb3d25043d: mov    $0x1,%r10d         ;*ireturn
                  │ │  ││││ │││││ │ ││││││││ ││││││ ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │ │  ││││ │││││ │ ││││││││ ││││││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │  ││││ │││││ │ ││││││││ ││││││ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.19%    0.24%  │ │  ││││ │││││ │ ││││││││ ││││││↗││  0x00007fcb3d250443: cmp    %r10d,%ebp
                  │ │  ││││ │││││ │ │╰││││││ │││││││││  0x00007fcb3d250446: je     0x00007fcb3d250170  ;*if_icmpeq
                  │ │  ││││ │││││ │ │ ││││││ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                  │ │  ││││ │││││ │ │ ││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%  │ │  ││││ │││││ │ │ ││││││ │││││││││  0x00007fcb3d25044c: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                  │ │  ││││ │││││ │ │ ││││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.03%  │ │  ││││ │││││ │ │ ││││││ │││││││││  0x00007fcb3d250450: mov    %r11d,0x3c(%rsp)
  0.05%    0.04%  │ │  ││││ │││││ │ │ ╰│││││ │││││││││  0x00007fcb3d250455: jmpq   0x00007fcb3d250179
  0.01%    0.00%  │ │  ││││ │↘│││ │ │  │││││ │││││││││  0x00007fcb3d25045a: mov    $0x5,%r11d
                  │ │  ││││ │ │││ │ │  ╰││││ │││││││││  0x00007fcb3d250460: jmpq   0x00007fcb3d2503d7
  0.00%    0.01%  │ │  ││││ │ │↘│ │ │   ││││ │││││││││  0x00007fcb3d250465: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                  │ │  ││││ │ │ │ │ │   ││││ │││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                  │ │  ││││ │ │ │ │ │   ╰│││ │││││││││  0x00007fcb3d250469: jmpq   0x00007fcb3d2503ea
  0.02%    0.02%  │ │  │││↘ │ │ │ │ │    │││ │││││││││  0x00007fcb3d25046e: mov    $0xffffffff,%r10d
                  │ │  │││  │ │ │ │ │    │││ │││││││││  0x00007fcb3d250474: xor    %r11d,%r11d
                  │ │  │││  │ │ │ │ │    ╰││ │││││││││  0x00007fcb3d250477: jmpq   0x00007fcb3d2502a8
                  │ │  │││  ↘ │ │ │ │     ││ │││││││││  0x00007fcb3d25047c: mov    0x38(%rsp),%r8d
  0.00%           │ │  │││    │ │ │ │     ╰│ │││││││││  0x00007fcb3d250481: jmpq   0x00007fcb3d250365
  0.00%           │ │  ↘││    │ │ │ │      │ │││││││││  0x00007fcb3d250486: mov    $0x1,%r10d
                  │ │   ││    │ │ │ │      ╰ │││││││││  0x00007fcb3d25048c: jmpq   0x00007fcb3d250192
                  │ │   ↘│    │ │ │ │        │││││││││  0x00007fcb3d250491: test   %edi,%edi
                  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d250493: jne    0x00007fcb3d250ded  ;*ifeq
                  │ │    │    │ │ │ │        │││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                  │ │    │    │ │ │ │        │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │        │││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
  0.02%    0.02%  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d250499: mov    0x58(%rsp),%r11
                  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d25049e: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007fcb3d25108d
           0.00%  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d2504a3: test   %r10d,%r10d
                  │ │    │    │ │ │ │       ╭│││││││││  0x00007fcb3d2504a6: jne    0x00007fcb3d2504c1  ;*ifeq
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504a8: movb   $0x1,0x18(%r11)    ;*putfield empty
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504ad: mov    0x1c(%r11),%ebp    ;*getfield pcs
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504b1: mov    %r12,0x10(%r11)    ;*putfield pcsl
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504b5: mov    %r12d,0xc(%r11)    ;*putfield size
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504b9: test   %ebp,%ebp
                  │ │    │    │ │ │ │       ││││││││││  0x00007fcb3d2504bb: jne    0x00007fcb3d250eb5  ;*if_icmpne
                  │ │    │    │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.00%           │ │    │    │ │ │ │       ↘│││││││││  0x00007fcb3d2504c1: add    $0x80,%rsp
  0.01%           │ │    │    │ │ │ │        │││││││││  0x00007fcb3d2504c8: pop    %rbp
  0.00%    0.00%  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d2504c9: test   %eax,0x17482b31(%rip)        # 0x00007fcb546d3000
                  │ │    │    │ │ │ │        │││││││││                                                ;   {poll_return}
                  │ │    │    │ │ │ │        │││││││││  0x00007fcb3d2504cf: retq   
  0.00%           │ │    ↘    │ │ │ │        │││││││││  0x00007fcb3d2504d0: mov    0x30(%rsp),%r11d
           0.01%  │ │         │ │ │ │        │││││││││  0x00007fcb3d2504d5: mov    $0xffffffff,%r10d
                  │ │         │ │ │ │        │││││││││  0x00007fcb3d2504db: mov    0x48(%rsp),%rdx
                  │ │         │ │ │ │        ╰││││││││  0x00007fcb3d2504e0: jmpq   0x00007fcb3d2502a8
           0.00%  │ │         ↘ │ │ │         ││││││││  0x00007fcb3d2504e5: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                  │ │           │ │ │         ││││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                  │ │           │ │ │         ╰│││││││  0x00007fcb3d2504e9: jmpq   0x00007fcb3d2503e0
                  │ │           ↘ │ │          │││││││  0x00007fcb3d2504ee: or     $0x2,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                  │ │             │ │          │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.01%  │ │             │ │          ╰││││││  0x00007fcb3d2504f2: jmpq   0x00007fcb3d2503f4
  0.00%           │ │             ↘ │           ││││││  0x00007fcb3d2504f7: mov    0x34(%rsp),%r10d
  0.09%    0.10%  │ │               │           ││││││  0x00007fcb3d2504fc: add    $0xffffffd0,%r10d
                  │ │               │           ││││││  0x00007fcb3d250500: cmp    $0xa,%r10d
                  │ │               │           ╰│││││  0x00007fcb3d250504: jb     0x00007fcb3d250416  ;*if_icmple
                  │ │               │            │││││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                  │ │               │            │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │               │            │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%  │ │               │            │││││  0x00007fcb3d25050a: cmp    $0x5f,%ebx
                  │ │               │            │││││  0x00007fcb3d25050d: je     0x00007fcb3d250ec5  ;*if_icmpne
                  │ │               │            │││││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │ │               │            │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │ │               │            │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.01%  │ │               │            │││││  0x00007fcb3d250513: xor    %ebp,%ebp
  0.11%    0.07%  │ │               │            ╰││││  0x00007fcb3d250515: jmpq   0x00007fcb3d25041b
  0.02%    0.06%  │ │               ↘             ││││  0x00007fcb3d25051a: mov    0x2c(%rsp),%r10d
  0.12%    0.08%  │ │                             ││││  0x00007fcb3d25051f: add    $0xffffffd0,%r10d
  0.07%    0.06%  │ │                             ││││  0x00007fcb3d250523: cmp    $0xa,%r10d
                  │ │                             ╰│││  0x00007fcb3d250527: jb     0x00007fcb3d25043d  ;*if_icmple
                  │ │                              │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                  │ │                              │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │                              │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.00%  │ │                              │││  0x00007fcb3d25052d: cmp    $0x5f,%r8d
                  │ │                              │││  0x00007fcb3d250531: je     0x00007fcb3d250f01  ;*if_icmpne
                  │ │                              │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │ │                              │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │ │                              │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.02%  │ │                              │││  0x00007fcb3d250537: xor    %r10d,%r10d
  0.02%    0.03%  │ │                              ╰││  0x00007fcb3d25053a: jmpq   0x00007fcb3d250443
                  │ │                               ││  0x00007fcb3d25053f: mov    $0xf,%r9d
                  │ │                               ╰│  0x00007fcb3d250545: jmpq   0x00007fcb3d250100
                  │ │                                │  0x00007fcb3d25054a: mov    $0xffffffff,%ecx
                  │ │                                │  0x00007fcb3d25054f: xor    %r11d,%r11d
                  │ │                                │  0x00007fcb3d250552: jmpq   0x00007fcb3d2500e4
                  ↘ │                                │  0x00007fcb3d250557: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                    │                                │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                    │                                ╰  0x00007fcb3d25055b: jmpq   0x00007fcb3d250109
  0.01%             ↘                                   0x00007fcb3d250560: mov    %ebx,%r8d
                                                        0x00007fcb3d250563: add    $0xffffffd0,%r8d
....................................................................................................
 25.55%   23.40%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.89%   42.21%         C2, level 4  com.google.re2j.Machine::step, version 537 (571 bytes) 
 28.68%   30.49%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 545 (852 bytes) 
 25.55%   23.40%         C2, level 4  com.google.re2j.Machine::match, version 574 (1066 bytes) 
  1.78%    1.78%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 583 (65 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 583 (33 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.11%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 583 (8 bytes) 
  0.09%    0.05%         C2, level 4  java.util.Collections::shuffle, version 592 (35 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 583 (80 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 583 (0 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 574 (123 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 583 (65 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (3 bytes) 
  0.05%    0.01%         C2, level 4  java.util.Collections::shuffle, version 592 (129 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 574 (88 bytes) 
  0.05%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 626 (57 bytes) 
  0.05%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 626 (91 bytes) 
  1.83%    1.63%  <...other 378 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.90%   42.22%         C2, level 4  com.google.re2j.Machine::step, version 537 
 28.68%   30.49%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 545 
 25.70%   23.49%         C2, level 4  com.google.re2j.Machine::match, version 574 
  2.54%    2.27%   [kernel.kallsyms]  [unknown] 
  0.88%    0.34%         C2, level 4  com.google.re2j.RE2::match, version 583 
  0.20%    0.11%         C2, level 4  java.util.Collections::shuffle, version 592 
  0.13%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 626 
  0.09%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.09%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.05%    0.06%           libjvm.so  RelocIterator::initialize 
  0.05%    0.00%              [vdso]  __vdso_clock_gettime 
  0.04%    0.01%              [vdso]  [unknown] 
  0.03%    0.03%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 590 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.00%           libjvm.so  fileStream::write 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.46%    0.42%  <...other 78 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 96.51%   96.69%         C2, level 4
  2.54%    2.27%   [kernel.kallsyms]
  0.56%    0.63%           libjvm.so
  0.15%    0.27%        libc-2.26.so
  0.09%    0.01%              [vdso]
  0.06%    0.03%      hsdis-amd64.so
  0.06%    0.05%  libpthread-2.26.so
  0.03%    0.00%         interpreter
  0.00%    0.00%        runtime stub
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  20867.915 ± 289.009  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
