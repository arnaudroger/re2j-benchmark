# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8284.642 ops/s
# Warmup Iteration   2: 17715.395 ops/s
# Warmup Iteration   3: 17667.839 ops/s
# Warmup Iteration   4: 17850.332 ops/s
# Warmup Iteration   5: 17304.322 ops/s
# Warmup Iteration   6: 17861.065 ops/s
# Warmup Iteration   7: 18017.206 ops/s
# Warmup Iteration   8: 17554.322 ops/s
# Warmup Iteration   9: 17427.531 ops/s
# Warmup Iteration  10: 18009.099 ops/s
# Warmup Iteration  11: 17998.326 ops/s
# Warmup Iteration  12: 17823.268 ops/s
# Warmup Iteration  13: 17867.240 ops/s
# Warmup Iteration  14: 17693.858 ops/s
# Warmup Iteration  15: 18010.900 ops/s
# Warmup Iteration  16: 17948.899 ops/s
# Warmup Iteration  17: 17925.501 ops/s
# Warmup Iteration  18: 17601.643 ops/s
# Warmup Iteration  19: 17558.321 ops/s
# Warmup Iteration  20: 17663.219 ops/s
Iteration   1: 18166.817 ops/s
Iteration   2: 17506.502 ops/s
Iteration   3: 18031.637 ops/s
Iteration   4: 17901.806 ops/s
Iteration   5: 17987.137 ops/s
Iteration   6: 18142.395 ops/s
Iteration   7: 17843.920 ops/s
Iteration   8: 16439.216 ops/s
Iteration   9: 18024.919 ops/s
Iteration  10: 18054.905 ops/s
Iteration  11: 18141.207 ops/s
Iteration  12: 18156.964 ops/s
Iteration  13: 17832.688 ops/s
Iteration  14: 17869.239 ops/s
Iteration  15: 18136.705 ops/s
Iteration  16: 17956.803 ops/s
Iteration  17: 17949.916 ops/s
Iteration  18: 18100.654 ops/s
Iteration  19: 17337.039 ops/s
Iteration  20: 18100.472 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  17884.047 ±(99.9%) 349.056 ops/s [Average]
  (min, avg, max) = (16439.216, 17884.047, 18166.817), stdev = 401.973
  CI (99.9%): [17534.991, 18233.103] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 207150 total address lines.
Perf output processed (skipped 23.455 seconds):
 Column 1: cycles (20419 events)
 Column 2: instructions (20406 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 537 (1403 bytes) 

                       0x00007f1d4c3a8dce: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f1d4c3a8dd2: xor    %edi,%edi
                       0x00007f1d4c3a8dd4: vmovd  %xmm6,%r8d
                       0x00007f1d4c3a8dd9: vmovd  %xmm0,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.04%    ↗  0x00007f1d4c3a8ddd: mov    0xa4(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  1.02%    1.28%   ↗│  0x00007f1d4c3a8de5: test   %rdi,%rdi
                  ╭││  0x00007f1d4c3a8de8: je     0x00007f1d4c3a8e35  ;*ifnull
                  │││                                                ; - com.google.re2j.Machine::step@220 (line 302)
                  │││  0x00007f1d4c3a8dea: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │││                                                ; implicit exception: dispatches to 0x00007f1d4c3aa4e9
  0.40%    0.46%  │││  0x00007f1d4c3a8def: cmp    %ebp,%r8d
                  │││  0x00007f1d4c3a8df2: jge    0x00007f1d4c3a97ed  ;*if_icmplt
                  │││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.02%    0.00%  │││  0x00007f1d4c3a8df8: mov    %r8d,%r9d
  0.92%    1.13%  │││  0x00007f1d4c3a8dfb: inc    %r9d
                  │││  0x00007f1d4c3a8dfe: mov    0x20(%rsp),%rcx
  0.37%    0.43%  │││  0x00007f1d4c3a8e03: mov    %r9d,0xc(%rcx)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.02%    0.01%  │││  0x00007f1d4c3a8e07: cmp    %ebp,%r8d
                  │││  0x00007f1d4c3a8e0a: jae    0x00007f1d4c3a9691  ;*aastore
                  │││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.78%    1.20%  │││  0x00007f1d4c3a8e10: mov    %rdi,%rcx
                  │││  0x00007f1d4c3a8e13: shr    $0x3,%rcx
  0.40%    0.40%  │││  0x00007f1d4c3a8e17: lea    (%r12,%rdx,8),%r9  ;*getfield pool
                  │││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.00%  │││  0x00007f1d4c3a8e1b: lea    0x10(%r9,%r8,4),%r8
  0.92%    1.15%  │││  0x00007f1d4c3a8e20: mov    %ecx,(%r8)
  0.00%           │││  0x00007f1d4c3a8e23: shr    $0x9,%r8
  0.47%    0.38%  │││  0x00007f1d4c3a8e27: movabs $0x7f1d47b98000,%r9
  0.02%    0.00%  │││  0x00007f1d4c3a8e31: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.46%    1.43%  ↘││  0x00007f1d4c3a8e35: mov    0x8(%rsp),%r8
           0.00%   ││  0x00007f1d4c3a8e3a: mov    0xc(%r8),%r8d      ;*getfield size
                   ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.38%    0.27%   ││  0x00007f1d4c3a8e3e: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=481}
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.11%    0.07%   ││  0x00007f1d4c3a8e41: test   %eax,0x15f8c1b9(%rip)        # 0x00007f1d62335000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                   ││                                                ;   {poll}
  1.16%    1.41%   ││  0x00007f1d4c3a8e47: cmp    %r8d,%r10d
                   ││  0x00007f1d4c3a8e4a: jge    0x00007f1d4c3a947e
  0.02%            ││  0x00007f1d4c3a8e50: mov    %r11,%r13          ;*aload_1
                   ││                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.43%    0.19%   ││  0x00007f1d4c3a8e53: mov    0x8(%rsp),%r11
  0.17%    0.24%   ││  0x00007f1d4c3a8e58: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  1.24%    1.20%   ││  0x00007f1d4c3a8e5c: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f1d4c3aa4b5
  1.76%    1.82%   ││  0x00007f1d4c3a8e61: cmp    %r9d,%r10d
                   ││  0x00007f1d4c3a8e64: jae    0x00007f1d4c3a95ff
  0.96%    0.67%   ││  0x00007f1d4c3a8e6a: shl    $0x3,%r11
  0.10%    0.12%   ││  0x00007f1d4c3a8e6e: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.79%    0.73%   ││  0x00007f1d4c3a8e73: mov    0x10(%r12,%r14,8),%r11d  ;*getfield inst
                   ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   ││                                                ; implicit exception: dispatches to 0x00007f1d4c3aa4c9
  3.58%    3.44%   ││  0x00007f1d4c3a8e78: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                   ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   ││                                                ; implicit exception: dispatches to 0x00007f1d4c3aa4d9
  6.53%    7.13%   ││  0x00007f1d4c3a8e7d: cmp    $0x6,%ebp
  1.45%    1.69%   ││  0x00007f1d4c3a8e80: je     0x00007f1d4c3a96ed  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.91%    1.87%   ││  0x00007f1d4c3a8e86: mov    0x8(%r12,%r11,8),%r9d
                   ││  0x00007f1d4c3a8e8b: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f1d4c3a8e92: jne    0x00007f1d4c3a9645  ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
                   ││  0x00007f1d4c3a8e98: mov    0x20(%rsp),%r8
                   ││  0x00007f1d4c3a8e9d: mov    0xc(%r8),%r8d      ;*getfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.73%    1.57%   ││  0x00007f1d4c3a8ea1: mov    0x20(%rsp),%r9
                   ││  0x00007f1d4c3a8ea6: mov    0x24(%r9),%edx     ;*getfield pool
                   ││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007f1d4c3a8eaa: shl    $0x3,%r11          ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
           0.00%   ││  0x00007f1d4c3a8eae: mov    0xc(%r11),%ebp     ;*getfield op
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.77%    1.66%   ││  0x00007f1d4c3a8eb2: lea    (%r12,%r14,8),%rdi  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                   ││  0x00007f1d4c3a8eb6: cmp    $0xa,%ebp
                   ││  0x00007f1d4c3a8eb9: jne    0x00007f1d4c3a9412  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.03%    0.02%   ││  0x00007f1d4c3a8ebf: mov    0x1c(%r11),%ecx    ;*getfield outInst
                   ││                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.04%    0.02%   ││  0x00007f1d4c3a8ec3: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                   ││                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.49%    0.10%   ││  0x00007f1d4c3a8ec8: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f1d4c3aa4f9
  0.49%    0.04%   ││  0x00007f1d4c3a8ecd: lea    (%r12,%rcx,8),%r9
  0.01%    0.02%   ││  0x00007f1d4c3a8ed1: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││  0x00007f1d4c3a8ed8: jne    0x00007f1d4c3a94b5  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.48%    0.14%   ││  0x00007f1d4c3a8ede: mov    0x18(%r9),%ebx     ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%            ││  0x00007f1d4c3a8ee2: mov    %r13,%r11
                   ││  0x00007f1d4c3a8ee5: mov    0x10(%r13),%rsi    ;*getfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││                                                ; implicit exception: dispatches to 0x00007f1d4c3aa51d
           0.00%   ││  0x00007f1d4c3a8ee9: cmp    $0x40,%ebx
                   ││  0x00007f1d4c3a8eec: jg     0x00007f1d4c3a9a0d  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.46%   ││  0x00007f1d4c3a8ef2: mov    %ebx,%ecx
  0.00%            ││  0x00007f1d4c3a8ef4: mov    $0x1,%r13d
                   ││  0x00007f1d4c3a8efa: shl    %cl,%r13           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.95%    0.01%   ││  0x00007f1d4c3a8efd: mov    %rsi,%rcx
                   ││  0x00007f1d4c3a8f00: and    %r13,%rcx
  0.00%            ││  0x00007f1d4c3a8f03: test   %rcx,%rcx
                   ╰│  0x00007f1d4c3a8f06: jne    0x00007f1d4c3a8de5  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%             │  0x00007f1d4c3a8f0c: cmp    $0x40,%ebx
                    │  0x00007f1d4c3a8f0f: jge    0x00007f1d4c3a9a55  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.01%    │  0x00007f1d4c3a8f15: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a8f19: mov    0x1c(%r9),%ebp     ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a8f1d: or     %rsi,%r13          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.00%    │  0x00007f1d4c3a8f20: vmovq  %r13,%xmm3
  0.26%    0.01%    │  0x00007f1d4c3a8f25: mov    %r13,0x10(%r11)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a8f29: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f1d4c3aa531
  0.56%    0.09%    │  0x00007f1d4c3a8f2e: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f1d4c3a8f34: jne    0x00007f1d4c3a9771
  0.38%    0.00%    │  0x00007f1d4c3a8f3a: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a8f3e: mov    0x18(%r13),%ebx    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.41%    0.02%    │  0x00007f1d4c3a8f42: cmp    $0x40,%ebx
                    │  0x00007f1d4c3a8f45: jg     0x00007f1d4c3a9a9d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.02%    │  0x00007f1d4c3a8f4b: mov    $0x1,%esi
  0.07%             │  0x00007f1d4c3a8f50: mov    %ebx,%ecx
                    │  0x00007f1d4c3a8f52: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.93%    0.18%    │  0x00007f1d4c3a8f55: vmovq  %xmm3,%rcx
           0.00%    │  0x00007f1d4c3a8f5a: and    %rsi,%rcx          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a8f5d: test   %rcx,%rcx
                    │  0x00007f1d4c3a8f60: jne    0x00007f1d4c3a958a  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.16%    │  0x00007f1d4c3a8f66: vmovd  %ebx,%xmm2
  0.35%    0.25%    │  0x00007f1d4c3a8f6a: mov    %r13,%rbx
  0.00%             │  0x00007f1d4c3a8f6d: vmovq  %r9,%xmm1
  0.00%    0.00%    │  0x00007f1d4c3a8f72: vmovd  %edx,%xmm0
  0.16%    0.14%    │  0x00007f1d4c3a8f76: mov    %r8d,%r13d
  0.35%    0.43%    │  0x00007f1d4c3a8f79: mov    %r10d,0xa4(%rsp)
                    │  0x00007f1d4c3a8f81: mov    %r11,%r8
                    │  0x00007f1d4c3a8f84: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.24%    │  0x00007f1d4c3a8f86: test   %rcx,%rcx
                    │  0x00007f1d4c3a8f89: jne    0x00007f1d4c3a9ae9  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.43%    │  0x00007f1d4c3a8f8f: vmovd  %xmm2,%r9d
                    │  0x00007f1d4c3a8f94: cmp    $0x40,%r9d
                    │  0x00007f1d4c3a8f98: jge    0x00007f1d4c3a9b25  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f1d4c3a8f9e: vmovq  %xmm3,%rdx
  0.11%    0.14%    │  0x00007f1d4c3a8fa3: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.35%    │  0x00007f1d4c3a8fa6: mov    %r8,%rcx
  0.00%    0.00%    │  0x00007f1d4c3a8fa9: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f1d4c3a8fad: mov    %rdi,%r10
  0.11%    0.10%    │  0x00007f1d4c3a8fb0: mov    %rbx,%r11
  0.30%    0.22%    │  0x00007f1d4c3a8fb3: shr    $0x3,%r11
  0.00%    0.01%    │  0x00007f1d4c3a8fb7: mov    %r14d,%r8d
                    │  0x00007f1d4c3a8fba: mov    %r11d,0x10(%r12,%r14,8)
  0.13%    0.10%    │  0x00007f1d4c3a8fbf: shr    $0x9,%r10
  0.31%    0.22%    │  0x00007f1d4c3a8fc3: movabs $0x7f1d47b98000,%r11
           0.00%    │  0x00007f1d4c3a8fcd: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f1d4c3a8fd1: mov    0xc(%r12,%rax,8),%ebx  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f1d4c3aa555
  0.16%    0.18%    │  0x00007f1d4c3a8fd6: test   %ebx,%ebx
                    │  0x00007f1d4c3a8fd8: jg     0x00007f1d4c3a9b6d  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.35%    │  0x00007f1d4c3a8fde: mov    %ebx,0xac(%rsp)
  0.00%             │  0x00007f1d4c3a8fe5: vmovd  %eax,%xmm3
  0.00%             │  0x00007f1d4c3a8fe9: mov    %rcx,%r14
  0.11%    0.09%    │  0x00007f1d4c3a8fec: mov    0xc(%rcx),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.26%    │  0x00007f1d4c3a8ff0: mov    %r10d,0x28(%rsp)
           0.01%    │  0x00007f1d4c3a8ff5: mov    0x20(%rcx),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f1d4c3a8ff9: vmovd  %r10d,%xmm2
  0.15%    0.13%    │  0x00007f1d4c3a8ffe: mov    0x28(%rsp),%r10d
  0.32%    0.22%    │  0x00007f1d4c3a9003: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f1d4c3a9006: vmovd  %r10d,%xmm4
           0.00%    │  0x00007f1d4c3a900b: mov    %r10d,0xc(%rcx)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.13%    │  0x00007f1d4c3a900f: vmovd  %xmm2,%r10d
  0.38%    0.36%    │  0x00007f1d4c3a9014: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f1d4c3aa565
           0.01%    │  0x00007f1d4c3a9019: mov    0x28(%rsp),%r10d
  0.00%             │  0x00007f1d4c3a901e: cmp    %r9d,%r10d
                    │  0x00007f1d4c3a9021: jae    0x00007f1d4c3a9735  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.10%    │  0x00007f1d4c3a9027: vmovq  %xmm1,%r10
  0.35%    0.33%    │  0x00007f1d4c3a902c: mov    0x20(%r10),%r10d   ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007f1d4c3a9030: vmovd  %r10d,%xmm1
           0.00%    │  0x00007f1d4c3a9035: vmovd  %xmm2,%r11d
  0.14%    0.13%    │  0x00007f1d4c3a903a: shl    $0x3,%r11          ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.20%    │  0x00007f1d4c3a903e: mov    0x28(%rsp),%r10d
  0.00%             │  0x00007f1d4c3a9043: lea    0x10(%r11,%r10,4),%r10
  0.00%    0.00%    │  0x00007f1d4c3a9048: mov    %r8d,(%r10)
  0.27%    0.15%    │  0x00007f1d4c3a904b: shr    $0x9,%r10
  0.24%    0.11%    │  0x00007f1d4c3a904f: movabs $0x7f1d47b98000,%r8
                    │  0x00007f1d4c3a9059: mov    %r12b,(%r8,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.07%    │  0x00007f1d4c3a905d: vmovd  %xmm1,%r10d
  0.15%    0.03%    │  0x00007f1d4c3a9062: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f1d4c3aa581
  0.22%    0.11%    │  0x00007f1d4c3a9067: movslq 0x28(%rsp),%r10
                    │  0x00007f1d4c3a906c: lea    (%r11,%r10,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.07%    │  0x00007f1d4c3a9070: mov    %rdi,%rbx
  0.11%    0.06%    │  0x00007f1d4c3a9073: add    $0x14,%rbx         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.14%    │  0x00007f1d4c3a9077: mov    %r13d,%r10d
                    │  0x00007f1d4c3a907a: dec    %r10d              ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.13%    │  0x00007f1d4c3a907d: vmovd  %r10d,%xmm6
  0.13%    0.13%    │  0x00007f1d4c3a9082: vmovd  %xmm1,%r10d
  0.21%    0.27%    │  0x00007f1d4c3a9087: shl    $0x3,%r10
                    │  0x00007f1d4c3a908b: mov    0x28(%rsp),%r8d
  0.08%    0.06%    │  0x00007f1d4c3a9090: add    $0x2,%r8d          ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.03%    │  0x00007f1d4c3a9094: cmp    $0xf8019886,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f1d4c3a909a: jne    0x00007f1d4c3a8cf4  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%             │  0x00007f1d4c3a90a0: mov    %r10,%rax
                    │  0x00007f1d4c3a90a3: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.17%    │  0x00007f1d4c3a90a7: mov    %r10d,%ecx
  0.13%    0.08%    │  0x00007f1d4c3a90aa: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a90ae: jg     0x00007f1d4c3a9e09  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.35%    │  0x00007f1d4c3a90b4: mov    $0x1,%esi
                    │  0x00007f1d4c3a90b9: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.49%    │  0x00007f1d4c3a90bc: mov    %rdx,%r10
                    │  0x00007f1d4c3a90bf: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.17%    │  0x00007f1d4c3a90c2: test   %r10,%r10
                    │  0x00007f1d4c3a90c5: jne    0x00007f1d4c3a95b2  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.10%    │  0x00007f1d4c3a90cb: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.25%    │  0x00007f1d4c3a90cd: test   %r10,%r10
                    │  0x00007f1d4c3a90d0: jne    0x00007f1d4c3a9e45  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007f1d4c3a90d6: mov    %ecx,%r10d
  0.12%    0.22%    │  0x00007f1d4c3a90d9: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a90dd: jge    0x00007f1d4c3a9e71  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.17%    │  0x00007f1d4c3a90e3: mov    %rax,%r10
  0.27%    0.42%    │  0x00007f1d4c3a90e6: mov    0x14(%r10),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a90ea: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.11%    │  0x00007f1d4c3a90ed: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.12%    │  0x00007f1d4c3a90f1: cmp    0xac(%rsp),%ebp
                    │  0x00007f1d4c3a90f8: jl     0x00007f1d4c3a9efd  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.25%    │  0x00007f1d4c3a90fe: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a9102: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1d4c3aa5bd
  0.12%    0.13%    │  0x00007f1d4c3a9107: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    │  0x00007f1d4c3a910d: jne    0x00007f1d4c3a99b1
  0.09%    0.08%    │  0x00007f1d4c3a9113: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.26%    │  0x00007f1d4c3a9117: vmovq  %r10,%xmm1
                    │  0x00007f1d4c3a911c: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.14%    │  0x00007f1d4c3a9120: mov    %r10d,%eax
  0.16%    0.10%    │  0x00007f1d4c3a9123: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a9127: jg     0x00007f1d4c3a9fad  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.29%    │  0x00007f1d4c3a912d: mov    $0x1,%esi
                    │  0x00007f1d4c3a9132: mov    %r10d,%ecx
  0.11%    0.15%    │  0x00007f1d4c3a9135: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.60%    │  0x00007f1d4c3a9138: mov    %rdx,%r10
  0.07%    0.07%    │  0x00007f1d4c3a913b: and    %rsi,%r10
  0.15%    0.14%    │  0x00007f1d4c3a913e: test   %r10,%r10
                    │  0x00007f1d4c3a9141: jne    0x00007f1d4c3a95c6  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.28%    │  0x00007f1d4c3a9147: mov    %ecx,%r10d
  0.05%    0.04%    │  0x00007f1d4c3a914a: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a914e: jge    0x00007f1d4c3a9fe9  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.05%    │  0x00007f1d4c3a9154: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.14%    │  0x00007f1d4c3a9157: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.31%    │  0x00007f1d4c3a915b: vmovq  %xmm1,%r10
  0.06%    0.05%    │  0x00007f1d4c3a9160: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.09%    │  0x00007f1d4c3a9164: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1d4c3aa5ed
  0.24%    0.25%    │  0x00007f1d4c3a9169: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f1d4c3a9170: jne    0x00007f1d4c3a99d9
  0.26%    0.45%    │  0x00007f1d4c3a9176: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a917a: vmovq  %r10,%xmm5
  0.06%    0.07%    │  0x00007f1d4c3a917f: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.15%    │  0x00007f1d4c3a9183: mov    %r10d,%eax
  0.26%    0.32%    │  0x00007f1d4c3a9186: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a918a: jg     0x00007f1d4c3aa025  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007f1d4c3a9190: mov    $0x1,%esi
  0.06%    0.05%    │  0x00007f1d4c3a9195: mov    %r10d,%ecx
  0.11%    0.14%    │  0x00007f1d4c3a9198: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.45%    0.50%    │  0x00007f1d4c3a919b: mov    %rdx,%r10
  0.13%    0.07%    │  0x00007f1d4c3a919e: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.32%    │  0x00007f1d4c3a91a1: test   %r10,%r10
                    │  0x00007f1d4c3a91a4: jne    0x00007f1d4c3a95d7  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007f1d4c3a91aa: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.16%    │  0x00007f1d4c3a91ac: test   %r10,%r10
                    │  0x00007f1d4c3a91af: jne    0x00007f1d4c3aa069  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.12%    │  0x00007f1d4c3a91b5: mov    %ecx,%r10d
  0.21%    0.23%    │  0x00007f1d4c3a91b8: cmp    $0x40,%r10d
                    │  0x00007f1d4c3a91bc: jge    0x00007f1d4c3aa0a1  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f1d4c3a91c2: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.19%    │  0x00007f1d4c3a91c5: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.15%    │  0x00007f1d4c3a91c9: test   %r13d,%r13d
                    │  0x00007f1d4c3a91cc: jle    0x00007f1d4c3a9d6d  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.22%    │  0x00007f1d4c3a91d2: mov    0x20(%rsp),%rcx
                    │  0x00007f1d4c3a91d7: vmovd  %xmm6,%r10d
  0.09%    0.07%    │  0x00007f1d4c3a91dc: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.10%    │  0x00007f1d4c3a91e0: vmovd  %xmm0,%r10d
  0.24%    0.21%    │  0x00007f1d4c3a91e5: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1d4c3aa609
           0.01%    │  0x00007f1d4c3a91ea: vmovd  %xmm6,%esi
  0.13%    0.15%    │  0x00007f1d4c3a91ee: cmp    %r10d,%esi
                    │  0x00007f1d4c3a91f1: jae    0x00007f1d4c3a98e5
  0.10%    0.19%    │  0x00007f1d4c3a91f7: vmovd  %xmm0,%esi
  0.16%    0.31%    │  0x00007f1d4c3a91fb: lea    (%r12,%rsi,8),%rax
  0.00%             │  0x00007f1d4c3a91ff: mov    0xc(%rax,%r13,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.17%    │  0x00007f1d4c3a9204: test   %ebp,%ebp
                    │  0x00007f1d4c3a9206: je     0x00007f1d4c3a9931  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.14%    │  0x00007f1d4c3a920c: mov    %r8d,0xc(%r14)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.19%    │  0x00007f1d4c3a9210: lea    (%r12,%rbp,8),%rcx
                    │  0x00007f1d4c3a9214: vmovq  %xmm5,%rsi
  0.12%    0.11%    │  0x00007f1d4c3a9219: shr    $0x3,%rsi
  0.12%    0.11%    │  0x00007f1d4c3a921d: mov    %esi,0x10(%r12,%rbp,8)
  0.36%    0.42%    │  0x00007f1d4c3a9222: shr    $0x9,%rcx
                    │  0x00007f1d4c3a9226: movabs $0x7f1d47b98000,%rsi
  0.13%    0.22%    │  0x00007f1d4c3a9230: mov    %r12b,(%rsi,%rcx,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.38%    │  0x00007f1d4c3a9234: cmp    %r9d,%r8d
                    │  0x00007f1d4c3a9237: jae    0x00007f1d4c3a9945
  0.15%    0.25%    │  0x00007f1d4c3a923d: mov    %ebp,(%rbx)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f1d4c3a923f: vmovq  %xmm1,%r8
  0.07%    0.10%    │  0x00007f1d4c3a9244: mov    0x20(%r8),%r8d     ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.17%    │  0x00007f1d4c3a9248: mov    %r8d,%ecx
  0.23%    0.22%    │  0x00007f1d4c3a924b: mov    %rbx,%r8
                    │  0x00007f1d4c3a924e: shr    $0x9,%r8
  0.12%    0.20%    │  0x00007f1d4c3a9252: movabs $0x7f1d47b98000,%r9
  0.16%    0.23%    │  0x00007f1d4c3a925c: mov    %r12b,(%r9,%r8,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.32%    │  0x00007f1d4c3a9260: mov    %ecx,%r8d
                    │  0x00007f1d4c3a9263: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f1d4c3aa61d
  0.17%    0.22%    │  0x00007f1d4c3a9268: shl    $0x3,%r8
  0.18%    0.24%    │  0x00007f1d4c3a926c: cmp    $0xf8019886,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f1d4c3a9273: je     0x00007f1d4c3a935d
  0.20%    0.14%    │  0x00007f1d4c3a9279: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f1d4c3a9280: jne    0x00007f1d4c3a9db1  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.11%    │  0x00007f1d4c3a9286: mov    %r8,%rbx
  0.18%    0.25%    │  0x00007f1d4c3a9289: mov    0x18(%r8),%r8d     ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.22%    │  0x00007f1d4c3a928d: mov    %r8d,%ecx
  0.00%    0.00%    │  0x00007f1d4c3a9290: cmp    $0x40,%r8d
                    │  0x00007f1d4c3a9294: jg     0x00007f1d4c3aa1d5  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.10%    │  0x00007f1d4c3a929a: mov    $0x1,%r9d
  0.16%    0.12%    │  0x00007f1d4c3a92a0: shl    %cl,%r9            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.36%    │  0x00007f1d4c3a92a3: mov    %rdx,%r8
  0.13%    0.17%    │  0x00007f1d4c3a92a6: and    %r9,%r8            ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.30%    │  0x00007f1d4c3a92a9: test   %r8,%r8
                    │  0x00007f1d4c3a92ac: jne    0x00007f1d4c3a95eb  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f1d4c3a92b2: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.10%    │  0x00007f1d4c3a92b4: test   %r8,%r8
                    │  0x00007f1d4c3a92b7: jne    0x00007f1d4c3aa245  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.16%    │  0x00007f1d4c3a92bd: mov    %ecx,%r8d
  0.20%    0.23%    │  0x00007f1d4c3a92c0: cmp    $0x40,%r8d
                    │  0x00007f1d4c3a92c4: jge    0x00007f1d4c3aa285  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007f1d4c3a92ca: or     %r9,%rdx
  0.08%    0.17%    │  0x00007f1d4c3a92cd: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.22%    │  0x00007f1d4c3a92d1: vmovd  %xmm6,%r8d
  0.18%    0.26%    │  0x00007f1d4c3a92d6: test   %r8d,%r8d
                    │  0x00007f1d4c3a92d9: jle    0x00007f1d4c3aa0e5  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f1d4c3a92df: mov    %r13d,%r8d
  0.06%    0.09%    │  0x00007f1d4c3a92e2: add    $0xfffffffe,%r8d   ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.19%    │  0x00007f1d4c3a92e6: mov    0x20(%rsp),%r9
  0.19%    0.28%    │  0x00007f1d4c3a92eb: mov    %r8d,0xc(%r9)      ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.05%    │  0x00007f1d4c3a92ef: cmp    %r10d,%r8d
                    │  0x00007f1d4c3a92f2: jae    0x00007f1d4c3a9cb1
  0.08%    0.01%    │  0x00007f1d4c3a92f8: mov    0x10(%rax,%r8,4),%r9d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.10%    │  0x00007f1d4c3a92fd: test   %r9d,%r9d
  0.21%    0.15%    │  0x00007f1d4c3a9300: je     0x00007f1d4c3a9d0d  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    │  0x00007f1d4c3a9306: add    $0x18,%rdi
  0.08%    0.14%    │  0x00007f1d4c3a930a: mov    %r9d,(%rdi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.22%    │  0x00007f1d4c3a930d: lea    (%r12,%r9,8),%r10
  0.20%    0.27%    │  0x00007f1d4c3a9311: mov    %rdi,%r11
  0.00%    0.01%    │  0x00007f1d4c3a9314: shr    $0x9,%r11
  0.09%    0.21%    │  0x00007f1d4c3a9318: shr    $0x9,%r10
  0.11%    0.27%    │  0x00007f1d4c3a931c: movabs $0x7f1d47b98000,%rcx
  0.18%    0.21%    │  0x00007f1d4c3a9326: mov    %r12b,(%rcx,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.08%    │  0x00007f1d4c3a932a: movabs $0x7f1d47b98000,%r10
  0.10%    0.15%    │  0x00007f1d4c3a9334: mov    %r12b,(%r10,%r11,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.20%    │  0x00007f1d4c3a9338: mov    0x28(%rsp),%ecx
  0.20%    0.27%    │  0x00007f1d4c3a933c: add    $0x3,%ecx
  0.03%    0.04%    │  0x00007f1d4c3a933f: mov    %r14,%r11
  0.08%    0.15%    │  0x00007f1d4c3a9342: mov    %ecx,0xc(%r11)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.22%    │  0x00007f1d4c3a9346: mov    %rbx,%rcx
  0.20%    0.28%    │  0x00007f1d4c3a9349: shr    $0x3,%rcx
  0.03%    0.04%    │  0x00007f1d4c3a934d: mov    %ecx,0x10(%r12,%r9,8)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.11%    │  0x00007f1d4c3a9352: xor    %edi,%edi
  0.14%    0.16%    │  0x00007f1d4c3a9354: vmovd  %xmm0,%edx
  0.23%    0.25%    ╰  0x00007f1d4c3a9358: jmpq   0x00007f1d4c3a8ddd  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f1d4c3a935d: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
....................................................................................................
 62.66%   60.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 579 (1179 bytes) 

                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007f1d4c3cb198: cmp    $0xd800,%r11d
                              0x00007f1d4c3cb19f: jge    0x00007f1d4c3cc8dd  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
  0.01%    0.00%              0x00007f1d4c3cb1a5: shl    $0x3,%r11d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007f1d4c3cb1a9: mov    %r11d,%r10d
                              0x00007f1d4c3cb1ac: and    $0x7,%r10d
                              0x00007f1d4c3cb1b0: or     $0x1,%r11d
                              0x00007f1d4c3cb1b4: mov    %r11d,%r13d
                              0x00007f1d4c3cb1b7: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@60 (line 189)
                              0x00007f1d4c3cb1bb: mov    %r10d,0x28(%rsp)
           0.00%              0x00007f1d4c3cb1c0: mov    %r11d,%edi
  0.00%                       0x00007f1d4c3cb1c3: sar    $0x3,%edi          ;*ishr
                                                                            ; - com.google.re2j.Machine::match@68 (line 190)
                              0x00007f1d4c3cb1c6: cmp    $0xfffffff8,%r11d
                              0x00007f1d4c3cb1ca: je     0x00007f1d4c3cc4b1  ;*if_icmpeq
                                                                            ; - com.google.re2j.Machine::match@88 (line 194)
                              0x00007f1d4c3cb1d0: vmovd  %xmm0,%r10d
           0.01%              0x00007f1d4c3cb1d5: add    0x28(%rsp),%r10d
  0.01%    0.01%              0x00007f1d4c3cb1da: add    %ebx,%r10d         ;*iadd
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb1dd: vmovd  %r10d,%xmm2
  0.00%                       0x00007f1d4c3cb1e2: cmp    0x64(%rsp),%r10d
                              0x00007f1d4c3cb1e7: jge    0x00007f1d4c3cbb92  ;*if_icmpge
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb1ed: test   %r10d,%r10d
                              0x00007f1d4c3cb1f0: jl     0x00007f1d4c3cc781  ;*iflt
                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.00%              0x00007f1d4c3cb1f6: cmp    %edx,%r10d
                              0x00007f1d4c3cb1f9: jge    0x00007f1d4c3cc92d  ;*if_icmplt
                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb1ff: cmp    %edx,%r10d
                              0x00007f1d4c3cb202: jae    0x00007f1d4c3cc559
           0.00%              0x00007f1d4c3cb208: movzwl 0x10(%r8,%r10,2),%r11d  ;*caload
                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                       0x00007f1d4c3cb20e: cmp    $0xd800,%r11d
                              0x00007f1d4c3cb215: jge    0x00007f1d4c3cc999  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb21b: shl    $0x3,%r11d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb21f: mov    %r11d,%r10d
                              0x00007f1d4c3cb222: or     $0x1,%r10d
  0.00%    0.00%              0x00007f1d4c3cb226: and    $0x7,%r11d
                              0x00007f1d4c3cb22a: sar    $0x3,%r10d         ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 196)
                              0x00007f1d4c3cb22e: mov    %r10d,0x2c(%rsp)
  0.01%    0.01%              0x00007f1d4c3cb233: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@96 (line 195)
                              0x00007f1d4c3cb237: mov    %r11d,0x30(%rsp)   ;*ishr
                                                                            ; - com.google.re2j.Machine::match@104 (line 196)
           0.00%              0x00007f1d4c3cb23c: vmovd  %xmm0,%r10d
                              0x00007f1d4c3cb241: test   %r10d,%r10d
                              0x00007f1d4c3cb244: jne    0x00007f1d4c3cc709  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@115 (line 200)
                              0x00007f1d4c3cb24a: test   %edi,%edi
                              0x00007f1d4c3cb24c: jl     0x00007f1d4c3cbb71  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007f1d4c3cb252: mov    $0x5,%r10d         ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.00%              0x00007f1d4c3cb258: cmp    $0xa,%edi
                              0x00007f1d4c3cb25b: je     0x00007f1d4c3cbb89  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
                              0x00007f1d4c3cb261: mov    0x40(%rsp),%r11
                              0x00007f1d4c3cb266: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                            ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                            ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                            ; - com.google.re2j.Machine::match@315 (line 239)
                              0x00007f1d4c3cb26a: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                            ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                            ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                            ; - com.google.re2j.Machine::match@315 (line 239)
           0.02%              0x00007f1d4c3cb26e: mov    %edi,%ecx
                              0x00007f1d4c3cb270: add    $0xffffffbf,%ecx
                              0x00007f1d4c3cb273: vmovd  %xmm1,%r11d
                              0x00007f1d4c3cb278: shl    $0x3,%r11          ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@53 (line 188)
  0.00%                       0x00007f1d4c3cb27c: cmp    $0x1a,%ecx
                  ╭           0x00007f1d4c3cb27f: jb     0x00007f1d4c3cb28f  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                  │           0x00007f1d4c3cb281: mov    %edi,%ecx
                  │           0x00007f1d4c3cb283: add    $0xffffff9f,%ecx
                  │           0x00007f1d4c3cb286: cmp    $0x1a,%ecx
                  │           0x00007f1d4c3cb289: jae    0x00007f1d4c3cbbaa  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           ↘           0x00007f1d4c3cb28f: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.00%              0x00007f1d4c3cb293: mov    %r11,0x20(%rsp)
           0.00%              0x00007f1d4c3cb298: xor    %r11d,%r11d
                              0x00007f1d4c3cb29b: mov    $0x1,%edx
  0.00%                       0x00007f1d4c3cb2a0: xor    %ecx,%ecx
                              0x00007f1d4c3cb2a2: mov    %edx,0x14(%rsp)
  0.01%                       0x00007f1d4c3cb2a6: mov    %ecx,0x60(%rsp)
                   ╭          0x00007f1d4c3cb2aa: jmpq   0x00007f1d4c3cb42e
  0.02%    0.05%   │    ↗     0x00007f1d4c3cb2af: or     $0x20,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.27%    0.31%   │    │     0x00007f1d4c3cb2b2: mov    %ebx,0x4c(%rsp)    ;*iload_2
                   │    │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.10%   │    │↗    0x00007f1d4c3cb2b6: mov    0x60(%rsp),%r11d
  0.10%    0.07%   │    ││    0x00007f1d4c3cb2bb: cmp    0x64(%rsp),%r11d
  0.12%    0.17%   │    ││    0x00007f1d4c3cb2c0: je     0x00007f1d4c3cbad2  ;*if_icmpne
                   │    ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.31%    0.11%   │    ││    0x00007f1d4c3cb2c6: xor    %r10d,%r10d        ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.08%   │    ││    0x00007f1d4c3cb2c9: mov    %rax,-0x8(%rsp)
  0.18%    0.26%   │    ││    0x00007f1d4c3cb2ce: mov    0x60(%rsp),%eax
  0.01%    0.03%   │    ││    0x00007f1d4c3cb2d2: mov    %eax,0x38(%rsp)
  0.35%    0.32%   │    ││    0x00007f1d4c3cb2d6: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │    ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.52%    0.32%   │    ││    0x00007f1d4c3cb2db: add    0x28(%rsp),%r11d   ;*iadd
                   │    ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.21%    0.12%   │    ││    0x00007f1d4c3cb2e0: mov    %r11d,0x60(%rsp)
  0.08%    0.04%   │    ││    0x00007f1d4c3cb2e5: mov    0x40(%rsp),%rsi
  0.22%    0.37%   │    ││    0x00007f1d4c3cb2ea: mov    0x18(%rsp),%rdx
  0.03%    0.05%   │    ││    0x00007f1d4c3cb2ef: mov    0x20(%rsp),%rcx
  0.06%    0.08%   │    ││    0x00007f1d4c3cb2f4: mov    0x38(%rsp),%r8d
  0.16%    0.09%   │    ││    0x00007f1d4c3cb2f9: mov    %r11d,%r9d
  0.22%    0.32%   │    ││    0x00007f1d4c3cb2fc: mov    0x4c(%rsp),%r11d
  0.07%    0.06%   │    ││    0x00007f1d4c3cb301: mov    %r11d,(%rsp)
  0.09%    0.10%   │    ││    0x00007f1d4c3cb305: mov    0x3c(%rsp),%ebx
  0.12%    0.03%   │    ││    0x00007f1d4c3cb309: mov    %ebx,0x8(%rsp)
  0.24%    0.26%   │    ││    0x00007f1d4c3cb30d: mov    %r10d,0x10(%rsp)
  0.08%    0.04%   │    ││    0x00007f1d4c3cb312: nop
  0.06%    0.04%   │    ││    0x00007f1d4c3cb313: callq  0x00007f1d4c1b0020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=664}
                   │    ││                                                  ;*invokespecial step
                   │    ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                  ;   {optimized virtual_call}
                   │    ││    0x00007f1d4c3cb318: mov    0x40(%rsp),%r10
  0.01%            │    ││    0x00007f1d4c3cb31d: mov    0x24(%r10),%r13d   ;*getfield pool
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
  0.40%    0.41%   │    ││    0x00007f1d4c3cb321: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%            │    ││    0x00007f1d4c3cb325: mov    0x28(%rsp),%r10d
                   │    ││    0x00007f1d4c3cb32a: test   %r10d,%r10d
                   │    ││    0x00007f1d4c3cb32d: je     0x00007f1d4c3cba1d  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
                   │    ││    0x00007f1d4c3cb333: mov    0x40(%rsp),%r11
  0.51%    0.40%   │    ││    0x00007f1d4c3cb338: mov    0x28(%r11),%r14d   ;*getfield matchcap
                   │    ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
                   │    ││    0x00007f1d4c3cb33c: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │    ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007f1d4c3cd069
  0.03%    0.03%   │    ││    0x00007f1d4c3cb341: test   %ebp,%ebp
                   │    ││    0x00007f1d4c3cb343: jne    0x00007f1d4c3cbf11  ;*ifne
                   │    ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.02%    0.01%   │    ││    0x00007f1d4c3cb349: movzbl 0x10(%r11),%r11d   ;*getfield matched
                   │    ││                                                  ; - com.google.re2j.Machine::match@376 (line 246)
  0.48%    0.49%   │    ││    0x00007f1d4c3cb34e: test   %r11d,%r11d
                   │    ││    0x00007f1d4c3cb351: jne    0x00007f1d4c3cc15d  ;*ifeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@379 (line 246)
                   │    ││    0x00007f1d4c3cb357: mov    0x50(%rsp),%r10
  0.00%            │    ││    0x00007f1d4c3cb35c: mov    0x10(%r10),%r9d    ;*getfield end
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││    0x00007f1d4c3cb360: mov    %r9d,0x64(%rsp)
  0.50%    0.29%   │    ││    0x00007f1d4c3cb365: mov    0xc(%r10),%ebx     ;*getfield start
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │    ││    0x00007f1d4c3cb369: mov    0x14(%r10),%r9d    ;*getfield str
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%            │    ││    0x00007f1d4c3cb36d: mov    0x2c(%rsp),%r10d
  0.02%    0.02%   │    ││    0x00007f1d4c3cb372: cmp    $0xffffffff,%r10d
                   │    ││    0x00007f1d4c3cb376: je     0x00007f1d4c3cbadd  ;*if_icmpeq
                   │    ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
  0.54%    0.56%   │    ││    0x00007f1d4c3cb37c: mov    0x30(%rsp),%ecx
                   │    ││    0x00007f1d4c3cb380: add    0x60(%rsp),%ecx
  0.00%    0.01%   │    ││    0x00007f1d4c3cb384: add    %ebx,%ecx          ;*iadd
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%            │    ││    0x00007f1d4c3cb386: cmp    0x64(%rsp),%ecx
                   │    ││    0x00007f1d4c3cb38a: jge    0x00007f1d4c3cbaeb  ;*if_icmpge
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.52%    0.52%   │    ││    0x00007f1d4c3cb390: mov    0x8(%r12,%r9,8),%edi  ; implicit exception: dispatches to 0x00007f1d4c3cd079
  0.00%    0.01%   │    ││    0x00007f1d4c3cb395: cmp    $0xf80002da,%edi   ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││    0x00007f1d4c3cb39b: jne    0x00007f1d4c3cbdad
           0.01%   │    ││    0x00007f1d4c3cb3a1: lea    (%r12,%r9,8),%rdi  ;*invokeinterface charAt
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││    0x00007f1d4c3cb3a5: test   %ecx,%ecx
                   │    ││    0x00007f1d4c3cb3a7: jl     0x00007f1d4c3cbf65  ;*iflt
                   │    ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.39%    0.88%   │    ││    0x00007f1d4c3cb3ad: mov    0xc(%rdi),%eax     ;*getfield value
                   │    ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │    ││    0x00007f1d4c3cb3b0: mov    0xc(%r12,%rax,8),%ebp  ;*arraylength
                   │    ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                  ; implicit exception: dispatches to 0x00007f1d4c3cd08d
  0.72%    0.91%   │    ││    0x00007f1d4c3cb3b5: cmp    %ebp,%ecx
                   │    ││    0x00007f1d4c3cb3b7: jge    0x00007f1d4c3cc1b1  ;*if_icmplt
                   │    ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.45%    0.52%   │    ││    0x00007f1d4c3cb3bd: cmp    %ebp,%ecx
                   │    ││    0x00007f1d4c3cb3bf: jae    0x00007f1d4c3cbcd1
  0.13%    0.16%   │    ││    0x00007f1d4c3cb3c5: lea    (%r12,%rax,8),%r10
                   │    ││    0x00007f1d4c3cb3c9: movzwl 0x10(%r10,%rcx,2),%eax  ;*caload
                   │    ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.07%    0.05%   │    ││    0x00007f1d4c3cb3cf: cmp    $0xd800,%eax
                   │    ││    0x00007f1d4c3cb3d5: jge    0x00007f1d4c3cc229  ;*if_icmplt
                   │    ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.39%    0.56%   │    ││    0x00007f1d4c3cb3db: shl    $0x3,%eax          ;*ishl
                   │    ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.16%   │    ││    0x00007f1d4c3cb3de: mov    %eax,%edx
  0.00%            │    ││    0x00007f1d4c3cb3e0: or     $0x1,%edx
  0.22%    0.28%   │    ││    0x00007f1d4c3cb3e3: and    $0x7,%eax
  0.18%    0.23%   │    ││    0x00007f1d4c3cb3e6: sar    $0x3,%edx          ;*ishr
                   │    ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.37%    0.35%   │    ││    0x00007f1d4c3cb3e9: or     $0x1,%eax          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=876}
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.02%    0.02%   │    ││    0x00007f1d4c3cb3ec: test   %eax,0x15f69c0e(%rip)        # 0x00007f1d62335000
                   │    ││                                                  ;*goto
                   │    ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                  ;   {poll}
  0.40%    0.56%   │    ││    0x00007f1d4c3cb3f2: mov    0x40(%rsp),%r10
  0.04%    0.04%   │    ││    0x00007f1d4c3cb3f7: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                  ; - com.google.re2j.Machine::match@169 (line 216)
  0.06%    0.05%   │    ││    0x00007f1d4c3cb3fb: mov    0x20(%rsp),%r10
                   │    ││    0x00007f1d4c3cb400: mov    %r10,%rcx
  0.34%    0.42%   │    ││    0x00007f1d4c3cb403: shr    $0x3,%rcx
  0.02%    0.05%   │    ││    0x00007f1d4c3cb407: mov    %ecx,0x34(%rsp)
  0.07%    0.08%   │    ││    0x00007f1d4c3cb40b: mov    0x4c(%rsp),%r10d
  0.00%            │    ││    0x00007f1d4c3cb410: mov    0x2c(%rsp),%edi
  0.32%    0.50%   │    ││    0x00007f1d4c3cb414: mov    %edx,0x2c(%rsp)
  0.04%    0.07%   │    ││    0x00007f1d4c3cb418: mov    0x18(%rsp),%rcx
  0.04%    0.08%   │    ││    0x00007f1d4c3cb41d: mov    %rcx,0x20(%rsp)
           0.00%   │    ││    0x00007f1d4c3cb422: mov    0x30(%rsp),%edx
  0.41%    0.43%   │    ││    0x00007f1d4c3cb426: mov    %edx,0x28(%rsp)
  0.03%    0.06%   │    ││    0x00007f1d4c3cb42a: mov    %eax,0x30(%rsp)
  0.05%    0.06%   ↘    ││    0x00007f1d4c3cb42e: mov    0x34(%rsp),%ecx
  0.00%                 ││    0x00007f1d4c3cb432: movzbl 0x18(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f1d4c3ccff5
  0.30%    0.51%        ││    0x00007f1d4c3cb438: mov    0x34(%rsp),%edx
  0.05%    0.04%        ││    0x00007f1d4c3cb43c: shl    $0x3,%rdx          ;*aload
                        ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.03%    0.10%        ││    0x00007f1d4c3cb440: mov    %rdx,0x18(%rsp)
                        ││    0x00007f1d4c3cb445: test   %ecx,%ecx
                        ││    0x00007f1d4c3cb447: jne    0x00007f1d4c3cb6d9  ;*aload_0
                        ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
  0.40%    0.41%        ││    0x00007f1d4c3cb44d: test   %r11d,%r11d
                        ││    0x00007f1d4c3cb450: jne    0x00007f1d4c3cbe15  ;*ifne
                        ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.04%    0.05%        ││    0x00007f1d4c3cb456: mov    0x60(%rsp),%r11d
  0.05%    0.08%        ││    0x00007f1d4c3cb45b: test   %r11d,%r11d
                    ╭   ││    0x00007f1d4c3cb45e: je     0x00007f1d4c3cb46e  ;*ifeq
                    │   ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.00%    0.00%    │   ││    0x00007f1d4c3cb460: mov    0x3c(%rsp),%r9d
  0.42%    0.45%    │   ││    0x00007f1d4c3cb465: test   %r9d,%r9d
                    │   ││    0x00007f1d4c3cb468: jne    0x00007f1d4c3cbec1  ;*aload_0
                    │   ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.04%    0.08%    ↘   ││    0x00007f1d4c3cb46e: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                        ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                  ; implicit exception: dispatches to 0x00007f1d4c3cd005
  0.07%    0.07%        ││    0x00007f1d4c3cb473: test   %ebp,%ebp
                        ││    0x00007f1d4c3cb475: jg     0x00007f1d4c3cbfe1  ;*ifle
                        ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
  0.00%                 ││    0x00007f1d4c3cb47b: mov    0x40(%rsp),%r11
  0.31%    0.49%        ││    0x00007f1d4c3cb480: mov    0x18(%r11),%r9d    ;*getfield prog
                        ││                                                  ; - com.google.re2j.Machine::match@298 (line 239)
  0.04%    0.07%        ││    0x00007f1d4c3cb484: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                        ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                  ; implicit exception: dispatches to 0x00007f1d4c3cd015
  0.06%    0.05%        ││    0x00007f1d4c3cb489: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1d4c3cd025
  0.37%    0.44%        ││    0x00007f1d4c3cb48e: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││    0x00007f1d4c3cb495: jne    0x00007f1d4c3cbd51
  0.35%    0.41%        ││    0x00007f1d4c3cb49b: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%        ││    0x00007f1d4c3cb49f: mov    0x18(%rbx),%r11d   ;*getfield pc
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.05%        ││    0x00007f1d4c3cb4a3: cmp    $0x40,%r11d
                        ││    0x00007f1d4c3cb4a7: jg     0x00007f1d4c3cc035  ;*if_icmpgt
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.28%    0.44%        ││    0x00007f1d4c3cb4ad: mov    $0x1,%edx
  0.07%    0.09%        ││    0x00007f1d4c3cb4b2: mov    %r11d,%ecx
  0.02%    0.02%        ││    0x00007f1d4c3cb4b5: shl    %cl,%rdx           ;*lshl
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.81%    0.82%        ││    0x00007f1d4c3cb4b8: mov    0x34(%rsp),%r9d
  0.00%    0.01%        ││    0x00007f1d4c3cb4bd: mov    0x10(%r12,%r9,8),%r9  ;*getfield pcsl
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.04%        ││    0x00007f1d4c3cb4c2: mov    %r9,%r10
                        ││    0x00007f1d4c3cb4c5: and    %rdx,%r10          ;*land
                        ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.40%    0.28%        ││    0x00007f1d4c3cb4c8: test   %r10,%r10
                        ││    0x00007f1d4c3cb4cb: jne    0x00007f1d4c3cc089  ;*ifeq
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%                 ││    0x00007f1d4c3cb4d1: cmp    $0x40,%r11d
                        ││    0x00007f1d4c3cb4d5: jge    0x00007f1d4c3cc109  ;*if_icmpge
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.01%        ││    0x00007f1d4c3cb4db: mov    0x34(%rsp),%r11d
           0.00%        ││    0x00007f1d4c3cb4e0: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.42%    0.38%        ││    0x00007f1d4c3cb4e5: or     %r9,%rdx
  0.03%    0.00%        ││    0x00007f1d4c3cb4e8: mov    %rdx,0x10(%r12,%r11,8)  ;*putfield pcsl
                        ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.06%        ││    0x00007f1d4c3cb4ed: test   %r8d,%r8d
                        ││    0x00007f1d4c3cb4f0: jle    0x00007f1d4c3cbe69  ;*ifle
                        ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                        ││    0x00007f1d4c3cb4f6: mov    %r8d,%ebp
  0.40%    0.43%        ││    0x00007f1d4c3cb4f9: dec    %ebp               ;*isub
                        ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.01%        ││    0x00007f1d4c3cb4fb: mov    0x40(%rsp),%r10
  0.02%    0.05%        ││    0x00007f1d4c3cb500: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%        ││    0x00007f1d4c3cb504: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f1d4c3cd041
  0.39%    0.46%        ││    0x00007f1d4c3cb509: cmp    %r11d,%ebp
                        ││    0x00007f1d4c3cb50c: jae    0x00007f1d4c3cbbee
  0.01%                 ││    0x00007f1d4c3cb512: lea    (%r12,%r13,8),%r10
  0.02%    0.03%        ││    0x00007f1d4c3cb516: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                        ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                 ││    0x00007f1d4c3cb51b: test   %r8d,%r8d
                        ││    0x00007f1d4c3cb51e: je     0x00007f1d4c3cbc45  ;*putfield inst
                        ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.45%    0.41%        ││    0x00007f1d4c3cb524: mov    0x34(%rsp),%r11d
  0.01%    0.02%        ││    0x00007f1d4c3cb529: mov    0x20(%r12,%r11,8),%r9d  ;*getfield denseThreads
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.03%        ││    0x00007f1d4c3cb52e: mov    0xc(%r12,%r11,8),%ecx  ;*getfield size
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                        ││    0x00007f1d4c3cb533: lea    (%r12,%r8,8),%r10
  0.39%    0.42%        ││    0x00007f1d4c3cb537: mov    %ecx,%edx
  0.00%    0.01%        ││    0x00007f1d4c3cb539: inc    %edx
  0.02%    0.03%        ││    0x00007f1d4c3cb53b: mov    %edx,0xc(%r12,%r11,8)  ;*putfield size
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%        ││    0x00007f1d4c3cb540: mov    %rbx,%r11
  0.42%    0.50%        ││    0x00007f1d4c3cb543: shr    $0x3,%r11
  0.01%    0.00%        ││    0x00007f1d4c3cb547: mov    %r11d,0x10(%r12,%r8,8)
  0.05%    0.02%        ││    0x00007f1d4c3cb54c: shr    $0x9,%r10
  0.00%                 ││    0x00007f1d4c3cb550: movabs $0x7f1d47b98000,%r11
  0.33%    0.50%        ││    0x00007f1d4c3cb55a: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%        ││    0x00007f1d4c3cb55e: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f1d4c3cd051
  0.01%    0.03%        ││    0x00007f1d4c3cb563: cmp    %r10d,%ecx
                        ││    0x00007f1d4c3cb566: jae    0x00007f1d4c3cbc59  ;*aastore
                        ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%        ││    0x00007f1d4c3cb56c: test   %edi,%edi
                     ╭  ││    0x00007f1d4c3cb56e: jl     0x00007f1d4c3cb615  ;*ifge
                     │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.37%    0.48%     │  ││    0x00007f1d4c3cb574: xor    %ebx,%ebx          ;*iload_0
                     │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.01%     │  ││↗   0x00007f1d4c3cb576: cmp    $0xa,%edi
                     │  │││   0x00007f1d4c3cb579: je     0x00007f1d4c3cb910  ;*iload_1
                     │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.02%     │  │││   0x00007f1d4c3cb57f: mov    0x2c(%rsp),%r11d
  0.02%    0.00%     │  │││   0x00007f1d4c3cb584: test   %r11d,%r11d
                     │  │││   0x00007f1d4c3cb587: jl     0x00007f1d4c3cb908  ;*iload_1
                     │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.45%    0.51%     │  │││   0x00007f1d4c3cb58d: cmp    $0xa,%r11d
                     │  │││   0x00007f1d4c3cb591: je     0x00007f1d4c3cb918  ;*iload_0
                     │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%              │  │││   0x00007f1d4c3cb597: mov    %edi,%r10d
  0.02%    0.03%     │  │││   0x00007f1d4c3cb59a: add    $0xffffffbf,%r10d
  0.00%    0.01%     │  │││   0x00007f1d4c3cb59e: lea    (%r12,%r9,8),%r11  ;*getfield denseThreads
                     │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.45%    0.57%     │  │││   0x00007f1d4c3cb5a2: lea    0x10(%r11,%rcx,4),%r11
  0.03%    0.02%     │  │││   0x00007f1d4c3cb5a7: mov    %r8d,(%r11)
  0.11%    0.12%     │  │││   0x00007f1d4c3cb5aa: shr    $0x9,%r11
           0.00%     │  │││   0x00007f1d4c3cb5ae: movabs $0x7f1d47b98000,%r8
  0.32%    0.58%     │  │││   0x00007f1d4c3cb5b8: mov    %r12b,(%r8,%r11,1)  ;*aastore
                     │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.09%     │  │││   0x00007f1d4c3cb5bc: cmp    $0x1a,%r10d
  0.05%    0.04%     │╭ │││   0x00007f1d4c3cb5c0: jb     0x00007f1d4c3cb5d3  ;*if_icmple
                     ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%     ││ │││   0x00007f1d4c3cb5c2: mov    %edi,%r11d
  0.31%    0.38%     ││ │││   0x00007f1d4c3cb5c5: add    $0xffffff9f,%r11d
  0.09%    0.04%     ││ │││   0x00007f1d4c3cb5c9: cmp    $0x1a,%r11d
                     ││ │││   0x00007f1d4c3cb5cd: jae    0x00007f1d4c3cbb26  ;*iconst_1
                     ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%     │↘ │││   0x00007f1d4c3cb5d3: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.07%     │  │││   0x00007f1d4c3cb5d8: mov    0x2c(%rsp),%r10d
  0.27%    0.27%     │  │││   0x00007f1d4c3cb5dd: add    $0xffffffbf,%r10d
  0.05%    0.10%     │  │││   0x00007f1d4c3cb5e1: cmp    $0x1a,%r10d
                     │ ╭│││   0x00007f1d4c3cb5e5: jb     0x00007f1d4c3cb5fa  ;*if_icmple
                     │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.06%     │ ││││   0x00007f1d4c3cb5e7: mov    0x2c(%rsp),%r11d
  0.07%    0.10%     │ ││││   0x00007f1d4c3cb5ec: add    $0xffffff9f,%r11d
  0.20%    0.26%     │ ││││   0x00007f1d4c3cb5f0: cmp    $0x1a,%r11d
                     │ ││││   0x00007f1d4c3cb5f4: jae    0x00007f1d4c3cbb47  ;*iconst_1
                     │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.06%     │ ↘│││   0x00007f1d4c3cb5fa: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.17%    0.14%     │  │││   0x00007f1d4c3cb600: cmp    %r10d,%ebp
                     │  ╰││   0x00007f1d4c3cb603: je     0x00007f1d4c3cb2af  ;*if_icmpeq
                     │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%              │   ││   0x00007f1d4c3cb609: or     $0x10,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%     │   ││   0x00007f1d4c3cb60c: mov    %ebx,0x4c(%rsp)
  0.06%    0.08%     │   ╰│   0x00007f1d4c3cb610: jmpq   0x00007f1d4c3cb2b6
                     ↘    │   0x00007f1d4c3cb615: mov    $0x5,%ebx
                          ╰   0x00007f1d4c3cb61a: jmpq   0x00007f1d4c3cb576
                              0x00007f1d4c3cb61f: nop
  0.00%                       0x00007f1d4c3cb620: mov    %eax,0x5c(%rsp)
                              0x00007f1d4c3cb624: jmpq   0x00007f1d4c3cb85c
                              0x00007f1d4c3cb629: mov    0x5c(%rsp),%esi
                              0x00007f1d4c3cb62d: add    $0x2,%esi
                              0x00007f1d4c3cb630: mov    %esi,0x5c(%rsp)
                              0x00007f1d4c3cb634: mov    0x5c(%rsp),%esi
                              0x00007f1d4c3cb638: inc    %esi
                              0x00007f1d4c3cb63a: mov    %esi,0x58(%rsp)
                              0x00007f1d4c3cb63e: jmp    0x00007f1d4c3cb662
           0.00%              0x00007f1d4c3cb640: mov    0x5c(%rsp),%esi
                              0x00007f1d4c3cb644: add    $0x2,%esi
                              0x00007f1d4c3cb647: mov    %esi,0x58(%rsp)
                           ╭  0x00007f1d4c3cb64b: jmp    0x00007f1d4c3cb658
                           │  0x00007f1d4c3cb64d: mov    0x5c(%rsp),%esi
                           │  0x00007f1d4c3cb651: add    $0x2,%esi
                           │  0x00007f1d4c3cb654: mov    %esi,0x5c(%rsp)
                           ↘  0x00007f1d4c3cb658: mov    0x5c(%rsp),%esi
                              0x00007f1d4c3cb65c: inc    %esi               ;*iinc
                                                                            ; - java.lang.String::indexOf@69 (line 1772)
                                                                            ; - java.lang.String::indexOf@21 (line 1718)
....................................................................................................
 22.52%   25.56%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.66%   60.96%         C2, level 4  com.google.re2j.Machine::step, version 537 (1403 bytes) 
 22.52%   25.56%         C2, level 4  com.google.re2j.Machine::match, version 579 (1179 bytes) 
  4.93%    5.22%         C2, level 4  com.google.re2j.Machine::step, version 537 (111 bytes) 
  3.65%    3.88%         C2, level 4  com.google.re2j.Machine::step, version 537 (163 bytes) 
  1.11%    0.21%         C2, level 4  com.google.re2j.Machine::init, version 575 (299 bytes) 
  0.75%    1.06%         C2, level 4  com.google.re2j.Machine::match, version 579 (70 bytes) 
  0.42%    0.41%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.40%    0.20%         C2, level 4  com.google.re2j.Machine::step, version 537 (175 bytes) 
  0.25%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 575 (119 bytes) 
  0.19%    0.07%         C2, level 4  com.google.re2j.Machine::init, version 575 (69 bytes) 
  0.15%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 579 (187 bytes) 
  0.13%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 579 (157 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 590 (8 bytes) 
  0.09%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 590 (21 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 590 (0 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (77 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 590 (88 bytes) 
  0.07%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 590 (0 bytes) 
  0.06%    0.04%         C2, level 4  java.util.Collections::shuffle, version 601 (57 bytes) 
  2.12%    1.91%  <...other 396 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 71.64%   70.25%         C2, level 4  com.google.re2j.Machine::step, version 537 
 23.73%   26.88%         C2, level 4  com.google.re2j.Machine::match, version 579 
  1.56%    0.32%         C2, level 4  com.google.re2j.Machine::init, version 575 
  1.41%    1.29%   [kernel.kallsyms]  [unknown] 
  0.64%    0.32%         C2, level 4  com.google.re2j.RE2::match, version 590 
  0.14%    0.06%         C2, level 4  java.util.Collections::shuffle, version 601 
  0.10%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 645 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.02%              [vdso]  [unknown] 
  0.04%    0.03%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.03%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.00%           libjvm.so  decode_env::handle_event 
  0.02%    0.00%           libjvm.so  SpinPause 
  0.01%                 libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.01%    0.02%           libjvm.so  xmlTextStream::write 
  0.01%    0.03%           libjvm.so  fileStream::write 
  0.01%    0.04%           libjvm.so  outputStream::update_position 
  0.01%                    libjvm.so  Monitor::unlock 
  0.44%    0.30%  <...other 64 warm methods...>
....................................................................................................
100.00%   99.72%  <totals>

....[Distribution by Source]........................................................................
 97.82%   97.90%         C2, level 4
  1.41%    1.29%   [kernel.kallsyms]
  0.37%    0.37%           libjvm.so
  0.12%    0.24%        libc-2.26.so
  0.08%    0.06%  libpthread-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.06%    0.04%              [vdso]
  0.04%    0.03%        runtime stub
  0.02%    0.02%         interpreter
  0.01%                  C1, level 3
  0.00%               perf-21619.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  17884.047 ± 349.056  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
