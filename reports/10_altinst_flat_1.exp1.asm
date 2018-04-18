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
# Warmup Iteration   1: 5281.490 ops/s
# Warmup Iteration   2: 14019.761 ops/s
# Warmup Iteration   3: 14132.857 ops/s
# Warmup Iteration   4: 14065.793 ops/s
# Warmup Iteration   5: 14063.981 ops/s
# Warmup Iteration   6: 14042.438 ops/s
# Warmup Iteration   7: 14117.031 ops/s
# Warmup Iteration   8: 13944.220 ops/s
# Warmup Iteration   9: 14027.298 ops/s
# Warmup Iteration  10: 14251.405 ops/s
# Warmup Iteration  11: 14225.554 ops/s
# Warmup Iteration  12: 14259.269 ops/s
# Warmup Iteration  13: 14254.589 ops/s
# Warmup Iteration  14: 14224.025 ops/s
# Warmup Iteration  15: 14200.116 ops/s
# Warmup Iteration  16: 14219.787 ops/s
# Warmup Iteration  17: 14233.338 ops/s
# Warmup Iteration  18: 14230.931 ops/s
# Warmup Iteration  19: 14205.393 ops/s
# Warmup Iteration  20: 14102.255 ops/s
Iteration   1: 14208.734 ops/s
Iteration   2: 14188.463 ops/s
Iteration   3: 14220.899 ops/s
Iteration   4: 14220.882 ops/s
Iteration   5: 14199.408 ops/s
Iteration   6: 14246.220 ops/s
Iteration   7: 14244.984 ops/s
Iteration   8: 14246.098 ops/s
Iteration   9: 14231.297 ops/s
Iteration  10: 14247.484 ops/s
Iteration  11: 14251.191 ops/s
Iteration  12: 14235.682 ops/s
Iteration  13: 14247.127 ops/s
Iteration  14: 14247.516 ops/s
Iteration  15: 14233.220 ops/s
Iteration  16: 14245.687 ops/s
Iteration  17: 14245.037 ops/s
Iteration  18: 14244.624 ops/s
Iteration  19: 14235.746 ops/s
Iteration  20: 14245.745 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  14234.302 ±(99.9%) 15.460 ops/s [Average]
  (min, avg, max) = (14188.463, 14234.302, 14251.191), stdev = 17.803
  CI (99.9%): [14218.843, 14249.762] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 198181 total address lines.
Perf output processed (skipped 23.486 seconds):
 Column 1: cycles (20403 events)
 Column 2: instructions (20468 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 498 (1403 bytes) 

                       0x00007f220122428e: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f2201224292: xor    %edi,%edi
                       0x00007f2201224294: vmovd  %xmm6,%r8d
                       0x00007f2201224299: vmovd  %xmm0,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.10%    ↗  0x00007f220122429d: mov    0xa4(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  0.98%    1.46%   ↗│  0x00007f22012242a5: test   %rdi,%rdi
                  ╭││  0x00007f22012242a8: je     0x00007f22012242f5  ;*ifnull
                  │││                                                ; - com.google.re2j.Machine::step@220 (line 302)
           0.00%  │││  0x00007f22012242aa: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │││                                                ; implicit exception: dispatches to 0x00007f22012259a9
  0.48%    0.48%  │││  0x00007f22012242af: cmp    %ebp,%r8d
                  │││  0x00007f22012242b2: jge    0x00007f2201224cad  ;*if_icmplt
                  │││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.01%  │││  0x00007f22012242b8: mov    %r8d,%r9d
  0.92%    1.37%  │││  0x00007f22012242bb: inc    %r9d
                  │││  0x00007f22012242be: mov    0x20(%rsp),%rcx
  0.42%    0.46%  │││  0x00007f22012242c3: mov    %r9d,0xc(%rcx)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.02%    0.02%  │││  0x00007f22012242c7: cmp    %ebp,%r8d
                  │││  0x00007f22012242ca: jae    0x00007f2201224b51  ;*aastore
                  │││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.97%    1.28%  │││  0x00007f22012242d0: mov    %rdi,%rcx
  0.00%           │││  0x00007f22012242d3: shr    $0x3,%rcx
  0.43%    0.47%  │││  0x00007f22012242d7: lea    (%r12,%rdx,8),%r9  ;*getfield pool
                  │││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.02%    0.02%  │││  0x00007f22012242db: lea    0x10(%r9,%r8,4),%r8
  0.96%    1.05%  │││  0x00007f22012242e0: mov    %ecx,(%r8)
                  │││  0x00007f22012242e3: shr    $0x9,%r8
  0.41%    0.32%  │││  0x00007f22012242e7: movabs $0x7f21fd1ff000,%r9
  0.03%    0.00%  │││  0x00007f22012242f1: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.39%    1.54%  ↘││  0x00007f22012242f5: mov    0x8(%rsp),%r8
                   ││  0x00007f22012242fa: mov    0xc(%r8),%r8d      ;*getfield size
                   ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.45%    0.30%   ││  0x00007f22012242fe: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=481}
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.08%    0.10%   ││  0x00007f2201224301: test   %eax,0x16aa6cf9(%rip)        # 0x00007f2217ccb000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                   ││                                                ;   {poll}
  1.38%    1.30%   ││  0x00007f2201224307: cmp    %r8d,%r10d
                   ││  0x00007f220122430a: jge    0x00007f220122493e
                   ││  0x00007f2201224310: mov    %r11,%r13          ;*aload_1
                   ││                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.63%    0.40%   ││  0x00007f2201224313: mov    0x8(%rsp),%r11
  0.12%    0.10%   ││  0x00007f2201224318: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  1.34%    1.38%   ││  0x00007f220122431c: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f2201225975
  2.03%    2.56%   ││  0x00007f2201224321: cmp    %r9d,%r10d
                   ││  0x00007f2201224324: jae    0x00007f2201224abf
  0.82%    0.61%   ││  0x00007f220122432a: shl    $0x3,%r11
  0.09%    0.13%   ││  0x00007f220122432e: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.73%    0.69%   ││  0x00007f2201224333: mov    0x10(%r12,%r14,8),%r11d  ;*getfield inst
                   ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   ││                                                ; implicit exception: dispatches to 0x00007f2201225989
  3.39%    3.33%   ││  0x00007f2201224338: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                   ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   ││                                                ; implicit exception: dispatches to 0x00007f2201225999
  6.24%    6.36%   ││  0x00007f220122433d: cmp    $0x6,%ebp
  1.49%    1.65%   ││  0x00007f2201224340: je     0x00007f2201224bad  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.74%    1.80%   ││  0x00007f2201224346: mov    0x8(%r12,%r11,8),%r9d
                   ││  0x00007f220122434b: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f2201224352: jne    0x00007f2201224b05  ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.01%            ││  0x00007f2201224358: mov    0x20(%rsp),%r8
                   ││  0x00007f220122435d: mov    0xc(%r8),%r8d      ;*getfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.82%    1.55%   ││  0x00007f2201224361: mov    0x20(%rsp),%r9
                   ││  0x00007f2201224366: mov    0x24(%r9),%edx     ;*getfield pool
                   ││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%   ││  0x00007f220122436a: shl    $0x3,%r11          ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.00%            ││  0x00007f220122436e: mov    0xc(%r11),%ebp     ;*getfield op
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.68%    1.57%   ││  0x00007f2201224372: lea    (%r12,%r14,8),%rdi  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                   ││  0x00007f2201224376: cmp    $0xa,%ebp
                   ││  0x00007f2201224379: jne    0x00007f22012248d2  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.02%    0.02%   ││  0x00007f220122437f: mov    0x1c(%r11),%ecx    ;*getfield outInst
                   ││                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.04%    0.01%   ││  0x00007f2201224383: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                   ││                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.38%    0.03%   ││  0x00007f2201224388: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f22012259b9
  0.50%    0.03%   ││  0x00007f220122438d: lea    (%r12,%rcx,8),%r9
  0.01%    0.00%   ││  0x00007f2201224391: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   ││  0x00007f2201224398: jne    0x00007f2201224975  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.46%    0.16%   ││  0x00007f220122439e: mov    0x18(%r9),%ebx     ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007f22012243a2: mov    %r13,%r11
                   ││  0x00007f22012243a5: mov    0x10(%r13),%rsi    ;*getfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││                                                ; implicit exception: dispatches to 0x00007f22012259dd
                   ││  0x00007f22012243a9: cmp    $0x40,%ebx
                   ││  0x00007f22012243ac: jg     0x00007f2201224ecd  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.51%   ││  0x00007f22012243b2: mov    %ebx,%ecx
                   ││  0x00007f22012243b4: mov    $0x1,%r13d
                   ││  0x00007f22012243ba: shl    %cl,%r13           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.92%            ││  0x00007f22012243bd: mov    %rsi,%rcx
                   ││  0x00007f22012243c0: and    %r13,%rcx
                   ││  0x00007f22012243c3: test   %rcx,%rcx
                   ╰│  0x00007f22012243c6: jne    0x00007f22012242a5  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%             │  0x00007f22012243cc: cmp    $0x40,%ebx
                    │  0x00007f22012243cf: jge    0x00007f2201224f15  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%             │  0x00007f22012243d5: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012243d9: mov    0x1c(%r9),%ebp     ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012243dd: or     %rsi,%r13          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.00%    │  0x00007f22012243e0: vmovq  %r13,%xmm3
  0.23%    0.00%    │  0x00007f22012243e5: mov    %r13,0x10(%r11)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012243e9: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f22012259f1
  0.57%    0.08%    │  0x00007f22012243ee: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f22012243f4: jne    0x00007f2201224c31
  0.42%             │  0x00007f22012243fa: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012243fe: mov    0x18(%r13),%ebx    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.60%    0.03%    │  0x00007f2201224402: cmp    $0x40,%ebx
                    │  0x00007f2201224405: jg     0x00007f2201224f5d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.01%    │  0x00007f220122440b: mov    $0x1,%esi
  0.04%             │  0x00007f2201224410: mov    %ebx,%ecx
                    │  0x00007f2201224412: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.74%    0.13%    │  0x00007f2201224415: vmovq  %xmm3,%rcx
                    │  0x00007f220122441a: and    %rsi,%rcx          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f220122441d: test   %rcx,%rcx
                    │  0x00007f2201224420: jne    0x00007f2201224a4a  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.11%    │  0x00007f2201224426: vmovd  %ebx,%xmm2
  0.39%    0.24%    │  0x00007f220122442a: mov    %r13,%rbx
                    │  0x00007f220122442d: vmovq  %r9,%xmm1
                    │  0x00007f2201224432: vmovd  %edx,%xmm0
  0.17%    0.15%    │  0x00007f2201224436: mov    %r8d,%r13d
  0.30%    0.33%    │  0x00007f2201224439: mov    %r10d,0xa4(%rsp)
                    │  0x00007f2201224441: mov    %r11,%r8
                    │  0x00007f2201224444: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.18%    │  0x00007f2201224446: test   %rcx,%rcx
                    │  0x00007f2201224449: jne    0x00007f2201224fa9  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.38%    │  0x00007f220122444f: vmovd  %xmm2,%r9d
                    │  0x00007f2201224454: cmp    $0x40,%r9d
                    │  0x00007f2201224458: jge    0x00007f2201224fe5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f220122445e: vmovq  %xmm3,%rdx
  0.10%    0.11%    │  0x00007f2201224463: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.35%    │  0x00007f2201224466: mov    %r8,%rcx
                    │  0x00007f2201224469: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f220122446d: mov    %rdi,%r10
  0.13%    0.12%    │  0x00007f2201224470: mov    %rbx,%r11
  0.30%    0.21%    │  0x00007f2201224473: shr    $0x3,%r11
                    │  0x00007f2201224477: mov    %r14d,%r8d
                    │  0x00007f220122447a: mov    %r11d,0x10(%r12,%r14,8)
  0.14%    0.05%    │  0x00007f220122447f: shr    $0x9,%r10
  0.35%    0.28%    │  0x00007f2201224483: movabs $0x7f21fd1ff000,%r11
                    │  0x00007f220122448d: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f2201224491: mov    0xc(%r12,%rax,8),%ebx  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f2201225a15
  0.10%    0.16%    │  0x00007f2201224496: test   %ebx,%ebx
                    │  0x00007f2201224498: jg     0x00007f220122502d  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.33%    │  0x00007f220122449e: mov    %ebx,0xac(%rsp)
  0.00%             │  0x00007f22012244a5: vmovd  %eax,%xmm3
                    │  0x00007f22012244a9: mov    %rcx,%r14
  0.13%    0.12%    │  0x00007f22012244ac: mov    0xc(%rcx),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.27%    │  0x00007f22012244b0: mov    %r10d,0x28(%rsp)
                    │  0x00007f22012244b5: mov    0x20(%rcx),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012244b9: vmovd  %r10d,%xmm2
  0.16%    0.11%    │  0x00007f22012244be: mov    0x28(%rsp),%r10d
  0.29%    0.27%    │  0x00007f22012244c3: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012244c6: vmovd  %r10d,%xmm4
                    │  0x00007f22012244cb: mov    %r10d,0xc(%rcx)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.09%    │  0x00007f22012244cf: vmovd  %xmm2,%r10d
  0.37%    0.27%    │  0x00007f22012244d4: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f2201225a25
  0.00%             │  0x00007f22012244d9: mov    0x28(%rsp),%r10d
                    │  0x00007f22012244de: cmp    %r9d,%r10d
                    │  0x00007f22012244e1: jae    0x00007f2201224bf5  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.09%    │  0x00007f22012244e7: vmovq  %xmm1,%r10
  0.40%    0.31%    │  0x00007f22012244ec: mov    0x20(%r10),%r10d   ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012244f0: vmovd  %r10d,%xmm1
  0.00%             │  0x00007f22012244f5: vmovd  %xmm2,%r11d
  0.14%    0.08%    │  0x00007f22012244fa: shl    $0x3,%r11          ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.19%    │  0x00007f22012244fe: mov    0x28(%rsp),%r10d
                    │  0x00007f2201224503: lea    0x10(%r11,%r10,4),%r10
                    │  0x00007f2201224508: mov    %r8d,(%r10)
  0.24%    0.16%    │  0x00007f220122450b: shr    $0x9,%r10
  0.22%    0.14%    │  0x00007f220122450f: movabs $0x7f21fd1ff000,%r8
                    │  0x00007f2201224519: mov    %r12b,(%r8,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.09%    │  0x00007f220122451d: vmovd  %xmm1,%r10d
  0.14%    0.03%    │  0x00007f2201224522: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f2201225a41
  0.25%    0.14%    │  0x00007f2201224527: movslq 0x28(%rsp),%r10
                    │  0x00007f220122452c: lea    (%r11,%r10,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.05%    │  0x00007f2201224530: mov    %rdi,%rbx
  0.13%    0.07%    │  0x00007f2201224533: add    $0x14,%rbx         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.09%    │  0x00007f2201224537: mov    %r13d,%r10d
                    │  0x00007f220122453a: dec    %r10d              ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%    │  0x00007f220122453d: vmovd  %r10d,%xmm6
  0.12%    0.12%    │  0x00007f2201224542: vmovd  %xmm1,%r10d
  0.29%    0.30%    │  0x00007f2201224547: shl    $0x3,%r10
                    │  0x00007f220122454b: mov    0x28(%rsp),%r8d
  0.07%    0.05%    │  0x00007f2201224550: add    $0x2,%r8d          ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.02%    │  0x00007f2201224554: cmp    $0xf8019887,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f220122455a: jne    0x00007f22012241b4  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.02%    │  0x00007f2201224560: mov    %r10,%rax
                    │  0x00007f2201224563: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.10%    │  0x00007f2201224567: mov    %r10d,%ecx
  0.14%    0.12%    │  0x00007f220122456a: cmp    $0x40,%r10d
                    │  0x00007f220122456e: jg     0x00007f22012252c9  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.37%    │  0x00007f2201224574: mov    $0x1,%esi
                    │  0x00007f2201224579: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.44%    0.58%    │  0x00007f220122457c: mov    %rdx,%r10
                    │  0x00007f220122457f: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.16%    │  0x00007f2201224582: test   %r10,%r10
                    │  0x00007f2201224585: jne    0x00007f2201224a72  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.11%    │  0x00007f220122458b: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.21%    0.28%    │  0x00007f220122458d: test   %r10,%r10
                    │  0x00007f2201224590: jne    0x00007f2201225305  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f2201224596: mov    %ecx,%r10d
  0.05%    0.18%    │  0x00007f2201224599: cmp    $0x40,%r10d
                    │  0x00007f220122459d: jge    0x00007f2201225331  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.19%    │  0x00007f22012245a3: mov    %rax,%r10
  0.26%    0.39%    │  0x00007f22012245a6: mov    0x14(%r10),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012245aa: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.11%    │  0x00007f22012245ad: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.17%    │  0x00007f22012245b1: cmp    0xac(%rsp),%ebp
                    │  0x00007f22012245b8: jl     0x00007f22012253bd  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.30%    │  0x00007f22012245be: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f22012245c2: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f2201225a7d
  0.11%    0.09%    │  0x00007f22012245c7: cmp    $0xf8019844,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    │  0x00007f22012245cd: jne    0x00007f2201224e71
  0.12%    0.15%    │  0x00007f22012245d3: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.37%    │  0x00007f22012245d7: vmovq  %r10,%xmm1
                    │  0x00007f22012245dc: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.10%    │  0x00007f22012245e0: mov    %r10d,%eax
  0.08%    0.13%    │  0x00007f22012245e3: cmp    $0x40,%r10d
                    │  0x00007f22012245e7: jg     0x00007f220122546d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.26%    │  0x00007f22012245ed: mov    $0x1,%esi
                    │  0x00007f22012245f2: mov    %r10d,%ecx
  0.07%    0.14%    │  0x00007f22012245f5: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.52%    0.54%    │  0x00007f22012245f8: mov    %rdx,%r10
  0.05%    0.03%    │  0x00007f22012245fb: and    %rsi,%r10
  0.14%    0.09%    │  0x00007f22012245fe: test   %r10,%r10
                    │  0x00007f2201224601: jne    0x00007f2201224a86  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.33%    │  0x00007f2201224607: mov    %ecx,%r10d
  0.03%    0.06%    │  0x00007f220122460a: cmp    $0x40,%r10d
                    │  0x00007f220122460e: jge    0x00007f22012254a9  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.04%    │  0x00007f2201224614: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.12%    │  0x00007f2201224617: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.32%    │  0x00007f220122461b: vmovq  %xmm1,%r10
  0.05%    0.05%    │  0x00007f2201224620: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.06%    │  0x00007f2201224624: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f2201225aad
  0.21%    0.29%    │  0x00007f2201224629: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f2201224630: jne    0x00007f2201224e99
  0.24%    0.35%    │  0x00007f2201224636: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f220122463a: vmovq  %r10,%xmm5
  0.06%    0.08%    │  0x00007f220122463f: mov    0x18(%r10),%r10d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.21%    │  0x00007f2201224643: mov    %r10d,%eax
  0.28%    0.28%    │  0x00007f2201224646: cmp    $0x40,%r10d
                    │  0x00007f220122464a: jg     0x00007f22012254e5  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.03%    │  0x00007f2201224650: mov    $0x1,%esi
  0.06%    0.04%    │  0x00007f2201224655: mov    %r10d,%ecx
  0.11%    0.09%    │  0x00007f2201224658: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.41%    0.43%    │  0x00007f220122465b: mov    %rdx,%r10
  0.13%    0.10%    │  0x00007f220122465e: and    %rsi,%r10          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.27%    │  0x00007f2201224661: test   %r10,%r10
                    │  0x00007f2201224664: jne    0x00007f2201224a97  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%    │  0x00007f220122466a: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.15%    │  0x00007f220122466c: test   %r10,%r10
                    │  0x00007f220122466f: jne    0x00007f2201225529  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.13%    │  0x00007f2201224675: mov    %ecx,%r10d
  0.23%    0.26%    │  0x00007f2201224678: cmp    $0x40,%r10d
                    │  0x00007f220122467c: jge    0x00007f2201225561  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007f2201224682: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.12%    │  0x00007f2201224685: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.09%    │  0x00007f2201224689: test   %r13d,%r13d
                    │  0x00007f220122468c: jle    0x00007f220122522d  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.28%    │  0x00007f2201224692: mov    0x20(%rsp),%rcx
  0.01%    0.01%    │  0x00007f2201224697: vmovd  %xmm6,%r10d
  0.12%    0.10%    │  0x00007f220122469c: mov    %r10d,0xc(%rcx)    ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.11%    │  0x00007f22012246a0: vmovd  %xmm0,%r10d
  0.22%    0.32%    │  0x00007f22012246a5: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f2201225ac9
  0.01%    0.01%    │  0x00007f22012246aa: vmovd  %xmm6,%esi
  0.12%    0.13%    │  0x00007f22012246ae: cmp    %r10d,%esi
                    │  0x00007f22012246b1: jae    0x00007f2201224da5
  0.11%    0.16%    │  0x00007f22012246b7: vmovd  %xmm0,%esi
  0.23%    0.38%    │  0x00007f22012246bb: lea    (%r12,%rsi,8),%rax
                    │  0x00007f22012246bf: mov    0xc(%rax,%r13,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.21%    │  0x00007f22012246c4: test   %ebp,%ebp
                    │  0x00007f22012246c6: je     0x00007f2201224df1  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.13%    │  0x00007f22012246cc: mov    %r8d,0xc(%r14)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.18%    │  0x00007f22012246d0: lea    (%r12,%rbp,8),%rcx
           0.00%    │  0x00007f22012246d4: vmovq  %xmm5,%rsi
  0.13%    0.16%    │  0x00007f22012246d9: shr    $0x3,%rsi
  0.10%    0.10%    │  0x00007f22012246dd: mov    %esi,0x10(%r12,%rbp,8)
  0.30%    0.44%    │  0x00007f22012246e2: shr    $0x9,%rcx
  0.01%             │  0x00007f22012246e6: movabs $0x7f21fd1ff000,%rsi
  0.09%    0.16%    │  0x00007f22012246f0: mov    %r12b,(%rsi,%rcx,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.33%    │  0x00007f22012246f4: cmp    %r9d,%r8d
                    │  0x00007f22012246f7: jae    0x00007f2201224e05
  0.21%    0.37%    │  0x00007f22012246fd: mov    %ebp,(%rbx)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │  0x00007f22012246ff: vmovq  %xmm1,%r8
  0.13%    0.14%    │  0x00007f2201224704: mov    0x20(%r8),%r8d     ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.16%    │  0x00007f2201224708: mov    %r8d,%ecx
  0.22%    0.22%    │  0x00007f220122470b: mov    %rbx,%r8
  0.01%    0.00%    │  0x00007f220122470e: shr    $0x9,%r8
  0.15%    0.15%    │  0x00007f2201224712: movabs $0x7f21fd1ff000,%r9
  0.15%    0.19%    │  0x00007f220122471c: mov    %r12b,(%r9,%r8,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.38%    │  0x00007f2201224720: mov    %ecx,%r8d
  0.00%             │  0x00007f2201224723: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f2201225add
  0.13%    0.17%    │  0x00007f2201224728: shl    $0x3,%r8
  0.10%    0.19%    │  0x00007f220122472c: cmp    $0xf8019887,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f2201224733: je     0x00007f220122481d
  0.19%    0.27%    │  0x00007f2201224739: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
           0.00%    │  0x00007f2201224740: jne    0x00007f2201225271  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.10%    │  0x00007f2201224746: mov    %r8,%rbx
  0.18%    0.21%    │  0x00007f2201224749: mov    0x18(%r8),%r8d     ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.23%    │  0x00007f220122474d: mov    %r8d,%ecx
  0.00%    0.00%    │  0x00007f2201224750: cmp    $0x40,%r8d
                    │  0x00007f2201224754: jg     0x00007f2201225695  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.07%    │  0x00007f220122475a: mov    $0x1,%r9d
  0.11%    0.11%    │  0x00007f2201224760: shl    %cl,%r9            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.31%    │  0x00007f2201224763: mov    %rdx,%r8
  0.15%    0.16%    │  0x00007f2201224766: and    %r9,%r8            ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.31%    │  0x00007f2201224769: test   %r8,%r8
                    │  0x00007f220122476c: jne    0x00007f2201224aab  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    │  0x00007f2201224772: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.14%    │  0x00007f2201224774: test   %r8,%r8
                    │  0x00007f2201224777: jne    0x00007f2201225705  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.17%    │  0x00007f220122477d: mov    %ecx,%r8d
  0.16%    0.19%    │  0x00007f2201224780: cmp    $0x40,%r8d
                    │  0x00007f2201224784: jge    0x00007f2201225745  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │  0x00007f220122478a: or     %r9,%rdx
  0.12%    0.13%    │  0x00007f220122478d: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.17%    │  0x00007f2201224791: vmovd  %xmm6,%r8d
  0.18%    0.30%    │  0x00007f2201224796: test   %r8d,%r8d
                    │  0x00007f2201224799: jle    0x00007f22012255a5  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007f220122479f: mov    %r13d,%r8d
  0.09%    0.11%    │  0x00007f22012247a2: add    $0xfffffffe,%r8d   ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.18%    │  0x00007f22012247a6: mov    0x20(%rsp),%r9
  0.19%    0.28%    │  0x00007f22012247ab: mov    %r8d,0xc(%r9)      ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f22012247af: cmp    %r10d,%r8d
                    │  0x00007f22012247b2: jae    0x00007f2201225171
  0.14%    0.01%    │  0x00007f22012247b8: mov    0x10(%rax,%r8,4),%r9d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.12%    │  0x00007f22012247bd: test   %r9d,%r9d
  0.14%    0.08%    │  0x00007f22012247c0: je     0x00007f22012251cd  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007f22012247c6: add    $0x18,%rdi
  0.08%    0.12%    │  0x00007f22012247ca: mov    %r9d,(%rdi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.20%    │  0x00007f22012247cd: lea    (%r12,%r9,8),%r10
  0.23%    0.27%    │  0x00007f22012247d1: mov    %rdi,%r11
  0.02%    0.02%    │  0x00007f22012247d4: shr    $0x9,%r11
  0.10%    0.18%    │  0x00007f22012247d8: shr    $0x9,%r10
  0.13%    0.21%    │  0x00007f22012247dc: movabs $0x7f21fd1ff000,%rcx
  0.19%    0.34%    │  0x00007f22012247e6: mov    %r12b,(%rcx,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.16%    │  0x00007f22012247ea: movabs $0x7f21fd1ff000,%r10
  0.10%    0.07%    │  0x00007f22012247f4: mov    %r12b,(%r10,%r11,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.18%    │  0x00007f22012247f8: mov    0x28(%rsp),%ecx
  0.12%    0.31%    │  0x00007f22012247fc: add    $0x3,%ecx
  0.06%    0.09%    │  0x00007f22012247ff: mov    %r14,%r11
  0.09%    0.14%    │  0x00007f2201224802: mov    %ecx,0xc(%r11)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.15%    │  0x00007f2201224806: mov    %rbx,%rcx
  0.15%    0.27%    │  0x00007f2201224809: shr    $0x3,%rcx
  0.03%    0.10%    │  0x00007f220122480d: mov    %ecx,0x10(%r12,%r9,8)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.13%    │  0x00007f2201224812: xor    %edi,%edi
  0.11%    0.12%    │  0x00007f2201224814: vmovd  %xmm0,%edx
  0.13%    0.21%    ╰  0x00007f2201224818: jmpq   0x00007f220122429d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f220122481d: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
....................................................................................................
 62.51%   60.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 545 (977 bytes) 

                             0x00007f2201242fd4: je     0x00007f220124392d  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007f2201242fda: mov    %edi,%r11d
                             0x00007f2201242fdd: add    $0xffffffbf,%r11d
                             0x00007f2201242fe1: cmp    $0x1a,%r11d
                  ╭          0x00007f2201242fe5: jb     0x00007f2201242ff8  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%           │          0x00007f2201242fe7: mov    %edi,%r8d
                  │          0x00007f2201242fea: add    $0xffffff9f,%r8d
                  │          0x00007f2201242fee: cmp    $0x1a,%r8d
                  │          0x00007f2201242ff2: jae    0x00007f2201243936  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%  ↘          0x00007f2201242ff8: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%             0x00007f2201242ffc: mov    0x40(%rsp),%r11
           0.00%             0x00007f2201243001: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                           ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                      0x00007f2201243005: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                           ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
                             0x00007f2201243009: mov    %rbx,%r11
  0.00%                      0x00007f220124300c: shl    $0x3,%r11          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007f2201243010: mov    %r11,0x20(%rsp)
  0.00%                      0x00007f2201243015: xor    %ebx,%ebx
                             0x00007f2201243017: xor    %edx,%edx
  0.00%                      0x00007f2201243019: mov    %edx,0x60(%rsp)
                   ╭         0x00007f220124301d: jmpq   0x00007f22012431a5
  0.05%    0.04%   │    ↗    0x00007f2201243022: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.25%    0.10%   │    │    0x00007f2201243026: mov    %r9d,0x4c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.16%   │    │↗   0x00007f220124302b: mov    0x60(%rsp),%r10d
  0.09%    0.09%   │    ││   0x00007f2201243030: cmp    0x14(%rsp),%r10d
                   │    ││   0x00007f2201243035: je     0x00007f220124386a  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.15%    0.23%   │    ││   0x00007f220124303b: xor    %ebx,%ebx          ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.20%    0.20%   │    ││   0x00007f220124303d: mov    %rax,-0x8(%rsp)
  0.12%    0.17%   │    ││   0x00007f2201243042: mov    0x60(%rsp),%eax
  0.13%    0.14%   │    ││   0x00007f2201243046: mov    %eax,0x38(%rsp)
  0.11%    0.10%   │    ││   0x00007f220124304a: mov    -0x8(%rsp),%rax
  0.71%    0.48%   │    ││   0x00007f220124304f: mov    %eax,0x2c(%rsp)    ;*invokevirtual endPos
                   │    ││                                                 ; - com.google.re2j.Machine::match@345 (line 242)
  0.10%    0.06%   │    ││   0x00007f2201243053: add    0x28(%rsp),%r10d   ;*iadd
                   │    ││                                                 ; - com.google.re2j.Machine::match@337 (line 242)
  0.17%    0.23%   │    ││   0x00007f2201243058: mov    %r10d,0x60(%rsp)
  0.09%    0.07%   │    ││   0x00007f220124305d: mov    0x40(%rsp),%rsi
  0.19%    0.34%   │    ││   0x00007f2201243062: mov    0x18(%rsp),%rdx
  0.07%    0.10%   │    ││   0x00007f2201243067: mov    0x20(%rsp),%rcx
  0.06%    0.18%   │    ││   0x00007f220124306c: mov    0x38(%rsp),%r8d
  0.08%    0.16%   │    ││   0x00007f2201243071: mov    %r10d,%r9d
  0.21%    0.23%   │    ││   0x00007f2201243074: mov    0x4c(%rsp),%r10d
  0.06%    0.05%   │    ││   0x00007f2201243079: mov    %r10d,(%rsp)
  0.16%    0.18%   │    ││   0x00007f220124307d: mov    0x3c(%rsp),%r10d
  0.09%    0.08%   │    ││   0x00007f2201243082: mov    %r10d,0x8(%rsp)
  0.24%    0.25%   │    ││   0x00007f2201243087: mov    %ebx,0x10(%rsp)
  0.10%    0.12%   │    ││   0x00007f220124308b: callq  0x00007f2201046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=656}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                 ;   {optimized virtual_call}
                   │    ││   0x00007f2201243090: mov    0x40(%rsp),%r10
                   │    ││   0x00007f2201243095: mov    0x24(%r10),%r13d   ;*getfield pool
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
  0.49%    0.39%   │    ││   0x00007f2201243099: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                   │    ││   0x00007f220124309d: mov    0x28(%rsp),%r11d
                   │    ││   0x00007f22012430a2: test   %r11d,%r11d
                   │    ││   0x00007f22012430a5: je     0x00007f220124379e  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
           0.01%   │    ││   0x00007f22012430ab: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
  0.46%    0.43%   │    ││   0x00007f22012430af: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │    ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f2201244d85
  0.01%    0.03%   │    ││   0x00007f22012430b4: test   %ebp,%ebp
                   │    ││   0x00007f22012430b6: jne    0x00007f2201243c71  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.02%    0.02%   │    ││   0x00007f22012430bc: movzbl 0x10(%r10),%ebx    ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@376 (line 246)
                   │    ││   0x00007f22012430c1: test   %ebx,%ebx
                   │    ││   0x00007f22012430c3: jne    0x00007f2201243e85  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@379 (line 246)
  0.38%    0.46%   │    ││   0x00007f22012430c9: mov    0x50(%rsp),%r10
                   │    ││   0x00007f22012430ce: mov    0x10(%r10),%r11d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.02%   │    ││   0x00007f22012430d2: mov    %r11d,0x14(%rsp)
           0.00%   │    ││   0x00007f22012430d7: mov    0xc(%r10),%r9d     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.42%    0.30%   │    ││   0x00007f22012430db: mov    0x14(%r10),%ecx    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │    ││   0x00007f22012430df: mov    0x2c(%rsp),%r11d
  0.01%    0.04%   │    ││   0x00007f22012430e4: cmp    $0xffffffff,%r11d
                   │    ││   0x00007f22012430e8: je     0x00007f2201243874  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
                   │    ││   0x00007f22012430ee: mov    0x30(%rsp),%edi
  0.51%    0.63%   │    ││   0x00007f22012430f2: add    0x60(%rsp),%edi
  0.00%            │    ││   0x00007f22012430f6: add    %r9d,%edi          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.03%   │    ││   0x00007f22012430f9: cmp    0x14(%rsp),%edi
                   │    ││   0x00007f22012430fd: jge    0x00007f22012436a1  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.05%   │    ││   0x00007f2201243103: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f2201244d95
  0.54%    0.61%   │    ││   0x00007f2201243108: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007f220124310f: jne    0x00007f2201243b21
  0.02%    0.02%   │    ││   0x00007f2201243115: lea    (%r12,%rcx,8),%rax  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%   │    ││   0x00007f2201243119: test   %edi,%edi
                   │    ││   0x00007f220124311b: jl     0x00007f2201243cc5  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │    ││   0x00007f2201243121: mov    0xc(%rax),%r10d    ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.48%    0.66%   │    ││   0x00007f2201243125: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007f2201244da9
  0.78%    0.98%   │    ││   0x00007f220124312a: cmp    %ebp,%edi
                   │    ││   0x00007f220124312c: jge    0x00007f2201243ed9  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.42%    0.52%   │    ││   0x00007f2201243132: cmp    %ebp,%edi
                   │    ││   0x00007f2201243134: jae    0x00007f2201243a4d
  0.07%    0.16%   │    ││   0x00007f220124313a: shl    $0x3,%r10
  0.06%    0.07%   │    ││   0x00007f220124313e: movzwl 0x10(%r10,%rdi,2),%edx  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.08%   │    ││   0x00007f2201243144: cmp    $0xd800,%edx
                   │    ││   0x00007f220124314a: jge    0x00007f2201243f51  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.36%    0.56%   │    ││   0x00007f2201243150: shl    $0x3,%edx          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.13%    0.12%   │    ││   0x00007f2201243153: mov    %edx,%r11d
  0.02%    0.11%   │    ││   0x00007f2201243156: or     $0x1,%r11d
  0.35%    0.33%   │    ││   0x00007f220124315a: and    $0x7,%edx
  0.14%    0.16%   │    ││   0x00007f220124315d: sar    $0x3,%r11d         ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.25%    0.28%   │    ││   0x00007f2201243161: or     $0x1,%edx          ; OopMap{rcx=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=868}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.07%    0.10%   │    ││   0x00007f2201243164: test   %eax,0x16a87e96(%rip)        # 0x00007f2217ccb000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                 ;   {poll}
  0.01%    0.01%   │    ││   0x00007f220124316a: mov    0x40(%rsp),%r10
  0.07%    0.10%   │    ││   0x00007f220124316f: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 216)
  0.28%    0.33%   │    ││   0x00007f2201243173: mov    0x20(%rsp),%r10
  0.09%    0.11%   │    ││   0x00007f2201243178: shr    $0x3,%r10
                   │    ││   0x00007f220124317c: mov    %r10d,0x34(%rsp)
  0.09%    0.09%   │    ││   0x00007f2201243181: mov    0x4c(%rsp),%r10d
  0.34%    0.38%   │    ││   0x00007f2201243186: mov    0x2c(%rsp),%edi
  0.12%    0.15%   │    ││   0x00007f220124318a: mov    %r11d,%eax
                   │    ││   0x00007f220124318d: mov    0x18(%rsp),%r11
  0.08%    0.10%   │    ││   0x00007f2201243192: mov    %r11,0x20(%rsp)
  0.30%    0.42%   │    ││   0x00007f2201243197: mov    0x30(%rsp),%r11d
  0.10%    0.13%   │    ││   0x00007f220124319c: mov    %r11d,0x28(%rsp)
  0.00%            │    ││   0x00007f22012431a1: mov    %edx,0x30(%rsp)
  0.09%    0.07%   ↘    ││   0x00007f22012431a5: mov    0x34(%rsp),%r11d
  0.30%    0.35%        ││   0x00007f22012431aa: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f2201244d11
  0.10%    0.10%        ││   0x00007f22012431b0: mov    0x34(%rsp),%edx
                        ││   0x00007f22012431b4: shl    $0x3,%rdx          ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.06%    0.10%        ││   0x00007f22012431b8: mov    %rdx,0x18(%rsp)
  0.23%    0.34%        ││   0x00007f22012431bd: test   %r11d,%r11d
  0.07%    0.14%        ││   0x00007f22012431c0: jne    0x00007f220124345a  ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
                        ││   0x00007f22012431c6: test   %ebx,%ebx
                        ││   0x00007f22012431c8: jne    0x00007f2201243b89  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.09%    0.09%        ││   0x00007f22012431ce: mov    0x60(%rsp),%r11d
  0.24%    0.36%        ││   0x00007f22012431d3: test   %r11d,%r11d
                    ╭   ││   0x00007f22012431d6: je     0x00007f22012431e6  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.06%    0.15%    │   ││   0x00007f22012431d8: mov    0x3c(%rsp),%r9d
  0.00%             │   ││   0x00007f22012431dd: test   %r9d,%r9d
                    │   ││   0x00007f22012431e0: jne    0x00007f2201243c29  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.05%    0.13%    ↘   ││   0x00007f22012431e6: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                 ; implicit exception: dispatches to 0x00007f2201244d21
  0.31%    0.32%        ││   0x00007f22012431eb: test   %ebp,%ebp
                        ││   0x00007f22012431ed: jg     0x00007f2201243d41  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
  0.09%    0.08%        ││   0x00007f22012431f3: mov    0x40(%rsp),%r11
  0.00%                 ││   0x00007f22012431f8: mov    0x18(%r11),%r11d   ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@298 (line 239)
  0.12%    0.08%        ││   0x00007f22012431fc: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                 ; implicit exception: dispatches to 0x00007f2201244d31
  0.30%    0.39%        ││   0x00007f2201243201: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f2201244d41
  0.18%    0.41%        ││   0x00007f2201243206: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007f220124320d: jne    0x00007f2201243acd
  0.25%    0.37%        ││   0x00007f2201243213: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.03%        ││   0x00007f2201243217: mov    0x18(%r9),%ecx     ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.18%        ││   0x00007f220124321b: cmp    $0x40,%ecx
                        ││   0x00007f220124321e: jg     0x00007f2201243d91  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.40%        ││   0x00007f2201243224: mov    $0x1,%r11d
  0.02%    0.02%        ││   0x00007f220124322a: shl    %cl,%r11           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.74%    0.83%        ││   0x00007f220124322d: mov    0x34(%rsp),%r10d
           0.00%        ││   0x00007f2201243232: mov    0x10(%r12,%r10,8),%rbx  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.01%        ││   0x00007f2201243237: mov    %rbx,%r10
  0.02%    0.03%        ││   0x00007f220124323a: and    %r11,%r10          ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.21%        ││   0x00007f220124323d: test   %r10,%r10
  0.08%    0.04%        ││   0x00007f2201243240: jne    0x00007f22012438f5  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.26%    0.34%        ││   0x00007f2201243246: xor    %ebp,%ebp          ;*ireturn
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.00%        ││   0x00007f2201243248: test   %r10,%r10
                        ││   0x00007f220124324b: jne    0x00007f2201243de1  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.08%        ││   0x00007f2201243251: cmp    $0x40,%ecx
                        ││   0x00007f2201243254: jge    0x00007f2201243e35  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%        ││   0x00007f220124325a: mov    0x34(%rsp),%ecx
  0.31%    0.39%        ││   0x00007f220124325e: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.01%        ││   0x00007f2201243263: or     %rbx,%r11
  0.08%    0.06%        ││   0x00007f2201243266: mov    %r11,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%        ││   0x00007f220124326b: test   %r8d,%r8d
                        ││   0x00007f220124326e: jle    0x00007f2201243bd5  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.32%    0.22%        ││   0x00007f2201243274: mov    %r8d,%ebp
  0.04%    0.01%        ││   0x00007f2201243277: dec    %ebp               ;*isub
                        ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.07%        ││   0x00007f2201243279: mov    0x40(%rsp),%r10
  0.04%    0.03%        ││   0x00007f220124327e: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.30%        ││   0x00007f2201243282: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007f2201244d5d
  0.05%    0.08%        ││   0x00007f2201243287: cmp    %r11d,%ebp
                        ││   0x00007f220124328a: jae    0x00007f220124397f
  0.07%    0.05%        ││   0x00007f2201243290: lea    (%r12,%r13,8),%r10
  0.02%    0.04%        ││   0x00007f2201243294: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                        ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.26%        ││   0x00007f2201243299: test   %r8d,%r8d
                        ││   0x00007f220124329c: je     0x00007f22012439c9  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.05%        ││   0x00007f22012432a2: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreads
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.05%        ││   0x00007f22012432a7: mov    0x34(%rsp),%r11d
  0.01%    0.02%        ││   0x00007f22012432ac: mov    0xc(%r12,%r11,8),%ebx  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.31%    0.37%        ││   0x00007f22012432b1: lea    (%r12,%r8,8),%r10
  0.07%    0.03%        ││   0x00007f22012432b5: mov    %ebx,%r11d
  0.08%    0.10%        ││   0x00007f22012432b8: inc    %r11d
  0.05%    0.02%        ││   0x00007f22012432bb: mov    0x34(%rsp),%esi
  0.30%    0.40%        ││   0x00007f22012432bf: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.05%        ││   0x00007f22012432c4: mov    %r9,%r11
  0.10%    0.10%        ││   0x00007f22012432c7: shr    $0x3,%r11
  0.01%    0.03%        ││   0x00007f22012432cb: mov    %r11d,0x10(%r12,%r8,8)
  0.33%    0.30%        ││   0x00007f22012432d0: shr    $0x9,%r10
  0.07%    0.06%        ││   0x00007f22012432d4: movabs $0x7f21fd1ff000,%r11
  0.11%    0.08%        ││   0x00007f22012432de: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%        ││   0x00007f22012432e2: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f2201244d6d
  0.33%    0.41%        ││   0x00007f22012432e7: cmp    %r10d,%ebx
                        ││   0x00007f22012432ea: jae    0x00007f22012439dd  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.06%        ││   0x00007f22012432f0: test   %edi,%edi
                     ╭  ││   0x00007f22012432f2: jl     0x00007f2201243391  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.13%     │  ││   0x00007f22012432f8: xor    %r9d,%r9d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.02%     │  ││↗  0x00007f22012432fb: cmp    $0xa,%edi
                     │  │││  0x00007f22012432fe: je     0x00007f2201243858  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.31%    0.37%     │  │││  0x00007f2201243304: test   %eax,%eax
                     │  │││  0x00007f2201243306: jl     0x00007f2201243698  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.09%     │  │││  0x00007f220124330c: cmp    $0xa,%eax
                     │  │││  0x00007f220124330f: je     0x00007f2201243861  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.13%     │  │││  0x00007f2201243315: mov    %edi,%r11d
  0.04%    0.05%     │  │││  0x00007f2201243318: add    $0xffffffbf,%r11d
  0.30%    0.49%     │  │││  0x00007f220124331c: lea    (%r12,%rcx,8),%r10  ;*getfield denseThreads
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.05%     │  │││  0x00007f2201243320: lea    0x10(%r10,%rbx,4),%r10
  0.08%    0.09%     │  │││  0x00007f2201243325: mov    %r8d,(%r10)
  0.11%    0.12%     │  │││  0x00007f2201243328: shr    $0x9,%r10
  0.35%    0.34%     │  │││  0x00007f220124332c: movabs $0x7f21fd1ff000,%r8
  0.01%    0.04%     │  │││  0x00007f2201243336: mov    %r12b,(%r8,%r10,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.14%     │  │││  0x00007f220124333a: cmp    $0x1a,%r11d
                     │╭ │││  0x00007f220124333e: jb     0x00007f2201243351  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.04%     ││ │││  0x00007f2201243340: mov    %edi,%r11d
  0.25%    0.34%     ││ │││  0x00007f2201243343: add    $0xffffff9f,%r11d
  0.04%    0.05%     ││ │││  0x00007f2201243347: cmp    $0x1a,%r11d
                     ││ │││  0x00007f220124334b: jae    0x00007f22012438b2  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.08%     │↘ │││  0x00007f2201243351: mov    $0x1,%ebp          ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%     │  │││  0x00007f2201243356: mov    %eax,%r10d
  0.20%    0.34%     │  │││  0x00007f2201243359: add    $0xffffffbf,%r10d
  0.04%    0.06%     │  │││  0x00007f220124335d: cmp    $0x1a,%r10d
                     │ ╭│││  0x00007f2201243361: jb     0x00007f2201243374  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.07%     │ ││││  0x00007f2201243363: mov    %eax,%r11d
  0.04%    0.04%     │ ││││  0x00007f2201243366: add    $0xffffff9f,%r11d
  0.25%    0.19%     │ ││││  0x00007f220124336a: cmp    $0x1a,%r11d
                     │ ││││  0x00007f220124336e: jae    0x00007f22012438d3  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%     │ ↘│││  0x00007f2201243374: mov    $0x1,%r10d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.12%     │  │││  0x00007f220124337a: cmp    %r10d,%ebp
                     │  ╰││  0x00007f220124337d: je     0x00007f2201243022  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.14%     │   ││  0x00007f2201243383: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%     │   ││  0x00007f2201243387: mov    %r9d,0x4c(%rsp)
  0.23%    0.32%     │   ╰│  0x00007f220124338c: jmpq   0x00007f220124302b
                     ↘    │  0x00007f2201243391: mov    $0x5,%r9d
                          ╰  0x00007f2201243397: jmpq   0x00007f22012432fb
                             0x00007f220124339c: nopl   0x0(%rax)
  0.00%                      0x00007f22012433a0: mov    %eax,0x5c(%rsp)
           0.00%             0x00007f22012433a4: jmpq   0x00007f22012435e6
                             0x00007f22012433a9: mov    0x5c(%rsp),%esi
                             0x00007f22012433ad: add    $0x2,%esi
                             0x00007f22012433b0: mov    %esi,0x5c(%rsp)
  0.01%    0.00%             0x00007f22012433b4: mov    0x5c(%rsp),%esi
  0.00%                      0x00007f22012433b8: inc    %esi
                             0x00007f22012433ba: mov    %esi,0x58(%rsp)
                             0x00007f22012433be: jmp    0x00007f22012433e2
                             0x00007f22012433c0: mov    0x5c(%rsp),%esi
                             0x00007f22012433c4: add    $0x2,%esi
                             0x00007f22012433c7: mov    %esi,0x58(%rsp)
                             0x00007f22012433cb: jmp    0x00007f22012433d8
                             0x00007f22012433cd: mov    0x5c(%rsp),%esi
                             0x00007f22012433d1: add    $0x2,%esi
                             0x00007f22012433d4: mov    %esi,0x5c(%rsp)
                             0x00007f22012433d8: mov    0x5c(%rsp),%esi
....................................................................................................
 22.50%   26.19%  <total for region 2>

....[Hottest Regions]...............................................................................
 62.51%   60.67%         C2, level 4  com.google.re2j.Machine::step, version 498 (1403 bytes) 
 22.50%   26.19%         C2, level 4  com.google.re2j.Machine::match, version 545 (977 bytes) 
  4.66%    4.63%         C2, level 4  com.google.re2j.Machine::step, version 498 (111 bytes) 
  4.19%    4.32%         C2, level 4  com.google.re2j.Machine::step, version 498 (371 bytes) 
  1.38%    0.27%         C2, level 4  com.google.re2j.Machine::init, version 536 (405 bytes) 
  0.58%    0.58%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.44%    0.46%         C2, level 4  com.google.re2j.Machine::match, version 545 (59 bytes) 
  0.19%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 536 (76 bytes) 
  0.17%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 545 (270 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 545 (255 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 556 (0 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.06%                  C2, level 4  com.google.re2j.Pattern::find, version 556 (29 bytes) 
  0.06%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 556 (28 bytes) 
  0.05%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 545 (136 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 556 (0 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 545 (117 bytes) 
  0.05%    0.05%         C2, level 4  java.util.Collections::shuffle, version 564 (23 bytes) 
  0.05%    0.01%              [vdso]  [unknown] (16 bytes) 
  2.64%    2.24%  <...other 470 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 71.36%   69.62%         C2, level 4  com.google.re2j.Machine::step, version 498 
 23.48%   27.07%         C2, level 4  com.google.re2j.Machine::match, version 545 
  1.82%    1.62%   [kernel.kallsyms]  [unknown] 
  1.63%    0.31%         C2, level 4  com.google.re2j.Machine::init, version 536 
  0.45%    0.26%         C2, level 4  com.google.re2j.Pattern::find, version 556 
  0.13%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 611 
  0.13%    0.08%         C2, level 4  java.util.Collections::shuffle, version 564 
  0.09%    0.02%              [vdso]  [unknown] 
  0.08%    0.06%        libc-2.26.so  vfprintf 
  0.06%    0.07%      hsdis-amd64.so  [unknown] 
  0.05%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.04%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%        libc-2.26.so  _IO_vsnprintf 
  0.01%    0.01%           libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.01%    0.00%        libc-2.26.so  __strchr_avx2 
  0.01%    0.01%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.01%    0.02%           libjvm.so  _ZN12outputStream5printEPKcz 
  0.51%    0.28%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.75%  <totals>

....[Distribution by Source]........................................................................
 97.19%   97.38%         C2, level 4
  1.82%    1.62%   [kernel.kallsyms]
  0.49%    0.57%           libjvm.so
  0.22%    0.23%        libc-2.26.so
  0.09%    0.02%              [vdso]
  0.08%    0.07%  libpthread-2.26.so
  0.07%    0.08%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.02%        runtime stub
  0.00%                             
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  14234.302 ± 15.460  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
