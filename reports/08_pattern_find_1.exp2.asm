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
# Warmup Iteration   1: 5380.660 ops/s
# Warmup Iteration   2: 9585.634 ops/s
# Warmup Iteration   3: 9638.088 ops/s
# Warmup Iteration   4: 9459.064 ops/s
# Warmup Iteration   5: 9704.585 ops/s
# Warmup Iteration   6: 9895.354 ops/s
# Warmup Iteration   7: 9918.723 ops/s
# Warmup Iteration   8: 9744.211 ops/s
# Warmup Iteration   9: 9829.590 ops/s
# Warmup Iteration  10: 9851.884 ops/s
# Warmup Iteration  11: 9930.567 ops/s
# Warmup Iteration  12: 9935.593 ops/s
# Warmup Iteration  13: 9943.432 ops/s
# Warmup Iteration  14: 9942.905 ops/s
# Warmup Iteration  15: 9927.102 ops/s
# Warmup Iteration  16: 9716.441 ops/s
# Warmup Iteration  17: 9961.980 ops/s
# Warmup Iteration  18: 9959.347 ops/s
# Warmup Iteration  19: 9962.191 ops/s
# Warmup Iteration  20: 9946.573 ops/s
Iteration   1: 9960.213 ops/s
Iteration   2: 9960.160 ops/s
Iteration   3: 9960.889 ops/s
Iteration   4: 9961.554 ops/s
Iteration   5: 9959.990 ops/s
Iteration   6: 9958.731 ops/s
Iteration   7: 9958.757 ops/s
Iteration   8: 9955.200 ops/s
Iteration   9: 9957.604 ops/s
Iteration  10: 9957.081 ops/s
Iteration  11: 9925.244 ops/s
Iteration  12: 9947.126 ops/s
Iteration  13: 9946.193 ops/s
Iteration  14: 9945.513 ops/s
Iteration  15: 9947.935 ops/s
Iteration  16: 9917.880 ops/s
Iteration  17: 9935.826 ops/s
Iteration  18: 9938.182 ops/s
Iteration  19: 9938.044 ops/s
Iteration  20: 9929.342 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  9948.073 ±(99.9%) 11.573 ops/s [Average]
  (min, avg, max) = (9917.880, 9948.073, 9961.554), stdev = 13.328
  CI (99.9%): [9936.500, 9959.646] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193843 total address lines.
Perf output processed (skipped 23.298 seconds):
 Column 1: cycles (20336 events)
 Column 2: instructions (20407 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (711 bytes) 

                             # parm6:    [sp+0x78]   = int
                             # parm7:    [sp+0x80]   = boolean
                             0x00007fc07d2177e0: mov    0x8(%rsi),%r10d
                             0x00007fc07d2177e4: shl    $0x3,%r10
                             0x00007fc07d2177e8: cmp    %r10,%rax
                             0x00007fc07d2177eb: jne    0x00007fc07d045e20  ;   {runtime_call}
                             0x00007fc07d2177f1: data16 xchg %ax,%ax
                             0x00007fc07d2177f4: nopl   0x0(%rax,%rax,1)
                             0x00007fc07d2177fc: data16 data16 xchg %ax,%ax
                           [Verified Entry Point]
  0.27%    0.22%             0x00007fc07d217800: mov    %eax,-0x14000(%rsp)
  0.15%    0.15%             0x00007fc07d217807: push   %rbp
  0.10%    0.06%             0x00007fc07d217808: sub    $0x60,%rsp         ;*synchronization entry
                                                                           ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.28%             0x00007fc07d21780c: mov    %edi,0x18(%rsp)
  0.03%    0.10%             0x00007fc07d217810: mov    %r9d,0x14(%rsp)
  0.04%    0.11%             0x00007fc07d217815: mov    %r8d,0x10(%rsp)
  0.13%    0.11%             0x00007fc07d21781a: mov    %rcx,0x8(%rsp)
  0.12%    0.12%             0x00007fc07d21781f: vmovq  %rdx,%xmm0
  0.06%    0.05%             0x00007fc07d217824: vmovq  %rsi,%xmm1
  0.06%    0.04%             0x00007fc07d217829: mov    0x14(%rsi),%r11d   ;*getfield re2
                                                                           ; - com.google.re2j.Machine::step@1 (line 276)
  0.12%    0.12%             0x00007fc07d21782d: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                           ; - com.google.re2j.Machine::step@4 (line 276)
                                                                           ; implicit exception: dispatches to 0x00007fc07d218479
  0.11%    0.15%             0x00007fc07d217833: vmovd  %r10d,%xmm2
  0.05%    0.07%             0x00007fc07d217838: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                           ; - com.google.re2j.Machine::step@15 (line 277)
                                                                           ; implicit exception: dispatches to 0x00007fc07d218489
  0.08%    0.08%             0x00007fc07d21783b: test   %ecx,%ecx
                  ╭          0x00007fc07d21783d: jle    0x00007fc07d2179b7  ;*if_icmpge
                  │                                                        ; - com.google.re2j.Machine::step@18 (line 277)
  0.13%    0.07%  │          0x00007fc07d217843: vmovd  %xmm2,%r11d
  0.09%    0.09%  │          0x00007fc07d217848: test   %r11d,%r11d
                  │          0x00007fc07d21784b: jne    0x00007fc07d217f99
  0.07%    0.10%  │          0x00007fc07d217851: xor    %r10d,%r10d
  0.05%    0.08%  │╭         0x00007fc07d217854: jmp    0x00007fc07d217876
                  ││         0x00007fc07d217856: data16 nopw 0x0(%rax,%rax,1)
  1.16%    0.83%  ││    ↗    0x00007fc07d217860: mov    %r10d,%ecx
  0.01%    0.03%  ││    │    0x00007fc07d217863: mov    %r11,0x8(%rsp)
  0.31%    0.28%  ││    │    0x00007fc07d217868: mov    %ebx,0x78(%rsp)
  0.03%    0.01%  ││    │    0x00007fc07d21786c: mov    %edi,0x80(%rsp)
  1.21%    0.76%  ││    │    0x00007fc07d217873: mov    %edx,%r10d         ;*getfield size
                  ││    │                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.11%    0.09%  │↘    │    0x00007fc07d217876: vmovq  %xmm0,%r11
  0.30%    0.23%  │     │    0x00007fc07d21787b: mov    0x20(%r11),%r8d    ;*getfield denseThreads
                  │     │                                                  ; - com.google.re2j.Machine::step@22 (line 278)
  0.08%    0.10%  │     │    0x00007fc07d21787f: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fc07d218435
  1.21%    0.67%  │     │    0x00007fc07d217884: cmp    %r11d,%r10d
                  │     │    0x00007fc07d217887: jae    0x00007fc07d217d22
  0.14%    0.10%  │     │    0x00007fc07d21788d: lea    (%r12,%r8,8),%r11
  0.33%    0.29%  │     │    0x00007fc07d217891: mov    0x10(%r11,%r10,4),%r8d  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  0.07%    0.11%  │     │    0x00007fc07d217896: mov    0x10(%r12,%r8,8),%r9d  ;*getfield inst
                  │     │                                                  ; - com.google.re2j.Machine::step@78 (line 283)
                  │     │                                                  ; implicit exception: dispatches to 0x00007fc07d218449
  2.38%    1.31%  │     │    0x00007fc07d21789b: mov    0x8(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007fc07d218459
  5.20%    5.90%  │     │    0x00007fc07d2178a0: lea    (%r12,%r9,8),%rdi
  0.04%    0.06%  │     │    0x00007fc07d2178a4: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     │    0x00007fc07d2178ab: jne    0x00007fc07d217c2c  ;*invokevirtual isMatch
                  │     │                                                  ; - com.google.re2j.Machine::step@85 (line 285)
  1.66%    1.83%  │     │    0x00007fc07d2178b1: mov    0xc(%rdi),%r9d
  0.25%    0.28%  │     │    0x00007fc07d2178b5: cmp    $0x6,%r9d
                  │     │    0x00007fc07d2178b9: je     0x00007fc07d217d04  ;*if_icmpne
                  │     │                                                  ; - com.google.re2j.Inst::isMatch@6 (line 78)
                  │     │                                                  ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  1.99%    1.88%  │     │    0x00007fc07d2178bf: xor    %eax,%eax          ;*synchronization entry
                  │     │                                                  ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%  │     │    0x00007fc07d2178c1: mov    0xc(%r12,%r8,8),%r14d  ;*getfield cap
                  │     │                                                  ; - com.google.re2j.Machine::step@104 (line 289)
  0.02%    0.02%  │     │    0x00007fc07d2178c6: vmovq  %xmm1,%r11
  0.07%    0.10%  │     │    0x00007fc07d2178cb: mov    0xc(%r11),%r9d     ;*getfield poolSize
                  │     │                                                  ; - com.google.re2j.Machine::free@1 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.56%    2.06%  │     │    0x00007fc07d2178cf: mov    0x24(%r11),%r11d   ;*getfield pool
                  │     │                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │     │                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.02%  │     │    0x00007fc07d2178d3: mov    %r10d,%edx
  0.02%    0.02%  │     │    0x00007fc07d2178d6: inc    %edx               ;*iadd
                  │     │                                                  ; - com.google.re2j.Machine::step@171 (line 295)
  0.11%    0.12%  │     │    0x00007fc07d2178d8: lea    (%r12,%r8,8),%rsi  ;*aaload
                  │     │                                                  ; - com.google.re2j.Machine::step@27 (line 278)
  1.61%    2.00%  │     │    0x00007fc07d2178dc: test   %eax,%eax
                  │ ╭   │    0x00007fc07d2178de: jne    0x00007fc07d217ad3  ;*ifeq
                  │ │   │                                                  ; - com.google.re2j.Machine::step@88 (line 285)
  0.03%    0.01%  │ │   │    0x00007fc07d2178e4: mov    0x8(%rdi),%ebx
  0.01%    0.01%  │ │   │    0x00007fc07d2178e7: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │ │   │    0x00007fc07d2178ed: jne    0x00007fc07d217d69  ;*invokevirtual matchRune
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.10%    0.18%  │ │   │    0x00007fc07d2178f3: mov    0xc(%rdi),%ebp     ;*getfield op
                  │ │   │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                  │ │   │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.68%    2.47%  │ │   │    0x00007fc07d2178f6: cmp    $0xa,%ebp
                  │ │╭  │    0x00007fc07d2178f9: je     0x00007fc07d2179f0  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
           0.02%  │ ││  │    0x00007fc07d2178ff: cmp    $0xb,%ebp
                  │ ││  │    0x00007fc07d217902: je     0x00007fc07d217e45  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.03%  │ ││  │    0x00007fc07d217908: cmp    $0x9,%ebp
                  │ ││  │    0x00007fc07d21790b: je     0x00007fc07d217e85  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.42%    0.41%  │ ││  │    0x00007fc07d217911: cmp    $0xc,%ebp
                  │ ││  │    0x00007fc07d217914: jne    0x00007fc07d217e05  ;*if_icmpne
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.62%    1.93%  │ ││  │    0x00007fc07d21791a: mov    0x20(%rdi),%eax    ;*getfield f0
                  │ ││  │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@65 (line 147)
                  │ ││  │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.04%    0.05%  │ ││  │    0x00007fc07d21791d: cmp    0x18(%rsp),%eax
                  │ ││╭ │    0x00007fc07d217921: je     0x00007fc07d2179f0  ;*if_icmpeq
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.46%    0.59%  │ │││ │    0x00007fc07d217927: mov    0x24(%rdi),%ebx    ;*getfield f1
                  │ │││ │                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                  │ │││ │                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.07%    0.08%  │ │││ │    0x00007fc07d21792a: cmp    0x18(%rsp),%ebx
                  │ │││╭│    0x00007fc07d21792e: je     0x00007fc07d2179f0  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.78%    1.81%  │ │││││    0x00007fc07d217934: mov    0x28(%rdi),%ebp    ;*getfield f2
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.14%    0.17%  │ │││││    0x00007fc07d217937: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fc07d21793b: je     0x00007fc07d217f19  ;*if_icmpeq
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.58%    0.63%  │ │││││    0x00007fc07d217941: mov    0x2c(%rdi),%ebp    ;*getfield f3
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%  │ │││││    0x00007fc07d217944: cmp    0x18(%rsp),%ebp
                  │ │││││    0x00007fc07d217948: je     0x00007fc07d217f59  ;*if_icmpne
                  │ │││││                                                  ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@187 (line 299)
  1.33%    1.72%  │ │││││    0x00007fc07d21794e: mov    0x78(%rsp),%ebx
  0.00%    0.01%  │ │││││    0x00007fc07d217952: mov    0x80(%rsp),%edi    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
  0.29%    0.38%  │ │││││    0x00007fc07d217959: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                  │ │││││                                                  ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
                  │ │││││                                                  ; implicit exception: dispatches to 0x00007fc07d218469
  0.02%    0.05%  │ │││││    0x00007fc07d21795e: cmp    %ebp,%r9d
                  │ │││││    0x00007fc07d217961: jge    0x00007fc07d217ec5  ;*if_icmplt
                  │ │││││                                                  ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.40%    1.43%  │ │││││    0x00007fc07d217967: mov    %r9d,%esi
  0.01%           │ │││││    0x00007fc07d21796a: inc    %esi
  0.31%    0.29%  │ │││││    0x00007fc07d21796c: vmovq  %xmm1,%rax
  0.03%    0.03%  │ │││││    0x00007fc07d217971: mov    %esi,0xc(%rax)     ;*putfield poolSize
                  │ │││││                                                  ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.31%    1.35%  │ │││││    0x00007fc07d217974: cmp    %ebp,%r9d
                  │ │││││    0x00007fc07d217977: jae    0x00007fc07d217da5  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.00%  │ │││││    0x00007fc07d21797d: vmovq  %xmm0,%r10
  0.33%    0.29%  │ │││││    0x00007fc07d217982: mov    0xc(%r10),%r10d    ;*getfield size
                  │ │││││                                                  ; - com.google.re2j.Machine::step@15 (line 277)
           0.03%  │ │││││    0x00007fc07d217986: shl    $0x3,%r11          ;*getfield pool
                  │ │││││                                                  ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  1.34%    1.11%  │ │││││    0x00007fc07d21798a: lea    0x10(%r11,%r9,4),%r11
  0.01%    0.02%  │ │││││    0x00007fc07d21798f: mov    %r8d,(%r11)
  0.34%    0.22%  │ │││││    0x00007fc07d217992: shr    $0x9,%r11
  0.03%    0.01%  │ │││││    0x00007fc07d217996: movabs $0x7fc08dc37000,%r8
  1.35%    0.89%  │ │││││    0x00007fc07d2179a0: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │ │││││                                                  ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │││││                                                  ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.02%  │ │││││    0x00007fc07d2179a4: mov    0x8(%rsp),%r11     ; OopMap{r11=Oop xmm0=Oop xmm1=Oop off=457}
                  │ │││││                                                  ;*goto
                  │ │││││                                                  ; - com.google.re2j.Machine::step@230 (line 277)
  0.34%    0.28%  │ │││││ ↗  0x00007fc07d2179a9: test   %eax,0x18017651(%rip)        # 0x00007fc09522f000
                  │ │││││ │                                                ;*goto
                  │ │││││ │                                                ; - com.google.re2j.Machine::step@230 (line 277)
                  │ │││││ │                                                ;   {poll}
  0.03%    0.03%  │ │││││ │  0x00007fc07d2179af: cmp    %ecx,%edx
                  │ ││││╰ │  0x00007fc07d2179b1: jl     0x00007fc07d217860  ;*if_icmpge
                  │ ││││  │                                                ; - com.google.re2j.Machine::step@18 (line 277)
  0.26%    0.12%  ↘ ││││  │  0x00007fc07d2179b7: vmovq  %xmm0,%r10
  0.00%    0.00%    ││││  │  0x00007fc07d2179bc: movzbl 0x18(%r10),%r10d
  0.07%    0.05%    ││││  │  0x00007fc07d2179c1: test   %r10d,%r10d
                    ││││ ╭│  0x00007fc07d2179c4: jne    0x00007fc07d2179e4  ;*ifeq
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
           0.00%    ││││ ││  0x00007fc07d2179c6: vmovq  %xmm0,%r10
  0.34%    0.21%    ││││ ││  0x00007fc07d2179cb: mov    %r12d,0xc(%r10)    ;*putfield size
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%             ││││ ││  0x00007fc07d2179cf: mov    0x1c(%r10),%ebp    ;*getfield pcs
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.04%    0.05%    ││││ ││  0x00007fc07d2179d3: movb   $0x1,0x18(%r10)    ;*putfield empty
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.01%    0.01%    ││││ ││  0x00007fc07d2179d8: mov    %r12,0x10(%r10)    ;*putfield pcsl
                    ││││ ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    ││││ ││                                                ; - com.google.re2j.Machine::step@234 (line 306)
  0.26%    0.18%    ││││ ││  0x00007fc07d2179dc: test   %ebp,%ebp
                    ││││ ││  0x00007fc07d2179de: jne    0x00007fc07d217fc1  ;*getfield size
                    ││││ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
           0.00%    ││││ ↘│  0x00007fc07d2179e4: add    $0x60,%rsp
  0.09%    0.05%    ││││  │  0x00007fc07d2179e8: pop    %rbp
  0.01%             ││││  │  0x00007fc07d2179e9: test   %eax,0x18017611(%rip)        # 0x00007fc09522f000
                    ││││  │                                                ;   {poll_return}
  0.27%    0.19%    ││││  │  0x00007fc07d2179ef: retq   
  0.56%    0.42%    │↘↘↘  │  0x00007fc07d2179f0: mov    0x1c(%rdi),%r11d   ;*getfield outInst
                    │     │                                                ; - com.google.re2j.Machine::step@195 (line 300)
  0.34%    0.30%    │     │  0x00007fc07d2179f4: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007fc07d218499
  0.36%    0.16%    │     │  0x00007fc07d2179f9: lea    (%r12,%r11,8),%r9
                    │     │  0x00007fc07d2179fd: xor    %edi,%edi
                    │     │  0x00007fc07d2179ff: mov    $0x1,%eax
                    │     │  0x00007fc07d217a04: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │     │  0x00007fc07d217a0a: jne    0x00007fc07d217c4e  ;*invokevirtual add
                    │     │                                                ; - com.google.re2j.Machine::step@211 (line 300)
  0.08%    0.02%    │     │  0x00007fc07d217a10: mov    0x18(%r9),%ebx     ;*getfield pc
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │     │  0x00007fc07d217a14: mov    0x8(%rsp),%r11
  0.00%             │     │  0x00007fc07d217a19: mov    0x10(%r11),%rbp    ;*getfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fc07d2184b9
  0.05%             │     │  0x00007fc07d217a1d: cmp    $0x40,%ebx
                    │     │  0x00007fc07d217a20: jg     0x00007fc07d218031  ;*if_icmpgt
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.04%    │     │  0x00007fc07d217a26: mov    %ebx,%ecx
                    │     │  0x00007fc07d217a28: shl    %cl,%rax           ;*lshl
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.07%    │     │  0x00007fc07d217a2b: mov    %rbp,%rcx
                    │     │  0x00007fc07d217a2e: and    %rax,%rcx          ;*land
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │     │  0x00007fc07d217a31: test   %rcx,%rcx
                    │     │  0x00007fc07d217a34: jne    0x00007fc07d218081  ;*ifeq
                    │     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.03%    │     │  0x00007fc07d217a3a: cmp    $0x40,%ebx
                    │     │  0x00007fc07d217a3d: jge    0x00007fc07d2180e1  ;*if_icmpge
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │     │  0x00007fc07d217a43: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%             │     │  0x00007fc07d217a47: or     %rbp,%rax
                    │     │  0x00007fc07d217a4a: mov    %rax,0x10(%r11)    ;*putfield pcsl
                    │     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.01%    │     │  0x00007fc07d217a4e: mov    %rsi,%rbx
  0.01%    0.00%    │     │  0x00007fc07d217a51: mov    %r9,%rcx
  0.03%             │     │  0x00007fc07d217a54: shr    $0x3,%rcx
                    │     │  0x00007fc07d217a58: mov    %ecx,0x10(%r12,%r8,8)
  0.06%             │     │  0x00007fc07d217a5d: shr    $0x9,%rbx
  0.00%             │     │  0x00007fc07d217a61: movabs $0x7fc08dc37000,%r9
  0.02%             │     │  0x00007fc07d217a6b: mov    %r12b,(%r9,%rbx,1)  ;*putfield inst
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fc07d217a6f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │                                                ; implicit exception: dispatches to 0x00007fc07d2184cd
  0.02%    0.03%    │     │  0x00007fc07d217a74: test   %ebp,%ebp
                    │     │  0x00007fc07d217a76: jg     0x00007fc07d218131  ;*ifle
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │     │  0x00007fc07d217a7c: mov    0x20(%r11),%r9d    ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007fc07d217a80: mov    0xc(%r11),%ebp     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │     │  0x00007fc07d217a84: mov    %ebp,%ebx
  0.04%    0.01%    │     │  0x00007fc07d217a86: inc    %ebx
  0.00%    0.01%    │     │  0x00007fc07d217a88: mov    %ebx,0xc(%r11)     ;*putfield size
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │     │  0x00007fc07d217a8c: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d2184dd
  0.00%             │     │  0x00007fc07d217a91: cmp    %ecx,%ebp
                    │     │  0x00007fc07d217a93: jae    0x00007fc07d217fe3  ;*aastore
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.02%    │     │  0x00007fc07d217a99: lea    (%r12,%r9,8),%r10  ;*getfield denseThreads
                    │     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │     │  0x00007fc07d217a9d: lea    0x10(%r10,%rbp,4),%r10
  0.02%             │     │  0x00007fc07d217aa2: mov    %r8d,(%r10)
  0.12%    0.01%    │     │  0x00007fc07d217aa5: shr    $0x9,%r10
  0.02%    0.03%    │     │  0x00007fc07d217aa9: movabs $0x7fc08dc37000,%r8
  0.01%    0.01%    │     │  0x00007fc07d217ab3: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                    │     │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.07%    │     │  0x00007fc07d217ab7: vmovq  %xmm0,%r10
  0.01%             │     │  0x00007fc07d217abc: mov    0xc(%r10),%ecx     ;*getfield size
                    │     │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.04%    0.08%    │     │  0x00007fc07d217ac0: mov    %ecx,%r10d
  0.01%    0.01%    │     │  0x00007fc07d217ac3: mov    0x78(%rsp),%ebx
  0.04%    0.04%    │     │  0x00007fc07d217ac7: mov    0x80(%rsp),%edi
                    │     ╰  0x00007fc07d217ace: jmpq   0x00007fc07d2179a9
                    ↘        0x00007fc07d217ad3: mov    0x78(%rsp),%ebx
                             0x00007fc07d217ad7: cmp    $0x2,%ebx
                             0x00007fc07d217ada: je     0x00007fc07d217d0e  ;*if_icmpne
                                                                           ; - com.google.re2j.Machine::step@94 (line 288)
                             0x00007fc07d217ae0: mov    0x80(%rsp),%edi    ;*aload
                                                                           ; - com.google.re2j.Machine::step@102 (line 289)
                             0x00007fc07d217ae7: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                           ; - com.google.re2j.Machine::step@107 (line 289)
                                                                           ; implicit exception: dispatches to 0x00007fc07d218529
....................................................................................................
 41.12%   40.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 499 (1006 bytes) 

                        0x00007fc07d21c788: movabs $0x7fc08dc37000,%r11
                        0x00007fc07d21c792: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                      ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                        0x00007fc07d21c796: mov    %rbx,%rdx
                        0x00007fc07d21c799: mov    0xa0(%rsp),%r10
                        0x00007fc07d21c7a1: mov    %r8d,%edi
                  ╭     0x00007fc07d21c7a4: jmpq   0x00007fc07d21ca96  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.26%    0.11%  │     0x00007fc07d21c7a9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.31%  │     0x00007fc07d21c7ad: cmp    $0x40,%ecx
                  │     0x00007fc07d21c7b0: jg     0x00007fc07d21ceb9  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.17%  │     0x00007fc07d21c7b6: mov    $0x1,%r9d
  0.07%    0.13%  │     0x00007fc07d21c7bc: shl    %cl,%r9            ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.67%    0.68%  │     0x00007fc07d21c7bf: mov    %rbx,%rsi
  0.15%    0.12%  │     0x00007fc07d21c7c2: and    %r9,%rsi           ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.42%  │     0x00007fc07d21c7c5: test   %rsi,%rsi
                  │     0x00007fc07d21c7c8: jne    0x00007fc07d21cf01  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.18%  │     0x00007fc07d21c7ce: cmp    $0x40,%ecx
                  │     0x00007fc07d21c7d1: jge    0x00007fc07d21cf4d  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.09%  │     0x00007fc07d21c7d7: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.15%  │     0x00007fc07d21c7db: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.30%  │     0x00007fc07d21c7de: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.26%    0.38%  │     0x00007fc07d21c7e2: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d21d575
  0.08%    0.18%  │     0x00007fc07d21c7e7: lea    (%r12,%rbp,8),%r9
  0.10%    0.17%  │     0x00007fc07d21c7eb: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭    0x00007fc07d21c7f1: je     0x00007fc07d21c924
  0.03%    0.04%  ││    0x00007fc07d21c7f7: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││    0x00007fc07d21c7fd: jne    0x00007fc07d21d185  ;*invokevirtual add
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.17%    0.19%  ││    0x00007fc07d21c803: mov    0x18(%r9),%ecx     ;*getfield pc
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.06%  ││    0x00007fc07d21c807: cmp    $0x40,%ecx
                  ││    0x00007fc07d21c80a: jg     0x00007fc07d21d3ad  ;*if_icmpgt
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.11%  ││    0x00007fc07d21c810: mov    $0x1,%esi
  0.06%    0.03%  ││    0x00007fc07d21c815: shl    %cl,%rsi           ;*lshl
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.39%  ││    0x00007fc07d21c818: mov    %rbx,%rbp
  0.00%    0.03%  ││    0x00007fc07d21c81b: and    %rsi,%rbp          ;*land
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.16%  ││    0x00007fc07d21c81e: test   %rbp,%rbp
                  ││    0x00007fc07d21c821: jne    0x00007fc07d21d3fd  ;*ifeq
                  ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  ││    0x00007fc07d21c827: cmp    $0x40,%ecx
                  ││    0x00007fc07d21c82a: jge    0x00007fc07d21d455  ;*if_icmpge
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  ││    0x00007fc07d21c830: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  ││    0x00007fc07d21c833: mov    %rbx,0x10(%rax)    ;*putfield pcsl
                  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.21%  ││    0x00007fc07d21c837: mov    %r9,%rcx
  0.03%    0.08%  ││    0x00007fc07d21c83a: shr    $0x3,%rcx          ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.06%  ││    0x00007fc07d21c83e: test   %rdi,%rdi
                  ││    0x00007fc07d21c841: jne    0x00007fc07d21cbdb  ;*ifnonnull
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.06%  ││    0x00007fc07d21c847: mov    0xa0(%rsp),%r14
  0.28%    0.15%  ││    0x00007fc07d21c84f: mov    0xc(%r14),%edi     ;*getfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fc07d21d69d
  0.04%    0.05%  ││    0x00007fc07d21c853: test   %edi,%edi
                  ││    0x00007fc07d21c855: jle    0x00007fc07d21d359  ;*ifle
                  ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%  ││    0x00007fc07d21c85b: vmovd  %edi,%xmm2
  0.03%    0.01%  ││    0x00007fc07d21c85f: mov    %r9,%rdi
  0.24%    0.16%  ││    0x00007fc07d21c862: vmovd  %r8d,%xmm1
  0.06%    0.02%  ││    0x00007fc07d21c867: mov    %r10,%r8
  0.01%    0.06%  ││    0x00007fc07d21c86a: mov    %r11d,%r9d
  0.02%    0.02%  ││    0x00007fc07d21c86d: mov    0x24(%r14),%r10d   ;*getfield pool
                  ││                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.18%  ││    0x00007fc07d21c871: vmovd  %r10d,%xmm3
  0.06%    0.07%  ││    0x00007fc07d21c876: vmovd  %xmm2,%ebp
  0.04%    0.07%  ││    0x00007fc07d21c87a: dec    %ebp               ;*isub
                  ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.02%  ││    0x00007fc07d21c87c: mov    %ebp,0xc(%r14)     ;*putfield poolSize
                  ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.24%  ││    0x00007fc07d21c880: vmovd  %xmm3,%r10d
  0.03%    0.07%  ││    0x00007fc07d21c885: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fc07d21d6b1
  0.04%    0.10%  ││    0x00007fc07d21c88a: cmp    %r10d,%ebp
                  ││    0x00007fc07d21c88d: jae    0x00007fc07d21d1cd
  0.01%    0.03%  ││    0x00007fc07d21c893: vmovd  %xmm3,%r10d
  0.23%    0.22%  ││    0x00007fc07d21c898: lea    (%r12,%r10,8),%r11
  0.06%    0.04%  ││    0x00007fc07d21c89c: vmovd  %xmm2,%r10d
  0.04%    0.01%  ││    0x00007fc07d21c8a1: mov    0xc(%r11,%r10,4),%r11d  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.03%  ││    0x00007fc07d21c8a6: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fc07d21d6c1
  1.30%    1.52%  ││    0x00007fc07d21c8ab: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007fc07d21c8af: mov    %rdi,%r10
  0.01%    0.01%  ││    0x00007fc07d21c8b2: shr    $0x9,%r10
           0.00%  ││    0x00007fc07d21c8b6: movabs $0x7fc08dc37000,%r11
  0.40%    0.33%  ││    0x00007fc07d21c8c0: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                  ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.65%    0.62%  ││    0x00007fc07d21c8c4: mov    %r9d,%r11d
                  ││    0x00007fc07d21c8c7: mov    %r8,%r10
                  ││    0x00007fc07d21c8ca: vmovd  %xmm1,%r8d         ;*aload_3
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.07%  ││    0x00007fc07d21c8cf: mov    0x58(%rsp),%r14
  0.35%    0.31%  ││    0x00007fc07d21c8d4: mov    0xc(%r14),%ebp     ;*arraylength
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                  ; implicit exception: dispatches to 0x00007fc07d21d671
  0.00%    0.00%  ││    0x00007fc07d21c8d8: test   %ebp,%ebp
                  ││    0x00007fc07d21c8da: jg     0x00007fc07d21d4a5  ;*ifle
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││    0x00007fc07d21c8e0: mov    %r8d,0xc(%rax)     ;*putfield size
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.07%  ││    0x00007fc07d21c8e4: vmovd  %xmm0,%ecx
  0.24%    0.35%  ││    0x00007fc07d21c8e8: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d21d681
           0.00%  ││    0x00007fc07d21c8ed: cmp    %ecx,%r11d
                  ││    0x00007fc07d21c8f0: jae    0x00007fc07d21d13d
                  ││    0x00007fc07d21c8f6: mov    %rdi,%rcx
  0.10%    0.08%  ││    0x00007fc07d21c8f9: shr    $0x3,%rcx          ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.27%    0.33%  ││    0x00007fc07d21c8fd: vmovd  %xmm0,%esi
                  ││    0x00007fc07d21c901: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││    0x00007fc07d21c905: lea    0x10(%r11,%rdx,1),%r11
  0.06%    0.09%  ││    0x00007fc07d21c90a: mov    %ecx,(%r11)
  0.25%    0.31%  ││    0x00007fc07d21c90d: shr    $0x9,%r11
  0.00%           ││    0x00007fc07d21c911: movabs $0x7fc08dc37000,%r9
                  ││    0x00007fc07d21c91b: mov    %r12b,(%r9,%r11,1)  ;*aastore
                  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.14%  ││    0x00007fc07d21c91f: xor    %r11d,%r11d
  0.24%    0.36%  ││╭   0x00007fc07d21c922: jmp    0x00007fc07d21c990
  0.18%    0.29%  │↘│   0x00007fc07d21c924: mov    %r10,0x18(%rsp)
  0.03%    0.05%  │ │   0x00007fc07d21c929: mov    %r13,0x10(%rsp)
  0.05%    0.05%  │ │   0x00007fc07d21c92e: mov    %rax,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.03%  │ │   0x00007fc07d21c933: mov    %r9,%rsi           ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.31%  │ │   0x00007fc07d21c936: mov    %rax,%rdx
  0.08%    0.08%  │ │   0x00007fc07d21c939: mov    0x30(%rsp),%ecx
  0.04%    0.06%  │ │   0x00007fc07d21c93d: mov    0x58(%rsp),%r8
  0.03%    0.02%  │ │   0x00007fc07d21c942: mov    0x54(%rsp),%r9d
  0.25%    0.23%  │ │   0x00007fc07d21c947: mov    0xa0(%rsp),%r10
  0.08%    0.03%  │ │   0x00007fc07d21c94f: mov    %r10,(%rsp)
  0.03%    0.08%  │ │   0x00007fc07d21c953: mov    %ecx,0x20(%rsp)
  0.04%    0.06%  │ │   0x00007fc07d21c957: mov    %r8,0x28(%rsp)
  0.16%    0.22%  │ │   0x00007fc07d21c95c: mov    %r9d,0x24(%rsp)
  0.07%    0.04%  │ │   0x00007fc07d21c961: xchg   %ax,%ax
  0.03%    0.09%  │ │   0x00007fc07d21c963: callq  0x00007fc07d046020  ; OopMap{[160]=Oop [8]=Oop [16]=Oop [24]=Oop [40]=Oop [88]=Oop off=904}
                  │ │                                                 ;*invokevirtual add
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                 ;   {optimized virtual_call}
  0.01%           │ │   0x00007fc07d21c968: mov    %rax,%r11
  0.03%    0.11%  │ │   0x00007fc07d21c96b: mov    0x8(%rsp),%rax
  0.25%    0.46%  │ │   0x00007fc07d21c970: mov    0xc(%rax),%r8d     ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  │ │   0x00007fc07d21c974: mov    0x10(%rax),%rbx    ;*getfield pcsl
                  │ │                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.05%  │ │   0x00007fc07d21c978: mov    0x20(%rax),%r9d    ;*getfield denseThreads
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.17%  │ │   0x00007fc07d21c97c: vmovd  %r9d,%xmm0
  0.11%    0.12%  │ │   0x00007fc07d21c981: mov    0x10(%rsp),%r13
  0.01%    0.01%  │ │   0x00007fc07d21c986: mov    0x28(%rsp),%r14
  0.04%    0.05%  │ │   0x00007fc07d21c98b: mov    0x18(%rsp),%r10    ;*getfield size
                  │ │                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.28%  │ ↘   0x00007fc07d21c990: mov    0x20(%r10),%ebp    ;*getfield argInst
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.15%  │     0x00007fc07d21c994: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fc07d21d58d
  0.11%    0.12%  │     0x00007fc07d21c999: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │     0x00007fc07d21c9a0: jne    0x00007fc07d21cca9
  0.35%    0.37%  │     0x00007fc07d21c9a6: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.16%  │     0x00007fc07d21c9aa: mov    0x18(%r9),%ecx     ;*getfield pc
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  │     0x00007fc07d21c9ae: cmp    $0x40,%ecx
                  │     0x00007fc07d21c9b1: jg     0x00007fc07d21cf95  ;*if_icmpgt
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.14%  │     0x00007fc07d21c9b7: mov    $0x1,%edx
  0.31%    0.41%  │     0x00007fc07d21c9bc: shl    %cl,%rdx           ;*lshl
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.38%    0.47%  │     0x00007fc07d21c9bf: mov    %rdx,%r10
  0.36%    0.36%  │     0x00007fc07d21c9c2: and    %rbx,%r10          ;*land
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.29%  │     0x00007fc07d21c9c5: test   %r10,%r10
                  │     0x00007fc07d21c9c8: jne    0x00007fc07d21cfd9  ;*ifeq
                  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.14%  │     0x00007fc07d21c9ce: cmp    $0x40,%ecx
                  │     0x00007fc07d21c9d1: jge    0x00007fc07d21d021  ;*if_icmpge
                  │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.06%  │     0x00007fc07d21c9d7: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.37%    0.39%  │     0x00007fc07d21c9db: or     %rbx,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.12%  │     0x00007fc07d21c9de: mov    %rdx,0x10(%rax)    ;*putfield pcsl
                  │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.13%  │     0x00007fc07d21c9e2: mov    %r9,%rsi
  0.09%    0.11%  │     0x00007fc07d21c9e5: shr    $0x3,%rsi          ;*putfield inst
                  │                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.26%  │     0x00007fc07d21c9e9: test   %r11,%r11
                  │  ╭  0x00007fc07d21c9ec: jne    0x00007fc07d21cb98  ;*ifnonnull
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.29%  │  │  0x00007fc07d21c9f2: mov    0xa0(%rsp),%r10
  0.09%    0.19%  │  │  0x00007fc07d21c9fa: mov    0xc(%r10),%edi     ;*getfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fc07d21d5d5
  0.09%    0.06%  │  │  0x00007fc07d21c9fe: test   %edi,%edi
  0.33%    0.26%  │  │  0x00007fc07d21ca00: jle    0x00007fc07d21ce85  ;*ifle
                  │  │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.15%  │  │  0x00007fc07d21ca06: mov    0x24(%r10),%r11d   ;*getfield pool
                  │  │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.14%  │  │  0x00007fc07d21ca0a: mov    %edi,%ebp
  0.11%    0.03%  │  │  0x00007fc07d21ca0c: dec    %ebp               ;*isub
                  │  │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.32%    0.31%  │  │  0x00007fc07d21ca0e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                  │  │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.17%  │  │  0x00007fc07d21ca12: mov    0xc(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d21d5e9
  0.13%    0.11%  │  │  0x00007fc07d21ca17: cmp    %ecx,%ebp
                  │  │  0x00007fc07d21ca19: jae    0x00007fc07d21ccd9
  0.10%    0.02%  │  │  0x00007fc07d21ca1f: shl    $0x3,%r11
  0.33%    0.23%  │  │  0x00007fc07d21ca23: mov    0xc(%r11,%rdi,4),%ecx  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.17%  │  │  0x00007fc07d21ca28: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │  │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fc07d21d5f9
  0.66%    0.56%  │  │  0x00007fc07d21ca2d: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │  │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.01%  │  │  0x00007fc07d21ca31: mov    %r11,%r9
  0.29%    0.09%  │  │  0x00007fc07d21ca34: shr    $0x9,%r9
  0.09%    0.18%  │  │  0x00007fc07d21ca38: movabs $0x7fc08dc37000,%rcx
  0.22%    0.25%  │  │  0x00007fc07d21ca42: mov    %r12b,(%rcx,%r9,1)  ;*aload_3
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.50%    0.43%  │  │  0x00007fc07d21ca46: mov    0xc(%r14),%r9d     ;*arraylength
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │  │                                                ; implicit exception: dispatches to 0x00007fc07d21d5a9
  0.16%    0.04%  │  │  0x00007fc07d21ca4a: test   %r9d,%r9d
                  │  │  0x00007fc07d21ca4d: jg     0x00007fc07d21d065  ;*ifle
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.07%  │  │  0x00007fc07d21ca53: mov    %r8d,%edi
  0.22%    0.21%  │  │  0x00007fc07d21ca56: inc    %edi               ;*iadd
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.25%    0.18%  │  │  0x00007fc07d21ca58: mov    %edi,0xc(%rax)     ;*putfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.11%  │  │  0x00007fc07d21ca5b: vmovd  %xmm0,%ecx
  0.07%    0.13%  │  │  0x00007fc07d21ca5f: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d21d5b9
  0.24%    0.18%  │  │  0x00007fc07d21ca64: cmp    %ecx,%r8d
                  │  │  0x00007fc07d21ca67: jae    0x00007fc07d21cc75
  0.23%    0.26%  │  │  0x00007fc07d21ca6d: mov    %r11,%rcx
  0.19%    0.03%  │  │  0x00007fc07d21ca70: shr    $0x3,%rcx          ;*aastore
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.14%  │  │  0x00007fc07d21ca74: vmovd  %xmm0,%esi
  0.20%    0.21%  │  │  0x00007fc07d21ca78: lea    (%r12,%rsi,8),%r11  ;*getfield denseThreads
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.35%  │  │  0x00007fc07d21ca7c: lea    0x10(%r11,%r8,4),%r11
  0.20%    0.18%  │  │  0x00007fc07d21ca81: mov    %ecx,(%r11)
  0.12%    0.13%  │  │  0x00007fc07d21ca84: shr    $0x9,%r11
  0.15%    0.18%  │  │  0x00007fc07d21ca88: movabs $0x7fc08dc37000,%r8
  0.27%    0.34%  │  │  0x00007fc07d21ca92: mov    %r12b,(%r8,%r11,1)  ;*getfield size
                  │  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │  │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │  │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.23%  ↘  │  0x00007fc07d21ca96: mov    0x20(%r13),%ebp    ;*getfield argInst
                     │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.09%    0.08%     │  0x00007fc07d21ca9a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fc07d21d51d
  0.20%    0.17%     │  0x00007fc07d21ca9f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     │  0x00007fc07d21caa6: jne    0x00007fc07d21cc51
  0.27%    0.23%     │  0x00007fc07d21caac: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.18%     │  0x00007fc07d21cab0: mov    0x18(%rbx),%ecx    ;*getfield pc
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.11%     │  0x00007fc07d21cab3: cmp    $0x40,%ecx
                     │  0x00007fc07d21cab6: jg     0x00007fc07d21cdcd  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.16%     │  0x00007fc07d21cabc: mov    $0x1,%r8d
  0.33%    0.27%     │  0x00007fc07d21cac2: shl    %cl,%r8            ;*lshl
                     │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.39%    0.42%     │  0x00007fc07d21cac5: mov    %r8,%r11
  0.29%    0.27%     │  0x00007fc07d21cac8: and    %rdx,%r11          ;*land
                     │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.18%    0.18%     │  0x00007fc07d21cacb: test   %r11,%r11
                     │  0x00007fc07d21cace: jne    0x00007fc07d21cdf9  ;*ifeq
                     │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.13%     │  0x00007fc07d21cad4: cmp    $0x40,%ecx
                     │  0x00007fc07d21cad7: jge    0x00007fc07d21ce35  ;*if_icmpge
                     │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.24%     │  0x00007fc07d21cadd: mov    %r12b,0x18(%rax)   ;*putfield empty
                     │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.35%    0.37%     │  0x00007fc07d21cae1: or     %rdx,%r8
  0.15%    0.15%     │  0x00007fc07d21cae4: mov    %r8,0x10(%rax)     ;*putfield pcsl
                     │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.08%    0.14%     │  0x00007fc07d21cae8: mov    0xc(%r10),%r11d    ;*getfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                     │                                                ; implicit exception: dispatches to 0x00007fc07d21d539
  0.15%    0.20%     │  0x00007fc07d21caec: test   %r11d,%r11d
                     │  0x00007fc07d21caef: jle    0x00007fc07d21cd15  ;*ifle
                     │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.26%     │  0x00007fc07d21caf5: mov    0x24(%r10),%ecx    ;*getfield pool
                     │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.25%     │  0x00007fc07d21caf9: mov    %r11d,%ebp
  0.07%    0.13%     │  0x00007fc07d21cafc: dec    %ebp               ;*isub
                     │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.20%     │  0x00007fc07d21cafe: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                     │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.28%    0.18%     │  0x00007fc07d21cb02: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fc07d21d54d
  0.15%    0.06%     │  0x00007fc07d21cb07: cmp    %r10d,%ebp
                     │  0x00007fc07d21cb0a: jae    0x00007fc07d21cbf8
  0.09%    0.05%     │  0x00007fc07d21cb10: lea    (%r12,%rcx,8),%r10
  0.20%    0.12%     │  0x00007fc07d21cb14: mov    0xc(%r10,%r11,4),%ebp  ;*aaload
                     │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.20%    0.36%     │  0x00007fc07d21cb19: test   %ebp,%ebp
                     │  0x00007fc07d21cb1b: je     0x00007fc07d21cc1d
  0.13%    0.36%     │  0x00007fc07d21cb21: lea    (%r12,%rbp,8),%r10
  0.12%    0.15%     │  0x00007fc07d21cb25: mov    %rbx,%r8
  0.18%    0.18%     │  0x00007fc07d21cb28: shr    $0x3,%r8
  0.27%    0.37%     │  0x00007fc07d21cb2c: mov    %r8d,0x10(%r12,%rbp,8)
  0.16%    0.26%     │  0x00007fc07d21cb31: shr    $0x9,%r10
  0.09%    0.10%     │  0x00007fc07d21cb35: movabs $0x7fc08dc37000,%r11
  0.16%    0.18%     │  0x00007fc07d21cb3f: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                     │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.42%    0.49%     │  0x00007fc07d21cb43: test   %r9d,%r9d
                     │  0x00007fc07d21cb46: jg     0x00007fc07d21ce61  ;*ifle
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.21%     │  0x00007fc07d21cb4c: mov    %edi,%r11d
  0.11%    0.07%     │  0x00007fc07d21cb4f: inc    %r11d
  0.17%    0.14%     │  0x00007fc07d21cb52: mov    %r11d,0xc(%rax)    ;*putfield size
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.30%    0.36%     │  0x00007fc07d21cb56: vmovd  %xmm0,%r10d
  0.16%    0.18%     │  0x00007fc07d21cb5b: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fc07d21d55d
  0.10%    0.05%     │  0x00007fc07d21cb60: cmp    %r11d,%edi
                     │  0x00007fc07d21cb63: jae    0x00007fc07d21cc31  ;*aastore
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.21%    0.10%     │  0x00007fc07d21cb69: shl    $0x3,%r10          ;*getfield denseThreads
                     │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.30%    0.27%     │  0x00007fc07d21cb6d: lea    0x10(%r10,%rdi,4),%r10
  0.21%    0.18%     │  0x00007fc07d21cb72: mov    %ebp,(%r10)
  0.12%    0.11%     │  0x00007fc07d21cb75: shr    $0x9,%r10
  0.10%    0.05%     │  0x00007fc07d21cb79: movabs $0x7fc08dc37000,%r11
  0.26%    0.33%     │  0x00007fc07d21cb83: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                     │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.19%    0.21%     │  0x00007fc07d21cb87: xor    %eax,%eax
  0.10%    0.08%     │  0x00007fc07d21cb89: add    $0x90,%rsp
  0.14%    0.15%     │  0x00007fc07d21cb90: pop    %rbp
  0.25%    0.20%     │  0x00007fc07d21cb91: test   %eax,0x18012469(%rip)        # 0x00007fc09522f000
                     │                                                ;   {poll_return}
  0.18%    0.15%     │  0x00007fc07d21cb97: retq   
                     ↘  0x00007fc07d21cb98: mov    %esi,0x10(%r11)
                        0x00007fc07d21cb9c: mov    %r11,%r10
                        0x00007fc07d21cb9f: shr    $0x9,%r10
                        0x00007fc07d21cba3: movabs $0x7fc08dc37000,%r9
                        0x00007fc07d21cbad: mov    %r12b,(%r9,%r10,1)  ;*putfield inst
                                                                      ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                                                                      ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                      ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                        0x00007fc07d21cbb1: mov    0xa0(%rsp),%r10
....................................................................................................
 32.42%   34.35%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 530 (1211 bytes) 

                                                                                                   ; - com.google.re2j.Machine::match@60 (line 189)
                                                     0x00007fc07d22f092: mov    %r9d,0x28(%rsp)
                                                     0x00007fc07d22f097: mov    %r10d,%ebx
                                                     0x00007fc07d22f09a: sar    $0x3,%ebx          ;*ishr
                                                                                                   ; - com.google.re2j.Machine::match@68 (line 190)
                                                     0x00007fc07d22f09d: cmp    $0xfffffff8,%r10d
                                                     0x00007fc07d22f0a1: je     0x00007fc07d22fc6b  ;*if_icmpeq
                                                                                                   ; - com.google.re2j.Machine::match@88 (line 194)
                                                     0x00007fc07d22f0a7: vmovd  %xmm1,%r9d
                                                     0x00007fc07d22f0ac: add    0x28(%rsp),%r9d
           0.00%                                     0x00007fc07d22f0b1: add    %r14d,%r9d         ;*iadd
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%                                              0x00007fc07d22f0b4: cmp    %esi,%r9d
                                                     0x00007fc07d22f0b7: jge    0x00007fc07d22f700  ;*if_icmpge
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                                              0x00007fc07d22f0bd: test   %r9d,%r9d
                                                     0x00007fc07d22f0c0: jl     0x00007fc07d22fe65  ;*iflt
                                                                                                   ; - java.lang.String::charAt@1 (line 657)
                                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                                     0x00007fc07d22f0c6: cmp    %eax,%r9d
                                                     0x00007fc07d22f0c9: jge    0x00007fc07d22fff5  ;*if_icmplt
                                                                                                   ; - java.lang.String::charAt@10 (line 657)
                                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
           0.00%                                     0x00007fc07d22f0cf: cmp    %eax,%r9d
                                                     0x00007fc07d22f0d2: jae    0x00007fc07d22fd01
  0.00%    0.00%                                     0x00007fc07d22f0d8: movzwl 0x10(%r11,%r9,2),%r11d  ;*caload
                                                                                                   ; - java.lang.String::charAt@27 (line 660)
                                                                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%                                              0x00007fc07d22f0de: cmp    $0xd800,%r11d
                                                     0x00007fc07d22f0e5: jge    0x00007fc07d230055  ;*if_icmplt
                                                                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                                     0x00007fc07d22f0eb: shl    $0x3,%r11d         ;*ishl
                                                                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
                                                     0x00007fc07d22f0ef: mov    %r11d,%r8d
                                                     0x00007fc07d22f0f2: and    $0x7,%r8d
  0.00%                                              0x00007fc07d22f0f6: or     $0x1,%r11d
                                                     0x00007fc07d22f0fa: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                   ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                                              0x00007fc07d22f0fe: sar    $0x3,%r11d         ;*iand
                                                                                                   ; - com.google.re2j.Machine::match@111 (line 197)
                                                     0x00007fc07d22f102: vmovd  %xmm1,%r9d
                                                     0x00007fc07d22f107: test   %r9d,%r9d
                                                     0x00007fc07d22f10a: jne    0x00007fc07d22fe11  ;*ifne
                                                                                                   ; - com.google.re2j.Machine::match@115 (line 200)
                                                     0x00007fc07d22f110: test   %ebx,%ebx
                                                     0x00007fc07d22f112: jl     0x00007fc07d22f6f5  ;*ifge
                                                                                                   ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                                              0x00007fc07d22f118: mov    $0x5,%r9d          ;*iload_1
                                                                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                                     0x00007fc07d22f11e: cmp    $0xa,%ebx
                                                     0x00007fc07d22f121: je     0x00007fc07d22f70e  ;*iload_0
                                                                                                   ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
                                                     0x00007fc07d22f127: mov    %ebx,%ecx
                                                     0x00007fc07d22f129: add    $0xffffffbf,%ecx
  0.00%    0.01%                                     0x00007fc07d22f12c: cmp    $0x1a,%ecx
                  ╭                                  0x00007fc07d22f12f: jb     0x00007fc07d22f142  ;*if_icmple
                  │                                                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                ; - com.google.re2j.Machine::match@121 (line 201)
                  │                                  0x00007fc07d22f131: mov    %ebx,%r10d
                  │                                  0x00007fc07d22f134: add    $0xffffff9f,%r10d
                  │                                  0x00007fc07d22f138: cmp    $0x1a,%r10d
                  │                                  0x00007fc07d22f13c: jae    0x00007fc07d22f717  ;*iconst_1
                  │                                                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%  ↘                                  0x00007fc07d22f142: or     $0x10,%r9d         ;*iload_2
                                                                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                   ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%                                     0x00007fc07d22f146: mov    %r8d,0x30(%rsp)
  0.01%    0.01%                                     0x00007fc07d22f14b: mov    %r11d,0x2c(%rsp)
                                                     0x00007fc07d22f150: mov    0x44(%rsp),%r11d
  0.00%                                              0x00007fc07d22f155: and    $0x4,%r11d         ;*iand
                                                                                                   ; - com.google.re2j.Machine::match@147 (line 208)
                                                     0x00007fc07d22f159: mov    %r11d,0x14(%rsp)
  0.00%                                              0x00007fc07d22f15e: mov    %r13,%r10
                                                     0x00007fc07d22f161: shl    $0x3,%r10          ;*getfield q1
                                                                                                   ; - com.google.re2j.Machine::match@53 (line 188)
           0.00%                                     0x00007fc07d22f165: mov    %r10,0x50(%rsp)
                                                     0x00007fc07d22f16a: mov    %ebx,0x34(%rsp)
                                                     0x00007fc07d22f16e: xor    %eax,%eax
                                                     0x00007fc07d22f170: xor    %r10d,%r10d
                                                     0x00007fc07d22f173: mov    %r10d,0x58(%rsp)
  0.00%            ╭                                 0x00007fc07d22f178: jmpq   0x00007fc07d22f315
                   │                                 0x00007fc07d22f17d: data16 xchg %ax,%ax
  0.09%    0.06%   │              ↗                  0x00007fc07d22f180: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │              │                                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.06%   │              │                  0x00007fc07d22f184: mov    %r8d,0x5c(%rsp)    ;*iload_2
                   │              │                                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │              │                                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.08%   │              │↗                 0x00007fc07d22f189: mov    0x48(%rsp),%r9
  0.13%    0.11%   │              ││                 0x00007fc07d22f18e: mov    0x10(%r9),%r8d     ;*getfield end
                   │              ││                                                               ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │              ││                                                               ; - com.google.re2j.Machine::match@345 (line 242)
  0.20%    0.21%   │              ││                 0x00007fc07d22f192: mov    0x58(%rsp),%ecx
  0.07%    0.06%   │              ││                 0x00007fc07d22f196: cmp    %r8d,%ecx
                   │╭             ││                 0x00007fc07d22f199: je     0x00007fc07d22f49e  ;*if_icmpne
                   ││             ││                                                               ; - com.google.re2j.Machine::match@348 (line 242)
  0.16%    0.15%   ││             ││                 0x00007fc07d22f19f: xor    %eax,%eax          ;*invokespecial step
                   ││             ││                                                               ; - com.google.re2j.Machine::match@356 (line 242)
  0.12%    0.11%   ││             ││    ↗            0x00007fc07d22f1a1: mov    %rax,-0x8(%rsp)
  0.06%    0.09%   ││             ││    │            0x00007fc07d22f1a6: mov    0x58(%rsp),%eax
  0.04%    0.07%   ││             ││    │            0x00007fc07d22f1aa: mov    %eax,0x1c(%rsp)
  0.11%    0.11%   ││             ││    │            0x00007fc07d22f1ae: mov    -0x8(%rsp),%rax
  0.31%    0.15%   ││             ││    │            0x00007fc07d22f1b3: add    0x28(%rsp),%ecx    ;*iadd
                   ││             ││    │                                                          ; - com.google.re2j.Machine::match@337 (line 242)
  0.08%    0.12%   ││             ││    │            0x00007fc07d22f1b7: mov    %ecx,0x58(%rsp)
  0.09%    0.09%   ││             ││    │            0x00007fc07d22f1bb: mov    0x38(%rsp),%rsi
  0.06%    0.11%   ││             ││    │            0x00007fc07d22f1c0: mov    0x20(%rsp),%rdx
  0.12%    0.12%   ││             ││    │            0x00007fc07d22f1c5: mov    0x50(%rsp),%rcx
  0.05%    0.05%   ││             ││    │            0x00007fc07d22f1ca: mov    0x1c(%rsp),%r8d
  0.11%    0.07%   ││             ││    │            0x00007fc07d22f1cf: mov    0x58(%rsp),%r9d
  0.23%    0.09%   ││             ││    │            0x00007fc07d22f1d4: mov    0x34(%rsp),%edi
  0.11%    0.14%   ││             ││    │            0x00007fc07d22f1d8: mov    0x5c(%rsp),%r10d
  0.07%    0.08%   ││             ││    │            0x00007fc07d22f1dd: mov    %r10d,(%rsp)
  0.11%    0.11%   ││             ││    │            0x00007fc07d22f1e1: mov    0x40(%rsp),%r11d
  0.14%    0.06%   ││             ││    │            0x00007fc07d22f1e6: mov    %r11d,0x8(%rsp)
  0.08%    0.09%   ││             ││    │            0x00007fc07d22f1eb: mov    %eax,0x10(%rsp)
  0.04%    0.08%   ││             ││    │            0x00007fc07d22f1ef: callq  0x00007fc07d046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=660}
                   ││             ││    │                                                          ;*invokespecial step
                   ││             ││    │                                                          ; - com.google.re2j.Machine::match@356 (line 242)
                   ││             ││    │                                                          ;   {optimized virtual_call}
  0.00%            ││             ││    │            0x00007fc07d22f1f4: mov    0x38(%rsp),%r10
  0.10%    0.01%   ││             ││    │            0x00007fc07d22f1f9: movzbl 0x10(%r10),%eax    ;*getfield matched
                   ││             ││    │                                                          ; - com.google.re2j.Machine::match@376 (line 246)
  0.33%    0.09%   ││             ││    │            0x00007fc07d22f1fe: mov    0x28(%rsp),%r8d
  0.00%            ││             ││    │            0x00007fc07d22f203: test   %r8d,%r8d
                   ││╭            ││    │            0x00007fc07d22f206: je     0x00007fc07d22f4a8  ;*ifne
                   │││            ││    │                                                          ; - com.google.re2j.Machine::match@361 (line 243)
  0.07%    0.05%   │││            ││    │            0x00007fc07d22f20c: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   │││            ││    │                                                          ; - com.google.re2j.Machine::match@368 (line 246)
  0.03%    0.00%   │││            ││    │            0x00007fc07d22f210: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                   │││            ││    │                                                          ; - com.google.re2j.Machine::match@371 (line 246)
                   │││            ││    │                                                          ; implicit exception: dispatches to 0x00007fc07d230241
  0.39%    0.25%   │││            ││    │            0x00007fc07d22f215: test   %ebp,%ebp
                   │││            ││    │            0x00007fc07d22f217: jne    0x00007fc07d22f925  ;*ifne
                   │││            ││    │                                                          ; - com.google.re2j.Machine::match@372 (line 246)
  0.02%    0.02%   │││            ││    │            0x00007fc07d22f21d: test   %eax,%eax
                   │││            ││    │            0x00007fc07d22f21f: jne    0x00007fc07d22fa15  ;*ifeq
                   │││            ││    │                                                          ; - com.google.re2j.Machine::match@379 (line 246)
  0.07%    0.09%   │││            ││    │            0x00007fc07d22f225: mov    0x2c(%rsp),%r9d
           0.01%   │││            ││    │            0x00007fc07d22f22a: cmp    $0xffffffff,%r9d
                   │││╭           ││    │            0x00007fc07d22f22e: je     0x00007fc07d22f4f5  ;*if_icmpeq
                   ││││           ││    │                                                          ; - com.google.re2j.Machine::match@401 (line 254)
  0.27%    0.21%   ││││           ││    │            0x00007fc07d22f234: mov    0x48(%rsp),%r8
  0.03%    0.01%   ││││           ││    │            0x00007fc07d22f239: mov    0x10(%r8),%r11d    ;*getfield end
                   ││││           ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   ││││           ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.07%   ││││           ││    │            0x00007fc07d22f23d: mov    0x30(%rsp),%r10d
           0.01%   ││││           ││    │            0x00007fc07d22f242: add    0x58(%rsp),%r10d
  0.24%    0.32%   ││││           ││    │            0x00007fc07d22f247: add    0xc(%r8),%r10d     ;*iadd
                   ││││           ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   ││││           ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.01%   ││││           ││    │            0x00007fc07d22f24b: cmp    %r11d,%r10d
                   ││││╭          ││    │            0x00007fc07d22f24e: jge    0x00007fc07d22f509  ;*if_icmpge
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.09%   │││││          ││    │            0x00007fc07d22f254: mov    0x14(%r8),%ebp     ;*getfield str
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%   │││││          ││    │            0x00007fc07d22f258: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d230251
  0.26%    0.42%   │││││          ││    │            0x00007fc07d22f25d: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││          ││    │            0x00007fc07d22f263: jne    0x00007fc07d22f7fd
  0.07%    0.11%   │││││          ││    │            0x00007fc07d22f269: lea    (%r12,%rbp,8),%r9  ;*invokeinterface charAt
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.08%   │││││          ││    │            0x00007fc07d22f26d: test   %r10d,%r10d
                   │││││          ││    │            0x00007fc07d22f270: jl     0x00007fc07d22f971  ;*iflt
                   │││││          ││    │                                                          ; - java.lang.String::charAt@1 (line 657)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │││││          ││    │            0x00007fc07d22f276: mov    %r10d,%edi
  0.20%    0.30%   │││││          ││    │            0x00007fc07d22f279: mov    0xc(%r9),%edx      ;*getfield value
                   │││││          ││    │                                                          ; - java.lang.String::charAt@6 (line 657)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.09%    0.11%   │││││          ││    │            0x00007fc07d22f27d: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   │││││          ││    │                                                          ; - java.lang.String::charAt@9 (line 657)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
                   │││││          ││    │                                                          ; implicit exception: dispatches to 0x00007fc07d230265
  0.93%    1.65%   │││││          ││    │            0x00007fc07d22f282: cmp    %ebp,%r10d
                   │││││          ││    │            0x00007fc07d22f285: jge    0x00007fc07d22fa69  ;*if_icmplt
                   │││││          ││    │                                                          ; - java.lang.String::charAt@10 (line 657)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.40%    0.47%   │││││          ││    │            0x00007fc07d22f28b: cmp    %ebp,%r10d
                   │││││          ││    │            0x00007fc07d22f28e: jae    0x00007fc07d22f781
  0.17%    0.21%   │││││          ││    │            0x00007fc07d22f294: lea    (%r12,%rdx,8),%r10
           0.00%   │││││          ││    │            0x00007fc07d22f298: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   │││││          ││    │                                                          ; - java.lang.String::charAt@27 (line 660)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │││││          ││    │            0x00007fc07d22f29e: cmp    $0xd800,%ecx
                   │││││          ││    │            0x00007fc07d22f2a4: jge    0x00007fc07d22fad5  ;*if_icmplt
                   │││││          ││    │                                                          ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││          ││    │                                                          ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.38%   │││││          ││    │            0x00007fc07d22f2aa: shl    $0x3,%ecx          ;*ishl
                   │││││          ││    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.11%    0.18%   │││││          ││    │            0x00007fc07d22f2ad: mov    %ecx,%r10d
                   │││││          ││    │            0x00007fc07d22f2b0: or     $0x1,%r10d
  0.25%    0.37%   │││││          ││    │            0x00007fc07d22f2b4: and    $0x7,%ecx
  0.13%    0.15%   │││││          ││    │            0x00007fc07d22f2b7: sar    $0x3,%r10d         ;*ishr
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@417 (line 256)
  0.20%    0.25%   │││││          ││    │            0x00007fc07d22f2bb: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@409 (line 255)
  0.08%    0.11%   │││││          ││    │            0x00007fc07d22f2be: mov    0x2c(%rsp),%r9d    ;*aload
                   │││││          ││    │                                                          ; - com.google.re2j.Machine::match@427 (line 259)
                   │││││          ││    │  ↗↗        0x00007fc07d22f2c3: mov    %r8,0x48(%rsp)
  0.05%    0.04%   │││││          ││    │  ││        0x00007fc07d22f2c8: mov    %r9d,0x34(%rsp)    ; OopMap{r8=Oop rbx=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=877}
                   │││││          ││    │  ││                                                      ;*goto
                   │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@439 (line 262)
  0.20%    0.31%   │││││          ││    │  ││        0x00007fc07d22f2cd: test   %eax,0x17fffd2d(%rip)        # 0x00007fc09522f000
                   │││││          ││    │  ││                                                      ;*goto
                   │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@439 (line 262)
                   │││││          ││    │  ││                                                      ;   {poll}
  0.08%    0.11%   │││││          ││    │  ││        0x00007fc07d22f2d3: mov    0x38(%rsp),%r11
  0.00%            │││││          ││    │  ││        0x00007fc07d22f2d8: mov    0x14(%r11),%r11d   ;*getfield re2
                   │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@169 (line 216)
  0.04%    0.02%   │││││          ││    │  ││        0x00007fc07d22f2dc: vmovd  %r11d,%xmm3
  0.23%    0.23%   │││││          ││    │  ││        0x00007fc07d22f2e1: mov    0x50(%rsp),%r11
  0.13%    0.08%   │││││          ││    │  ││        0x00007fc07d22f2e6: shr    $0x3,%r11
  0.00%    0.00%   │││││          ││    │  ││        0x00007fc07d22f2ea: mov    %r11d,0x18(%rsp)
  0.04%    0.03%   │││││          ││    │  ││        0x00007fc07d22f2ef: mov    0x5c(%rsp),%r9d
  0.21%    0.30%   │││││          ││    │  ││        0x00007fc07d22f2f4: mov    0x20(%rsp),%r11
  0.08%    0.09%   │││││          ││    │  ││        0x00007fc07d22f2f9: mov    %r11,0x50(%rsp)
           0.01%   │││││          ││    │  ││        0x00007fc07d22f2fe: mov    0x30(%rsp),%r11d
  0.05%    0.03%   │││││          ││    │  ││        0x00007fc07d22f303: mov    %r11d,0x28(%rsp)
  0.20%    0.19%   │││││          ││    │  ││        0x00007fc07d22f308: mov    %ecx,0x30(%rsp)
  0.05%    0.13%   │││││          ││    │  ││        0x00007fc07d22f30c: mov    %r10d,0x2c(%rsp)
           0.00%   │││││          ││    │  ││        0x00007fc07d22f311: vmovd  %ebx,%xmm2         ;*aload
                   │││││          ││    │  ││                                                      ; - com.google.re2j.Machine::match@136 (line 207)
  0.03%    0.04%   ↘││││          ││    │  ││        0x00007fc07d22f315: mov    0x18(%rsp),%r11d
  0.22%    0.24%    ││││          ││    │  ││        0x00007fc07d22f31a: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fc07d2301f1
  0.11%    0.11%    ││││          ││    │  ││        0x00007fc07d22f320: test   %r11d,%r11d
                    ││││╭         ││    │  ││        0x00007fc07d22f323: je     0x00007fc07d22f477  ;*ifeq
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@141 (line 207)
  0.01%    0.01%    │││││         ││    │  ││        0x00007fc07d22f329: mov    0x14(%rsp),%ebx
  0.03%    0.01%    │││││         ││    │  ││        0x00007fc07d22f32d: test   %ebx,%ebx
                    │││││         ││    │  ││        0x00007fc07d22f32f: jne    0x00007fc07d22fb55  ;*ifeq
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@148 (line 208)
  0.17%    0.24%    │││││         ││    │  ││        0x00007fc07d22f335: test   %eax,%eax
                    │││││         ││    │  ││        0x00007fc07d22f337: jne    0x00007fc07d22fbb5  ;*ifeq
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@162 (line 212)
  0.11%    0.09%    │││││         ││    │  ││        0x00007fc07d22f33d: vmovd  %xmm3,%r10d
  0.01%    0.00%    │││││         ││    │  ││        0x00007fc07d22f342: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@172 (line 216)
                    │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007fc07d230275
  0.01%    0.02%    │││││         ││    │  ││        0x00007fc07d22f347: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    │││││         ││    │  ││                                                      ; - java.lang.String::isEmpty@1 (line 635)
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@175 (line 216)
                    │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007fc07d230285
  0.20%    0.24%    │││││         ││    │  ││        0x00007fc07d22f34c: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    │││││         ││    │  ││                                                      ; - java.lang.String::isEmpty@4 (line 635)
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@175 (line 216)
                    │││││         ││    │  ││                                                      ; implicit exception: dispatches to 0x00007fc07d230295
  0.34%    0.42%    │││││         ││    │  ││        0x00007fc07d22f351: test   %ebp,%ebp
                    │││││         ││    │  ││        0x00007fc07d22f353: jne    0x00007fc07d22fb35  ;*aload_0
                    │││││         ││    │  ││                                                      ; - com.google.re2j.Machine::match@267 (line 233)
  0.22%    0.24%    │││││         ││↗   │  ││        0x00007fc07d22f359: test   %eax,%eax
                    │││││         │││   │  ││        0x00007fc07d22f35b: jne    0x00007fc07d22f882  ;*ifne
                    │││││         │││   │  ││                                                      ; - com.google.re2j.Machine::match@271 (line 233)
  0.01%    0.01%    │││││         │││   │  ││        0x00007fc07d22f361: mov    0x58(%rsp),%r11d
  0.06%    0.07%    │││││         │││   │  ││        0x00007fc07d22f366: test   %r11d,%r11d
                    │││││╭        │││   │  ││        0x00007fc07d22f369: je     0x00007fc07d22f494  ;*ifeq
                    ││││││        │││   │  ││                                                      ; - com.google.re2j.Machine::match@275 (line 233)
  0.04%    0.08%    ││││││        │││   │  ││        0x00007fc07d22f36f: mov    0x40(%rsp),%r8d
  0.24%    0.14%    ││││││        │││   │  ││        0x00007fc07d22f374: test   %r8d,%r8d
                    ││││││        │││   │  ││        0x00007fc07d22f377: jne    0x00007fc07d22f8cd  ;*aload_0
                    ││││││        │││   │  ││                                                      ; - com.google.re2j.Machine::match@282 (line 236)
  0.01%    0.01%    ││││││        │││  ↗│  ││        0x00007fc07d22f37d: vmovd  %xmm2,%r10d
  0.06%    0.07%    ││││││        │││  ││  ││        0x00007fc07d22f382: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@286 (line 236)
                    ││││││        │││  ││  ││                                                      ; implicit exception: dispatches to 0x00007fc07d230201
  0.06%    0.05%    ││││││        │││  ││  ││        0x00007fc07d22f387: test   %ebp,%ebp
                    ││││││        │││  ││  ││        0x00007fc07d22f389: jg     0x00007fc07d22f9f1  ;*ifle
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@287 (line 236)
  0.25%    0.08%    ││││││        │││  ││  ││        0x00007fc07d22f38f: mov    0x38(%rsp),%rdx
  0.01%    0.02%    ││││││        │││  ││  ││        0x00007fc07d22f394: mov    0x18(%rdx),%edi    ;*getfield prog
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@298 (line 239)
  0.05%    0.03%    ││││││        │││  ││  ││        0x00007fc07d22f397: mov    0x1c(%r12,%rdi,8),%ebp  ;*getfield startInst
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@301 (line 239)
                    ││││││        │││  ││  ││                                                      ; implicit exception: dispatches to 0x00007fc07d230211
  0.03%    0.08%    ││││││        │││  ││  ││        0x00007fc07d22f39c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc07d230221
  0.18%    0.12%    ││││││        │││  ││  ││        0x00007fc07d22f3a1: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    ││││││        │││  ││  ││        0x00007fc07d22f3a7: jne    0x00007fc07d22f737  ;*invokevirtual add
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.04%    ││││││        │││  ││  ││        0x00007fc07d22f3ad: mov    %ebx,0x14(%rsp)
  0.03%    0.03%    ││││││        │││  ││  ││        0x00007fc07d22f3b1: mov    %r8d,0x40(%rsp)    ;*ifle
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@287 (line 236)
  0.03%    0.00%    ││││││        │││  ││  ││        0x00007fc07d22f3b6: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
  0.27%    0.14%    ││││││        │││  ││  ││        0x00007fc07d22f3ba: mov    0x18(%rsp),%r11d
  0.05%    0.01%    ││││││        │││  ││  ││        0x00007fc07d22f3bf: shl    $0x3,%r11          ;*aload
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@136 (line 207)
  0.07%    0.00%    ││││││        │││  ││  ││        0x00007fc07d22f3c3: mov    %r11,0x20(%rsp)
  0.04%    0.00%    ││││││        │││  ││  ││        0x00007fc07d22f3c8: mov    %r10,%r8
  0.24%    0.14%    ││││││        │││  ││  ││        0x00007fc07d22f3cb: shl    $0x3,%r8           ;*getfield matchcap
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@283 (line 236)
  0.02%    0.02%    ││││││        │││  ││  ││        0x00007fc07d22f3cf: mov    %r11,%rdx
  0.08%    0.01%    ││││││        │││  ││  ││        0x00007fc07d22f3d2: mov    0x58(%rsp),%ecx
  0.03%    0.01%    ││││││        │││  ││  ││        0x00007fc07d22f3d6: xor    %edi,%edi
  0.24%    0.15%    ││││││        │││  ││  ││        0x00007fc07d22f3d8: mov    0x38(%rsp),%r10
  0.05%    0.02%    ││││││        │││  ││  ││        0x00007fc07d22f3dd: mov    %r10,(%rsp)
  0.04%    0.02%    ││││││        │││  ││  ││        0x00007fc07d22f3e1: xchg   %ax,%ax
  0.03%    0.02%    ││││││        │││  ││  ││        0x00007fc07d22f3e3: callq  0x00007fc07d046020  ; OopMap{[24]=NarrowOop [32]=Oop [56]=Oop [72]=Oop [80]=Oop off=1160}
                    ││││││        │││  ││  ││                                                      ;*invokevirtual add
                    ││││││        │││  ││  ││                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                    ││││││        │││  ││  ││                                                      ;   {optimized virtual_call}
  0.07%    0.07%    ││││││        │││  ││  ││        0x00007fc07d22f3e8: mov    0x34(%rsp),%r10d
  0.29%    0.30%    ││││││        │││  ││  ││        0x00007fc07d22f3ed: test   %r10d,%r10d
                    ││││││╭       │││  ││  ││        0x00007fc07d22f3f0: jl     0x00007fc07d22f480  ;*ifge
                    │││││││       │││  ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │││││││       │││  ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.07%    │││││││       │││  ││  ││        0x00007fc07d22f3f6: xor    %r8d,%r8d          ;*iload_0
                    │││││││       │││  ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │││││││       │││  ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.11%    │││││││       │││↗ ││  ││        0x00007fc07d22f3f9: cmp    $0xa,%r10d
                    │││││││╭      ││││ ││  ││        0x00007fc07d22f3fd: je     0x00007fc07d22f516  ;*iload_1
                    ││││││││      ││││ ││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    ││││││││      ││││ ││  ││                                                      ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.12%    ││││││││      ││││ ││  ││↗       0x00007fc07d22f403: mov    0x2c(%rsp),%r11d
  0.13%    0.17%    ││││││││      ││││ ││  │││       0x00007fc07d22f408: test   %r11d,%r11d
                    ││││││││╭     ││││ ││  │││       0x00007fc07d22f40b: jl     0x00007fc07d22f48b  ;*iload_1
                    │││││││││     ││││ ││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │││││││││     ││││ ││  │││                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.03%    │││││││││     ││││↗││  │││       0x00007fc07d22f40d: cmp    $0xa,%r11d
                    │││││││││╭    │││││││  │││       0x00007fc07d22f411: je     0x00007fc07d22f51f  ;*iload_0
                    ││││││││││    │││││││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││││││││││    │││││││  │││                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.10%    ││││││││││    │││││││  │││↗      0x00007fc07d22f417: mov    0x34(%rsp),%r9d
  0.12%    0.14%    ││││││││││    │││││││  ││││      0x00007fc07d22f41c: add    $0xffffffbf,%r9d
  0.15%    0.11%    ││││││││││    │││││││  ││││      0x00007fc07d22f420: cmp    $0x1a,%r9d
                    ││││││││││╭   │││││││  ││││      0x00007fc07d22f424: jb     0x00007fc07d22f436  ;*if_icmple
                    │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │││││││││││   │││││││  ││││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.04%    │││││││││││   │││││││  ││││      0x00007fc07d22f426: mov    0x34(%rsp),%ecx
  0.04%    0.09%    │││││││││││   │││││││  ││││      0x00007fc07d22f42a: add    $0xffffff9f,%ecx
  0.10%    0.08%    │││││││││││   │││││││  ││││      0x00007fc07d22f42d: cmp    $0x1a,%ecx
                    │││││││││││╭  │││││││  ││││      0x00007fc07d22f430: jae    0x00007fc07d22f528  ;*iconst_1
                    ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││││││││││││  │││││││  ││││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.11%    ││││││││││↘│  │││││││  ││││↗     0x00007fc07d22f436: mov    $0x1,%ebp          ;*ireturn
                    ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││││││││││ │  │││││││  │││││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.05%    ││││││││││ │  │││││││  │││││↗    0x00007fc07d22f43b: mov    0x2c(%rsp),%r9d
  0.05%    0.10%    ││││││││││ │  │││││││  ││││││    0x00007fc07d22f440: add    $0xffffffbf,%r9d
  0.11%    0.11%    ││││││││││ │  │││││││  ││││││    0x00007fc07d22f444: cmp    $0x1a,%r9d
                    ││││││││││ │╭ │││││││  ││││││    0x00007fc07d22f448: jb     0x00007fc07d22f45a  ;*if_icmple
                    ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││││ ││ │││││││  ││││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.13%    ││││││││││ ││ │││││││  ││││││    0x00007fc07d22f44a: mov    0x2c(%rsp),%ecx
  0.06%    0.09%    ││││││││││ ││ │││││││  ││││││    0x00007fc07d22f44e: add    $0xffffff9f,%ecx
  0.09%    0.07%    ││││││││││ ││ │││││││  ││││││    0x00007fc07d22f451: cmp    $0x1a,%ecx
                    ││││││││││ ││╭│││││││  ││││││    0x00007fc07d22f454: jae    0x00007fc07d22f54c  ;*iconst_1
                    ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││││ ││││││││││  ││││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.10%    ││││││││││ │↘││││││││  ││││││↗   0x00007fc07d22f45a: mov    $0x1,%r9d          ;*ireturn
                    ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││││││││││ │ ││││││││  │││││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.15%    ││││││││││ │ ││││││││  │││││││↗  0x00007fc07d22f460: cmp    %r9d,%ebp
                    ││││││││││ │ │╰││││││  ││││││││  0x00007fc07d22f463: je     0x00007fc07d22f180  ;*if_icmpeq
                    ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%    ││││││││││ │ │ ││││││  ││││││││  0x00007fc07d22f469: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    ││││││││││ │ │ ││││││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%    ││││││││││ │ │ ││││││  ││││││││  0x00007fc07d22f46d: mov    %r8d,0x5c(%rsp)
  0.07%    0.06%    ││││││││││ │ │ ╰│││││  ││││││││  0x00007fc07d22f472: jmpq   0x00007fc07d22f189
  0.00%             ││││↘│││││ │ │  │││││  ││││││││  0x00007fc07d22f477: mov    0x14(%rsp),%ebx
  0.01%    0.01%    ││││ │││││ │ │  ╰││││  ││││││││  0x00007fc07d22f47b: jmpq   0x00007fc07d22f359
                    ││││ │↘│││ │ │   ││││  ││││││││  0x00007fc07d22f480: mov    $0x5,%r8d
                    ││││ │ │││ │ │   ╰│││  ││││││││  0x00007fc07d22f486: jmpq   0x00007fc07d22f3f9
                    ││││ │ │↘│ │ │    │││  ││││││││  0x00007fc07d22f48b: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    ││││ │ │ │ │ │    │││  ││││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                    ││││ │ │ │ │ │    ╰││  ││││││││  0x00007fc07d22f48f: jmpq   0x00007fc07d22f40d
           0.00%    ││││ ↘ │ │ │ │     ││  ││││││││  0x00007fc07d22f494: mov    0x40(%rsp),%r8d
  0.00%             ││││   │ │ │ │     ╰│  ││││││││  0x00007fc07d22f499: jmpq   0x00007fc07d22f37d
                    ↘│││   │ │ │ │      │  ││││││││  0x00007fc07d22f49e: mov    $0x1,%eax
                     │││   │ │ │ │      ╰  ││││││││  0x00007fc07d22f4a3: jmpq   0x00007fc07d22f1a1
                     ↘││   │ │ │ │         ││││││││  0x00007fc07d22f4a8: mov    0x50(%rsp),%r10
  0.00%               ││   │ │ │ │         ││││││││  0x00007fc07d22f4ad: mov    %r10,0x18(%rsp)
           0.00%      ││   │ │ │ │         ││││││││  0x00007fc07d22f4b2: mov    0xc(%r10),%ebx     ;*getfield size
                      ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::freeQueue@1 (line 148)
                      ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │         ││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │         ││││││││                                                ; implicit exception: dispatches to 0x00007fc07d2302fd
                      ││   │ │ │ │         ││││││││  0x00007fc07d22f4b6: test   %ebx,%ebx
                      ││   │ │ │ │       ╭ ││││││││  0x00007fc07d22f4b8: jg     0x00007fc07d22f571  ;*getfield matched
                      ││   │ │ │ │       │ ││││││││                                                ; - com.google.re2j.Machine::match@449 (line 264)
                      ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4be: mov    0x18(%rsp),%r10
  0.00%               ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4c3: movzbl 0x18(%r10),%r11d
  0.00%    0.01%      ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4c8: test   %r11d,%r11d
                      ││   │ │ │ │       │╭││││││││  0x00007fc07d22f4cb: jne    0x00007fc07d22f4e6  ;*ifeq
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4cd: movb   $0x1,0x18(%r10)    ;*putfield empty
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4d2: mov    0x1c(%r10),%ebp    ;*getfield pcs
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4d6: mov    %r12,0x10(%r10)    ;*putfield pcsl
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4da: mov    %r12d,0xc(%r10)    ;*putfield size
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@445 (line 263)
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4de: test   %ebp,%ebp
                      ││   │ │ │ │       ││││││││││  0x00007fc07d22f4e0: jne    0x00007fc07d2300b5  ;*if_icmpne
                      ││   │ │ │ │       ││││││││││                                                ; - com.google.re2j.Machine::match@12 (line 179)
  0.00%    0.00%      ││   │ │ │ │       │↘││││││││  0x00007fc07d22f4e6: add    $0x80,%rsp
                      ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4ed: pop    %rbp
           0.00%      ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4ee: test   %eax,0x17fffb0c(%rip)        # 0x00007fc09522f000
                      ││   │ │ │ │       │ ││││││││                                                ;   {poll_return}
                      ││   │ │ │ │       │ ││││││││  0x00007fc07d22f4f4: retq   
  0.00%               ↘│   │ │ │ │       │ ││││││││  0x00007fc07d22f4f5: mov    0x30(%rsp),%ecx
  0.01%                │   │ │ │ │       │ ││││││││  0x00007fc07d22f4f9: mov    $0xffffffff,%r10d
                       │   │ │ │ │       │ ││││││││  0x00007fc07d22f4ff: mov    0x48(%rsp),%r8
                       │   │ │ │ │       │ ╰│││││││  0x00007fc07d22f504: jmpq   0x00007fc07d22f2c3
  0.02%    0.02%       ↘   │ │ │ │       │  │││││││  0x00007fc07d22f509: mov    $0xffffffff,%r10d
  0.00%    0.00%           │ │ │ │       │  │││││││  0x00007fc07d22f50f: xor    %ecx,%ecx
                           │ │ │ │       │  ╰││││││  0x00007fc07d22f511: jmpq   0x00007fc07d22f2c3
                           ↘ │ │ │       │   ││││││  0x00007fc07d22f516: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                             │ │ │       │   ││││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%                      │ │ │       │   ╰│││││  0x00007fc07d22f51a: jmpq   0x00007fc07d22f403
           0.00%             ↘ │ │       │    │││││  0x00007fc07d22f51f: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                               │ │       │    │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%               │ │       │    ╰││││  0x00007fc07d22f523: jmpq   0x00007fc07d22f417
  0.01%    0.01%               ↘ │       │     ││││  0x00007fc07d22f528: mov    0x34(%rsp),%r9d
  0.02%    0.01%                 │       │     ││││  0x00007fc07d22f52d: add    $0xffffffd0,%r9d
  0.02%    0.02%                 │       │     ││││  0x00007fc07d22f531: cmp    $0xa,%r9d
                                 │       │     ╰│││  0x00007fc07d22f535: jb     0x00007fc07d22f436  ;*if_icmple
                                 │       │      │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                                 │       │      │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                 │       │      │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.03%                 │       │      │││  0x00007fc07d22f53b: cmp    $0x5f,%r10d
                                 │       │      │││  0x00007fc07d22f53f: je     0x00007fc07d2300e5  ;*if_icmpne
                                 │       │      │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                 │       │      │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                 │       │      │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.03%                 │       │      │││  0x00007fc07d22f545: xor    %ebp,%ebp
  0.01%    0.01%                 │       │      ╰││  0x00007fc07d22f547: jmpq   0x00007fc07d22f43b
  0.06%    0.06%                 ↘       │       ││  0x00007fc07d22f54c: mov    0x2c(%rsp),%r9d
  0.21%    0.31%                         │       ││  0x00007fc07d22f551: add    $0xffffffd0,%r9d
  0.03%    0.04%                         │       ││  0x00007fc07d22f555: cmp    $0xa,%r9d
                                         │       ╰│  0x00007fc07d22f559: jb     0x00007fc07d22f45a  ;*if_icmple
                                         │        │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                                         │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                         │        │                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.08%                         │        │  0x00007fc07d22f55f: cmp    $0x5f,%r11d
                                         │        │  0x00007fc07d22f563: je     0x00007fc07d230125  ;*if_icmpne
                                         │        │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                         │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                         │        │                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%                         │        │  0x00007fc07d22f569: xor    %r9d,%r9d
  0.01%    0.02%                         │        ╰  0x00007fc07d22f56c: jmpq   0x00007fc07d22f460
                                         ↘           0x00007fc07d22f571: mov    0x38(%rsp),%r10
                                                     0x00007fc07d22f576: mov    0x24(%r10),%r11d   ;*getfield pool
                                                                                                   ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                                                                                                   ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                                                                                                   ; - com.google.re2j.Machine::match@445 (line 263)
                                                     0x00007fc07d22f57a: mov    0xc(%r12,%r11,8),%ecx  ;*arraylength
                                                                                                   ; - com.google.re2j.Machine::freeQueue@4 (line 156)
                                                                                                   ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                                                                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
....................................................................................................
 15.76%   16.50%  <total for region 3>

....[Hottest Regions]...............................................................................
 41.12%   40.05%         C2, level 4  com.google.re2j.Machine::step, version 496 (711 bytes) 
 32.42%   34.35%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 499 (1006 bytes) 
 15.76%   16.50%         C2, level 4  com.google.re2j.Machine::match, version 530 (1211 bytes) 
  6.30%    6.25%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 499 (133 bytes) 
  0.44%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 531 (96 bytes) 
  0.39%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 531 (72 bytes) 
  0.28%    0.27%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.14%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 531 (61 bytes) 
  0.12%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 531 (60 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (70 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 554 (28 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 554 (28 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 554 (0 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.06%                  C2, level 4  com.google.re2j.Pattern::find, version 554 (114 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.04%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 554 (0 bytes) 
  0.04%    0.03%         C2, level 4  java.util.Collections::shuffle, version 561 (8 bytes) 
  2.31%    2.14%  <...other 480 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 41.14%   40.06%         C2, level 4  com.google.re2j.Machine::step, version 496 
 38.72%   40.60%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 499 
 15.84%   16.54%         C2, level 4  com.google.re2j.Machine::match, version 530 
  1.44%    1.26%   [kernel.kallsyms]  [unknown] 
  1.20%    0.21%         C2, level 4  com.google.re2j.Machine::init, version 531 
  0.49%    0.17%         C2, level 4  com.google.re2j.Pattern::find, version 554 
  0.11%    0.05%         C2, level 4  java.util.Collections::shuffle, version 561 
  0.07%    0.07%      hsdis-amd64.so  [unknown] 
  0.07%    0.05%              [vdso]  [unknown] 
  0.04%    0.01%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 617 
  0.03%    0.02%        libc-2.26.so  __strlen_avx2 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%           libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.02%           libpthread-2.26.so  pthread_cond_destroy@@GLIBC_2.3.2 
  0.02%    0.01%           libjvm.so  _ZN13InstanceKlass17oop_push_contentsEP18PSPromotionManagerP7oopDesc 
  0.02%    0.01%           libjvm.so  _ZN7Monitor5IWaitEP6Threadl 
  0.63%    0.49%  <...other 86 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.57%   97.67%         C2, level 4
  1.44%    1.26%   [kernel.kallsyms]
  0.46%    0.53%           libjvm.so
  0.23%    0.34%        libc-2.26.so
  0.13%    0.06%  libpthread-2.26.so
  0.07%    0.07%      hsdis-amd64.so
  0.07%    0.05%              [vdso]
  0.02%    0.01%        runtime stub
  0.01%                  interpreter
  0.00%               perf-12982.map
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  9948.073 ± 11.573  ops/s
Re2jFindRegex.testExp2:·asm  thrpt            NaN             ---
