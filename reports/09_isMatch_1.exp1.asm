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
# Warmup Iteration   1: 8672.534 ops/s
# Warmup Iteration   2: 18376.148 ops/s
# Warmup Iteration   3: 18768.600 ops/s
# Warmup Iteration   4: 18606.072 ops/s
# Warmup Iteration   5: 18558.001 ops/s
# Warmup Iteration   6: 18568.338 ops/s
# Warmup Iteration   7: 18659.254 ops/s
# Warmup Iteration   8: 18824.548 ops/s
# Warmup Iteration   9: 18945.142 ops/s
# Warmup Iteration  10: 19097.736 ops/s
# Warmup Iteration  11: 19003.414 ops/s
# Warmup Iteration  12: 18956.408 ops/s
# Warmup Iteration  13: 18979.048 ops/s
# Warmup Iteration  14: 18689.610 ops/s
# Warmup Iteration  15: 18774.994 ops/s
# Warmup Iteration  16: 18186.750 ops/s
# Warmup Iteration  17: 18984.404 ops/s
# Warmup Iteration  18: 19068.271 ops/s
# Warmup Iteration  19: 19025.910 ops/s
# Warmup Iteration  20: 19141.571 ops/s
Iteration   1: 19161.091 ops/s
Iteration   2: 18269.328 ops/s
Iteration   3: 19113.499 ops/s
Iteration   4: 18908.549 ops/s
Iteration   5: 19026.103 ops/s
Iteration   6: 19153.454 ops/s
Iteration   7: 19050.344 ops/s
Iteration   8: 18641.219 ops/s
Iteration   9: 19034.837 ops/s
Iteration  10: 18981.407 ops/s
Iteration  11: 19136.655 ops/s
Iteration  12: 19047.026 ops/s
Iteration  13: 19118.248 ops/s
Iteration  14: 19025.074 ops/s
Iteration  15: 19165.564 ops/s
Iteration  16: 18206.829 ops/s
Iteration  17: 18741.932 ops/s
Iteration  18: 19066.723 ops/s
Iteration  19: 16221.471 ops/s
Iteration  20: 19157.901 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  18811.363 ±(99.9%) 581.989 ops/s [Average]
  (min, avg, max) = (16221.471, 18811.363, 19165.564), stdev = 670.219
  CI (99.9%): [18229.374, 19393.351] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 208935 total address lines.
Perf output processed (skipped 22.990 seconds):
 Column 1: cycles (20357 events)
 Column 2: instructions (20375 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 529 (1365 bytes) 

                       0x00007f44d09f85d7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f44d09f85db: xor    %edi,%edi
                       0x00007f44d09f85dd: mov    0x20(%rsp),%r13
                       0x00007f44d09f85e2: vmovd  %xmm6,%ebx
                       0x00007f44d09f85e6: vmovd  %xmm1,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.22%    ↗  0x00007f44d09f85ea: mov    0xa4(%rsp),%ecx
  0.29%    0.41%    │  0x00007f44d09f85f1: mov    0xac(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  1.26%    1.74%    │  0x00007f44d09f85f9: test   %rdi,%rdi
                  ╭ │  0x00007f44d09f85fc: je     0x00007f44d09f8645  ;*ifnull
                  │ │                                                ; - com.google.re2j.Machine::step@220 (line 302)
  0.00%           │ │  0x00007f44d09f85fe: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │ │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │                                                ; implicit exception: dispatches to 0x00007f44d09fa07d
                  │ │  0x00007f44d09f8603: cmp    %ebp,%ebx
                  │ │  0x00007f44d09f8605: jge    0x00007f44d09f8fcd  ;*if_icmplt
                  │ │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │  0x00007f44d09f860b: mov    %ebx,%r8d
  1.48%    1.76%  │ │  0x00007f44d09f860e: inc    %r8d
                  │ │  0x00007f44d09f8611: mov    %r8d,0xc(%r13)     ;*putfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.00%  │ │  0x00007f44d09f8615: cmp    %ebp,%ebx
                  │ │  0x00007f44d09f8617: jae    0x00007f44d09f8e4d  ;*aastore
                  │ │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%           │ │  0x00007f44d09f861d: mov    %rdi,%r11
  1.52%    1.85%  │ │  0x00007f44d09f8620: shr    $0x3,%r11
                  │ │  0x00007f44d09f8624: lea    (%r12,%rdx,8),%r8  ;*getfield pool
                  │ │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%           │ │  0x00007f44d09f8628: lea    0x10(%r8,%rbx,4),%r8
  0.00%           │ │  0x00007f44d09f862d: mov    %r11d,(%r8)
  1.58%    1.79%  │ │  0x00007f44d09f8630: mov    %r8,%r11
                  │ │  0x00007f44d09f8633: shr    $0x9,%r11
                  │ │  0x00007f44d09f8637: movabs $0x7f44cc1db000,%r8
                  │ │  0x00007f44d09f8641: mov    %r12b,(%r8,%r11,1)  ;*goto
                  │ │                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.66%    1.77%  ↘ │  0x00007f44d09f8645: mov    0x8(%rsp),%r11
  0.00%             │  0x00007f44d09f864a: mov    0xc(%r11),%r8d     ;*getfield size
                    │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.30%    0.32%    │  0x00007f44d09f864e: inc    %r10d              ; OopMap{r11=Oop r13=Oop r14=Oop [8]=Oop off=497}
                    │                                                ;*goto
                    │                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.00%    0.00%    │  0x00007f44d09f8651: test   %eax,0x15e809a9(%rip)        # 0x00007f44e6879000
                    │                                                ;*goto
                    │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                    │                                                ;   {poll}
  1.54%    1.75%    │  0x00007f44d09f8657: cmp    %r8d,%r10d
                    │  0x00007f44d09f865a: jge    0x00007f44d09f8c58  ;*aload_1
                    │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.07%    0.08%    │  0x00007f44d09f8660: mov    0x8(%rsp),%r11
  0.45%    0.60%    │  0x00007f44d09f8665: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.19%    0.42%    │  0x00007f44d09f8669: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f44d09fa049
  2.68%    3.01%    │  0x00007f44d09f866e: cmp    %r8d,%r10d
                    │  0x00007f44d09f8671: jae    0x00007f44d09f8dba
  0.48%    0.53%    │  0x00007f44d09f8677: shl    $0x3,%r11
  0.26%    0.33%    │  0x00007f44d09f867b: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.04%    0.02%    │  0x00007f44d09f8680: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                    │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                    │                                                ; implicit exception: dispatches to 0x00007f44d09fa05d
  4.07%    4.09%    │  0x00007f44d09f8685: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                    │                                                ; - com.google.re2j.Machine::step@85 (line 285)
                    │                                                ; implicit exception: dispatches to 0x00007f44d09fa06d
  6.14%    6.69%    │  0x00007f44d09f868a: cmp    $0x6,%ebp
                    │  0x00007f44d09f868d: je     0x00007f44d09f8ea1  ;*if_icmpne
                    │                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.61%    1.81%    │  0x00007f44d09f8693: mov    0x8(%r12,%r9,8),%r8d
  0.06%    0.02%    │  0x00007f44d09f8698: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f44d09f869f: jne    0x00007f44d09f8e05  ;*invokevirtual matchRune
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.12%    1.05%    │  0x00007f44d09f86a5: mov    0xc(%r13),%ebx     ;*getfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f44d09f86a9: mov    0x24(%r13),%edx    ;*getfield pool
                    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.66%    0.77%    │  0x00007f44d09f86ad: lea    (%r12,%r9,8),%r8   ;*invokevirtual matchRune
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
                    │  0x00007f44d09f86b1: mov    0xc(%r8),%ebp      ;*getfield op
                    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.27%    0.93%    │  0x00007f44d09f86b5: lea    (%r12,%r11,8),%rdi  ;*aaload
                    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.01%    0.03%    │  0x00007f44d09f86b9: cmp    $0xa,%ebp
                    │  0x00007f44d09f86bc: jne    0x00007f44d09f8bea  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.14%    0.09%    │  0x00007f44d09f86c2: mov    0x1c(%r8),%r9d     ;*getfield outInst
                    │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.04%    0.02%    │  0x00007f44d09f86c6: mov    0xc(%r12,%r11,8),%r8d  ;*getfield cap
                    │                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.37%    0.17%    │  0x00007f44d09f86cb: mov    0x8(%r12,%r9,8),%esi  ; implicit exception: dispatches to 0x00007f44d09fa08d
  1.19%    0.37%    │  0x00007f44d09f86d0: lea    (%r12,%r9,8),%rax
  0.00%    0.00%    │  0x00007f44d09f86d4: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    │  0x00007f44d09f86da: jne    0x00007f44d09f8c94  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.44%    0.18%    │  0x00007f44d09f86e0: mov    0x18(%rax),%r9d    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007f44d09f86e4: mov    0x10(%r14),%rsi    ;*getfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f44d09fa0b5
  0.01%    0.00%    │  0x00007f44d09f86e8: cmp    $0x40,%r9d
                    │  0x00007f44d09f86ec: jg     0x00007f44d09f9271  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.41%    0.54%    │  0x00007f44d09f86f2: vmovq  %rax,%xmm3
                    │  0x00007f44d09f86f7: vmovd  %r8d,%xmm2
                    │  0x00007f44d09f86fc: vmovd  %edx,%xmm1
                    │  0x00007f44d09f8700: vmovd  %ebx,%xmm0
  0.55%    0.03%    │  0x00007f44d09f8704: mov    %r11d,%eax
                    │  0x00007f44d09f8707: mov    %r10d,0xac(%rsp)
  0.00%             │  0x00007f44d09f870f: mov    %ecx,0xa4(%rsp)
  0.00%             │  0x00007f44d09f8716: mov    %r13,0x20(%rsp)
  0.48%    0.00%    │  0x00007f44d09f871b: mov    $0x1,%ebx
                    │  0x00007f44d09f8720: mov    %r9d,%ecx
                    │  0x00007f44d09f8723: shl    %cl,%rbx           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%             │  0x00007f44d09f8726: mov    %rsi,%r11
                    │  0x00007f44d09f8729: and    %rbx,%r11
           0.00%    │  0x00007f44d09f872c: test   %r11,%r11
                    │  0x00007f44d09f872f: jne    0x00007f44d09f8d9d  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.47%             │  0x00007f44d09f8735: cmp    $0x40,%r9d
                    │  0x00007f44d09f8739: jge    0x00007f44d09f92bd  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f873f: mov    %r12b,0x18(%r14)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f8743: vmovq  %xmm3,%r10
  0.01%             │  0x00007f44d09f8748: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.11%    │  0x00007f44d09f874c: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f874f: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f8753: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f44d09fa0c9
  0.86%    0.01%    │  0x00007f44d09f8758: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f44d09f875f: jne    0x00007f44d09f8f39
  0.46%             │  0x00007f44d09f8765: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f8769: mov    0x18(%r9),%r8d     ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.01%    │  0x00007f44d09f876d: cmp    $0x40,%r8d
                    │  0x00007f44d09f8771: jg     0x00007f44d09f930d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.44%    0.06%    │  0x00007f44d09f8777: mov    $0x1,%r10d
  0.12%    0.05%    │  0x00007f44d09f877d: mov    %r8d,%ecx
           0.00%    │  0x00007f44d09f8780: shl    %cl,%r10           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.85%    0.77%    │  0x00007f44d09f8783: mov    %rbx,%r11
                    │  0x00007f44d09f8786: and    %r10,%r11          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f44d09f8789: test   %r11,%r11
                    │  0x00007f44d09f878c: jne    0x00007f44d09f9365  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.30%    │  0x00007f44d09f8792: cmp    $0x40,%r8d
                    │  0x00007f44d09f8796: jge    0x00007f44d09f93d1  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.32%    │  0x00007f44d09f879c: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f879f: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%    │  0x00007f44d09f87a3: mov    %rdi,%r11
  0.15%    0.13%    │  0x00007f44d09f87a6: mov    %r9,%r10
  0.28%    0.24%    │  0x00007f44d09f87a9: shr    $0x3,%r10
                    │  0x00007f44d09f87ad: mov    %r10d,0x10(%r12,%rax,8)
  0.03%    0.01%    │  0x00007f44d09f87b2: shr    $0x9,%r11
  0.15%    0.04%    │  0x00007f44d09f87b6: movabs $0x7f44cc1db000,%r10
  0.36%    0.10%    │  0x00007f44d09f87c0: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f87c4: vmovd  %xmm2,%r11d
  0.04%    0.00%    │  0x00007f44d09f87c9: mov    0xc(%r12,%r11,8),%r8d  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f44d09fa0ed
  0.14%    0.10%    │  0x00007f44d09f87ce: test   %r8d,%r8d
                    │  0x00007f44d09f87d1: jg     0x00007f44d09f9429  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.10%    │  0x00007f44d09f87d7: mov    %r8d,%r13d
                    │  0x00007f44d09f87da: mov    0xc(%r14),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │  0x00007f44d09f87de: mov    %r10d,0x28(%rsp)
  0.16%    0.14%    │  0x00007f44d09f87e3: mov    0x20(%r14),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.23%    │  0x00007f44d09f87e7: vmovd  %r10d,%xmm5
           0.00%    │  0x00007f44d09f87ec: mov    0x28(%rsp),%r10d
  0.03%    0.03%    │  0x00007f44d09f87f1: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.20%    │  0x00007f44d09f87f4: vmovd  %r10d,%xmm4
  0.29%    0.29%    │  0x00007f44d09f87f9: mov    %r10d,0xc(%r14)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f87fd: vmovd  %xmm5,%r10d
  0.03%    0.03%    │  0x00007f44d09f8802: mov    0xc(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x00007f44d09fa0fd
  0.14%    0.23%    │  0x00007f44d09f8807: mov    0x28(%rsp),%r10d
  0.33%    0.36%    │  0x00007f44d09f880c: cmp    %edx,%r10d
                    │  0x00007f44d09f880f: jae    0x00007f44d09f8eed  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007f44d09f8815: vmovq  %xmm3,%r10
  0.05%    0.02%    │  0x00007f44d09f881a: mov    0x20(%r10),%r10d   ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.20%    │  0x00007f44d09f881e: vmovd  %r10d,%xmm3
  0.29%    0.24%    │  0x00007f44d09f8823: vmovd  %xmm5,%r10d
                    │  0x00007f44d09f8828: lea    (%r12,%r10,8),%r9  ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f44d09f882c: mov    0x28(%rsp),%r10d
  0.19%    0.13%    │  0x00007f44d09f8831: lea    0x10(%r9,%r10,4),%r10
  0.26%    0.27%    │  0x00007f44d09f8836: mov    %eax,(%r10)
  0.01%    0.04%    │  0x00007f44d09f8839: shr    $0x9,%r10
  0.03%    0.06%    │  0x00007f44d09f883d: movabs $0x7f44cc1db000,%r11
  0.12%    0.21%    │  0x00007f44d09f8847: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.30%    │  0x00007f44d09f884b: vmovd  %xmm3,%r10d
           0.00%    │  0x00007f44d09f8850: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f44d09fa119
  0.01%    0.04%    │  0x00007f44d09f8855: movslq 0x28(%rsp),%r10
  0.14%    0.17%    │  0x00007f44d09f885a: lea    (%r9,%r10,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.31%    │  0x00007f44d09f885e: mov    %rdi,%rsi
           0.00%    │  0x00007f44d09f8861: add    $0x14,%rsi         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f44d09f8865: vmovd  %xmm0,%r10d
  0.21%    0.14%    │  0x00007f44d09f886a: dec    %r10d              ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.25%    │  0x00007f44d09f886d: vmovd  %r10d,%xmm6
           0.00%    │  0x00007f44d09f8872: vmovd  %xmm3,%r10d
  0.03%             │  0x00007f44d09f8877: lea    (%r12,%r10,8),%r8
  0.21%    0.05%    │  0x00007f44d09f887b: mov    0x28(%rsp),%r10d
  0.25%    0.12%    │  0x00007f44d09f8880: add    $0x2,%r10d         ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007f44d09f8884: cmp    $0xf8019886,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f44d09f888b: jne    0x00007f44d09f84f1  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.01%    │  0x00007f44d09f8891: mov    %r8,%rax
  0.19%    0.07%    │  0x00007f44d09f8894: mov    0x18(%r8),%r11d    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.11%    │  0x00007f44d09f8898: vmovd  %r11d,%xmm3
                    │  0x00007f44d09f889d: cmp    $0x40,%r11d
                    │  0x00007f44d09f88a1: jg     0x00007f44d09f972d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f44d09f88a7: mov    $0x1,%r8d
  0.16%    0.08%    │  0x00007f44d09f88ad: mov    %r11d,%ecx
  0.28%    0.16%    │  0x00007f44d09f88b0: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.24%    │  0x00007f44d09f88b3: mov    %rbx,%r11
  0.24%    0.37%    │  0x00007f44d09f88b6: and    %r8,%r11           ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%    │  0x00007f44d09f88b9: test   %r11,%r11
                    │  0x00007f44d09f88bc: jne    0x00007f44d09f9779  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.00%    │  0x00007f44d09f88c2: mov    %ecx,%r11d
  0.15%    0.02%    │  0x00007f44d09f88c5: cmp    $0x40,%r11d
                    │  0x00007f44d09f88c9: jge    0x00007f44d09f97d1  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.05%    │  0x00007f44d09f88cf: mov    0x14(%rax),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │  0x00007f44d09f88d2: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%    │  0x00007f44d09f88d5: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.23%    0.15%    │  0x00007f44d09f88d9: cmp    %r13d,%ebp
                    │  0x00007f44d09f88dc: jl     0x00007f44d09f987d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.30%    0.44%    │  0x00007f44d09f88e2: mov    0x1c(%rax),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f44d09f88e5: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f44d09fa155
  0.05%    0.08%    │  0x00007f44d09f88ea: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    │  0x00007f44d09f88f1: jne    0x00007f44d09f91ed
  0.11%    0.32%    │  0x00007f44d09f88f7: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.27%    0.40%    │  0x00007f44d09f88fb: vmovq  %r11,%xmm3
                    │  0x00007f44d09f8900: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.05%    │  0x00007f44d09f8904: mov    %r11d,%ecx
  0.15%    0.25%    │  0x00007f44d09f8907: cmp    $0x40,%r11d
                    │  0x00007f44d09f890b: jg     0x00007f44d09f9991  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.26%    │  0x00007f44d09f8911: mov    $0x1,%r8d
  0.01%             │  0x00007f44d09f8917: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.56%    0.50%    │  0x00007f44d09f891a: mov    %rbx,%r11
                    │  0x00007f44d09f891d: and    %r8,%r11
  0.00%    0.05%    │  0x00007f44d09f8920: test   %r11,%r11
                    │  0x00007f44d09f8923: jne    0x00007f44d09f8da6  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.24%    │  0x00007f44d09f8929: mov    %ecx,%r11d
  0.27%    0.45%    │  0x00007f44d09f892c: cmp    $0x40,%r11d
                    │  0x00007f44d09f8930: jge    0x00007f44d09f99dd  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f8936: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f44d09f8939: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.16%    │  0x00007f44d09f893d: vmovq  %xmm3,%r11
  0.23%    0.36%    │  0x00007f44d09f8942: mov    0x1c(%r11),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.01%    │  0x00007f44d09f8946: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f44d09fa185
  0.06%    0.06%    │  0x00007f44d09f894b: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f44d09f8952: jne    0x00007f44d09f9225
  0.20%    0.17%    │  0x00007f44d09f8958: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.29%    │  0x00007f44d09f895c: vmovq  %r11,%xmm7
                    │  0x00007f44d09f8961: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.05%    │  0x00007f44d09f8965: mov    %r11d,%ecx
  0.18%    0.21%    │  0x00007f44d09f8968: cmp    $0x40,%r11d
                    │  0x00007f44d09f896c: jg     0x00007f44d09f9a29  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.47%    │  0x00007f44d09f8972: mov    $0x1,%r8d
                    │  0x00007f44d09f8978: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.43%    0.55%    │  0x00007f44d09f897b: mov    %rbx,%r11
                    │  0x00007f44d09f897e: and    %r8,%r11           ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f44d09f8981: test   %r11,%r11
                    │  0x00007f44d09f8984: jne    0x00007f44d09f9a85  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.22%    0.22%    │  0x00007f44d09f898a: mov    %ecx,%r11d
  0.27%    0.33%    │  0x00007f44d09f898d: cmp    $0x40,%r11d
                    │  0x00007f44d09f8991: jge    0x00007f44d09f9af5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f44d09f8997: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.04%    │  0x00007f44d09f899a: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.17%    │  0x00007f44d09f899e: vmovd  %xmm0,%r11d
  0.29%    0.28%    │  0x00007f44d09f89a3: test   %r11d,%r11d
                    │  0x00007f44d09f89a6: jle    0x00007f44d09f9655  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f44d09f89ac: mov    0x20(%rsp),%r8
  0.04%    0.04%    │  0x00007f44d09f89b1: vmovd  %xmm6,%r11d
  0.15%    0.19%    │  0x00007f44d09f89b6: mov    %r11d,0xc(%r8)     ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.33%    │  0x00007f44d09f89ba: vmovd  %xmm1,%r11d
                    │  0x00007f44d09f89bf: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f44d09fa1a1
  0.02%    0.04%    │  0x00007f44d09f89c4: vmovd  %xmm6,%r11d
  0.18%    0.16%    │  0x00007f44d09f89c9: cmp    %r8d,%r11d
                    │  0x00007f44d09f89cc: jae    0x00007f44d09f90ed
  0.26%    0.32%    │  0x00007f44d09f89d2: vmovd  %xmm1,%r11d
                    │  0x00007f44d09f89d7: lea    (%r12,%r11,8),%rax
  0.01%    0.02%    │  0x00007f44d09f89db: vmovd  %xmm0,%r11d
  0.15%    0.30%    │  0x00007f44d09f89e0: mov    0xc(%rax,%r11,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.44%    │  0x00007f44d09f89e5: test   %ebp,%ebp
                    │  0x00007f44d09f89e7: je     0x00007f44d09f9149  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007f44d09f89ed: mov    %r10d,0xc(%r14)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.05%    │  0x00007f44d09f89f1: lea    (%r12,%rbp,8),%rcx
  0.22%    0.35%    │  0x00007f44d09f89f5: vmovq  %xmm7,%r11
  0.35%    0.42%    │  0x00007f44d09f89fa: shr    $0x3,%r11
                    │  0x00007f44d09f89fe: mov    %r11d,0x10(%r12,%rbp,8)
  0.03%    0.05%    │  0x00007f44d09f8a03: mov    %rcx,%r11
  0.18%    0.08%    │  0x00007f44d09f8a06: shr    $0x9,%r11
  0.27%    0.20%    │  0x00007f44d09f8a0a: movabs $0x7f44cc1db000,%rcx
                    │  0x00007f44d09f8a14: mov    %r12b,(%rcx,%r11,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%    │  0x00007f44d09f8a18: cmp    %edx,%r10d
                    │  0x00007f44d09f8a1b: jae    0x00007f44d09f915d
  0.12%    0.23%    │  0x00007f44d09f8a21: mov    %ebp,(%rsi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.36%    │  0x00007f44d09f8a23: vmovq  %xmm3,%r10
                    │  0x00007f44d09f8a28: mov    0x20(%r10),%r10d   ;*getfield argInst
                    │                                                ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.07%    │  0x00007f44d09f8a2c: mov    %r10d,%edx
  0.13%    0.22%    │  0x00007f44d09f8a2f: mov    %rsi,%r10
  0.28%    0.39%    │  0x00007f44d09f8a32: shr    $0x9,%r10
                    │  0x00007f44d09f8a36: movabs $0x7f44cc1db000,%r11
  0.05%    0.07%    │  0x00007f44d09f8a40: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                    │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.19%    0.26%    │  0x00007f44d09f8a44: mov    %edx,%r10d
  0.22%    0.51%    │  0x00007f44d09f8a47: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f44d09fa1b5
  0.00%             │  0x00007f44d09f8a4c: shl    $0x3,%r10
  0.06%    0.06%    │  0x00007f44d09f8a50: cmp    $0xf8019886,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   ╭│  0x00007f44d09f8a57: je     0x00007f44d09f8b44
  0.15%    0.26%   ││  0x00007f44d09f8a5d: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f44d09f8a64: jne    0x00007f44d09f96b5  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.37%   ││  0x00007f44d09f8a6a: mov    %r10,%rdx
                   ││  0x00007f44d09f8a6d: mov    0x18(%r10),%r10d   ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.07%   ││  0x00007f44d09f8a71: mov    %r10d,%r13d
  0.17%    0.19%   ││  0x00007f44d09f8a74: cmp    $0x40,%r10d
                   ││  0x00007f44d09f8a78: jg     0x00007f44d09f9c9d  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.24%   ││  0x00007f44d09f8a7e: mov    $0x1,%r11d
                   ││  0x00007f44d09f8a84: mov    %r10d,%ecx
  0.05%    0.02%   ││  0x00007f44d09f8a87: shl    %cl,%r11           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.50%   ││  0x00007f44d09f8a8a: mov    %rbx,%r10
  0.08%    0.06%   ││  0x00007f44d09f8a8d: and    %r11,%r10          ;*land
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.27%   ││  0x00007f44d09f8a90: test   %r10,%r10
                   ││  0x00007f44d09f8a93: jne    0x00007f44d09f9d41  ;*ifeq
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.28%    0.31%   ││  0x00007f44d09f8a99: mov    %ecx,%r10d
                   ││  0x00007f44d09f8a9c: cmp    $0x40,%r10d
                   ││  0x00007f44d09f8aa0: jge    0x00007f44d09f9db1  ;*if_icmpge
                   ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.08%   ││  0x00007f44d09f8aa6: or     %r11,%rbx
  0.18%    0.15%   ││  0x00007f44d09f8aa9: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.24%    0.35%   ││  0x00007f44d09f8aad: vmovd  %xmm6,%r10d
  0.00%            ││  0x00007f44d09f8ab2: test   %r10d,%r10d
                   ││  0x00007f44d09f8ab5: jle    0x00007f44d09f9b51  ;*ifle
                   ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%   ││  0x00007f44d09f8abb: vmovd  %xmm0,%r11d
  0.19%    0.24%   ││  0x00007f44d09f8ac0: add    $0xfffffffe,%r11d  ;*isub
                   ││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.20%    0.30%   ││  0x00007f44d09f8ac4: mov    %r11d,%ecx
                   ││  0x00007f44d09f8ac7: mov    0x20(%rsp),%r11
  0.05%    0.06%   ││  0x00007f44d09f8acc: mov    %ecx,0xc(%r11)     ;*putfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.21%   ││  0x00007f44d09f8ad0: cmp    %r8d,%ecx
                   ││  0x00007f44d09f8ad3: jae    0x00007f44d09f9581
  0.27%    0.21%   ││  0x00007f44d09f8ad9: mov    %ecx,%ebx
           0.00%   ││  0x00007f44d09f8adb: mov    0x10(%rax,%rcx,4),%r10d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.01%   ││  0x00007f44d09f8ae0: test   %r10d,%r10d
                   ││  0x00007f44d09f8ae3: je     0x00007f44d09f95e5  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.17%    0.13%   ││  0x00007f44d09f8ae9: add    $0x18,%rdi
  0.34%    0.33%   ││  0x00007f44d09f8aed: mov    %r10d,(%rdi)       ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007f44d09f8af0: lea    (%r12,%r10,8),%r11
  0.03%    0.06%   ││  0x00007f44d09f8af4: mov    %rdi,%r8
  0.11%    0.26%   ││  0x00007f44d09f8af7: shr    $0x9,%r8
  0.25%    0.39%   ││  0x00007f44d09f8afb: shr    $0x9,%r11
           0.00%   ││  0x00007f44d09f8aff: movabs $0x7f44cc1db000,%r9
  0.04%    0.07%   ││  0x00007f44d09f8b09: mov    %r12b,(%r9,%r11,1)  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.30%   ││  0x00007f44d09f8b0d: movabs $0x7f44cc1db000,%r11
  0.26%    0.43%   ││  0x00007f44d09f8b17: mov    %r12b,(%r11,%r8,1)  ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007f44d09f8b1b: mov    0x28(%rsp),%r11d
  0.06%    0.03%   ││  0x00007f44d09f8b20: add    $0x3,%r11d
  0.21%    0.17%   ││  0x00007f44d09f8b24: mov    %r11d,0xc(%r14)    ;*putfield size
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.29%   ││  0x00007f44d09f8b28: mov    %rdx,%r11
           0.01%   ││  0x00007f44d09f8b2b: shr    $0x3,%r11
  0.08%    0.03%   ││  0x00007f44d09f8b2f: mov    %r11d,0x10(%r12,%r10,8)  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                   ││                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.31%   ││  0x00007f44d09f8b34: xor    %edi,%edi
  0.30%    0.38%   ││  0x00007f44d09f8b36: mov    0x20(%rsp),%r13
                   ││  0x00007f44d09f8b3b: vmovd  %xmm1,%edx
  0.05%    0.05%   │╰  0x00007f44d09f8b3f: jmpq   0x00007f44d09f85ea
                   ↘   0x00007f44d09f8b44: mov    %r10,%r8           ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f44d09f8b47: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
....................................................................................................
 60.52%   60.31%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 571 (1059 bytes) 

                                 0x00007f44d0a0eb96: je     0x00007f44d0a0f4e6  ;*iload_0
                                                                               ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                 0x00007f44d0a0eb9c: mov    %edi,%r8d
                                 0x00007f44d0a0eb9f: add    $0xffffffbf,%r8d
                                 0x00007f44d0a0eba3: cmp    $0x1a,%r8d
                  ╭              0x00007f44d0a0eba7: jb     0x00007f44d0a0ebba  ;*if_icmple
                  │                                                            ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                            ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  │              0x00007f44d0a0eba9: mov    %edi,%r11d
                  │              0x00007f44d0a0ebac: add    $0xffffff9f,%r11d
                  │              0x00007f44d0a0ebb0: cmp    $0x1a,%r11d
                  │              0x00007f44d0a0ebb4: jae    0x00007f44d0a0f507  ;*iconst_1
                  │                                                            ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                            ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%           ↘              0x00007f44d0a0ebba: or     $0x10,%r10d        ;*iload_2
                                                                               ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%                 0x00007f44d0a0ebbe: mov    0x40(%rsp),%r11
  0.00%                          0x00007f44d0a0ebc3: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                               ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                               ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                          0x00007f44d0a0ebc7: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                               ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                               ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
                                 0x00007f44d0a0ebcb: mov    %rcx,%r11
  0.01%                          0x00007f44d0a0ebce: shl    $0x3,%r11          ;*getfield q1
                                                                               ; - com.google.re2j.Machine::match@53 (line 188)
                                 0x00007f44d0a0ebd2: mov    %r11,0x20(%rsp)
                                 0x00007f44d0a0ebd7: xor    %r11d,%r11d
                                 0x00007f44d0a0ebda: mov    $0x1,%ecx
           0.00%                 0x00007f44d0a0ebdf: xor    %eax,%eax
                                 0x00007f44d0a0ebe1: mov    %ecx,0x14(%rsp)
  0.00%                          0x00007f44d0a0ebe5: mov    %eax,0x60(%rsp)
  0.00%            ╭             0x00007f44d0a0ebe9: jmpq   0x00007f44d0a0ed71
  0.05%    0.15%   │     ↗       0x00007f44d0a0ebee: or     $0x20,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.01%   │     │       0x00007f44d0a0ebf1: mov    %ebx,0x4c(%rsp)    ;*iload_2
                   │     │                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                     ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.08%   │     │↗      0x00007f44d0a0ebf5: mov    0x60(%rsp),%r10d
  0.30%    0.09%   │     ││      0x00007f44d0a0ebfa: cmp    0x64(%rsp),%r10d
                   │     ││      0x00007f44d0a0ebff: je     0x00007f44d0a0f32c  ;*if_icmpne
                   │     ││                                                    ; - com.google.re2j.Machine::match@348 (line 242)
  0.17%    0.26%   │     ││      0x00007f44d0a0ec05: xor    %ebx,%ebx          ;*invokespecial step
                   │     ││                                                    ; - com.google.re2j.Machine::match@356 (line 242)
  0.09%    0.13%   │     ││      0x00007f44d0a0ec07: mov    %rax,-0x8(%rsp)
  0.11%    0.12%   │     ││      0x00007f44d0a0ec0c: mov    0x60(%rsp),%eax
  0.25%    0.28%   │     ││      0x00007f44d0a0ec10: mov    %eax,0x38(%rsp)
  0.26%    0.23%   │     ││      0x00007f44d0a0ec14: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │     ││                                                    ; - com.google.re2j.Machine::match@345 (line 242)
  0.65%    0.44%   │     ││      0x00007f44d0a0ec19: add    0x28(%rsp),%r10d   ;*iadd
                   │     ││                                                    ; - com.google.re2j.Machine::match@337 (line 242)
  0.07%    0.05%   │     ││      0x00007f44d0a0ec1e: mov    %r10d,0x60(%rsp)
  0.23%    0.47%   │     ││      0x00007f44d0a0ec23: mov    0x40(%rsp),%rsi
  0.08%    0.12%   │     ││      0x00007f44d0a0ec28: mov    0x18(%rsp),%rdx
  0.11%    0.06%   │     ││      0x00007f44d0a0ec2d: mov    0x20(%rsp),%rcx
  0.02%    0.07%   │     ││      0x00007f44d0a0ec32: mov    0x38(%rsp),%r8d
  0.43%    0.41%   │     ││      0x00007f44d0a0ec37: mov    %r10d,%r9d
  0.05%    0.09%   │     ││      0x00007f44d0a0ec3a: mov    0x4c(%rsp),%r10d
  0.09%    0.08%   │     ││      0x00007f44d0a0ec3f: mov    %r10d,(%rsp)
  0.08%    0.08%   │     ││      0x00007f44d0a0ec43: mov    0x3c(%rsp),%r10d
  0.27%    0.33%   │     ││      0x00007f44d0a0ec48: mov    %r10d,0x8(%rsp)
  0.09%    0.08%   │     ││      0x00007f44d0a0ec4d: mov    %ebx,0x10(%rsp)
  0.04%    0.09%   │     ││      0x00007f44d0a0ec51: xchg   %ax,%ax
  0.07%    0.03%   │     ││      0x00007f44d0a0ec53: callq  0x00007f44d07f3020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=664}
                   │     ││                                                    ;*invokespecial step
                   │     ││                                                    ; - com.google.re2j.Machine::match@356 (line 242)
                   │     ││                                                    ;   {optimized virtual_call}
  0.00%    0.01%   │     ││      0x00007f44d0a0ec58: mov    0x40(%rsp),%r10
  0.44%    0.28%   │     ││      0x00007f44d0a0ec5d: mov    0x24(%r10),%r13d   ;*getfield pool
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                    ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%    0.01%   │     ││      0x00007f44d0a0ec61: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                    ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                    ; - com.google.re2j.Machine::match@445 (line 263)
  0.01%    0.01%   │     ││      0x00007f44d0a0ec65: mov    0x28(%rsp),%r10d
                   │     ││      0x00007f44d0a0ec6a: test   %r10d,%r10d
                   │     ││      0x00007f44d0a0ec6d: je     0x00007f44d0a0f034  ;*ifne
                   │     ││                                                    ; - com.google.re2j.Machine::match@361 (line 243)
  0.40%    0.27%   │     ││      0x00007f44d0a0ec73: mov    0x40(%rsp),%r11
                   │     ││      0x00007f44d0a0ec78: mov    0x28(%r11),%r14d   ;*getfield matchcap
                   │     ││                                                    ; - com.google.re2j.Machine::match@368 (line 246)
           0.01%   │     ││      0x00007f44d0a0ec7c: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │     ││                                                    ; - com.google.re2j.Machine::match@371 (line 246)
                   │     ││                                                    ; implicit exception: dispatches to 0x00007f44d0a109bd
  0.02%    0.03%   │     ││      0x00007f44d0a0ec81: test   %ebp,%ebp
                   │     ││      0x00007f44d0a0ec83: jne    0x00007f44d0a0f875  ;*ifne
                   │     ││                                                    ; - com.google.re2j.Machine::match@372 (line 246)
  0.44%    0.18%   │     ││      0x00007f44d0a0ec89: movzbl 0x10(%r11),%r11d   ;*getfield matched
                   │     ││                                                    ; - com.google.re2j.Machine::match@376 (line 246)
                   │     ││      0x00007f44d0a0ec8e: test   %r11d,%r11d
                   │     ││      0x00007f44d0a0ec91: jne    0x00007f44d0a0fac1  ;*ifeq
                   │     ││                                                    ; - com.google.re2j.Machine::match@379 (line 246)
  0.00%    0.02%   │     ││      0x00007f44d0a0ec97: mov    0x50(%rsp),%r10
  0.00%    0.00%   │     ││      0x00007f44d0a0ec9c: mov    0x10(%r10),%r10d   ;*getfield end
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.55%    0.38%   │     ││      0x00007f44d0a0eca0: mov    %r10d,0x64(%rsp)
                   │     ││      0x00007f44d0a0eca5: mov    0x50(%rsp),%r10
           0.01%   │     ││      0x00007f44d0a0ecaa: mov    0xc(%r10),%ebx     ;*getfield start
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.01%    0.01%   │     ││      0x00007f44d0a0ecae: mov    0x14(%r10),%r9d    ;*getfield str
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.50%    0.68%   │     ││      0x00007f44d0a0ecb2: mov    0x2c(%rsp),%ecx
                   │     ││      0x00007f44d0a0ecb6: cmp    $0xffffffff,%ecx
                   │     ││      0x00007f44d0a0ecb9: je     0x00007f44d0a0f336  ;*if_icmpeq
                   │     ││                                                    ; - com.google.re2j.Machine::match@401 (line 254)
                   │     ││      0x00007f44d0a0ecbf: mov    0x30(%rsp),%ecx
  0.02%    0.01%   │     ││      0x00007f44d0a0ecc3: add    0x60(%rsp),%ecx
  0.50%    0.63%   │     ││      0x00007f44d0a0ecc7: add    %ebx,%ecx          ;*iadd
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%   │     ││      0x00007f44d0a0ecc9: cmp    0x64(%rsp),%ecx
                   │     ││      0x00007f44d0a0eccd: jge    0x00007f44d0a0f344  ;*if_icmpge
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.02%   │     ││      0x00007f44d0a0ecd3: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f44d0a109cd
  0.01%    0.02%   │     ││      0x00007f44d0a0ecd8: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││      0x00007f44d0a0ecdf: jne    0x00007f44d0a0f711
  0.38%    0.95%   │     ││      0x00007f44d0a0ece5: lea    (%r12,%r9,8),%rdi  ;*invokeinterface charAt
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││      0x00007f44d0a0ece9: test   %ecx,%ecx
                   │     ││      0x00007f44d0a0eceb: jl     0x00007f44d0a0f8c9  ;*iflt
                   │     ││                                                    ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.01%   │     ││      0x00007f44d0a0ecf1: mov    0xc(%rdi),%r10d    ;*getfield value
                   │     ││                                                    ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││      0x00007f44d0a0ecf5: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │     ││                                                    ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││                                                    ; implicit exception: dispatches to 0x00007f44d0a109e1
  0.61%    0.58%   │     ││      0x00007f44d0a0ecfa: cmp    %ebp,%ecx
                   │     ││      0x00007f44d0a0ecfc: jge    0x00007f44d0a0fb15  ;*if_icmplt
                   │     ││                                                    ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.22%    0.32%   │     ││      0x00007f44d0a0ed02: cmp    %ebp,%ecx
                   │     ││      0x00007f44d0a0ed04: jae    0x00007f44d0a0f635
  0.14%    0.20%   │     ││      0x00007f44d0a0ed0a: shl    $0x3,%r10
                   │     ││      0x00007f44d0a0ed0e: movzwl 0x10(%r10,%rcx,2),%eax  ;*caload
                   │     ││                                                    ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.23%    0.21%   │     ││      0x00007f44d0a0ed14: cmp    $0xd800,%eax
                   │     ││      0x00007f44d0a0ed1a: jge    0x00007f44d0a0fb8d  ;*if_icmplt
                   │     ││                                                    ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                    ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.26%    0.42%   │     ││      0x00007f44d0a0ed20: shl    $0x3,%eax          ;*ishl
                   │     ││                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                    ; - com.google.re2j.Machine::match@409 (line 255)
  0.08%    0.07%   │     ││      0x00007f44d0a0ed23: mov    %eax,%edx
                   │     ││      0x00007f44d0a0ed25: or     $0x1,%edx
  0.34%    0.57%   │     ││      0x00007f44d0a0ed28: and    $0x7,%eax
  0.11%    0.12%   │     ││      0x00007f44d0a0ed2b: sar    $0x3,%edx          ;*ishr
                   │     ││                                                    ; - com.google.re2j.Machine::match@417 (line 256)
  0.24%    0.27%   │     ││      0x00007f44d0a0ed2e: or     $0x1,%eax          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=881}
                   │     ││                                                    ;*goto
                   │     ││                                                    ; - com.google.re2j.Machine::match@439 (line 262)
  0.00%            │     ││      0x00007f44d0a0ed31: test   %eax,0x15e6a2c9(%rip)        # 0x00007f44e6879000
                   │     ││                                                    ;*goto
                   │     ││                                                    ; - com.google.re2j.Machine::match@439 (line 262)
                   │     ││                                                    ;   {poll}
  0.49%    0.62%   │     ││      0x00007f44d0a0ed37: mov    0x40(%rsp),%r10
  0.00%    0.01%   │     ││      0x00007f44d0a0ed3c: mov    0x14(%r10),%esi    ;*getfield re2
                   │     ││                                                    ; - com.google.re2j.Machine::match@169 (line 216)
  0.02%    0.01%   │     ││      0x00007f44d0a0ed40: mov    0x20(%rsp),%r10
                   │     ││      0x00007f44d0a0ed45: shr    $0x3,%r10
  0.45%    0.57%   │     ││      0x00007f44d0a0ed49: mov    %r10d,0x34(%rsp)
  0.00%    0.01%   │     ││      0x00007f44d0a0ed4e: mov    0x4c(%rsp),%r10d
  0.02%    0.02%   │     ││      0x00007f44d0a0ed53: mov    0x2c(%rsp),%edi
                   │     ││      0x00007f44d0a0ed57: mov    %edx,0x2c(%rsp)
  0.42%    0.58%   │     ││      0x00007f44d0a0ed5b: mov    0x18(%rsp),%rcx
  0.00%    0.02%   │     ││      0x00007f44d0a0ed60: mov    %rcx,0x20(%rsp)
  0.00%    0.00%   │     ││      0x00007f44d0a0ed65: mov    0x30(%rsp),%ecx
  0.00%            │     ││      0x00007f44d0a0ed69: mov    %ecx,0x28(%rsp)
  0.49%    0.55%   │     ││      0x00007f44d0a0ed6d: mov    %eax,0x30(%rsp)
  0.02%    0.01%   ↘     ││      0x00007f44d0a0ed71: mov    0x34(%rsp),%edx
  0.00%    0.01%         ││      0x00007f44d0a0ed75: movzbl 0x18(%r12,%rdx,8),%edx  ; implicit exception: dispatches to 0x00007f44d0a10949
  0.01%    0.02%         ││      0x00007f44d0a0ed7b: mov    0x34(%rsp),%eax
  0.46%    0.56%         ││      0x00007f44d0a0ed7f: lea    (%r12,%rax,8),%rcx  ;*aload
                         ││                                                    ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.03%         ││      0x00007f44d0a0ed83: mov    %rcx,0x18(%rsp)
  0.01%    0.00%         ││      0x00007f44d0a0ed88: test   %edx,%edx
                         ││      0x00007f44d0a0ed8a: jne    0x00007f44d0a0f0ee  ;*aload_0
                         ││                                                    ; - com.google.re2j.Machine::match@267 (line 233)
  0.01%                  ││      0x00007f44d0a0ed90: test   %r11d,%r11d
                         ││      0x00007f44d0a0ed93: jne    0x00007f44d0a0f779  ;*ifne
                         ││                                                    ; - com.google.re2j.Machine::match@271 (line 233)
  0.47%    0.53%         ││      0x00007f44d0a0ed99: mov    0x60(%rsp),%r9d
  0.03%    0.02%         ││      0x00007f44d0a0ed9e: test   %r9d,%r9d
                    ╭    ││      0x00007f44d0a0eda1: je     0x00007f44d0a0edb1  ;*ifeq
                    │    ││                                                    ; - com.google.re2j.Machine::match@275 (line 233)
  0.01%    0.01%    │    ││      0x00007f44d0a0eda3: mov    0x3c(%rsp),%r11d
  0.01%    0.01%    │    ││      0x00007f44d0a0eda8: test   %r11d,%r11d
                    │    ││      0x00007f44d0a0edab: jne    0x00007f44d0a0f825  ;*aload_0
                    │    ││                                                    ; - com.google.re2j.Machine::match@282 (line 236)
  0.51%    0.65%    ↘    ││      0x00007f44d0a0edb1: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                    ; - com.google.re2j.Machine::match@286 (line 236)
                         ││                                                    ; implicit exception: dispatches to 0x00007f44d0a10959
  0.03%    0.02%         ││      0x00007f44d0a0edb6: test   %ebp,%ebp
                         ││      0x00007f44d0a0edb8: jg     0x00007f44d0a0f945  ;*ifle
                         ││                                                    ; - com.google.re2j.Machine::match@287 (line 236)
           0.01%         ││      0x00007f44d0a0edbe: mov    0x40(%rsp),%r11
  0.00%    0.00%         ││      0x00007f44d0a0edc3: mov    0x18(%r11),%r11d   ;*getfield prog
                         ││                                                    ; - com.google.re2j.Machine::match@298 (line 239)
  0.51%    0.51%         ││      0x00007f44d0a0edc7: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                         ││                                                    ; - com.google.re2j.Machine::match@301 (line 239)
                         ││                                                    ; implicit exception: dispatches to 0x00007f44d0a10969
  0.03%    0.04%         ││      0x00007f44d0a0edcc: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f44d0a10979
  0.36%    0.46%         ││      0x00007f44d0a0edd1: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ││      0x00007f44d0a0edd8: jne    0x00007f44d0a0f6b5
  0.32%    0.44%         ││      0x00007f44d0a0edde: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.12%    0.13%         ││      0x00007f44d0a0ede2: mov    0x18(%rbx),%r11d   ;*getfield pc
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%         ││      0x00007f44d0a0ede6: cmp    $0x40,%r11d
                         ││      0x00007f44d0a0edea: jg     0x00007f44d0a0f999  ;*if_icmpgt
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.24%    0.43%         ││      0x00007f44d0a0edf0: mov    $0x1,%edx
  0.00%    0.01%         ││      0x00007f44d0a0edf5: mov    %r11d,%ecx
  0.16%    0.18%         ││      0x00007f44d0a0edf8: shl    %cl,%rdx           ;*lshl
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.77%    0.88%         ││      0x00007f44d0a0edfb: mov    0x34(%rsp),%r10d
  0.05%    0.04%         ││      0x00007f44d0a0ee00: mov    0x10(%r12,%r10,8),%r9  ;*getfield pcsl
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%         ││      0x00007f44d0a0ee05: mov    %r9,%r10
  0.00%    0.00%         ││      0x00007f44d0a0ee08: and    %rdx,%r10          ;*land
                         ││                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.40%         ││      0x00007f44d0a0ee0b: test   %r10,%r10
                         ││      0x00007f44d0a0ee0e: jne    0x00007f44d0a0f9ed  ;*ifeq
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.03%         ││      0x00007f44d0a0ee14: cmp    $0x40,%r11d
                         ││      0x00007f44d0a0ee18: jge    0x00007f44d0a0fa6d  ;*if_icmpge
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%         ││      0x00007f44d0a0ee1e: mov    0x34(%rsp),%r10d
           0.00%         ││      0x00007f44d0a0ee23: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.33%    0.49%         ││      0x00007f44d0a0ee28: or     %r9,%rdx
  0.09%    0.09%         ││      0x00007f44d0a0ee2b: mov    %rdx,0x10(%r12,%r10,8)  ;*putfield pcsl
                         ││                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.01%         ││      0x00007f44d0a0ee30: test   %r8d,%r8d
                         ││      0x00007f44d0a0ee33: jle    0x00007f44d0a0f7cd  ;*ifle
                         ││                                                    ; - com.google.re2j.Machine::alloc@4 (line 132)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%         ││      0x00007f44d0a0ee39: mov    %r8d,%ebp
  0.40%    0.44%         ││      0x00007f44d0a0ee3c: dec    %ebp               ;*isub
                         ││                                                    ; - com.google.re2j.Machine::alloc@13 (line 133)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.07%         ││      0x00007f44d0a0ee3e: mov    0x40(%rsp),%r10
           0.01%         ││      0x00007f44d0a0ee43: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                         ││                                                    ; - com.google.re2j.Machine::alloc@14 (line 133)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                  ││      0x00007f44d0a0ee47: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f44d0a10995
  0.45%    0.39%         ││      0x00007f44d0a0ee4c: cmp    %r10d,%ebp
                         ││      0x00007f44d0a0ee4f: jae    0x00007f44d0a0f552
  0.07%    0.06%         ││      0x00007f44d0a0ee55: lea    (%r12,%r13,8),%r10
  0.00%                  ││      0x00007f44d0a0ee59: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                         ││                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                  ││      0x00007f44d0a0ee5e: test   %r8d,%r8d
                         ││      0x00007f44d0a0ee61: je     0x00007f44d0a0f5a9  ;*putfield inst
                         ││                                                    ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.41%    0.34%         ││      0x00007f44d0a0ee67: mov    0x34(%rsp),%r10d
  0.05%    0.07%         ││      0x00007f44d0a0ee6c: mov    0x20(%r12,%r10,8),%r9d  ;*getfield denseThreads
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.00%         ││      0x00007f44d0a0ee71: mov    0xc(%r12,%r10,8),%ecx  ;*getfield size
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%         ││      0x00007f44d0a0ee76: lea    (%r12,%r8,8),%r10
  0.39%    0.35%         ││      0x00007f44d0a0ee7a: mov    %ecx,%r11d
  0.09%    0.07%         ││      0x00007f44d0a0ee7d: inc    %r11d
  0.00%                  ││      0x00007f44d0a0ee80: mov    0x34(%rsp),%esi
  0.00%    0.01%         ││      0x00007f44d0a0ee84: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.45%    0.48%         ││      0x00007f44d0a0ee89: mov    %r10,%r11
  0.11%    0.03%         ││      0x00007f44d0a0ee8c: mov    %rbx,%r10
  0.00%                  ││      0x00007f44d0a0ee8f: shr    $0x3,%r10
  0.00%    0.00%         ││      0x00007f44d0a0ee93: mov    %r10d,0x10(%r12,%r8,8)
  0.40%    0.38%         ││      0x00007f44d0a0ee98: shr    $0x9,%r11
  0.06%    0.10%         ││      0x00007f44d0a0ee9c: movabs $0x7f44cc1db000,%r10
  0.00%                  ││      0x00007f44d0a0eea6: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                         ││                                                    ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%         ││      0x00007f44d0a0eeaa: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f44d0a109a5
  0.34%    0.40%         ││      0x00007f44d0a0eeaf: cmp    %r11d,%ecx
                         ││      0x00007f44d0a0eeb2: jae    0x00007f44d0a0f5bd  ;*aastore
                         ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                    ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.08%         ││      0x00007f44d0a0eeb8: test   %edi,%edi
                     ╭   ││      0x00007f44d0a0eeba: jl     0x00007f44d0a0ef61  ;*ifge
                     │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │   ││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%     │   ││      0x00007f44d0a0eec0: xor    %ebx,%ebx          ;*iload_0
                     │   ││                                                    ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │   ││                                                    ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%              │   ││↗     0x00007f44d0a0eec2: cmp    $0xa,%edi
                     │   │││     0x00007f44d0a0eec5: je     0x00007f44d0a0f31c  ;*iload_1
                     │   │││                                                   ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │   │││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.38%    0.47%     │   │││     0x00007f44d0a0eecb: mov    0x2c(%rsp),%r10d
  0.11%    0.06%     │   │││     0x00007f44d0a0eed0: test   %r10d,%r10d
                     │╭  │││     0x00007f44d0a0eed3: jl     0x00007f44d0a0ef6b  ;*iload_1
                     ││  │││                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││  │││                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%              ││  │││↗    0x00007f44d0a0eed9: cmp    $0xa,%r10d
                     ││  ││││    0x00007f44d0a0eedd: je     0x00007f44d0a0f324  ;*iload_0
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.00%     ││  ││││    0x00007f44d0a0eee3: mov    %edi,%r10d
  0.48%    0.62%     ││  ││││    0x00007f44d0a0eee6: add    $0xffffffbf,%r10d
  0.05%    0.07%     ││  ││││    0x00007f44d0a0eeea: lea    (%r12,%r9,8),%r11  ;*getfield denseThreads
                     ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%              ││  ││││    0x00007f44d0a0eeee: lea    0x10(%r11,%rcx,4),%r11
  0.02%    0.01%     ││  ││││    0x00007f44d0a0eef3: mov    %r8d,(%r11)
  0.48%    0.59%     ││  ││││    0x00007f44d0a0eef6: shr    $0x9,%r11
  0.05%    0.07%     ││  ││││    0x00007f44d0a0eefa: movabs $0x7f44cc1db000,%r8
  0.00%    0.01%     ││  ││││    0x00007f44d0a0ef04: mov    %r12b,(%r8,%r11,1)  ;*aastore
                     ││  ││││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     ││  ││││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.04%     ││  ││││    0x00007f44d0a0ef08: cmp    $0x1a,%r10d
                     ││╭ ││││    0x00007f44d0a0ef0c: jb     0x00007f44d0a0ef1f  ;*if_icmple
                     │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.34%    0.31%     │││ ││││    0x00007f44d0a0ef0e: mov    %edi,%r10d
  0.03%    0.10%     │││ ││││    0x00007f44d0a0ef11: add    $0xffffff9f,%r10d
  0.00%              │││ ││││    0x00007f44d0a0ef15: cmp    $0x1a,%r10d
                     │││ ││││    0x00007f44d0a0ef19: jae    0x00007f44d0a0f483  ;*iconst_1
                     │││ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.04%     ││↘ ││││    0x00007f44d0a0ef1f: mov    $0x1,%ebp          ;*ireturn
                     ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.41%    0.30%     ││  ││││    0x00007f44d0a0ef24: mov    0x2c(%rsp),%r11d
  0.09%    0.11%     ││  ││││    0x00007f44d0a0ef29: add    $0xffffffbf,%r11d
  0.01%    0.00%     ││  ││││    0x00007f44d0a0ef2d: cmp    $0x1a,%r11d
                     ││ ╭││││    0x00007f44d0a0ef31: jb     0x00007f44d0a0ef46  ;*if_icmple
                     ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.11%    0.10%     ││ │││││    0x00007f44d0a0ef33: mov    0x2c(%rsp),%r10d
  0.30%    0.38%     ││ │││││    0x00007f44d0a0ef38: add    $0xffffff9f,%r10d
  0.05%    0.09%     ││ │││││    0x00007f44d0a0ef3c: cmp    $0x1a,%r10d
           0.00%     ││ │││││    0x00007f44d0a0ef40: jae    0x00007f44d0a0f4a4  ;*iconst_1
                     ││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.02%     ││ ↘││││    0x00007f44d0a0ef46: mov    $0x1,%r11d         ;*ireturn
                     ││  ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││  ││││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.29%    0.30%     ││  ││││    0x00007f44d0a0ef4c: cmp    %r11d,%ebp
                     ││  ╰│││    0x00007f44d0a0ef4f: je     0x00007f44d0a0ebee  ;*if_icmpeq
                     ││   │││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││   │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
           0.02%     ││   │││    0x00007f44d0a0ef55: or     $0x10,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││   │││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.12%     ││   │││    0x00007f44d0a0ef58: mov    %ebx,0x4c(%rsp)
  0.06%    0.07%     ││   ╰││    0x00007f44d0a0ef5c: jmpq   0x00007f44d0a0ebf5
                     ↘│    ││    0x00007f44d0a0ef61: mov    $0x5,%ebx
                      │    ╰│    0x00007f44d0a0ef66: jmpq   0x00007f44d0a0eec2
  0.01%               ↘     │    0x00007f44d0a0ef6b: or     $0xa,%ebx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
                            ╰    0x00007f44d0a0ef6e: jmpq   0x00007f44d0a0eed9
                                 0x00007f44d0a0ef73: nopw   0x0(%rax,%rax,1)
                                 0x00007f44d0a0ef7c: data16 data16 xchg %ax,%ax
                                 0x00007f44d0a0ef80: mov    %eax,0x5c(%rsp)
  0.02%    0.02%                 0x00007f44d0a0ef84: jmpq   0x00007f44d0a0f270
                                 0x00007f44d0a0ef89: mov    0x5c(%rsp),%esi
                                 0x00007f44d0a0ef8d: add    $0x2,%esi
                                 0x00007f44d0a0ef90: mov    %esi,0x5c(%rsp)
           0.00%                 0x00007f44d0a0ef94: mov    0x5c(%rsp),%esi
                                 0x00007f44d0a0ef98: inc    %esi
                                 0x00007f44d0a0ef9a: mov    %esi,0x58(%rsp)
                             ╭   0x00007f44d0a0ef9e: jmp    0x00007f44d0a0efc2
                             │   0x00007f44d0a0efa0: mov    0x5c(%rsp),%esi
                             │   0x00007f44d0a0efa4: add    $0x2,%esi
                             │   0x00007f44d0a0efa7: mov    %esi,0x58(%rsp)
                             │╭  0x00007f44d0a0efab: jmp    0x00007f44d0a0efb8
                             ││  0x00007f44d0a0efad: mov    0x5c(%rsp),%esi
                             ││  0x00007f44d0a0efb1: add    $0x2,%esi
           0.00%             ││  0x00007f44d0a0efb4: mov    %esi,0x5c(%rsp)
                             │↘  0x00007f44d0a0efb8: mov    0x5c(%rsp),%esi
                             │   0x00007f44d0a0efbc: inc    %esi               ;*iinc
                             │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                             │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                 ; - com.google.re2j.Machine::match@206 (line 220)
                             │   0x00007f44d0a0efbe: mov    %esi,0x5c(%rsp)
                             ↘   0x00007f44d0a0efc2: mov    0x5c(%rsp),%esi
  0.00%                          0x00007f44d0a0efc6: cmp    0x28(%rsp),%esi
                                 0x00007f44d0a0efca: jg     0x00007f44d0a0f020
  0.00%                          0x00007f44d0a0efcc: mov    0x5c(%rsp),%esi
                                 0x00007f44d0a0efd0: add    0x38(%rsp),%esi    ;*iadd
                                                                               ; - java.lang.String::indexOf@101 (line 1777)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
                                 0x00007f44d0a0efd4: mov    %esi,%eax
                                 0x00007f44d0a0efd6: mov    0x58(%rsp),%esi
                                 0x00007f44d0a0efda: cmp    %eax,%esi
                                 0x00007f44d0a0efdc: jge    0x00007f44d0a0f014  ;*if_icmpge
....................................................................................................
 23.24%   25.90%  <total for region 2>

....[Hottest Regions]...............................................................................
 60.52%   60.31%         C2, level 4  com.google.re2j.Machine::step, version 529 (1365 bytes) 
 23.24%   25.90%         C2, level 4  com.google.re2j.Machine::match, version 571 (1059 bytes) 
  5.23%    5.04%         C2, level 4  com.google.re2j.Machine::step, version 529 (435 bytes) 
  4.54%    4.47%         C2, level 4  com.google.re2j.Machine::step, version 529 (108 bytes) 
  1.50%    0.25%         C2, level 4  com.google.re2j.Machine::init, version 570 (405 bytes) 
  1.00%    1.16%         C2, level 4  com.google.re2j.Machine::match, version 571 (200 bytes) 
  0.57%    0.56%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.29%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 570 (135 bytes) 
  0.17%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 571 (270 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 583 (33 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 583 (30 bytes) 
  0.10%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 571 (144 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 583 (8 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 571 (149 bytes) 
  0.06%    0.02%         C2, level 4  java.util.Collections::shuffle, version 589 (198 bytes) 
  0.06%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 631 (142 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 583 (8 bytes) 
  0.05%    0.08%         C2, level 4  java.util.Collections::shuffle, version 589 (27 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (30 bytes) 
  2.08%    1.59%  <...other 357 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 70.30%   69.83%         C2, level 4  com.google.re2j.Machine::step, version 529 
 24.78%   27.39%         C2, level 4  com.google.re2j.Machine::match, version 571 
  1.84%    0.31%         C2, level 4  com.google.re2j.Machine::init, version 570 
  1.36%    1.17%   [kernel.kallsyms]  [unknown] 
  0.56%    0.30%         C2, level 4  com.google.re2j.RE2::match, version 583 
  0.16%    0.12%         C2, level 4  java.util.Collections::shuffle, version 589 
  0.10%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 631 
  0.05%    0.00%              [vdso]  [unknown] 
  0.04%    0.05%        libc-2.26.so  _IO_fwrite 
  0.04%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%           libpthread-2.26.so  __libc_write 
  0.03%    0.01%           libjvm.so  SpinPause 
  0.03%    0.03%           libjvm.so  StringTable::unlink_or_oops_do 
  0.03%    0.01%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.02%    0.04%           libjvm.so  fileStream::write 
  0.02%    0.03%           libjvm.so  outputStream::update_position 
  0.02%    0.00%              [vdso]  __vdso_clock_gettime 
  0.02%    0.02%           libjvm.so  xmlTextStream::write 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 588 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.51%    0.38%  <...other 79 warm methods...>
....................................................................................................
100.00%   99.84%  <totals>

....[Distribution by Source]........................................................................
 97.75%   98.01%         C2, level 4
  1.36%    1.17%   [kernel.kallsyms]
  0.44%    0.42%           libjvm.so
  0.16%    0.28%        libc-2.26.so
  0.08%    0.03%  libpthread-2.26.so
  0.07%    0.01%              [vdso]
  0.04%    0.01%        runtime stub
  0.04%    0.04%      hsdis-amd64.so
  0.02%    0.00%         C1, level 3
  0.01%    0.01%         interpreter
  0.00%    0.00%      perf-22695.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  18811.363 ± 581.989  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
