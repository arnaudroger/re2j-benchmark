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
# Warmup Iteration   1: 7135.752 ops/s
# Warmup Iteration   2: 12212.562 ops/s
# Warmup Iteration   3: 12369.436 ops/s
# Warmup Iteration   4: 12290.066 ops/s
# Warmup Iteration   5: 12485.274 ops/s
# Warmup Iteration   6: 12343.178 ops/s
# Warmup Iteration   7: 12465.408 ops/s
# Warmup Iteration   8: 12327.434 ops/s
# Warmup Iteration   9: 12387.550 ops/s
# Warmup Iteration  10: 12280.778 ops/s
# Warmup Iteration  11: 12264.448 ops/s
# Warmup Iteration  12: 12271.210 ops/s
# Warmup Iteration  13: 12548.199 ops/s
# Warmup Iteration  14: 12569.967 ops/s
# Warmup Iteration  15: 12555.153 ops/s
# Warmup Iteration  16: 12496.253 ops/s
# Warmup Iteration  17: 12396.382 ops/s
# Warmup Iteration  18: 12363.084 ops/s
# Warmup Iteration  19: 12497.154 ops/s
# Warmup Iteration  20: 12503.029 ops/s
Iteration   1: 12444.378 ops/s
Iteration   2: 12412.360 ops/s
Iteration   3: 12477.998 ops/s
Iteration   4: 12450.668 ops/s
Iteration   5: 12506.507 ops/s
Iteration   6: 12540.618 ops/s
Iteration   7: 12487.770 ops/s
Iteration   8: 12515.803 ops/s
Iteration   9: 12409.137 ops/s
Iteration  10: 12437.836 ops/s
Iteration  11: 12430.447 ops/s
Iteration  12: 12376.077 ops/s
Iteration  13: 12390.674 ops/s
Iteration  14: 12442.425 ops/s
Iteration  15: 12458.244 ops/s
Iteration  16: 12365.908 ops/s
Iteration  17: 12375.066 ops/s
Iteration  18: 12427.136 ops/s
Iteration  19: 12454.179 ops/s
Iteration  20: 12447.819 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  12442.553 ±(99.9%) 41.226 ops/s [Average]
  (min, avg, max) = (12365.908, 12442.553, 12540.618), stdev = 47.476
  CI (99.9%): [12401.326, 12483.779] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 210069 total address lines.
Perf output processed (skipped 23.029 seconds):
 Column 1: cycles (20726 events)
 Column 2: instructions (20717 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 541 (711 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007fb20d245760: mov    0x8(%rsi),%r10d
                             0x00007fb20d245764: shl    $0x3,%r10
                             0x00007fb20d245768: cmp    %r10,%rax
                             0x00007fb20d24576b: jne    0x00007fb20d045e20  ;   {runtime_call}
                             0x00007fb20d245771: data16 xchg %ax,%ax
                             0x00007fb20d245774: nopl   0x0(%rax,%rax,1)
                             0x00007fb20d24577c: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.22%    0.18%             0x00007fb20d245780: mov    %eax,-0x14000(%rsp)
  0.15%    0.15%             0x00007fb20d245787: push   %rbp
  0.10%    0.08%             0x00007fb20d245788: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.23%             0x00007fb20d24578c: mov    %edi,0x18(%rsp)
  0.09%    0.09%             0x00007fb20d245790: mov    %r9d,0x14(%rsp)
  0.08%    0.11%             0x00007fb20d245795: mov    %r8d,0x10(%rsp)
  0.10%    0.08%             0x00007fb20d24579a: mov    %rcx,0x8(%rsp)
  0.09%    0.10%             0x00007fb20d24579f: vmovq  %rdx,%xmm0
  0.07%    0.05%             0x00007fb20d2457a4: vmovq  %rsi,%xmm1
  0.07%    0.06%             0x00007fb20d2457a9: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.14%    0.11%             0x00007fb20d2457ad: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007fb20d2463f5
  0.08%    0.06%             0x00007fb20d2457b3: vmovd  %r10d,%xmm2
  0.06%    0.06%             0x00007fb20d2457b8: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007fb20d246405
  0.07%    0.06%             0x00007fb20d2457bb: test   %ecx,%ecx
                  ╭          0x00007fb20d2457bd: jle    0x00007fb20d245937  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.11%    0.12%  │          0x00007fb20d2457c3: vmovd  %xmm2,%r11d
  0.08%    0.06%  │          0x00007fb20d2457c8: test   %r11d,%r11d
                  │          0x00007fb20d2457cb: jne    0x00007fb20d245f19
  0.07%    0.10%  │          0x00007fb20d2457d1: xor    %r10d,%r10d
  0.10%    0.07%  │╭         0x00007fb20d2457d4: jmp    0x00007fb20d2457f6
                  ││         0x00007fb20d2457d6: data16 nopw 0x0(%rax,%rax,1)
  1.19%    0.83%  ││    ↗    0x00007fb20d2457e0: mov    %r10d,%ecx
  0.04%    0.02%  ││    │    0x00007fb20d2457e3: mov    %r11,0x8(%rsp)
  0.21%    0.10%  ││    │    0x00007fb20d2457e8: mov    %ebx,0x78(%rsp)
  0.04%    0.04%  ││    │    0x00007fb20d2457ec: mov    %edi,0x80(%rsp)
  1.28%    0.78%  ││    │    0x00007fb20d2457f3: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.14%    0.11%  │↘    │    0x00007fb20d2457f6: vmovq  %xmm0,%r11
  0.23%    0.15%  │     │    0x00007fb20d2457fb: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.13%    0.09%  │     │    0x00007fb20d2457ff: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fb20d2463b1
  1.35%    0.67%  │     │    0x00007fb20d245804: cmp    %r11d,%r10d
                  │     │    0x00007fb20d245807: jae    0x00007fb20d245ca2
  0.17%    0.13%  │     │    0x00007fb20d24580d: lea    (%r12,%r8,8),%r11
  0.25%    0.15%  │     │    0x00007fb20d245811: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.10%    0.15%  │     │    0x00007fb20d245816: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                  ; implicit exception: dispatches to 0x00007fb20d2463c5
  2.39%    1.38%  │     │    0x00007fb20d24581b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fb20d2463d5
  5.36%    5.73%  │     │    0x00007fb20d245820: lea    (%r12,%r9,8),%rdi
  0.03%    0.05%  │     │    0x00007fb20d245824: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     │    0x00007fb20d24582b: jne    0x00007fb20d245bac  ;*invokevirtual isMatch
                  │     │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
  1.61%    1.91%  │     │    0x00007fb20d245831: mov    0xc(%rdi),%r9d
  0.24%    0.28%  │     │    0x00007fb20d245835: cmp    $0x6,%r9d
                  │     │    0x00007fb20d245839: je     0x00007fb20d245c84  ;*if_icmpne
                  │     │                                                  ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │     │                                                  ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  1.65%    2.02%  │     │    0x00007fb20d24583f: xor    %eax,%eax          ;*synchronization entry
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%  │     │    0x00007fb20d245841: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │     │                                                  ; - com.google.re2j.Machine::step@104 (line 289)
  0.02%    0.01%  │     │    0x00007fb20d245846: vmovq  %xmm1,%r11
  0.11%    0.09%  │     │    0x00007fb20d24584b: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │     │                                                  ; - com.google.re2j.Machine::free@1 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.52%    2.08%  │     │    0x00007fb20d24584f: mov    0x24(%r11),%r11d   ;*getfield pool
                  │     │                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.02%  │     │    0x00007fb20d245853: mov    %r10d,%edx
  0.03%    0.03%  │     │    0x00007fb20d245856: inc    %edx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@171 (line 295)
  0.07%    0.10%  │     │    0x00007fb20d245858: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  1.59%    1.87%  │     │    0x00007fb20d24585c: test   %eax,%eax
                  │ ╭   │    0x00007fb20d24585e: jne    0x00007fb20d245a53  ;*ifeq
                  │ │   │                                                  ; - com.google.re2j.Machine::step@88 (line 285)
  0.02%    0.02%  │ │   │    0x00007fb20d245864: mov    0x8(%rdi),%ebx
  0.03%    0.05%  │ │   │    0x00007fb20d245867: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007fb20d24586d: jne    0x00007fb20d245ce9  ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.09%    0.09%  │ │   │    0x00007fb20d245873: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.80%    2.16%  │ │   │    0x00007fb20d245876: cmp    $0xa,%ebp
                  │ │╭  │    0x00007fb20d245879: je     0x00007fb20d245970  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.03%  │ ││  │    0x00007fb20d24587f: cmp    $0xb,%ebp
                  │ ││  │    0x00007fb20d245882: je     0x00007fb20d245dc5  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.03%  │ ││  │    0x00007fb20d245888: cmp    $0x9,%ebp
                  │ ││  │    0x00007fb20d24588b: je     0x00007fb20d245e05  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.26%    0.42%  │ ││  │    0x00007fb20d245891: cmp    $0xc,%ebp
                  │ ││  │    0x00007fb20d245894: jne    0x00007fb20d245d85  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.32%    2.00%  │ ││  │    0x00007fb20d24589a: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.02%  │ ││  │    0x00007fb20d24589d: cmp    0x18(%rsp),%eax
                  │ ││╭ │    0x00007fb20d2458a1: je     0x00007fb20d245970  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.44%    0.55%  │ │││ │    0x00007fb20d2458a7: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.05%    0.07%  │ │││ │    0x00007fb20d2458aa: cmp    0x18(%rsp),%ebx
                  │ │││╭│    0x00007fb20d2458ae: je     0x00007fb20d245970  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.79%    1.98%  │ │││││    0x00007fb20d2458b4: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.10%    0.14%  │ │││││    0x00007fb20d2458b7: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fb20d2458bb: je     0x00007fb20d245e99  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.51%    0.56%  │ │││││    0x00007fb20d2458c1: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.05%    0.08%  │ │││││    0x00007fb20d2458c4: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fb20d2458c8: je     0x00007fb20d245ed9  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.41%    1.67%  │ │││││    0x00007fb20d2458ce: mov    0x78(%rsp),%ebx
  0.01%    0.01%  │ │││││    0x00007fb20d2458d2: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.24%    0.27%  │ │││││    0x00007fb20d2458d9: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││                                                  ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
                  │ │││││                                                  ; implicit exception: dispatches to 0x00007fb20d2463e5
  0.06%    0.05%  │ │││││    0x00007fb20d2458de: cmp    %ebp,%r9d
                  │ │││││    0x00007fb20d2458e1: jge    0x00007fb20d245e45  ;*if_icmplt
                  │ │││││                                                  ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.41%    1.50%  │ │││││    0x00007fb20d2458e7: mov    %r9d,%esi
           0.01%  │ │││││    0x00007fb20d2458ea: inc    %esi
  0.24%    0.28%  │ │││││    0x00007fb20d2458ec: vmovq  %xmm1,%rax
  0.05%    0.08%  │ │││││    0x00007fb20d2458f1: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││                                                  ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.47%    1.56%  │ │││││    0x00007fb20d2458f4: cmp    %ebp,%r9d
                  │ │││││    0x00007fb20d2458f7: jae    0x00007fb20d245d25  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.02%    0.02%  │ │││││    0x00007fb20d2458fd: vmovq  %xmm0,%r10
  0.23%    0.24%  │ │││││    0x00007fb20d245902: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.05%    0.04%  │ │││││    0x00007fb20d245906: shl    $0x3,%r11          ;*getfield pool
                  │ │││││                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.42%    1.26%  │ │││││    0x00007fb20d24590a: lea    0x10(%r11,%r9,4),%r11
  0.00%    0.02%  │ │││││    0x00007fb20d24590f: mov    %r8d,(%r11)
  0.28%    0.23%  │ │││││    0x00007fb20d245912: shr    $0x9,%r11
  0.03%    0.02%  │ │││││    0x00007fb20d245916: movabs $0x7fb2091ff000,%r8
  1.36%    0.88%  │ │││││    0x00007fb20d245920: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.05%    0.02%  │ │││││    0x00007fb20d245924: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@230 (line 277)
  0.28%    0.29%  │ │││││ ↗  0x00007fb20d245929: test   %eax,0x167eb6d1(%rip)        # 0x00007fb223a31000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ │││││ │                                                ;   {poll}
  0.05%    0.07%  │ │││││ │  0x00007fb20d24592f: cmp    %ecx,%edx
                  │ ││││╰ │  0x00007fb20d245931: jl     0x00007fb20d2457e0  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.28%    0.14%  ↘ ││││  │  0x00007fb20d245937: vmovq  %xmm0,%r10
                    ││││  │  0x00007fb20d24593c: movzbl 0x18(%r10),%r10d
  0.05%    0.05%    ││││  │  0x00007fb20d245941: test   %r10d,%r10d
                    ││││ ╭│  0x00007fb20d245944: jne    0x00007fb20d245964  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.02%    ││││ ││  0x00007fb20d245946: vmovq  %xmm0,%r10
  0.34%    0.22%    ││││ ││  0x00007fb20d24594b: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.00%    0.00%    ││││ ││  0x00007fb20d24594f: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.03%    0.06%    ││││ ││  0x00007fb20d245953: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.00%    ││││ ││  0x00007fb20d245958: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.24%    0.14%    ││││ ││  0x00007fb20d24595c: test   %ebp,%ebp
                    ││││ ││  0x00007fb20d24595e: jne    0x00007fb20d245f4b  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.00%    0.00%    ││││ ↘│  0x00007fb20d245964: add    $0x60,%rsp
  0.06%    0.02%    ││││  │  0x00007fb20d245968: pop    %rbp
  0.01%    0.00%    ││││  │  0x00007fb20d245969: test   %eax,0x167eb691(%rip)        # 0x00007fb223a31000
                    ││││  │                                                ;   {poll_return}
  0.36%    0.13%    ││││  │  0x00007fb20d24596f: retq   
  0.41%    0.29%    │↘↘↘  │  0x00007fb20d245970: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.32%    0.23%    │     │  0x00007fb20d245974: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007fb20d246415
  0.28%    0.16%    │     │  0x00007fb20d245979: lea    (%r12,%r11,8),%r9
                    │     │  0x00007fb20d24597d: xor    %edi,%edi
                    │     │  0x00007fb20d24597f: mov    $0x1,%eax
                    │     │  0x00007fb20d245984: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007fb20d24598a: jne    0x00007fb20d245bce  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.05%    0.04%    │     │  0x00007fb20d245990: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007fb20d245994: mov    0x8(%rsp),%r11
                    │     │  0x00007fb20d245999: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fb20d246435
  0.05%             │     │  0x00007fb20d24599d: cmp    $0x40,%ebx
                    │     │  0x00007fb20d2459a0: jg     0x00007fb20d245fad  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.05%    │     │  0x00007fb20d2459a6: mov    %ebx,%ecx
           0.00%    │     │  0x00007fb20d2459a8: shl    %cl,%rax           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.06%    │     │  0x00007fb20d2459ab: mov    %rbp,%rcx
                    │     │  0x00007fb20d2459ae: and    %rax,%rcx          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007fb20d2459b1: test   %rcx,%rcx
                    │     │  0x00007fb20d2459b4: jne    0x00007fb20d245ffd  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.00%    │     │  0x00007fb20d2459ba: cmp    $0x40,%ebx
                    │     │  0x00007fb20d2459bd: jge    0x00007fb20d24605d  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007fb20d2459c3: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%             │     │  0x00007fb20d2459c7: or     %rbp,%rax
                    │     │  0x00007fb20d2459ca: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.03%    │     │  0x00007fb20d2459ce: mov    %rsi,%rbx
  0.01%             │     │  0x00007fb20d2459d1: mov    %r9,%rcx
  0.02%             │     │  0x00007fb20d2459d4: shr    $0x3,%rcx
                    │     │  0x00007fb20d2459d8: mov    %ecx,0x10(%r12,%r8,8)
  0.05%    0.02%    │     │  0x00007fb20d2459dd: shr    $0x9,%rbx
  0.01%    0.01%    │     │  0x00007fb20d2459e1: movabs $0x7fb2091ff000,%r9
  0.01%             │     │  0x00007fb20d2459eb: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fb20d2459ef: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fb20d246449
  0.03%    0.02%    │     │  0x00007fb20d2459f4: test   %ebp,%ebp
                    │     │  0x00007fb20d2459f6: jg     0x00007fb20d2460ad  ;*ifle
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │     │  0x00007fb20d2459fc: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fb20d245a00: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fb20d245a04: mov    %ebp,%ebx
  0.04%    0.02%    │     │  0x00007fb20d245a06: inc    %ebx
  0.01%    0.01%    │     │  0x00007fb20d245a08: mov    %ebx,0xc(%r11)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007fb20d245a0c: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d246459
                    │     │  0x00007fb20d245a11: cmp    %ecx,%ebp
                    │     │  0x00007fb20d245a13: jae    0x00007fb20d245f61  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.03%    │     │  0x00007fb20d245a19: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │     │  0x00007fb20d245a1d: lea    0x10(%r10,%rbp,4),%r10
  0.02%             │     │  0x00007fb20d245a22: mov    %r8d,(%r10)
  0.10%    0.04%    │     │  0x00007fb20d245a25: shr    $0x9,%r10
  0.03%    0.06%    │     │  0x00007fb20d245a29: movabs $0x7fb2091ff000,%r8
  0.01%    0.01%    │     │  0x00007fb20d245a33: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.07%    │     │  0x00007fb20d245a37: vmovq  %xmm0,%r10
                    │     │  0x00007fb20d245a3c: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.03%    0.05%    │     │  0x00007fb20d245a40: mov    %ecx,%r10d
  0.01%    0.01%    │     │  0x00007fb20d245a43: mov    0x78(%rsp),%ebx
  0.05%    0.02%    │     │  0x00007fb20d245a47: mov    0x80(%rsp),%edi
                    │     ╰  0x00007fb20d245a4e: jmpq   0x00007fb20d245929
                    ↘        0x00007fb20d245a53: mov    0x78(%rsp),%ebx
                             0x00007fb20d245a57: cmp    $0x2,%ebx
                             0x00007fb20d245a5a: je     0x00007fb20d245c8e  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@94 (line 288)
                             0x00007fb20d245a60: mov    0x80(%rsp),%edi    ;*aload
                                                                           ; - com.google.re2j.Machine::step@102 (line 289)
                             0x00007fb20d245a67: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                           ; - com.google.re2j.Machine::step@107 (line 289)
                                                                           ; implicit exception: dispatches to 0x00007fb20d24646d
....................................................................................................
 40.37%   39.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 538 (1006 bytes) 

                        0x00007fb20d24c288: movabs $0x7fb2091ff000,%r11
                        0x00007fb20d24c292: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007fb20d24c296: mov    %rbx,%rdx
                        0x00007fb20d24c299: mov    0xa0(%rsp),%r10
                        0x00007fb20d24c2a1: mov    %r8d,%edi
                  ╭     0x00007fb20d24c2a4: jmpq   0x00007fb20d24c596  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.19%    0.10%  │     0x00007fb20d24c2a9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.36%  │     0x00007fb20d24c2ad: cmp    $0x40,%ecx
                  │     0x00007fb20d24c2b0: jg     0x00007fb20d24c9b9  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.23%  │     0x00007fb20d24c2b6: mov    $0x1,%r9d
  0.03%    0.06%  │     0x00007fb20d24c2bc: shl    %cl,%r9            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.64%    0.68%  │     0x00007fb20d24c2bf: mov    %rbx,%rsi
  0.06%    0.02%  │     0x00007fb20d24c2c2: and    %r9,%rsi           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.35%  │     0x00007fb20d24c2c5: test   %rsi,%rsi
                  │     0x00007fb20d24c2c8: jne    0x00007fb20d24ca01  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.30%  │     0x00007fb20d24c2ce: cmp    $0x40,%ecx
                  │     0x00007fb20d24c2d1: jge    0x00007fb20d24ca4d  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.17%  │     0x00007fb20d24c2d7: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.08%  │     0x00007fb20d24c2db: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.37%  │     0x00007fb20d24c2de: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.33%  │     0x00007fb20d24c2e2: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d24d075
  0.16%    0.22%  │     0x00007fb20d24c2e7: lea    (%r12,%rbp,8),%r9
  0.06%    0.05%  │     0x00007fb20d24c2eb: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007fb20d24c2f1: je     0x00007fb20d24c424
  0.01%    0.01%  ││    0x00007fb20d24c2f7: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007fb20d24c2fd: jne    0x00007fb20d24cc85  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.20%  ││    0x00007fb20d24c303: mov    0x18(%r9),%ecx     ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.10%  ││    0x00007fb20d24c307: cmp    $0x40,%ecx
                  ││    0x00007fb20d24c30a: jg     0x00007fb20d24cead  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  ││    0x00007fb20d24c310: mov    $0x1,%esi
  0.01%    0.02%  ││    0x00007fb20d24c315: shl    %cl,%rsi           ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.39%    0.41%  ││    0x00007fb20d24c318: mov    %rbx,%rbp
  0.02%    0.00%  ││    0x00007fb20d24c31b: and    %rsi,%rbp          ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.17%  ││    0x00007fb20d24c31e: test   %rbp,%rbp
                  ││    0x00007fb20d24c321: jne    0x00007fb20d24cefd  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.09%  ││    0x00007fb20d24c327: cmp    $0x40,%ecx
                  ││    0x00007fb20d24c32a: jge    0x00007fb20d24cf55  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.03%  ││    0x00007fb20d24c330: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││    0x00007fb20d24c333: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.18%  ││    0x00007fb20d24c337: mov    %r9,%rcx
  0.10%    0.08%  ││    0x00007fb20d24c33a: shr    $0x3,%rcx          ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.03%  ││    0x00007fb20d24c33e: test   %rdi,%rdi
                  ││    0x00007fb20d24c341: jne    0x00007fb20d24c6db  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  ││    0x00007fb20d24c347: mov    0xa0(%rsp),%r14
  0.21%    0.15%  ││    0x00007fb20d24c34f: mov    0xc(%r14),%edi     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fb20d24d19d
  0.09%    0.09%  ││    0x00007fb20d24c353: test   %edi,%edi
                  ││    0x00007fb20d24c355: jle    0x00007fb20d24ce59  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.04%  ││    0x00007fb20d24c35b: vmovd  %edi,%xmm2
  0.02%    0.00%  ││    0x00007fb20d24c35f: mov    %r9,%rdi
  0.19%    0.17%  ││    0x00007fb20d24c362: vmovd  %r8d,%xmm1
  0.08%    0.03%  ││    0x00007fb20d24c367: mov    %r10,%r8
  0.04%    0.03%  ││    0x00007fb20d24c36a: mov    %r11d,%r9d
  0.00%    0.01%  ││    0x00007fb20d24c36d: mov    0x24(%r14),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.22%  ││    0x00007fb20d24c371: vmovd  %r10d,%xmm3
  0.10%    0.11%  ││    0x00007fb20d24c376: vmovd  %xmm2,%ebp
  0.03%    0.02%  ││    0x00007fb20d24c37a: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  ││    0x00007fb20d24c37c: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.19%  ││    0x00007fb20d24c380: vmovd  %xmm3,%r10d
  0.12%    0.07%  ││    0x00007fb20d24c385: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fb20d24d1b1
  0.10%    0.15%  ││    0x00007fb20d24c38a: cmp    %r10d,%ebp
                  ││    0x00007fb20d24c38d: jae    0x00007fb20d24cccd
  0.17%    0.13%  ││    0x00007fb20d24c393: vmovd  %xmm3,%r10d
  0.13%    0.18%  ││    0x00007fb20d24c398: lea    (%r12,%r10,8),%r11
  0.06%    0.06%  ││    0x00007fb20d24c39c: vmovd  %xmm2,%r10d
  0.01%    0.02%  ││    0x00007fb20d24c3a1: mov    0xc(%r11,%r10,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.39%    0.38%  ││    0x00007fb20d24c3a6: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fb20d24d1c1
  1.98%    2.28%  ││    0x00007fb20d24c3ab: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  ││    0x00007fb20d24c3af: mov    %rdi,%r10
           0.00%  ││    0x00007fb20d24c3b2: shr    $0x9,%r10
           0.00%  ││    0x00007fb20d24c3b6: movabs $0x7fb2091ff000,%r11
  0.29%    0.42%  ││    0x00007fb20d24c3c0: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.29%    0.43%  ││    0x00007fb20d24c3c4: mov    %r9d,%r11d
                  ││    0x00007fb20d24c3c7: mov    %r8,%r10
                  ││    0x00007fb20d24c3ca: vmovd  %xmm1,%r8d         ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  ││    0x00007fb20d24c3cf: mov    0x58(%rsp),%r14
  0.22%    0.28%  ││    0x00007fb20d24c3d4: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fb20d24d171
           0.00%  ││    0x00007fb20d24c3d8: test   %ebp,%ebp
                  ││    0x00007fb20d24c3da: jg     0x00007fb20d24cfa5  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007fb20d24c3e0: mov    %r8d,0xc(%rax)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.09%  ││    0x00007fb20d24c3e4: vmovd  %xmm0,%ecx
  0.25%    0.30%  ││    0x00007fb20d24c3e8: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d24d181
                  ││    0x00007fb20d24c3ed: cmp    %ecx,%r11d
                  ││    0x00007fb20d24c3f0: jae    0x00007fb20d24cc3d
                  ││    0x00007fb20d24c3f6: mov    %rdi,%rcx
  0.07%    0.08%  ││    0x00007fb20d24c3f9: shr    $0x3,%rcx          ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.29%  ││    0x00007fb20d24c3fd: vmovd  %xmm0,%esi
                  ││    0x00007fb20d24c401: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││    0x00007fb20d24c405: lea    0x10(%r11,%rdx,1),%r11
  0.05%    0.09%  ││    0x00007fb20d24c40a: mov    %ecx,(%r11)
  0.18%    0.30%  ││    0x00007fb20d24c40d: shr    $0x9,%r11
                  ││    0x00007fb20d24c411: movabs $0x7fb2091ff000,%r9
                  ││    0x00007fb20d24c41b: mov    %r12b,(%r9,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.13%  ││    0x00007fb20d24c41f: xor    %r11d,%r11d
  0.23%    0.27%  ││╭   0x00007fb20d24c422: jmp    0x00007fb20d24c490
  0.21%    0.25%  │↘│   0x00007fb20d24c424: mov    %r10,0x18(%rsp)
  0.12%    0.11%  │ │   0x00007fb20d24c429: mov    %r13,0x10(%rsp)
  0.05%    0.04%  │ │   0x00007fb20d24c42e: mov    %rax,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  │ │   0x00007fb20d24c433: mov    %r9,%rsi           ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.31%  │ │   0x00007fb20d24c436: mov    %rax,%rdx
  0.11%    0.11%  │ │   0x00007fb20d24c439: mov    0x30(%rsp),%ecx
  0.03%    0.04%  │ │   0x00007fb20d24c43d: mov    0x58(%rsp),%r8
  0.02%    0.01%  │ │   0x00007fb20d24c442: mov    0x54(%rsp),%r9d
  0.19%    0.27%  │ │   0x00007fb20d24c447: mov    0xa0(%rsp),%r10
  0.13%    0.12%  │ │   0x00007fb20d24c44f: mov    %r10,(%rsp)
  0.01%    0.03%  │ │   0x00007fb20d24c453: mov    %ecx,0x20(%rsp)
           0.01%  │ │   0x00007fb20d24c457: mov    %r8,0x28(%rsp)
  0.27%    0.19%  │ │   0x00007fb20d24c45c: mov    %r9d,0x24(%rsp)
  0.10%    0.10%  │ │   0x00007fb20d24c461: xchg   %ax,%ax
  0.03%    0.01%  │ │   0x00007fb20d24c463: callq  0x00007fb20d046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [88]=Oop off=904}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
  0.00%           │ │   0x00007fb20d24c468: mov    %rax,%r11
  0.03%    0.05%  │ │   0x00007fb20d24c46b: mov    0x8(%rsp),%rax
  0.29%    0.37%  │ │   0x00007fb20d24c470: mov    0xc(%rax),%r8d     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │   0x00007fb20d24c474: mov    0x10(%rax),%rbx    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  │ │   0x00007fb20d24c478: mov    0x20(%rax),%r9d    ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.19%  │ │   0x00007fb20d24c47c: vmovd  %r9d,%xmm0
  0.13%    0.21%  │ │   0x00007fb20d24c481: mov    0x10(%rsp),%r13
                  │ │   0x00007fb20d24c486: mov    0x28(%rsp),%r14
  0.05%    0.08%  │ │   0x00007fb20d24c48b: mov    0x18(%rsp),%r10    ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.21%  │ ↘   0x00007fb20d24c490: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.11%  │     0x00007fb20d24c494: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb20d24d08d
  0.13%    0.08%  │     0x00007fb20d24c499: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007fb20d24c4a0: jne    0x00007fb20d24c7a9
  0.28%    0.32%  │     0x00007fb20d24c4a6: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.13%  │     0x00007fb20d24c4aa: mov    0x18(%r9),%ecx     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  │     0x00007fb20d24c4ae: cmp    $0x40,%ecx
                  │     0x00007fb20d24c4b1: jg     0x00007fb20d24ca95  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  │     0x00007fb20d24c4b7: mov    $0x1,%edx
  0.37%    0.32%  │     0x00007fb20d24c4bc: shl    %cl,%rdx           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.46%  │     0x00007fb20d24c4bf: mov    %rdx,%r10
  0.26%    0.29%  │     0x00007fb20d24c4c2: and    %rbx,%r10          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.31%  │     0x00007fb20d24c4c5: test   %r10,%r10
                  │     0x00007fb20d24c4c8: jne    0x00007fb20d24cad9  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.13%  │     0x00007fb20d24c4ce: cmp    $0x40,%ecx
                  │     0x00007fb20d24c4d1: jge    0x00007fb20d24cb21  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.04%  │     0x00007fb20d24c4d7: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.24%  │     0x00007fb20d24c4db: or     %rbx,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.07%  │     0x00007fb20d24c4de: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.11%  │     0x00007fb20d24c4e2: mov    %r9,%rsi
  0.07%    0.05%  │     0x00007fb20d24c4e5: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.35%    0.31%  │     0x00007fb20d24c4e9: test   %r11,%r11
                  │  ╭  0x00007fb20d24c4ec: jne    0x00007fb20d24c698  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.26%  │  │  0x00007fb20d24c4f2: mov    0xa0(%rsp),%r10
  0.09%    0.25%  │  │  0x00007fb20d24c4fa: mov    0xc(%r10),%edi     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fb20d24d0d5
  0.11%    0.02%  │  │  0x00007fb20d24c4fe: test   %edi,%edi
  0.39%    0.12%  │  │  0x00007fb20d24c500: jle    0x00007fb20d24c985  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.19%  │  │  0x00007fb20d24c506: mov    0x24(%r10),%r11d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.13%  │  │  0x00007fb20d24c50a: mov    %edi,%ebp
  0.08%    0.01%  │  │  0x00007fb20d24c50c: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.18%  │  │  0x00007fb20d24c50e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.22%  │  │  0x00007fb20d24c512: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d24d0e9
  0.11%    0.14%  │  │  0x00007fb20d24c517: cmp    %ecx,%ebp
                  │  │  0x00007fb20d24c519: jae    0x00007fb20d24c7d9
  0.11%    0.02%  │  │  0x00007fb20d24c51f: shl    $0x3,%r11
  0.26%    0.11%  │  │  0x00007fb20d24c523: mov    0xc(%r11,%rdi,4),%ecx  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.20%  │  │  0x00007fb20d24c528: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fb20d24d0f9
  0.63%    0.72%  │  │  0x00007fb20d24c52d: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.01%  │  │  0x00007fb20d24c531: mov    %r11,%r9
  0.24%    0.09%  │  │  0x00007fb20d24c534: shr    $0x9,%r9
  0.13%    0.21%  │  │  0x00007fb20d24c538: movabs $0x7fb2091ff000,%rcx
  0.36%    0.25%  │  │  0x00007fb20d24c542: mov    %r12b,(%rcx,%r9,1)  ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.48%    0.39%  │  │  0x00007fb20d24c546: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fb20d24d0a9
  0.12%    0.06%  │  │  0x00007fb20d24c54a: test   %r9d,%r9d
                  │  │  0x00007fb20d24c54d: jg     0x00007fb20d24cb65  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.11%  │  │  0x00007fb20d24c553: mov    %r8d,%edi
  0.13%    0.14%  │  │  0x00007fb20d24c556: inc    %edi               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.18%  │  │  0x00007fb20d24c558: mov    %edi,0xc(%rax)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.15%  │  │  0x00007fb20d24c55b: vmovd  %xmm0,%ecx
  0.12%    0.14%  │  │  0x00007fb20d24c55f: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d24d0b9
  0.15%    0.22%  │  │  0x00007fb20d24c564: cmp    %ecx,%r8d
                  │  │  0x00007fb20d24c567: jae    0x00007fb20d24c775
  0.24%    0.24%  │  │  0x00007fb20d24c56d: mov    %r11,%rcx
  0.14%    0.07%  │  │  0x00007fb20d24c570: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.12%    0.15%  │  │  0x00007fb20d24c574: vmovd  %xmm0,%esi
  0.16%    0.16%  │  │  0x00007fb20d24c578: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.25%  │  │  0x00007fb20d24c57c: lea    0x10(%r11,%r8,4),%r11
  0.14%    0.16%  │  │  0x00007fb20d24c581: mov    %ecx,(%r11)
  0.08%    0.12%  │  │  0x00007fb20d24c584: shr    $0x9,%r11
  0.15%    0.21%  │  │  0x00007fb20d24c588: movabs $0x7fb2091ff000,%r8
  0.22%    0.28%  │  │  0x00007fb20d24c592: mov    %r12b,(%r8,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.16%  ↘  │  0x00007fb20d24c596: mov    0x20(%r13),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.14%    0.09%     │  0x00007fb20d24c59a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fb20d24d01d
  0.18%    0.15%     │  0x00007fb20d24c59f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007fb20d24c5a6: jne    0x00007fb20d24c751
  0.24%    0.30%     │  0x00007fb20d24c5ac: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.22%     │  0x00007fb20d24c5b0: mov    0x18(%rbx),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.13%     │  0x00007fb20d24c5b3: cmp    $0x40,%ecx
                     │  0x00007fb20d24c5b6: jg     0x00007fb20d24c8cd  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.20%     │  0x00007fb20d24c5bc: mov    $0x1,%r8d
  0.25%    0.28%     │  0x00007fb20d24c5c2: shl    %cl,%r8            ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.46%    0.44%     │  0x00007fb20d24c5c5: mov    %r8,%r11
  0.27%    0.25%     │  0x00007fb20d24c5c8: and    %rdx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.18%    0.16%     │  0x00007fb20d24c5cb: test   %r11,%r11
                     │  0x00007fb20d24c5ce: jne    0x00007fb20d24c8f9  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.09%     │  0x00007fb20d24c5d4: cmp    $0x40,%ecx
                     │  0x00007fb20d24c5d7: jge    0x00007fb20d24c935  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.20%     │  0x00007fb20d24c5dd: mov    %r12b,0x18(%rax)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.22%    0.27%     │  0x00007fb20d24c5e1: or     %rdx,%r8
  0.19%    0.19%     │  0x00007fb20d24c5e4: mov    %r8,0x10(%rax)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.11%    0.12%     │  0x00007fb20d24c5e8: mov    0xc(%r10),%r11d    ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007fb20d24d039
  0.13%    0.20%     │  0x00007fb20d24c5ec: test   %r11d,%r11d
                     │  0x00007fb20d24c5ef: jle    0x00007fb20d24c815  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.32%    0.35%     │  0x00007fb20d24c5f5: mov    0x24(%r10),%ecx    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.20%     │  0x00007fb20d24c5f9: mov    %r11d,%ebp
  0.09%    0.15%     │  0x00007fb20d24c5fc: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.14%     │  0x00007fb20d24c5fe: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.24%    0.24%     │  0x00007fb20d24c602: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fb20d24d04d
  0.20%    0.11%     │  0x00007fb20d24c607: cmp    %r10d,%ebp
                     │  0x00007fb20d24c60a: jae    0x00007fb20d24c6f8
  0.14%    0.04%     │  0x00007fb20d24c610: lea    (%r12,%rcx,8),%r10
  0.15%    0.13%     │  0x00007fb20d24c614: mov    0xc(%r10,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.28%     │  0x00007fb20d24c619: test   %ebp,%ebp
                     │  0x00007fb20d24c61b: je     0x00007fb20d24c71d
  0.17%    0.23%     │  0x00007fb20d24c621: lea    (%r12,%rbp,8),%r10
  0.12%    0.15%     │  0x00007fb20d24c625: mov    %rbx,%r8
  0.16%    0.20%     │  0x00007fb20d24c628: shr    $0x3,%r8
  0.29%    0.25%     │  0x00007fb20d24c62c: mov    %r8d,0x10(%r12,%rbp,8)
  0.17%    0.16%     │  0x00007fb20d24c631: shr    $0x9,%r10
  0.12%    0.12%     │  0x00007fb20d24c635: movabs $0x7fb2091ff000,%r11
  0.16%    0.12%     │  0x00007fb20d24c63f: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.25%    0.24%     │  0x00007fb20d24c643: test   %r9d,%r9d
                     │  0x00007fb20d24c646: jg     0x00007fb20d24c961  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.20%     │  0x00007fb20d24c64c: mov    %edi,%r11d
  0.10%    0.13%     │  0x00007fb20d24c64f: inc    %r11d
  0.14%    0.08%     │  0x00007fb20d24c652: mov    %r11d,0xc(%rax)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.24%    0.28%     │  0x00007fb20d24c656: vmovd  %xmm0,%r10d
  0.14%    0.14%     │  0x00007fb20d24c65b: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fb20d24d05d
  0.12%    0.13%     │  0x00007fb20d24c660: cmp    %r11d,%edi
                     │  0x00007fb20d24c663: jae    0x00007fb20d24c731  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.11%     │  0x00007fb20d24c669: shl    $0x3,%r10          ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.26%    0.29%     │  0x00007fb20d24c66d: lea    0x10(%r10,%rdi,4),%r10
  0.16%    0.25%     │  0x00007fb20d24c672: mov    %ebp,(%r10)
  0.07%    0.14%     │  0x00007fb20d24c675: shr    $0x9,%r10
  0.18%    0.09%     │  0x00007fb20d24c679: movabs $0x7fb2091ff000,%r11
  0.33%    0.19%     │  0x00007fb20d24c683: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.19%    0.20%     │  0x00007fb20d24c687: xor    %eax,%eax
  0.11%    0.18%     │  0x00007fb20d24c689: add    $0x90,%rsp
  0.16%    0.17%     │  0x00007fb20d24c690: pop    %rbp
  0.22%    0.17%     │  0x00007fb20d24c691: test   %eax,0x167e4969(%rip)        # 0x00007fb223a31000
                     │                                                ;   {poll_return}
  0.17%    0.17%     │  0x00007fb20d24c697: retq   
                     ↘  0x00007fb20d24c698: mov    %esi,0x10(%r11)
                        0x00007fb20d24c69c: mov    %r11,%r10
                        0x00007fb20d24c69f: shr    $0x9,%r10
                        0x00007fb20d24c6a3: movabs $0x7fb2091ff000,%r9
                        0x00007fb20d24c6ad: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007fb20d24c6b1: mov    0xa0(%rsp),%r10
....................................................................................................
 32.09%   33.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 575 (919 bytes) 

                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007fb20d264918: mov    $0x5,%r9d          ;*iload_1
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007fb20d26491e: cmp    $0xa,%ebx
                                       0x00007fb20d264921: je     0x00007fb20d264f0d  ;*iload_0
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007fb20d264927: mov    %ebx,%ecx
                                       0x00007fb20d264929: add    $0xffffffbf,%ecx
           0.00%                       0x00007fb20d26492c: cmp    $0x1a,%ecx
                  ╭                    0x00007fb20d26492f: jb     0x00007fb20d264942  ;*if_icmple
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                  │                    0x00007fb20d264931: mov    %ebx,%r10d
                  │                    0x00007fb20d264934: add    $0xffffff9f,%r10d
                  │                    0x00007fb20d264938: cmp    $0x1a,%r10d
                  │                    0x00007fb20d26493c: jae    0x00007fb20d264f16  ;*iconst_1
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 201)
                  ↘                    0x00007fb20d264942: or     $0x10,%r9d         ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                                       0x00007fb20d264946: mov    %r8d,0x30(%rsp)
  0.00%    0.02%                       0x00007fb20d26494b: mov    %r11d,0x2c(%rsp)
  0.00%                                0x00007fb20d264950: mov    0x44(%rsp),%r11d
                                       0x00007fb20d264955: and    $0x4,%r11d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@147 (line 208)
                                       0x00007fb20d264959: mov    %r11d,0x14(%rsp)
                                       0x00007fb20d26495e: mov    %r13,%r10
                                       0x00007fb20d264961: shl    $0x3,%r10          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 188)
           0.00%                       0x00007fb20d264965: mov    %r10,0x50(%rsp)
                                       0x00007fb20d26496a: mov    %ebx,0x34(%rsp)
           0.00%                       0x00007fb20d26496e: xor    %eax,%eax
                                       0x00007fb20d264970: xor    %r10d,%r10d
  0.00%                                0x00007fb20d264973: mov    %r10d,0x58(%rsp)
                   ╭                   0x00007fb20d264978: jmpq   0x00007fb20d264b25
  0.00%    0.02%   │    ↗              0x00007fb20d26497d: mov    0x14(%rsp),%ebx
  0.03%            │╭   │              0x00007fb20d264981: jmpq   0x00007fb20d264b69
                   ││   │              0x00007fb20d264986: data16 nopw 0x0(%rax,%rax,1)
  0.12%    0.11%   ││   │     ↗        0x00007fb20d264990: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   ││   │     │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.08%   ││   │     │        0x00007fb20d264994: mov    %r8d,0x5c(%rsp)    ;*iload_2
                   ││   │     │                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││   │     │                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.14%    0.14%   ││   │     │↗       0x00007fb20d264999: mov    0x48(%rsp),%r9
  0.12%    0.10%   ││   │     ││       0x00007fb20d26499e: mov    0x10(%r9),%r8d     ;*getfield end
                   ││   │     ││                                                     ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   ││   │     ││                                                     ; - com.google.re2j.Machine::match@345 (line 242)
  0.19%    0.19%   ││   │     ││       0x00007fb20d2649a2: mov    0x58(%rsp),%ecx
  0.12%    0.12%   ││   │     ││       0x00007fb20d2649a6: cmp    %r8d,%ecx
                   ││╭  │     ││       0x00007fb20d2649a9: je     0x00007fb20d264caf  ;*if_icmpne
                   │││  │     ││                                                     ; - com.google.re2j.Machine::match@348 (line 242)
  0.14%    0.15%   │││  │     ││       0x00007fb20d2649af: xor    %eax,%eax          ;*invokespecial step
                   │││  │     ││                                                     ; - com.google.re2j.Machine::match@356 (line 242)
  0.07%    0.11%   │││  │     ││    ↗  0x00007fb20d2649b1: mov    %rax,-0x8(%rsp)
  0.08%    0.09%   │││  │     ││    │  0x00007fb20d2649b6: mov    0x58(%rsp),%eax
  0.06%    0.13%   │││  │     ││    │  0x00007fb20d2649ba: mov    %eax,0x1c(%rsp)
  0.07%    0.05%   │││  │     ││    │  0x00007fb20d2649be: mov    -0x8(%rsp),%rax
  0.16%    0.16%   │││  │     ││    │  0x00007fb20d2649c3: add    0x28(%rsp),%ecx    ;*iadd
                   │││  │     ││    │                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.09%    0.15%   │││  │     ││    │  0x00007fb20d2649c7: mov    %ecx,0x58(%rsp)
  0.08%    0.14%   │││  │     ││    │  0x00007fb20d2649cb: mov    0x38(%rsp),%rsi
  0.06%    0.06%   │││  │     ││    │  0x00007fb20d2649d0: mov    0x20(%rsp),%rdx
  0.08%    0.10%   │││  │     ││    │  0x00007fb20d2649d5: mov    0x50(%rsp),%rcx
  0.04%    0.10%   │││  │     ││    │  0x00007fb20d2649da: mov    0x1c(%rsp),%r8d
  0.11%    0.10%   │││  │     ││    │  0x00007fb20d2649df: mov    0x58(%rsp),%r9d
  0.28%    0.18%   │││  │     ││    │  0x00007fb20d2649e4: mov    0x34(%rsp),%edi
  0.06%    0.13%   │││  │     ││    │  0x00007fb20d2649e8: mov    0x5c(%rsp),%r10d
  0.06%    0.11%   │││  │     ││    │  0x00007fb20d2649ed: mov    %r10d,(%rsp)
  0.05%    0.10%   │││  │     ││    │  0x00007fb20d2649f1: mov    0x40(%rsp),%r11d
  0.15%    0.13%   │││  │     ││    │  0x00007fb20d2649f6: mov    %r11d,0x8(%rsp)
  0.08%    0.07%   │││  │     ││    │  0x00007fb20d2649fb: mov    %eax,0x10(%rsp)
  0.05%    0.06%   │││  │     ││    │  0x00007fb20d2649ff: callq  0x00007fb20d046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=676}
                   │││  │     ││    │                                                ;*invokespecial step
                   │││  │     ││    │                                                ; - com.google.re2j.Machine::match@356 (line 242)
                   │││  │     ││    │                                                ;   {optimized virtual_call}
  0.00%            │││  │     ││    │  0x00007fb20d264a04: mov    0x38(%rsp),%r10
  0.08%    0.03%   │││  │     ││    │  0x00007fb20d264a09: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││  │     ││    │                                                ; - com.google.re2j.Machine::match@376 (line 246)
  0.25%    0.11%   │││  │     ││    │  0x00007fb20d264a0e: mov    0x28(%rsp),%r8d
  0.06%    0.04%   │││  │     ││    │  0x00007fb20d264a13: test   %r8d,%r8d
                   │││╭ │     ││    │  0x00007fb20d264a16: je     0x00007fb20d264cb9  ;*ifne
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@361 (line 243)
  0.10%    0.03%   ││││ │     ││    │  0x00007fb20d264a1c: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@368 (line 246)
  0.01%    0.02%   ││││ │     ││    │  0x00007fb20d264a20: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@371 (line 246)
                   ││││ │     ││    │                                                ; implicit exception: dispatches to 0x00007fb20d265a41
  0.31%    0.25%   ││││ │     ││    │  0x00007fb20d264a25: test   %ebp,%ebp
                   ││││ │     ││    │  0x00007fb20d264a27: jne    0x00007fb20d265125  ;*ifne
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@372 (line 246)
  0.06%    0.04%   ││││ │     ││    │  0x00007fb20d264a2d: test   %eax,%eax
                   ││││ │     ││    │  0x00007fb20d264a2f: jne    0x00007fb20d265215  ;*ifeq
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@379 (line 246)
  0.08%    0.08%   ││││ │     ││    │  0x00007fb20d264a35: mov    0x2c(%rsp),%r9d
  0.02%    0.02%   ││││ │     ││    │  0x00007fb20d264a3a: cmp    $0xffffffff,%r9d
                   ││││ │     ││    │  0x00007fb20d264a3e: je     0x00007fb20d264e85  ;*if_icmpeq
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@401 (line 254)
  0.28%    0.27%   ││││ │     ││    │  0x00007fb20d264a44: mov    0x48(%rsp),%r8
  0.04%    0.04%   ││││ │     ││    │  0x00007fb20d264a49: mov    0x10(%r8),%r11d    ;*getfield end
                   ││││ │     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.07%   ││││ │     ││    │  0x00007fb20d264a4d: mov    0x30(%rsp),%r10d
  0.01%    0.01%   ││││ │     ││    │  0x00007fb20d264a52: add    0x58(%rsp),%r10d
  0.35%    0.31%   ││││ │     ││    │  0x00007fb20d264a57: add    0xc(%r8),%r10d     ;*iadd
                   ││││ │     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   ││││ │     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.02%   ││││ │     ││    │  0x00007fb20d264a5b: cmp    %r11d,%r10d
                   ││││╭│     ││    │  0x00007fb20d264a5e: jge    0x00007fb20d264c98  ;*if_icmpge
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.08%   ││││││     ││    │  0x00007fb20d264a64: mov    0x14(%r8),%ebp     ;*getfield str
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%   ││││││     ││    │  0x00007fb20d264a68: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d265a51
  0.25%    0.38%   ││││││     ││    │  0x00007fb20d264a6d: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   ││││││     ││    │  0x00007fb20d264a73: jne    0x00007fb20d264ffd
  0.04%    0.12%   ││││││     ││    │  0x00007fb20d264a79: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.07%   ││││││     ││    │  0x00007fb20d264a7d: test   %r10d,%r10d
  0.01%    0.01%   ││││││     ││    │  0x00007fb20d264a80: jl     0x00007fb20d265171  ;*iflt
                   ││││││     ││    │                                                ; - java.lang.String::charAt@1 (line 657)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.20%    0.27%   ││││││     ││    │  0x00007fb20d264a86: mov    %r10d,%edi
  0.10%    0.16%   ││││││     ││    │  0x00007fb20d264a89: mov    0xc(%r9),%edx      ;*getfield value
                   ││││││     ││    │                                                ; - java.lang.String::charAt@6 (line 657)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.06%   ││││││     ││    │  0x00007fb20d264a8d: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   ││││││     ││    │                                                ; - java.lang.String::charAt@9 (line 657)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
                   ││││││     ││    │                                                ; implicit exception: dispatches to 0x00007fb20d265a65
  0.91%    1.41%   ││││││     ││    │  0x00007fb20d264a92: cmp    %ebp,%r10d
                   ││││││     ││    │  0x00007fb20d264a95: jge    0x00007fb20d265269  ;*if_icmplt
                   ││││││     ││    │                                                ; - java.lang.String::charAt@10 (line 657)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.37%    0.41%   ││││││     ││    │  0x00007fb20d264a9b: cmp    %ebp,%r10d
                   ││││││     ││    │  0x00007fb20d264a9e: jae    0x00007fb20d264f81
  0.04%    0.07%   ││││││     ││    │  0x00007fb20d264aa4: lea    (%r12,%rdx,8),%r10
                   ││││││     ││    │  0x00007fb20d264aa8: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   ││││││     ││    │                                                ; - java.lang.String::charAt@27 (line 660)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.04%   ││││││     ││    │  0x00007fb20d264aae: cmp    $0xd800,%ecx
                   ││││││     ││    │  0x00007fb20d264ab4: jge    0x00007fb20d2652d5  ;*if_icmplt
                   ││││││     ││    │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││││││     ││    │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.35%   ││││││     ││    │  0x00007fb20d264aba: shl    $0x3,%ecx          ;*ishl
                   ││││││     ││    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.05%   ││││││     ││    │  0x00007fb20d264abd: mov    %ecx,%r10d
                   ││││││     ││    │  0x00007fb20d264ac0: or     $0x1,%r10d
  0.21%    0.26%   ││││││     ││    │  0x00007fb20d264ac4: and    $0x7,%ecx
  0.11%    0.10%   ││││││     ││    │  0x00007fb20d264ac7: sar    $0x3,%r10d         ;*ishr
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@417 (line 256)
  0.21%    0.34%   ││││││     ││    │  0x00007fb20d264acb: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@409 (line 255)
           0.01%   ││││││     ││    │  0x00007fb20d264ace: mov    0x2c(%rsp),%r9d    ;*aload
                   ││││││     ││    │                                                ; - com.google.re2j.Machine::match@427 (line 259)
                   ││││││     ││  ↗ │  0x00007fb20d264ad3: mov    %r8,0x48(%rsp)
  0.09%    0.13%   ││││││     ││  │ │  0x00007fb20d264ad8: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=893}
                   ││││││     ││  │ │                                                ;*goto
                   ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.31%    0.37%   ││││││     ││  │ │  0x00007fb20d264add: test   %eax,0x167cc51d(%rip)        # 0x00007fb223a31000
                   ││││││     ││  │ │                                                ;*goto
                   ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@439 (line 262)
                   ││││││     ││  │ │                                                ;   {poll}
                   ││││││     ││  │ │  0x00007fb20d264ae3: mov    0x38(%rsp),%r11
  0.00%            ││││││     ││  │ │  0x00007fb20d264ae8: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@169 (line 216)
  0.08%    0.08%   ││││││     ││  │ │  0x00007fb20d264aec: vmovd  %r11d,%xmm3
  0.28%    0.35%   ││││││     ││  │ │  0x00007fb20d264af1: mov    0x50(%rsp),%r11
                   ││││││     ││  │ │  0x00007fb20d264af6: shr    $0x3,%r11
           0.01%   ││││││     ││  │ │  0x00007fb20d264afa: mov    %r11d,0x18(%rsp)
  0.09%    0.12%   ││││││     ││  │ │  0x00007fb20d264aff: mov    0x5c(%rsp),%r9d
  0.26%    0.31%   ││││││     ││  │ │  0x00007fb20d264b04: mov    0x20(%rsp),%r11
                   ││││││     ││  │ │  0x00007fb20d264b09: mov    %r11,0x50(%rsp)
           0.00%   ││││││     ││  │ │  0x00007fb20d264b0e: mov    0x30(%rsp),%r11d
  0.08%    0.07%   ││││││     ││  │ │  0x00007fb20d264b13: mov    %r11d,0x28(%rsp)
  0.23%    0.27%   ││││││     ││  │ │  0x00007fb20d264b18: mov    %ecx,0x30(%rsp)
           0.00%   ││││││     ││  │ │  0x00007fb20d264b1c: mov    %r10d,0x2c(%rsp)
                   ││││││     ││  │ │  0x00007fb20d264b21: vmovd  %ebx,%xmm2         ;*aload
                   ││││││     ││  │ │                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.07%    0.09%   ↘│││││     ││  │ │  0x00007fb20d264b25: mov    0x18(%rsp),%r11d
  0.27%    0.22%    │││││     ││  │ │  0x00007fb20d264b2a: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fb20d2659f1
  0.10%    0.15%    │││││     ││  │ │  0x00007fb20d264b30: test   %r11d,%r11d
                    ││││╰     ││  │ │  0x00007fb20d264b33: je     0x00007fb20d26497d  ;*ifeq
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@141 (line 207)
  0.04%    0.05%    ││││      ││  │ │  0x00007fb20d264b39: mov    0x14(%rsp),%ebx
  0.08%    0.05%    ││││      ││  │ │  0x00007fb20d264b3d: test   %ebx,%ebx
                    ││││      ││  │ │  0x00007fb20d264b3f: jne    0x00007fb20d265355  ;*ifeq
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.14%    0.20%    ││││      ││  │ │  0x00007fb20d264b45: test   %eax,%eax
                    ││││      ││  │ │  0x00007fb20d264b47: jne    0x00007fb20d2653b5  ;*ifeq
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@162 (line 212)
           0.01%    ││││      ││  │ │  0x00007fb20d264b4d: vmovd  %xmm3,%r10d
  0.08%    0.08%    ││││      ││  │ │  0x00007fb20d264b52: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@172 (line 216)
                    ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007fb20d265a75
  0.06%    0.07%    ││││      ││  │ │  0x00007fb20d264b57: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    ││││      ││  │ │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007fb20d265a85
  0.14%    0.20%    ││││      ││  │ │  0x00007fb20d264b5c: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││││      ││  │ │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@175 (line 216)
                    ││││      ││  │ │                                                ; implicit exception: dispatches to 0x00007fb20d265a95
  0.31%    0.44%    ││││      ││  │ │  0x00007fb20d264b61: test   %ebp,%ebp
                    ││││      ││  │ │  0x00007fb20d264b63: jne    0x00007fb20d265335  ;*aload_0
                    ││││      ││  │ │                                                ; - com.google.re2j.Machine::match@267 (line 233)
  0.28%    0.22%    ↘│││      ││  │ │  0x00007fb20d264b69: test   %eax,%eax
                     │││      ││  │ │  0x00007fb20d264b6b: jne    0x00007fb20d265082  ;*ifne
                     │││      ││  │ │                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.02%    0.01%     │││      ││  │ │  0x00007fb20d264b71: mov    0x58(%rsp),%r11d
  0.05%    0.05%     │││      ││  │ │  0x00007fb20d264b76: test   %r11d,%r11d
                     │││ ╭    ││  │ │  0x00007fb20d264b79: je     0x00007fb20d264ca5  ;*ifeq
                     │││ │    ││  │ │                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.02%    0.02%     │││ │    ││  │ │  0x00007fb20d264b7f: mov    0x40(%rsp),%r8d
  0.26%    0.22%     │││ │    ││  │ │  0x00007fb20d264b84: test   %r8d,%r8d
                     │││ │    ││  │ │  0x00007fb20d264b87: jne    0x00007fb20d2650cd  ;*aload_0
                     │││ │    ││  │ │                                                ; - com.google.re2j.Machine::match@282 (line 236)
  0.02%    0.01%     │││ │    ││  │↗│  0x00007fb20d264b8d: vmovd  %xmm2,%r10d
  0.04%    0.05%     │││ │    ││  │││  0x00007fb20d264b92: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@286 (line 236)
                     │││ │    ││  │││                                                ; implicit exception: dispatches to 0x00007fb20d265a01
  0.02%    0.01%     │││ │    ││  │││  0x00007fb20d264b97: test   %ebp,%ebp
                     │││ │    ││  │││  0x00007fb20d264b99: jg     0x00007fb20d2651f1  ;*ifle
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.20%    0.18%     │││ │    ││  │││  0x00007fb20d264b9f: mov    0x38(%rsp),%rdx
  0.00%    0.01%     │││ │    ││  │││  0x00007fb20d264ba4: mov    0x18(%rdx),%edi    ;*getfield prog
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@298 (line 239)
  0.05%    0.02%     │││ │    ││  │││  0x00007fb20d264ba7: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                     │││ │    ││  │││                                                ; implicit exception: dispatches to 0x00007fb20d265a11
  0.02%    0.02%     │││ │    ││  │││  0x00007fb20d264bac: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb20d265a21
  0.28%    0.19%     │││ │    ││  │││  0x00007fb20d264bb1: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                     │││ │    ││  │││  0x00007fb20d264bb7: jne    0x00007fb20d264f36  ;*invokevirtual add
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.04%     │││ │    ││  │││  0x00007fb20d264bbd: mov    %ebx,0x14(%rsp)
  0.02%    0.02%     │││ │    ││  │││  0x00007fb20d264bc1: mov    %r8d,0x40(%rsp)    ;*ifle
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@287 (line 236)
  0.02%    0.00%     │││ │    ││  │││  0x00007fb20d264bc6: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.14%     │││ │    ││  │││  0x00007fb20d264bca: mov    0x18(%rsp),%r11d
  0.07%    0.01%     │││ │    ││  │││  0x00007fb20d264bcf: shl    $0x3,%r11          ;*aload
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.05%    0.00%     │││ │    ││  │││  0x00007fb20d264bd3: mov    %r11,0x20(%rsp)
                     │││ │    ││  │││  0x00007fb20d264bd8: mov    %r10,%r8
  0.21%    0.18%     │││ │    ││  │││  0x00007fb20d264bdb: shl    $0x3,%r8           ;*getfield matchcap
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@283 (line 236)
  0.08%    0.03%     │││ │    ││  │││  0x00007fb20d264bdf: mov    %r11,%rdx
  0.04%    0.00%     │││ │    ││  │││  0x00007fb20d264be2: mov    0x58(%rsp),%ecx
  0.01%    0.00%     │││ │    ││  │││  0x00007fb20d264be6: xor    %edi,%edi
  0.24%    0.16%     │││ │    ││  │││  0x00007fb20d264be8: mov    0x38(%rsp),%r10
  0.06%    0.03%     │││ │    ││  │││  0x00007fb20d264bed: mov    %r10,(%rsp)
  0.04%    0.02%     │││ │    ││  │││  0x00007fb20d264bf1: xchg   %ax,%ax
  0.00%              │││ │    ││  │││  0x00007fb20d264bf3: callq  0x00007fb20d046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1176}
                     │││ │    ││  │││                                                ;*invokevirtual add
                     │││ │    ││  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     │││ │    ││  │││                                                ;   {optimized virtual_call}
  0.10%    0.10%     │││ │    ││  │││  0x00007fb20d264bf8: mov    0x34(%rsp),%r10d
  0.26%    0.27%     │││ │    ││  │││  0x00007fb20d264bfd: test   %r10d,%r10d
  0.04%    0.08%     │││ │╭   ││  │││  0x00007fb20d264c00: jl     0x00007fb20d264c87  ;*ifge
                     │││ ││   ││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │││ ││   ││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.16%     │││ ││   ││  │││  0x00007fb20d264c06: xor    %r8d,%r8d          ;*iload_0
                     │││ ││   ││  │││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │││ ││   ││  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.08%     │││ ││   ││↗ │││  0x00007fb20d264c09: cmp    $0xa,%r10d
                     │││ ││   │││ │││  0x00007fb20d264c0d: je     0x00007fb20d264e99  ;*iload_1
                     │││ ││   │││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │││ ││   │││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.07%     │││ ││   │││ │││  0x00007fb20d264c13: mov    0x2c(%rsp),%r11d
  0.04%    0.06%     │││ ││   │││ │││  0x00007fb20d264c18: test   %r11d,%r11d
                     │││ ││╭  │││ │││  0x00007fb20d264c1b: jl     0x00007fb20d264c92  ;*iload_1
                     │││ │││  │││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │││ │││  │││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.13%     │││ │││  │││↗│││  0x00007fb20d264c1d: cmp    $0xa,%r11d
                     │││ │││  │││││││  0x00007fb20d264c21: je     0x00007fb20d264ea2  ;*iload_0
                     │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.13%     │││ │││  │││││││  0x00007fb20d264c27: mov    0x34(%rsp),%r9d
  0.08%    0.14%     │││ │││  │││││││  0x00007fb20d264c2c: add    $0xffffffbf,%r9d
  0.06%    0.03%     │││ │││  │││││││  0x00007fb20d264c30: cmp    $0x1a,%r9d
                     │││ │││╭ │││││││  0x00007fb20d264c34: jb     0x00007fb20d264c46  ;*if_icmple
                     │││ ││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.10%     │││ ││││ │││││││  0x00007fb20d264c36: mov    0x34(%rsp),%ecx
  0.16%    0.09%     │││ ││││ │││││││  0x00007fb20d264c3a: add    $0xffffff9f,%ecx
  0.13%    0.12%     │││ ││││ │││││││  0x00007fb20d264c3d: cmp    $0x1a,%ecx
  0.04%    0.08%     │││ ││││ │││││││  0x00007fb20d264c40: jae    0x00007fb20d264eab  ;*iconst_1
                     │││ ││││ │││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││ │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.11%     │││ │││↘ │││││││  0x00007fb20d264c46: mov    $0x1,%ebp          ;*ireturn
                     │││ │││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.13%     │││ │││  │││││││  0x00007fb20d264c4b: mov    0x2c(%rsp),%r9d
  0.07%    0.10%     │││ │││  │││││││  0x00007fb20d264c50: add    $0xffffffbf,%r9d
  0.07%    0.06%     │││ │││  │││││││  0x00007fb20d264c54: cmp    $0x1a,%r9d
                     │││ │││ ╭│││││││  0x00007fb20d264c58: jb     0x00007fb20d264c6a  ;*if_icmple
                     │││ │││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │││ │││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.16%     │││ │││ ││││││││  0x00007fb20d264c5a: mov    0x2c(%rsp),%ecx
  0.13%    0.11%     │││ │││ ││││││││  0x00007fb20d264c5e: add    $0xffffff9f,%ecx
  0.09%    0.09%     │││ │││ ││││││││  0x00007fb20d264c61: cmp    $0x1a,%ecx
                     │││ │││ ││││││││  0x00007fb20d264c64: jae    0x00007fb20d264ecf  ;*iconst_1
                     │││ │││ ││││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │││ │││ ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.12%     │││ │││ ↘│││││││  0x00007fb20d264c6a: mov    $0x1,%r9d          ;*ireturn
                     │││ │││  │││││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │││ │││  │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │││ │││  │││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.19%     │││ │││  │││││││  0x00007fb20d264c70: cmp    %r9d,%ebp
                     │││ │││  ╰││││││  0x00007fb20d264c73: je     0x00007fb20d264990  ;*if_icmpeq
                     │││ │││   ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │││ │││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%     │││ │││   ││││││  0x00007fb20d264c79: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │││ │││   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%     │││ │││   ││││││  0x00007fb20d264c7d: mov    %r8d,0x5c(%rsp)
  0.02%    0.06%     │││ │││   ╰│││││  0x00007fb20d264c82: jmpq   0x00007fb20d264999
                     │││ │↘│    │││││  0x00007fb20d264c87: mov    $0x5,%r8d
                     │││ │ │    ╰││││  0x00007fb20d264c8d: jmpq   0x00007fb20d264c09
  0.01%    0.01%     │││ │ ↘     ││││  0x00007fb20d264c92: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │││ │       ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%              │││ │       ╰│││  0x00007fb20d264c96: jmp    0x00007fb20d264c1d
  0.00%    0.01%     ││↘ │        │││  0x00007fb20d264c98: mov    $0xffffffff,%r10d
  0.01%    0.00%     ││  │        │││  0x00007fb20d264c9e: xor    %ecx,%ecx
                     ││  │        ╰││  0x00007fb20d264ca0: jmpq   0x00007fb20d264ad3
  0.00%              ││  ↘         ││  0x00007fb20d264ca5: mov    0x40(%rsp),%r8d
  0.00%    0.00%     ││            ╰│  0x00007fb20d264caa: jmpq   0x00007fb20d264b8d
                     ↘│             │  0x00007fb20d264caf: mov    $0x1,%eax
                      │             ╰  0x00007fb20d264cb4: jmpq   0x00007fb20d2649b1
                      ↘                0x00007fb20d264cb9: mov    0x50(%rsp),%r10
                                       0x00007fb20d264cbe: mov    %r10,0x18(%rsp)
           0.00%                       0x00007fb20d264cc3: mov    0xc(%r10),%ebx     ;*getfield size
                                                                                     ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                     ; - com.google.re2j.Machine::match@445 (line 263)
                                                                                     ; implicit exception: dispatches to 0x00007fb20d265afd
                                       0x00007fb20d264cc7: test   %ebx,%ebx
                                       0x00007fb20d264cc9: jle    0x00007fb20d264e4e  ;*ifle
                                                                                     ; - com.google.re2j.Machine::freeQueue@8 (line 149)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                     ; - com.google.re2j.Machine::match@445 (line 263)
                                       0x00007fb20d264ccf: mov    0x38(%rsp),%r10
....................................................................................................
 15.04%   16.25%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.37%   39.37%         C2, level 4  com.google.re2j.Machine::step, version 541 (711 bytes) 
 32.09%   33.53%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 538 (1006 bytes) 
 15.04%   16.25%         C2, level 4  com.google.re2j.Machine::match, version 575 (919 bytes) 
  6.31%    6.25%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 538 (133 bytes) 
  2.16%    2.16%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.58%    0.10%         C2, level 4  com.google.re2j.Machine::init, version 580 (253 bytes) 
  0.55%    0.48%         C2, level 4  com.google.re2j.Machine::match, version 575 (156 bytes) 
  0.40%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 580 (67 bytes) 
  0.14%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 580 (135 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.09%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 575 (295 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 588 (20 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::init, version 580 (15 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 588 (0 bytes) 
  0.05%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 588 (30 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 588 (0 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (34 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%                  C2, level 4  java.util.Collections::shuffle, version 596 (69 bytes) 
  1.71%    1.48%  <...other 370 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 40.39%   39.38%         C2, level 4  com.google.re2j.Machine::step, version 541 
 38.40%   39.78%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 538 
 15.70%   16.77%         C2, level 4  com.google.re2j.Machine::match, version 575 
  2.85%    2.71%   [kernel.kallsyms]  [unknown] 
  1.24%    0.20%         C2, level 4  com.google.re2j.Machine::init, version 580 
  0.39%    0.21%         C2, level 4  com.google.re2j.RE2::match, version 588 
  0.11%    0.03%         C2, level 4  java.util.Collections::shuffle, version 596 
  0.09%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 641 
  0.05%    0.04%        libc-2.26.so  _IO_fwrite 
  0.04%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.02%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%    0.04%      hsdis-amd64.so  [unknown] 
  0.02%    0.01%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.02%           libjvm.so  SpinPause 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 594 
  0.02%                       [vdso]  __vdso_clock_gettime 
  0.49%    0.37%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 96.35%   96.42%         C2, level 4
  2.85%    2.71%   [kernel.kallsyms]
  0.42%    0.48%           libjvm.so
  0.21%    0.28%        libc-2.26.so
  0.06%    0.03%  libpthread-2.26.so
  0.03%    0.04%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.02%    0.00%              [vdso]
  0.02%    0.02%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  12442.553 ± 41.226  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
