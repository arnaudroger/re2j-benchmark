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
# Warmup Iteration   1: 6629.662 ops/s
# Warmup Iteration   2: 14104.535 ops/s
# Warmup Iteration   3: 14131.149 ops/s
# Warmup Iteration   4: 13989.808 ops/s
# Warmup Iteration   5: 14017.823 ops/s
# Warmup Iteration   6: 14089.033 ops/s
# Warmup Iteration   7: 14102.425 ops/s
# Warmup Iteration   8: 14204.963 ops/s
# Warmup Iteration   9: 13979.602 ops/s
# Warmup Iteration  10: 14104.362 ops/s
# Warmup Iteration  11: 14135.897 ops/s
# Warmup Iteration  12: 14256.997 ops/s
# Warmup Iteration  13: 14259.377 ops/s
# Warmup Iteration  14: 14253.404 ops/s
# Warmup Iteration  15: 14224.808 ops/s
# Warmup Iteration  16: 14225.531 ops/s
# Warmup Iteration  17: 14181.715 ops/s
# Warmup Iteration  18: 14150.097 ops/s
# Warmup Iteration  19: 14244.987 ops/s
# Warmup Iteration  20: 14249.742 ops/s
Iteration   1: 14254.201 ops/s
Iteration   2: 14131.238 ops/s
Iteration   3: 14249.569 ops/s
Iteration   4: 14249.144 ops/s
Iteration   5: 14212.145 ops/s
Iteration   6: 14236.137 ops/s
Iteration   7: 14235.160 ops/s
Iteration   8: 14233.863 ops/s
Iteration   9: 14218.560 ops/s
Iteration  10: 14232.786 ops/s
Iteration  11: 14233.216 ops/s
Iteration  12: 14224.368 ops/s
Iteration  13: 14236.165 ops/s
Iteration  14: 12535.821 ops/s
Iteration  15: 14222.353 ops/s
Iteration  16: 14235.228 ops/s
Iteration  17: 14232.779 ops/s
Iteration  18: 14234.093 ops/s
Iteration  19: 14224.987 ops/s
Iteration  20: 13188.141 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  14090.998 ±(99.9%) 376.990 ops/s [Average]
  (min, avg, max) = (12535.821, 14090.998, 14254.201), stdev = 434.143
  CI (99.9%): [13714.007, 14467.988] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 195896 total address lines.
Perf output processed (skipped 23.328 seconds):
 Column 1: cycles (20421 events)
 Column 2: instructions (20403 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 493 (1403 bytes) 

                       0x00007fcab818114e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fcab8181152: xor    %edi,%edi
                       0x00007fcab8181154: vmovd  %xmm6,%r8d
                       0x00007fcab8181159: vmovd  %xmm0,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.07%    ↗  0x00007fcab818115d: mov    0xa4(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  1.08%    1.40%   ↗│  0x00007fcab8181165: test   %rdi,%rdi
                  ╭││  0x00007fcab8181168: je     0x00007fcab81811b5  ;*ifnull
                  │││                                                ; - com.google.re2j.Machine::step@220 (line 302)
  0.01%    0.00%  │││  0x00007fcab818116a: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │││                                                ; implicit exception: dispatches to 0x00007fcab8182869
  0.39%    0.53%  │││  0x00007fcab818116f: cmp    %ebp,%r8d
                  │││  0x00007fcab8181172: jge    0x00007fcab8181b6d  ;*if_icmplt
                  │││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.01%  │││  0x00007fcab8181178: mov    %r8d,%r9d
  1.04%    1.31%  │││  0x00007fcab818117b: inc    %r9d
                  │││  0x00007fcab818117e: mov    0x20(%rsp),%rcx
  0.43%    0.53%  │││  0x00007fcab8181183: mov    %r9d,0xc(%rcx)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.03%    0.00%  │││  0x00007fcab8181187: cmp    %ebp,%r8d
                  │││  0x00007fcab818118a: jae    0x00007fcab8181a11  ;*aastore
                  │││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.85%    1.34%  │││  0x00007fcab8181190: mov    %rdi,%rcx
                  │││  0x00007fcab8181193: shr    $0x3,%rcx
  0.41%    0.45%  │││  0x00007fcab8181197: lea    (%r12,%rdx,8),%r9  ;*getfield pool
                  │││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%           │││  0x00007fcab818119b: lea    0x10(%r9,%r8,4),%r8
  0.94%    1.07%  │││  0x00007fcab81811a0: mov    %ecx,(%r8)
  0.00%           │││  0x00007fcab81811a3: shr    $0x9,%r8
  0.46%    0.36%  │││  0x00007fcab81811a7: movabs $0x7fcab3990000,%r9
  0.02%    0.01%  │││  0x00007fcab81811b1: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.20%    1.47%  ↘││  0x00007fcab81811b5: mov    0x8(%rsp),%r8
                   ││  0x00007fcab81811ba: mov    0xc(%r8),%r8d      ;*getfield size
                   ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.50%    0.32%   ││  0x00007fcab81811be: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=481}
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.11%    0.11%   ││  0x00007fcab81811c1: test   %eax,0x15efde39(%rip)        # 0x00007fcace07f000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                   ││                                                ;   {poll}
  1.21%    1.34%   ││  0x00007fcab81811c7: cmp    %r8d,%r10d
                   ││  0x00007fcab81811ca: jge    0x00007fcab81817fe
           0.00%   ││  0x00007fcab81811d0: mov    %r11,%r13          ;*aload_1
                   ││                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.49%    0.19%   ││  0x00007fcab81811d3: mov    0x8(%rsp),%r11
  0.12%    0.21%   ││  0x00007fcab81811d8: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  1.25%    1.23%   ││  0x00007fcab81811dc: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fcab8182835
  1.66%    2.18%   ││  0x00007fcab81811e1: cmp    %r9d,%r10d
                   ││  0x00007fcab81811e4: jae    0x00007fcab818197f
  0.83%    0.62%   ││  0x00007fcab81811ea: shl    $0x3,%r11
  0.14%    0.12%   ││  0x00007fcab81811ee: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.87%    0.66%   ││  0x00007fcab81811f3: mov    0x10(%r12,%r14,8),%r11d  ;*getfield inst
                   ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   ││                                                ; implicit exception: dispatches to 0x00007fcab8182849
  3.71%    3.24%   ││  0x00007fcab81811f8: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                   ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   ││                                                ; implicit exception: dispatches to 0x00007fcab8182859
  6.46%    6.71%   ││  0x00007fcab81811fd: cmp    $0x6,%ebp
  1.53%    1.75%   ││  0x00007fcab8181200: je     0x00007fcab8181a6d  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.86%    1.80%   ││  0x00007fcab8181206: mov    0x8(%r12,%r11,8),%r9d
                   ││  0x00007fcab818120b: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007fcab8181212: jne    0x00007fcab81819c5  ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.00%    0.01%   ││  0x00007fcab8181218: mov    0x20(%rsp),%r8
                   ││  0x00007fcab818121d: mov    0xc(%r8),%r8d      ;*getfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.76%    1.53%   ││  0x00007fcab8181221: mov    0x20(%rsp),%r9
                   ││  0x00007fcab8181226: mov    0x24(%r9),%edx     ;*getfield pool
                   ││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%            ││  0x00007fcab818122a: shl    $0x3,%r11          ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
                   ││  0x00007fcab818122e: mov    0xc(%r11),%ebp     ;*getfield op
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.94%    1.64%   ││  0x00007fcab8181232: lea    (%r12,%r14,8),%rdi  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                   ││  0x00007fcab8181236: cmp    $0xa,%ebp
                   ││  0x00007fcab8181239: jne    0x00007fcab8181792  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.02%    0.02%   ││  0x00007fcab818123f: mov    0x1c(%r11),%ecx    ;*getfield outInst
                   ││                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.03%    0.02%   ││  0x00007fcab8181243: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                   ││                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.44%    0.05%   ││  0x00007fcab8181248: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007fcab8182879
  0.44%    0.02%   ││  0x00007fcab818124d: lea    (%r12,%rcx,8),%r9
  0.01%    0.01%   ││  0x00007fcab8181251: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││  0x00007fcab8181258: jne    0x00007fcab8181835  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.53%    0.15%   ││  0x00007fcab818125e: mov    0x18(%r9),%ebx     ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%            ││  0x00007fcab8181262: mov    %r13,%r11
                   ││  0x00007fcab8181265: mov    0x10(%r13),%rsi    ;*getfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││                                                ; implicit exception: dispatches to 0x00007fcab818289d
                   ││  0x00007fcab8181269: cmp    $0x40,%ebx
                   ││  0x00007fcab818126c: jg     0x00007fcab8181d8d  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.47%    0.52%   ││  0x00007fcab8181272: mov    %ebx,%ecx
  0.00%            ││  0x00007fcab8181274: mov    $0x1,%r13d
                   ││  0x00007fcab818127a: shl    %cl,%r13           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.85%    0.01%   ││  0x00007fcab818127d: mov    %rsi,%rcx
                   ││  0x00007fcab8181280: and    %r13,%rcx
                   ││  0x00007fcab8181283: test   %rcx,%rcx
                   ╰│  0x00007fcab8181286: jne    0x00007fcab8181165  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%             │  0x00007fcab818128c: cmp    $0x40,%ebx
                    │  0x00007fcab818128f: jge    0x00007fcab8181dd5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%             │  0x00007fcab8181295: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab8181299: mov    0x1c(%r9),%ebp     ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab818129d: or     %rsi,%r13          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.00%    │  0x00007fcab81812a0: vmovq  %r13,%xmm3
  0.26%             │  0x00007fcab81812a5: mov    %r13,0x10(%r11)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007fcab81812a9: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fcab81828b1
  0.55%    0.12%    │  0x00007fcab81812ae: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fcab81812b4: jne    0x00007fcab8181af1
  0.50%    0.00%    │  0x00007fcab81812ba: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab81812be: mov    0x18(%r13),%ebx    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.51%    0.02%    │  0x00007fcab81812c2: cmp    $0x40,%ebx
                    │  0x00007fcab81812c5: jg     0x00007fcab8181e1d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%             │  0x00007fcab81812cb: mov    $0x1,%esi
  0.04%             │  0x00007fcab81812d0: mov    %ebx,%ecx
                    │  0x00007fcab81812d2: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.88%    0.23%    │  0x00007fcab81812d5: vmovq  %xmm3,%rcx
                    │  0x00007fcab81812da: and    %rsi,%rcx          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007fcab81812dd: test   %rcx,%rcx
                    │  0x00007fcab81812e0: jne    0x00007fcab818190a  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.18%    │  0x00007fcab81812e6: vmovd  %ebx,%xmm2
  0.35%    0.27%    │  0x00007fcab81812ea: mov    %r13,%rbx
  0.00%    0.01%    │  0x00007fcab81812ed: vmovq  %r9,%xmm1
  0.00%    0.00%    │  0x00007fcab81812f2: vmovd  %edx,%xmm0
  0.14%    0.15%    │  0x00007fcab81812f6: mov    %r8d,%r13d
  0.30%    0.36%    │  0x00007fcab81812f9: mov    %r10d,0xa4(%rsp)
  0.00%             │  0x00007fcab8181301: mov    %r11,%r8
                    │  0x00007fcab8181304: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.14%    │  0x00007fcab8181306: test   %rcx,%rcx
                    │  0x00007fcab8181309: jne    0x00007fcab8181e69  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.40%    │  0x00007fcab818130f: vmovd  %xmm2,%r9d
           0.00%    │  0x00007fcab8181314: cmp    $0x40,%r9d
                    │  0x00007fcab8181318: jge    0x00007fcab8181ea5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab818131e: vmovq  %xmm3,%rdx
  0.11%    0.13%    │  0x00007fcab8181323: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.31%    │  0x00007fcab8181326: mov    %r8,%rcx
           0.01%    │  0x00007fcab8181329: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007fcab818132d: mov    %rdi,%r10
  0.13%    0.11%    │  0x00007fcab8181330: mov    %rbx,%r11
  0.29%    0.19%    │  0x00007fcab8181333: shr    $0x3,%r11
  0.00%    0.00%    │  0x00007fcab8181337: mov    %r14d,%r8d
                    │  0x00007fcab818133a: mov    %r11d,0x10(%r12,%r14,8)
  0.21%    0.11%    │  0x00007fcab818133f: shr    $0x9,%r10
  0.33%    0.19%    │  0x00007fcab8181343: movabs $0x7fcab3990000,%r11
           0.00%    │  0x00007fcab818134d: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007fcab8181351: mov    0xc(%r12,%rax,8),%ebx  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007fcab81828d5
  0.15%    0.21%    │  0x00007fcab8181356: test   %ebx,%ebx
                    │  0x00007fcab8181358: jg     0x00007fcab8181eed  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.25%    │  0x00007fcab818135e: mov    %ebx,0xac(%rsp)
                    │  0x00007fcab8181365: vmovd  %eax,%xmm3
  0.01%             │  0x00007fcab8181369: mov    %rcx,%r14
  0.13%    0.12%    │  0x00007fcab818136c: mov    0xc(%rcx),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.23%    │  0x00007fcab8181370: mov    %r10d,0x28(%rsp)
                    │  0x00007fcab8181375: mov    0x20(%rcx),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab8181379: vmovd  %r10d,%xmm2
  0.12%    0.11%    │  0x00007fcab818137e: mov    0x28(%rsp),%r10d
  0.25%    0.25%    │  0x00007fcab8181383: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007fcab8181386: vmovd  %r10d,%xmm4
  0.00%    0.01%    │  0x00007fcab818138b: mov    %r10d,0xc(%rcx)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.21%    │  0x00007fcab818138f: vmovd  %xmm2,%r10d
  0.30%    0.30%    │  0x00007fcab8181394: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007fcab81828e5
           0.01%    │  0x00007fcab8181399: mov    0x28(%rsp),%r10d
  0.00%             │  0x00007fcab818139e: cmp    %r9d,%r10d
                    │  0x00007fcab81813a1: jae    0x00007fcab8181ab5  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.12%    │  0x00007fcab81813a7: vmovq  %xmm1,%r10
  0.34%    0.30%    │  0x00007fcab81813ac: mov    0x20(%r10),%r10d   ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007fcab81813b0: vmovd  %r10d,%xmm1
                    │  0x00007fcab81813b5: vmovd  %xmm2,%r11d
  0.15%    0.09%    │  0x00007fcab81813ba: shl    $0x3,%r11          ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.17%    │  0x00007fcab81813be: mov    0x28(%rsp),%r10d
  0.00%    0.01%    │  0x00007fcab81813c3: lea    0x10(%r11,%r10,4),%r10
  0.00%             │  0x00007fcab81813c8: mov    %r8d,(%r10)
  0.23%    0.16%    │  0x00007fcab81813cb: shr    $0x9,%r10
  0.24%    0.09%    │  0x00007fcab81813cf: movabs $0x7fcab3990000,%r8
                    │  0x00007fcab81813d9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.07%    │  0x00007fcab81813dd: vmovd  %xmm1,%r10d
  0.12%    0.03%    │  0x00007fcab81813e2: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007fcab8182901
  0.25%    0.09%    │  0x00007fcab81813e7: movslq 0x28(%rsp),%r10
                    │  0x00007fcab81813ec: lea    (%r11,%r10,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.09%    │  0x00007fcab81813f0: mov    %rdi,%rbx
  0.12%    0.03%    │  0x00007fcab81813f3: add    $0x14,%rbx         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.11%    │  0x00007fcab81813f7: mov    %r13d,%r10d
                    │  0x00007fcab81813fa: dec    %r10d              ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.07%    │  0x00007fcab81813fd: vmovd  %r10d,%xmm6
  0.14%    0.10%    │  0x00007fcab8181402: vmovd  %xmm1,%r10d
  0.25%    0.25%    │  0x00007fcab8181407: shl    $0x3,%r10
                    │  0x00007fcab818140b: mov    0x28(%rsp),%r8d
  0.12%    0.06%    │  0x00007fcab8181410: add    $0x2,%r8d          ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.02%    │  0x00007fcab8181414: cmp    $0xf8019886,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007fcab818141a: jne    0x00007fcab8181074  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%             │  0x00007fcab8181420: mov    %r10,%rax
                    │  0x00007fcab8181423: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.16%    │  0x00007fcab8181427: mov    %r10d,%ecx
  0.10%    0.12%    │  0x00007fcab818142a: cmp    $0x40,%r10d
                    │  0x00007fcab818142e: jg     0x00007fcab8182189  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.39%    │  0x00007fcab8181434: mov    $0x1,%esi
  0.00%             │  0x00007fcab8181439: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.56%    │  0x00007fcab818143c: mov    %rdx,%r10
                    │  0x00007fcab818143f: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.13%    │  0x00007fcab8181442: test   %r10,%r10
                    │  0x00007fcab8181445: jne    0x00007fcab8181932  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.13%    │  0x00007fcab818144b: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.27%    │  0x00007fcab818144d: test   %r10,%r10
                    │  0x00007fcab8181450: jne    0x00007fcab81821c5  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007fcab8181456: mov    %ecx,%r10d
  0.11%    0.15%    │  0x00007fcab8181459: cmp    $0x40,%r10d
                    │  0x00007fcab818145d: jge    0x00007fcab81821f1  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.18%    │  0x00007fcab8181463: mov    %rax,%r10
  0.24%    0.38%    │  0x00007fcab8181466: mov    0x14(%r10),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab818146a: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.11%    │  0x00007fcab818146d: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.15%    │  0x00007fcab8181471: cmp    0xac(%rsp),%ebp
                    │  0x00007fcab8181478: jl     0x00007fcab818227d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.32%    │  0x00007fcab818147e: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007fcab8181482: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcab818293d
  0.17%    0.12%    │  0x00007fcab8181487: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    │  0x00007fcab818148d: jne    0x00007fcab8181d31
  0.15%    0.11%    │  0x00007fcab8181493: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.23%    │  0x00007fcab8181497: vmovq  %r10,%xmm1
                    │  0x00007fcab818149c: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.10%    │  0x00007fcab81814a0: mov    %r10d,%eax
  0.13%    0.15%    │  0x00007fcab81814a3: cmp    $0x40,%r10d
                    │  0x00007fcab81814a7: jg     0x00007fcab818232d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.27%    │  0x00007fcab81814ad: mov    $0x1,%esi
                    │  0x00007fcab81814b2: mov    %r10d,%ecx
  0.10%    0.16%    │  0x00007fcab81814b5: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.48%    │  0x00007fcab81814b8: mov    %rdx,%r10
  0.11%    0.09%    │  0x00007fcab81814bb: and    %rsi,%r10
  0.13%    0.11%    │  0x00007fcab81814be: test   %r10,%r10
                    │  0x00007fcab81814c1: jne    0x00007fcab8181946  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.18%    │  0x00007fcab81814c7: mov    %ecx,%r10d
  0.06%    0.04%    │  0x00007fcab81814ca: cmp    $0x40,%r10d
                    │  0x00007fcab81814ce: jge    0x00007fcab8182369  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.06%    │  0x00007fcab81814d4: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.16%    │  0x00007fcab81814d7: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.30%    │  0x00007fcab81814db: vmovq  %xmm1,%r10
  0.04%    0.05%    │  0x00007fcab81814e0: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.09%    │  0x00007fcab81814e4: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcab818296d
  0.24%    0.16%    │  0x00007fcab81814e9: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fcab81814f0: jne    0x00007fcab8181d59
  0.32%    0.44%    │  0x00007fcab81814f6: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fcab81814fa: vmovq  %r10,%xmm5
  0.10%    0.05%    │  0x00007fcab81814ff: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.16%    │  0x00007fcab8181503: mov    %r10d,%eax
  0.34%    0.38%    │  0x00007fcab8181506: cmp    $0x40,%r10d
                    │  0x00007fcab818150a: jg     0x00007fcab81823a5  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │  0x00007fcab8181510: mov    $0x1,%esi
  0.12%    0.02%    │  0x00007fcab8181515: mov    %r10d,%ecx
  0.10%    0.09%    │  0x00007fcab8181518: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.42%    0.45%    │  0x00007fcab818151b: mov    %rdx,%r10
  0.08%    0.07%    │  0x00007fcab818151e: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.32%    │  0x00007fcab8181521: test   %r10,%r10
                    │  0x00007fcab8181524: jne    0x00007fcab8181957  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%    │  0x00007fcab818152a: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.11%    │  0x00007fcab818152c: test   %r10,%r10
                    │  0x00007fcab818152f: jne    0x00007fcab81823e9  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.11%    │  0x00007fcab8181535: mov    %ecx,%r10d
  0.23%    0.24%    │  0x00007fcab8181538: cmp    $0x40,%r10d
                    │  0x00007fcab818153c: jge    0x00007fcab8182421  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007fcab8181542: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.13%    │  0x00007fcab8181545: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.10%    │  0x00007fcab8181549: test   %r13d,%r13d
                    │  0x00007fcab818154c: jle    0x00007fcab81820ed  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.25%    │  0x00007fcab8181552: mov    0x20(%rsp),%rcx
  0.00%    0.00%    │  0x00007fcab8181557: vmovd  %xmm6,%r10d
  0.12%    0.09%    │  0x00007fcab818155c: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.13%    │  0x00007fcab8181560: vmovd  %xmm0,%r10d
  0.25%    0.25%    │  0x00007fcab8181565: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fcab8182989
           0.01%    │  0x00007fcab818156a: vmovd  %xmm6,%esi
  0.10%    0.14%    │  0x00007fcab818156e: cmp    %r10d,%esi
                    │  0x00007fcab8181571: jae    0x00007fcab8181c65
  0.09%    0.08%    │  0x00007fcab8181577: vmovd  %xmm0,%esi
  0.23%    0.35%    │  0x00007fcab818157b: lea    (%r12,%rsi,8),%rax
  0.00%    0.00%    │  0x00007fcab818157f: mov    0xc(%rax,%r13,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.14%    │  0x00007fcab8181584: test   %ebp,%ebp
                    │  0x00007fcab8181586: je     0x00007fcab8181cb1  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.11%    │  0x00007fcab818158c: mov    %r8d,0xc(%r14)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.25%    │  0x00007fcab8181590: lea    (%r12,%rbp,8),%rcx
           0.00%    │  0x00007fcab8181594: vmovq  %xmm5,%rsi
  0.12%    0.12%    │  0x00007fcab8181599: shr    $0x3,%rsi
  0.10%    0.14%    │  0x00007fcab818159d: mov    %esi,0x10(%r12,%rbp,8)
  0.35%    0.50%    │  0x00007fcab81815a2: shr    $0x9,%rcx
  0.00%             │  0x00007fcab81815a6: movabs $0x7fcab3990000,%rsi
  0.08%    0.21%    │  0x00007fcab81815b0: mov    %r12b,(%rsi,%rcx,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.30%    │  0x00007fcab81815b4: cmp    %r9d,%r8d
                    │  0x00007fcab81815b7: jae    0x00007fcab8181cc5
  0.28%    0.29%    │  0x00007fcab81815bd: mov    %ebp,(%rbx)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007fcab81815bf: vmovq  %xmm1,%r8
  0.13%    0.13%    │  0x00007fcab81815c4: mov    0x20(%r8),%r8d     ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.23%    │  0x00007fcab81815c8: mov    %r8d,%ecx
  0.21%    0.25%    │  0x00007fcab81815cb: mov    %rbx,%r8
           0.00%    │  0x00007fcab81815ce: shr    $0x9,%r8
  0.09%    0.15%    │  0x00007fcab81815d2: movabs $0x7fcab3990000,%r9
  0.16%    0.20%    │  0x00007fcab81815dc: mov    %r12b,(%r9,%r8,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.36%    │  0x00007fcab81815e0: mov    %ecx,%r8d
                    │  0x00007fcab81815e3: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007fcab818299d
  0.10%    0.15%    │  0x00007fcab81815e8: shl    $0x3,%r8
  0.12%    0.17%    │  0x00007fcab81815ec: cmp    $0xf8019886,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007fcab81815f3: je     0x00007fcab81816dd
  0.22%    0.23%    │  0x00007fcab81815f9: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fcab8181600: jne    0x00007fcab8182131  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.15%    │  0x00007fcab8181606: mov    %r8,%rbx
  0.09%    0.21%    │  0x00007fcab8181609: mov    0x18(%r8),%r8d     ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.24%    │  0x00007fcab818160d: mov    %r8d,%ecx
  0.01%    0.00%    │  0x00007fcab8181610: cmp    $0x40,%r8d
                    │  0x00007fcab8181614: jg     0x00007fcab8182555  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.11%    │  0x00007fcab818161a: mov    $0x1,%r9d
  0.07%    0.08%    │  0x00007fcab8181620: shl    %cl,%r9            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.33%    │  0x00007fcab8181623: mov    %rdx,%r8
  0.13%    0.22%    │  0x00007fcab8181626: and    %r9,%r8            ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.33%    │  0x00007fcab8181629: test   %r8,%r8
                    │  0x00007fcab818162c: jne    0x00007fcab818196b  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │  0x00007fcab8181632: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.11%    │  0x00007fcab8181634: test   %r8,%r8
                    │  0x00007fcab8181637: jne    0x00007fcab81825c5  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.15%    │  0x00007fcab818163d: mov    %ecx,%r8d
  0.24%    0.20%    │  0x00007fcab8181640: cmp    $0x40,%r8d
                    │  0x00007fcab8181644: jge    0x00007fcab8182605  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │  0x00007fcab818164a: or     %r9,%rdx
  0.11%    0.12%    │  0x00007fcab818164d: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.13%    │  0x00007fcab8181651: vmovd  %xmm6,%r8d
  0.23%    0.36%    │  0x00007fcab8181656: test   %r8d,%r8d
                    │  0x00007fcab8181659: jle    0x00007fcab8182465  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.02%    │  0x00007fcab818165f: mov    %r13d,%r8d
  0.07%    0.06%    │  0x00007fcab8181662: add    $0xfffffffe,%r8d   ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.18%    │  0x00007fcab8181666: mov    0x20(%rsp),%r9
  0.27%    0.33%    │  0x00007fcab818166b: mov    %r8d,0xc(%r9)      ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007fcab818166f: cmp    %r10d,%r8d
                    │  0x00007fcab8181672: jae    0x00007fcab8182031
  0.14%    0.02%    │  0x00007fcab8181678: mov    0x10(%rax,%r8,4),%r9d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.15%    │  0x00007fcab818167d: test   %r9d,%r9d
  0.20%    0.16%    │  0x00007fcab8181680: je     0x00007fcab818208d  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007fcab8181686: add    $0x18,%rdi
  0.10%    0.14%    │  0x00007fcab818168a: mov    %r9d,(%rdi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.21%    │  0x00007fcab818168d: lea    (%r12,%r9,8),%r10
  0.16%    0.38%    │  0x00007fcab8181691: mov    %rdi,%r11
  0.02%    0.01%    │  0x00007fcab8181694: shr    $0x9,%r11
  0.11%    0.20%    │  0x00007fcab8181698: shr    $0x9,%r10
  0.15%    0.21%    │  0x00007fcab818169c: movabs $0x7fcab3990000,%rcx
  0.21%    0.36%    │  0x00007fcab81816a6: mov    %r12b,(%rcx,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.17%    │  0x00007fcab81816aa: movabs $0x7fcab3990000,%r10
  0.12%    0.12%    │  0x00007fcab81816b4: mov    %r12b,(%r10,%r11,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.17%    │  0x00007fcab81816b8: mov    0x28(%rsp),%ecx
  0.21%    0.21%    │  0x00007fcab81816bc: add    $0x3,%ecx
  0.03%    0.08%    │  0x00007fcab81816bf: mov    %r14,%r11
  0.12%    0.08%    │  0x00007fcab81816c2: mov    %ecx,0xc(%r11)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.16%    │  0x00007fcab81816c6: mov    %rbx,%rcx
  0.20%    0.24%    │  0x00007fcab81816c9: shr    $0x3,%rcx
  0.04%    0.09%    │  0x00007fcab81816cd: mov    %ecx,0x10(%r12,%r9,8)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.11%    │  0x00007fcab81816d2: xor    %edi,%edi
  0.10%    0.18%    │  0x00007fcab81816d4: vmovd  %xmm0,%edx
  0.15%    0.23%    ╰  0x00007fcab81816d8: jmpq   0x00007fcab818115d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fcab81816dd: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
....................................................................................................
 62.72%   60.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 539 (1045 bytes) 

                               0x00007fcab81a264e: jl     0x00007fcab81a2fb4  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007fcab81a2654: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007fcab81a265a: cmp    $0xa,%edi
                               0x00007fcab81a265d: je     0x00007fcab81a2fe4  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%                        0x00007fcab81a2663: mov    0x40(%rsp),%r11
                               0x00007fcab81a2668: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                             ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
                               0x00007fcab81a266c: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                             ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
                               0x00007fcab81a2670: mov    %edi,%r11d
                               0x00007fcab81a2673: add    $0xffffffbf,%r11d
  0.00%    0.00%               0x00007fcab81a2677: vmovd  %xmm1,%ecx
                               0x00007fcab81a267b: shl    $0x3,%rcx          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 188)
                               0x00007fcab81a267f: cmp    $0x1a,%r11d
                  ╭            0x00007fcab81a2683: jb     0x00007fcab81a2693  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                  │            0x00007fcab81a2685: mov    %edi,%edx
                  │            0x00007fcab81a2687: add    $0xffffff9f,%edx
                  │            0x00007fcab81a268a: cmp    $0x1a,%edx
                  │            0x00007fcab81a268d: jae    0x00007fcab81a2fed  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                  ↘            0x00007fcab81a2693: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%               0x00007fcab81a2697: mov    %rcx,0x20(%rsp)
  0.03%    0.00%               0x00007fcab81a269c: xor    %r11d,%r11d
                               0x00007fcab81a269f: xor    %ecx,%ecx
                               0x00007fcab81a26a1: mov    %ecx,0x60(%rsp)
                   ╭           0x00007fcab81a26a5: jmpq   0x00007fcab81a282f
  0.02%    0.07%   │    ↗      0x00007fcab81a26aa: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.04%   │    │      0x00007fcab81a26ae: mov    %r9d,0x4c(%rsp)    ;*iload_2
                   │    │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.18%   │    │↗     0x00007fcab81a26b3: mov    0x60(%rsp),%r11d
  0.09%    0.10%   │    ││     0x00007fcab81a26b8: cmp    0x14(%rsp),%r11d
                   │    ││     0x00007fcab81a26bd: je     0x00007fcab81a2df7  ;*if_icmpne
                   │    ││                                                   ; - com.google.re2j.Machine::match@348 (line 242)
  0.13%    0.15%   │    ││     0x00007fcab81a26c3: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@356 (line 242)
  0.14%    0.17%   │    ││     0x00007fcab81a26c5: mov    %rax,-0x8(%rsp)
  0.27%    0.32%   │    ││     0x00007fcab81a26ca: mov    0x60(%rsp),%eax
  0.08%    0.15%   │    ││     0x00007fcab81a26ce: mov    %eax,0x38(%rsp)
  0.11%    0.10%   │    ││     0x00007fcab81a26d2: mov    -0x8(%rsp),%rax
  0.64%    0.44%   │    ││     0x00007fcab81a26d7: mov    %r10d,0x2c(%rsp)   ;*invokevirtual endPos
                   │    ││                                                   ; - com.google.re2j.Machine::match@345 (line 242)
  0.14%    0.18%   │    ││     0x00007fcab81a26dc: add    0x28(%rsp),%r11d   ;*iadd
                   │    ││                                                   ; - com.google.re2j.Machine::match@337 (line 242)
  0.13%    0.15%   │    ││     0x00007fcab81a26e1: mov    %r11d,0x60(%rsp)
  0.17%    0.05%   │    ││     0x00007fcab81a26e6: mov    0x40(%rsp),%rsi
  0.12%    0.23%   │    ││     0x00007fcab81a26eb: mov    0x18(%rsp),%rdx
  0.09%    0.15%   │    ││     0x00007fcab81a26f0: mov    0x20(%rsp),%rcx
  0.11%    0.07%   │    ││     0x00007fcab81a26f5: mov    0x38(%rsp),%r8d
  0.23%    0.10%   │    ││     0x00007fcab81a26fa: mov    %r11d,%r9d
  0.18%    0.18%   │    ││     0x00007fcab81a26fd: mov    0x4c(%rsp),%r11d
  0.09%    0.14%   │    ││     0x00007fcab81a2702: mov    %r11d,(%rsp)
  0.14%    0.11%   │    ││     0x00007fcab81a2706: mov    0x3c(%rsp),%r10d
  0.08%    0.11%   │    ││     0x00007fcab81a270b: mov    %r10d,0x8(%rsp)
  0.19%    0.17%   │    ││     0x00007fcab81a2710: mov    %ebx,0x10(%rsp)
  0.14%    0.14%   │    ││     0x00007fcab81a2714: data16 xchg %ax,%ax
  0.11%    0.12%   │    ││     0x00007fcab81a2717: callq  0x00007fcab7fa8020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=668}
                   │    ││                                                   ;*invokespecial step
                   │    ││                                                   ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                   ;   {optimized virtual_call}
           0.01%   │    ││     0x00007fcab81a271c: mov    0x40(%rsp),%r10
  0.00%            │    ││     0x00007fcab81a2721: mov    0x24(%r10),%r13d   ;*getfield pool
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                   ; - com.google.re2j.Machine::match@445 (line 263)
  0.43%    0.43%   │    ││     0x00007fcab81a2725: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                   ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                   ; - com.google.re2j.Machine::match@445 (line 263)
           0.00%   │    ││     0x00007fcab81a2729: mov    0x28(%rsp),%ecx
                   │    ││     0x00007fcab81a272d: test   %ecx,%ecx
                   │    ││     0x00007fcab81a272f: je     0x00007fcab81a2d3d  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@361 (line 243)
                   │    ││     0x00007fcab81a2735: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                   ; - com.google.re2j.Machine::match@368 (line 246)
  0.41%    0.51%   │    ││     0x00007fcab81a2739: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │    ││                                                   ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                   ; implicit exception: dispatches to 0x00007fcab81a4459
  0.04%    0.06%   │    ││     0x00007fcab81a273e: test   %ebp,%ebp
  0.02%            │    ││     0x00007fcab81a2740: jne    0x00007fcab81a3335  ;*ifne
                   │    ││                                                   ; - com.google.re2j.Machine::match@372 (line 246)
  0.02%    0.01%   │    ││     0x00007fcab81a2746: movzbl 0x10(%r10),%r11d   ;*getfield matched
                   │    ││                                                   ; - com.google.re2j.Machine::match@376 (line 246)
  0.46%    0.40%   │    ││     0x00007fcab81a274b: test   %r11d,%r11d
                   │    ││     0x00007fcab81a274e: jne    0x00007fcab81a354d  ;*ifeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@379 (line 246)
                   │    ││     0x00007fcab81a2754: mov    0x50(%rsp),%r10
                   │    ││     0x00007fcab81a2759: mov    0x10(%r10),%r10d   ;*getfield end
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.04%   │    ││     0x00007fcab81a275d: mov    %r10d,0x14(%rsp)
  0.40%    0.23%   │    ││     0x00007fcab81a2762: mov    0x50(%rsp),%r10
  0.00%            │    ││     0x00007fcab81a2767: mov    0xc(%r10),%ebx     ;*getfield start
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │    ││     0x00007fcab81a276b: mov    0x14(%r10),%r9d    ;*getfield str
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.06%   │    ││     0x00007fcab81a276f: mov    0x2c(%rsp),%ecx
  0.45%    0.62%   │    ││     0x00007fcab81a2773: cmp    $0xffffffff,%ecx
                   │    ││     0x00007fcab81a2776: je     0x00007fcab81a2e01  ;*if_icmpeq
                   │    ││                                                   ; - com.google.re2j.Machine::match@401 (line 254)
           0.00%   │    ││     0x00007fcab81a277c: mov    0x30(%rsp),%ecx
  0.00%            │    ││     0x00007fcab81a2780: add    0x60(%rsp),%ecx
  0.04%    0.05%   │    ││     0x00007fcab81a2784: add    %ebx,%ecx          ;*iadd
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.39%    0.43%   │    ││     0x00007fcab81a2786: cmp    0x14(%rsp),%ecx
                   │    ││     0x00007fcab81a278a: jge    0x00007fcab81a2d31  ;*if_icmpge
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││     0x00007fcab81a2790: mov    0x8(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007fcab81a4469
           0.01%   │    ││     0x00007fcab81a2795: cmp    $0xf80002da,%edi   ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││     0x00007fcab81a279b: jne    0x00007fcab81a31dd
  0.02%    0.06%   │    ││     0x00007fcab81a27a1: lea    (%r12,%r9,8),%rdi  ;*invokeinterface charAt
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.74%   │    ││     0x00007fcab81a27a5: test   %ecx,%ecx
                   │    ││     0x00007fcab81a27a7: jl     0x00007fcab81a3389  ;*iflt
                   │    ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││     0x00007fcab81a27ad: mov    0xc(%rdi),%r10d    ;*getfield value
                   │    ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││     0x00007fcab81a27b1: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │    ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                   ; implicit exception: dispatches to 0x00007fcab81a447d
  0.27%    0.39%   │    ││     0x00007fcab81a27b6: cmp    %ebp,%ecx
                   │    ││     0x00007fcab81a27b8: jge    0x00007fcab81a35a1  ;*if_icmplt
                   │    ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.48%    0.49%   │    ││     0x00007fcab81a27be: cmp    %ebp,%ecx
                   │    ││     0x00007fcab81a27c0: jae    0x00007fcab81a3105
  0.21%    0.30%   │    ││     0x00007fcab81a27c6: shl    $0x3,%r10
  0.01%    0.00%   │    ││     0x00007fcab81a27ca: movzwl 0x10(%r10,%rcx,2),%eax  ;*caload
                   │    ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.25%    0.42%   │    ││     0x00007fcab81a27d0: cmp    $0xd800,%eax
                   │    ││     0x00007fcab81a27d6: jge    0x00007fcab81a3619  ;*if_icmplt
                   │    ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.07%    0.13%   │    ││     0x00007fcab81a27dc: shl    $0x3,%eax          ;*ishl
                   │    ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                   ; - com.google.re2j.Machine::match@409 (line 255)
  0.15%    0.23%   │    ││     0x00007fcab81a27df: mov    %eax,%edx
  0.01%    0.00%   │    ││     0x00007fcab81a27e1: or     $0x1,%edx
  0.36%    0.59%   │    ││     0x00007fcab81a27e4: and    $0x7,%eax
  0.01%    0.01%   │    ││     0x00007fcab81a27e7: sar    $0x3,%edx          ;*ishr
                   │    ││                                                   ; - com.google.re2j.Machine::match@417 (line 256)
  0.25%    0.31%   │    ││     0x00007fcab81a27ea: or     $0x1,%eax          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=877}
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@439 (line 262)
           0.02%   │    ││     0x00007fcab81a27ed: test   %eax,0x15edc80d(%rip)        # 0x00007fcace07f000
                   │    ││                                                   ;*goto
                   │    ││                                                   ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                   ;   {poll}
  0.37%    0.52%   │    ││     0x00007fcab81a27f3: mov    0x40(%rsp),%r10
  0.01%    0.00%   │    ││     0x00007fcab81a27f8: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                   ; - com.google.re2j.Machine::match@169 (line 216)
  0.05%    0.04%   │    ││     0x00007fcab81a27fc: mov    0x20(%rsp),%r10
  0.02%    0.01%   │    ││     0x00007fcab81a2801: mov    %r10,%rcx
  0.42%    0.54%   │    ││     0x00007fcab81a2804: shr    $0x3,%rcx
           0.01%   │    ││     0x00007fcab81a2808: mov    %ecx,0x34(%rsp)
  0.03%    0.04%   │    ││     0x00007fcab81a280c: mov    0x4c(%rsp),%r10d
           0.01%   │    ││     0x00007fcab81a2811: mov    0x2c(%rsp),%edi
  0.41%    0.50%   │    ││     0x00007fcab81a2815: vmovd  %edx,%xmm2
  0.00%            │    ││     0x00007fcab81a2819: mov    0x18(%rsp),%rcx
  0.06%    0.06%   │    ││     0x00007fcab81a281e: mov    %rcx,0x20(%rsp)
  0.00%    0.01%   │    ││     0x00007fcab81a2823: mov    0x30(%rsp),%edx
  0.46%    0.55%   │    ││     0x00007fcab81a2827: mov    %edx,0x28(%rsp)
  0.00%    0.00%   │    ││     0x00007fcab81a282b: mov    %eax,0x30(%rsp)
  0.06%    0.03%   ↘    ││     0x00007fcab81a282f: mov    0x34(%rsp),%edx
  0.00%    0.00%        ││     0x00007fcab81a2833: movzbl 0x18(%r12,%rdx,8),%edx  ; implicit exception: dispatches to 0x00007fcab81a43e5
  0.36%    0.51%        ││     0x00007fcab81a2839: mov    0x34(%rsp),%eax
  0.00%    0.01%        ││     0x00007fcab81a283d: lea    (%r12,%rax,8),%rcx  ;*aload
                        ││                                                   ; - com.google.re2j.Machine::match@136 (line 207)
  0.02%    0.04%        ││     0x00007fcab81a2841: mov    %rcx,0x18(%rsp)
                        ││     0x00007fcab81a2846: test   %edx,%edx
                        ││     0x00007fcab81a2848: jne    0x00007fcab81a2af9  ;*aload_0
                        ││                                                   ; - com.google.re2j.Machine::match@267 (line 233)
  0.36%    0.44%        ││     0x00007fcab81a284e: test   %r11d,%r11d
                        ││     0x00007fcab81a2851: jne    0x00007fcab81a3245  ;*ifne
                        ││                                                   ; - com.google.re2j.Machine::match@271 (line 233)
  0.00%    0.01%        ││     0x00007fcab81a2857: mov    0x60(%rsp),%r11d
  0.03%    0.02%        ││     0x00007fcab81a285c: test   %r11d,%r11d
                    ╭   ││     0x00007fcab81a285f: je     0x00007fcab81a286f  ;*ifeq
                    │   ││                                                   ; - com.google.re2j.Machine::match@275 (line 233)
  0.01%             │   ││     0x00007fcab81a2861: mov    0x3c(%rsp),%r9d
  0.35%    0.51%    │   ││     0x00007fcab81a2866: test   %r9d,%r9d
                    │   ││     0x00007fcab81a2869: jne    0x00007fcab81a32e9  ;*aload_0
                    │   ││                                                   ; - com.google.re2j.Machine::match@282 (line 236)
           0.00%    ↘   ││     0x00007fcab81a286f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                        ││                                                   ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                   ; implicit exception: dispatches to 0x00007fcab81a43f5
  0.04%    0.04%        ││     0x00007fcab81a2874: test   %ebp,%ebp
                        ││     0x00007fcab81a2876: jg     0x00007fcab81a3405  ;*ifle
                        ││                                                   ; - com.google.re2j.Machine::match@287 (line 236)
  0.01%                 ││     0x00007fcab81a287c: mov    0x40(%rsp),%r11
  0.42%    0.46%        ││     0x00007fcab81a2881: mov    0x18(%r11),%r11d   ;*getfield prog
                        ││                                                   ; - com.google.re2j.Machine::match@298 (line 239)
  0.01%    0.03%        ││     0x00007fcab81a2885: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                        ││                                                   ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                   ; implicit exception: dispatches to 0x00007fcab81a4405
  0.05%    0.09%        ││     0x00007fcab81a288a: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fcab81a4415
  0.66%    0.74%        ││     0x00007fcab81a288f: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││     0x00007fcab81a2896: jne    0x00007fcab81a3185
  0.47%    0.56%        ││     0x00007fcab81a289c: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                 ││     0x00007fcab81a28a0: mov    0x18(%r9),%ecx     ;*getfield pc
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.04%        ││     0x00007fcab81a28a4: cmp    $0x40,%ecx
                        ││     0x00007fcab81a28a7: jg     0x00007fcab81a3455  ;*if_icmpgt
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.22%    0.32%        ││     0x00007fcab81a28ad: mov    $0x1,%r11d
  0.14%    0.23%        ││     0x00007fcab81a28b3: shl    %cl,%r11           ;*lshl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.71%    0.99%        ││     0x00007fcab81a28b6: mov    0x34(%rsp),%r10d
  0.04%    0.03%        ││     0x00007fcab81a28bb: mov    0x10(%r12,%r10,8),%rbx  ;*getfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
                        ││     0x00007fcab81a28c0: mov    %rbx,%r10
  0.03%    0.04%        ││     0x00007fcab81a28c3: and    %r11,%r10          ;*land
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.39%        ││     0x00007fcab81a28c6: test   %r10,%r10
                        ││     0x00007fcab81a28c9: jne    0x00007fcab81a2faa  ;*ifeq
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.03%        ││     0x00007fcab81a28cf: xor    %ebp,%ebp          ;*ireturn
                        ││                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%        ││     0x00007fcab81a28d1: test   %r10,%r10
                        ││     0x00007fcab81a28d4: jne    0x00007fcab81a34a5  ;*ifeq
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.26%    0.35%        ││     0x00007fcab81a28da: cmp    $0x40,%ecx
                        ││     0x00007fcab81a28dd: jge    0x00007fcab81a34fd  ;*if_icmpge
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.12%    0.13%        ││     0x00007fcab81a28e3: mov    0x34(%rsp),%ecx
  0.04%    0.05%        ││     0x00007fcab81a28e7: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%        ││     0x00007fcab81a28ec: or     %rbx,%r11
  0.25%    0.33%        ││     0x00007fcab81a28ef: mov    %r11,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.16%        ││     0x00007fcab81a28f4: test   %r8d,%r8d
                        ││     0x00007fcab81a28f7: jle    0x00007fcab81a3295  ;*ifle
                        ││                                                   ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.07%        ││     0x00007fcab81a28fd: mov    %r8d,%ebp
  0.00%                 ││     0x00007fcab81a2900: dec    %ebp               ;*isub
                        ││                                                   ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.25%        ││     0x00007fcab81a2902: mov    0x40(%rsp),%r10
  0.10%    0.17%        ││     0x00007fcab81a2907: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                   ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.06%        ││     0x00007fcab81a290b: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007fcab81a4431
                        ││     0x00007fcab81a2910: cmp    %r11d,%ebp
                        ││     0x00007fcab81a2913: jae    0x00007fcab81a3036
  0.27%    0.22%        ││     0x00007fcab81a2919: lea    (%r12,%r13,8),%r10
  0.12%    0.14%        ││     0x00007fcab81a291d: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                        ││                                                   ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.05%        ││     0x00007fcab81a2922: test   %r8d,%r8d
                        ││     0x00007fcab81a2925: je     0x00007fcab81a3081  ;*putfield inst
                        ││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%        ││     0x00007fcab81a292b: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreads
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.25%        ││     0x00007fcab81a2930: mov    0x34(%rsp),%r11d
  0.11%    0.14%        ││     0x00007fcab81a2935: mov    0xc(%r12,%r11,8),%ebx  ;*getfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.05%        ││     0x00007fcab81a293a: lea    (%r12,%r8,8),%r10
                        ││     0x00007fcab81a293e: mov    %ebx,%r11d
  0.30%    0.32%        ││     0x00007fcab81a2941: inc    %r11d
  0.12%    0.15%        ││     0x00007fcab81a2944: mov    0x34(%rsp),%esi
  0.06%    0.02%        ││     0x00007fcab81a2948: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%        ││     0x00007fcab81a294d: mov    %r9,%r11
  0.20%    0.37%        ││     0x00007fcab81a2950: shr    $0x3,%r11
  0.13%    0.15%        ││     0x00007fcab81a2954: mov    %r11d,0x10(%r12,%r8,8)
  0.06%    0.05%        ││     0x00007fcab81a2959: shr    $0x9,%r10
           0.01%        ││     0x00007fcab81a295d: movabs $0x7fcab3990000,%r11
  0.26%    0.39%        ││     0x00007fcab81a2967: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.20%        ││     0x00007fcab81a296b: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fcab81a4441
  0.08%    0.08%        ││     0x00007fcab81a2970: cmp    %r10d,%ebx
                        ││     0x00007fcab81a2973: jae    0x00007fcab81a3095  ;*aastore
                        ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                   ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%        ││     0x00007fcab81a2979: test   %edi,%edi
                     ╭  ││     0x00007fcab81a297b: jl     0x00007fcab81a2a2a  ;*ifge
                     │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.43%     │  ││     0x00007fcab81a2981: xor    %r9d,%r9d          ;*iload_0
                     │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.19%     │  ││↗    0x00007fcab81a2984: cmp    $0xa,%edi
                     │  │││    0x00007fcab81a2987: je     0x00007fcab81a2e0f  ;*iload_1
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%     │  │││    0x00007fcab81a298d: vmovd  %xmm2,%r10d
                     │  │││    0x00007fcab81a2992: test   %r10d,%r10d
                     │  │││    0x00007fcab81a2995: jl     0x00007fcab81a2d28  ;*iload_1
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.26%    0.36%     │  │││    0x00007fcab81a299b: cmp    $0xa,%r10d
                     │  │││    0x00007fcab81a299f: je     0x00007fcab81a2e18  ;*iload_0
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.16%     │  │││    0x00007fcab81a29a5: mov    %edi,%r10d
  0.03%    0.05%     │  │││    0x00007fcab81a29a8: add    $0xffffffbf,%r10d
  0.01%    0.00%     │  │││    0x00007fcab81a29ac: lea    (%r12,%rcx,8),%r11  ;*getfield denseThreads
                     │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.31%     │  │││    0x00007fcab81a29b0: lea    0x10(%r11,%rbx,4),%r11
  0.14%    0.13%     │  │││    0x00007fcab81a29b5: mov    %r8d,(%r11)
  0.16%    0.19%     │  │││    0x00007fcab81a29b8: shr    $0x9,%r11
  0.00%    0.00%     │  │││    0x00007fcab81a29bc: movabs $0x7fcab3990000,%r8
  0.28%    0.23%     │  │││    0x00007fcab81a29c6: mov    %r12b,(%r8,%r11,1)  ;*aastore
                     │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.16%    0.16%     │  │││    0x00007fcab81a29ca: cmp    $0x1a,%r10d
                     │╭ │││    0x00007fcab81a29ce: jb     0x00007fcab81a29e1  ;*if_icmple
                     ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.13%     ││ │││    0x00007fcab81a29d0: mov    %edi,%r11d
                     ││ │││    0x00007fcab81a29d3: add    $0xffffff9f,%r11d
  0.24%    0.14%     ││ │││    0x00007fcab81a29d7: cmp    $0x1a,%r11d
                     ││ │││    0x00007fcab81a29db: jae    0x00007fcab81a2f5f  ;*iconst_1
                     ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.08%     │↘ │││    0x00007fcab81a29e1: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.11%     │  │││    0x00007fcab81a29e6: vmovd  %xmm2,%r10d
  0.06%    0.06%     │  │││    0x00007fcab81a29eb: add    $0xffffffbf,%r10d
  0.17%    0.14%     │  │││    0x00007fcab81a29ef: cmp    $0x1a,%r10d
                     │ ╭│││    0x00007fcab81a29f3: jb     0x00007fcab81a2a08  ;*if_icmple
                     │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.13%    0.16%     │ ││││    0x00007fcab81a29f5: vmovd  %xmm2,%r11d
  0.05%    0.07%     │ ││││    0x00007fcab81a29fa: add    $0xffffff9f,%r11d
  0.03%    0.02%     │ ││││    0x00007fcab81a29fe: cmp    $0x1a,%r11d
                     │ ││││    0x00007fcab81a2a02: jae    0x00007fcab81a2f80  ;*iconst_1
                     │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.22%     │ ↘│││    0x00007fcab81a2a08: mov    $0x1,%r11d
  0.13%    0.16%     │  │││    0x00007fcab81a2a0e: vmovd  %xmm2,%r10d        ;*ireturn
                     │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.16%     │  │││    0x00007fcab81a2a13: cmp    %r11d,%ebp
                     │  ╰││    0x00007fcab81a2a16: je     0x00007fcab81a26aa  ;*if_icmpeq
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%     │   ││    0x00007fcab81a2a1c: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.02%     │   ││    0x00007fcab81a2a20: mov    %r9d,0x4c(%rsp)
  0.31%    0.37%     │   ╰│    0x00007fcab81a2a25: jmpq   0x00007fcab81a26b3
                     ↘    │    0x00007fcab81a2a2a: mov    $0x5,%r9d
           0.00%          ╰    0x00007fcab81a2a30: jmpq   0x00007fcab81a2984
                               0x00007fcab81a2a35: data16 data16 nopw 0x0(%rax,%rax,1)
  0.02%    0.00%               0x00007fcab81a2a40: mov    %eax,0x5c(%rsp)
  0.01%    0.00%               0x00007fcab81a2a44: jmpq   0x00007fcab81a2c7c
                               0x00007fcab81a2a49: mov    0x5c(%rsp),%esi
                               0x00007fcab81a2a4d: add    $0x2,%esi
                               0x00007fcab81a2a50: mov    %esi,0x5c(%rsp)
                               0x00007fcab81a2a54: mov    0x5c(%rsp),%esi
                               0x00007fcab81a2a58: inc    %esi
                               0x00007fcab81a2a5a: mov    %esi,0x58(%rsp)
                           ╭   0x00007fcab81a2a5e: jmp    0x00007fcab81a2a82
  0.00%                    │   0x00007fcab81a2a60: mov    0x5c(%rsp),%esi
                           │   0x00007fcab81a2a64: add    $0x2,%esi
                           │   0x00007fcab81a2a67: mov    %esi,0x58(%rsp)
                           │╭  0x00007fcab81a2a6b: jmp    0x00007fcab81a2a78
                           ││  0x00007fcab81a2a6d: mov    0x5c(%rsp),%esi
                           ││  0x00007fcab81a2a71: add    $0x2,%esi
                           ││  0x00007fcab81a2a74: mov    %esi,0x5c(%rsp)
           0.00%           │↘  0x00007fcab81a2a78: mov    0x5c(%rsp),%esi
                           │   0x00007fcab81a2a7c: inc    %esi               ;*iinc
                           │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                           │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                           │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │                                                 ; - com.google.re2j.Machine::match@206 (line 220)
                           │   0x00007fcab81a2a7e: mov    %esi,0x5c(%rsp)
                           ↘   0x00007fcab81a2a82: mov    0x5c(%rsp),%esi
                               0x00007fcab81a2a86: cmp    0x28(%rsp),%esi
                               0x00007fcab81a2a8a: jg     0x00007fcab81a2ae0
....................................................................................................
 22.33%   26.52%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.72%   60.57%         C2, level 4  com.google.re2j.Machine::step, version 493 (1403 bytes) 
 22.33%   26.52%         C2, level 4  com.google.re2j.Machine::match, version 539 (1045 bytes) 
  4.67%    4.71%         C2, level 4  com.google.re2j.Machine::step, version 493 (111 bytes) 
  3.92%    4.00%         C2, level 4  com.google.re2j.Machine::step, version 493 (371 bytes) 
  1.16%    0.22%         C2, level 4  com.google.re2j.Machine::init, version 533 (279 bytes) 
  0.86%    0.88%         C2, level 4  com.google.re2j.Machine::match, version 539 (230 bytes) 
  0.42%    0.42%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.22%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 533 (129 bytes) 
  0.20%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 539 (488 bytes) 
  0.19%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 533 (41 bytes) 
  0.13%            [kernel.kallsyms]  [unknown] (70 bytes) 
  0.11%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.11%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 556 (0 bytes) 
  0.09%    0.02%         C2, level 4  java.util.Collections::shuffle, version 562 (81 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 556 (110 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 556 (9 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 556 (0 bytes) 
  0.07%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 556 (20 bytes) 
  2.43%    2.07%  <...other 417 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 71.30%   69.29%         C2, level 4  com.google.re2j.Machine::step, version 493 
 23.70%   27.69%         C2, level 4  com.google.re2j.Machine::match, version 539 
  1.63%    0.33%         C2, level 4  com.google.re2j.Machine::init, version 533 
  1.55%    1.27%   [kernel.kallsyms]  [unknown] 
  0.55%    0.26%         C2, level 4  com.google.re2j.RE2::match, version 556 
  0.16%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 607 
  0.15%    0.05%         C2, level 4  java.util.Collections::shuffle, version 562 
  0.08%    0.03%              [vdso]  [unknown] 
  0.06%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.03%        libc-2.26.so  _IO_fwrite 
  0.05%    0.11%        libc-2.26.so  vfprintf 
  0.05%    0.05%      hsdis-amd64.so  [unknown] 
  0.03%    0.03%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%           libjvm.so  _ZN15PerfLongVariant6sampleEv 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 561 
  0.02%    0.01%        libc-2.26.so  __clock_gettime 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.00%  libpthread-2.26.so  __libc_write 
  0.48%    0.42%  <...other 73 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.51%   97.65%         C2, level 4
  1.55%    1.27%   [kernel.kallsyms]
  0.42%    0.50%           libjvm.so
  0.26%    0.37%        libc-2.26.so
  0.08%    0.03%              [vdso]
  0.07%    0.05%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.04%    0.04%        runtime stub
  0.01%    0.01%         interpreter
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  14090.998 ± 376.990  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
