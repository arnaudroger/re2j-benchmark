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
# Warmup Iteration   1: 9117.695 ops/s
# Warmup Iteration   2: 18616.214 ops/s
# Warmup Iteration   3: 18980.797 ops/s
# Warmup Iteration   4: 18927.806 ops/s
# Warmup Iteration   5: 18961.958 ops/s
# Warmup Iteration   6: 19124.940 ops/s
# Warmup Iteration   7: 19219.253 ops/s
# Warmup Iteration   8: 19059.010 ops/s
# Warmup Iteration   9: 19117.762 ops/s
# Warmup Iteration  10: 19296.823 ops/s
# Warmup Iteration  11: 18882.499 ops/s
# Warmup Iteration  12: 19232.354 ops/s
# Warmup Iteration  13: 19249.759 ops/s
# Warmup Iteration  14: 18932.880 ops/s
# Warmup Iteration  15: 19320.468 ops/s
# Warmup Iteration  16: 19301.865 ops/s
# Warmup Iteration  17: 19174.495 ops/s
# Warmup Iteration  18: 19297.294 ops/s
# Warmup Iteration  19: 19115.523 ops/s
# Warmup Iteration  20: 19289.979 ops/s
Iteration   1: 19346.677 ops/s
Iteration   2: 19267.156 ops/s
Iteration   3: 19272.267 ops/s
Iteration   4: 19083.040 ops/s
Iteration   5: 19296.487 ops/s
Iteration   6: 19065.651 ops/s
Iteration   7: 19308.658 ops/s
Iteration   8: 19049.452 ops/s
Iteration   9: 19175.393 ops/s
Iteration  10: 19313.113 ops/s
Iteration  11: 19299.191 ops/s
Iteration  12: 19245.156 ops/s
Iteration  13: 19315.802 ops/s
Iteration  14: 19166.518 ops/s
Iteration  15: 19116.479 ops/s
Iteration  16: 19263.149 ops/s
Iteration  17: 19170.689 ops/s
Iteration  18: 19254.795 ops/s
Iteration  19: 19179.077 ops/s
Iteration  20: 19202.287 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  19219.552 ±(99.9%) 78.225 ops/s [Average]
  (min, avg, max) = (19049.452, 19219.552, 19346.677), stdev = 90.084
  CI (99.9%): [19141.327, 19297.777] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 215381 total address lines.
Perf output processed (skipped 23.103 seconds):
 Column 1: cycles (20499 events)
 Column 2: instructions (20487 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 553 (1365 bytes) 

                       0x00007fec75250397: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fec7525039b: xor    %edi,%edi
                       0x00007fec7525039d: mov    0x20(%rsp),%r13
                       0x00007fec752503a2: vmovd  %xmm6,%ebx
                       0x00007fec752503a6: vmovd  %xmm1,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.21%    ↗  0x00007fec752503aa: mov    0xa4(%rsp),%ecx
  0.34%    0.45%    │  0x00007fec752503b1: mov    0xac(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  1.46%    1.72%    │  0x00007fec752503b9: test   %rdi,%rdi
                  ╭ │  0x00007fec752503bc: je     0x00007fec75250405  ;*ifnull
                  │ │                                                ; - com.google.re2j.Machine::step@220 (line 302)
                  │ │  0x00007fec752503be: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │ │                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │                                                ; implicit exception: dispatches to 0x00007fec75251e3d
                  │ │  0x00007fec752503c3: cmp    %ebp,%ebx
                  │ │  0x00007fec752503c5: jge    0x00007fec75250d8d  ;*if_icmplt
                  │ │                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%           │ │  0x00007fec752503cb: mov    %ebx,%r8d
  1.45%    1.82%  │ │  0x00007fec752503ce: inc    %r8d
                  │ │  0x00007fec752503d1: mov    %r8d,0xc(%r13)     ;*putfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%           │ │  0x00007fec752503d5: cmp    %ebp,%ebx
                  │ │  0x00007fec752503d7: jae    0x00007fec75250c0d  ;*aastore
                  │ │                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │ │  0x00007fec752503dd: mov    %rdi,%r11
  1.44%    1.94%  │ │  0x00007fec752503e0: shr    $0x3,%r11
                  │ │  0x00007fec752503e4: lea    (%r12,%rdx,8),%r8  ;*getfield pool
                  │ │                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │ │                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.00%    0.00%  │ │  0x00007fec752503e8: lea    0x10(%r8,%rbx,4),%r8
                  │ │  0x00007fec752503ed: mov    %r11d,(%r8)
  1.55%    1.80%  │ │  0x00007fec752503f0: mov    %r8,%r11
                  │ │  0x00007fec752503f3: shr    $0x9,%r11
  0.00%           │ │  0x00007fec752503f7: movabs $0x7fec711ff000,%r8
                  │ │  0x00007fec75250401: mov    %r12b,(%r8,%r11,1)  ;*goto
                  │ │                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.55%    1.90%  ↘ │  0x00007fec75250405: mov    0x8(%rsp),%r11
                    │  0x00007fec7525040a: mov    0xc(%r11),%r8d     ;*getfield size
                    │                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.28%    0.43%    │  0x00007fec7525040e: inc    %r10d              ; OopMap{r11=Oop r13=Oop r14=Oop [8]=Oop off=497}
                    │                                                ;*goto
                    │                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.01%    0.00%    │  0x00007fec75250411: test   %eax,0x167bdbe9(%rip)        # 0x00007fec8ba0e000
                    │                                                ;*goto
                    │                                                ; - com.google.re2j.Machine::step@232 (line 277)
                    │                                                ;   {poll}
  1.63%    1.43%    │  0x00007fec75250417: cmp    %r8d,%r10d
                    │  0x00007fec7525041a: jge    0x00007fec75250a18  ;*aload_1
                    │                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.22%    0.23%    │  0x00007fec75250420: mov    0x8(%rsp),%r11
  0.45%    0.49%    │  0x00007fec75250425: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.11%    0.15%    │  0x00007fec75250429: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fec75251e09
  2.44%    2.68%    │  0x00007fec7525042e: cmp    %r8d,%r10d
                    │  0x00007fec75250431: jae    0x00007fec75250b7a
  0.45%    0.44%    │  0x00007fec75250437: shl    $0x3,%r11
  0.33%    0.41%    │  0x00007fec7525043b: mov    0x10(%r11,%r10,4),%r11d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.00%    0.03%    │  0x00007fec75250440: mov    0x10(%r12,%r11,8),%r9d  ;*getfield inst
                    │                                                ; - com.google.re2j.Machine::step@78 (line 283)
                    │                                                ; implicit exception: dispatches to 0x00007fec75251e1d
  4.08%    4.28%    │  0x00007fec75250445: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                    │                                                ; - com.google.re2j.Machine::step@85 (line 285)
                    │                                                ; implicit exception: dispatches to 0x00007fec75251e2d
  6.46%    6.75%    │  0x00007fec7525044a: cmp    $0x6,%ebp
                    │  0x00007fec7525044d: je     0x00007fec75250c61  ;*if_icmpne
                    │                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.56%    1.55%    │  0x00007fec75250453: mov    0x8(%r12,%r9,8),%r8d
  0.04%    0.03%    │  0x00007fec75250458: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fec7525045f: jne    0x00007fec75250bc5  ;*invokevirtual matchRune
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.35%    1.21%    │  0x00007fec75250465: mov    0xc(%r13),%ebx     ;*getfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250469: mov    0x24(%r13),%edx    ;*getfield pool
                    │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.65%    0.88%    │  0x00007fec7525046d: lea    (%r12,%r9,8),%r8   ;*invokevirtual matchRune
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
                    │  0x00007fec75250471: mov    0xc(%r8),%ebp      ;*getfield op
                    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.16%    0.90%    │  0x00007fec75250475: lea    (%r12,%r11,8),%rdi  ;*aaload
                    │                                                ; - com.google.re2j.Machine::step@27 (line 278)
                    │  0x00007fec75250479: cmp    $0xa,%ebp
                    │  0x00007fec7525047c: jne    0x00007fec752509aa  ;*if_icmpne
                    │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                    │                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.20%    0.26%    │  0x00007fec75250482: mov    0x1c(%r8),%r9d     ;*getfield outInst
                    │                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.03%    0.01%    │  0x00007fec75250486: mov    0xc(%r12,%r11,8),%r8d  ;*getfield cap
                    │                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.26%    0.18%    │  0x00007fec7525048b: mov    0x8(%r12,%r9,8),%esi  ; implicit exception: dispatches to 0x00007fec75251e4d
  1.05%    0.61%    │  0x00007fec75250490: lea    (%r12,%r9,8),%rax
  0.01%    0.01%    │  0x00007fec75250494: cmp    $0xf8019844,%esi   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    │  0x00007fec7525049a: jne    0x00007fec75250a54  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.46%    0.20%    │  0x00007fec752504a0: mov    0x18(%rax),%r9d    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.00%    │  0x00007fec752504a4: mov    0x10(%r14),%rsi    ;*getfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007fec75251e75
                    │  0x00007fec752504a8: cmp    $0x40,%r9d
                    │  0x00007fec752504ac: jg     0x00007fec75251031  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.55%    │  0x00007fec752504b2: vmovq  %rax,%xmm3
                    │  0x00007fec752504b7: vmovd  %r8d,%xmm2
                    │  0x00007fec752504bc: vmovd  %edx,%xmm1
                    │  0x00007fec752504c0: vmovd  %ebx,%xmm0
  0.46%    0.04%    │  0x00007fec752504c4: mov    %r11d,%eax
                    │  0x00007fec752504c7: mov    %r10d,0xac(%rsp)
                    │  0x00007fec752504cf: mov    %ecx,0xa4(%rsp)
                    │  0x00007fec752504d6: mov    %r13,0x20(%rsp)
  0.51%    0.01%    │  0x00007fec752504db: mov    $0x1,%ebx
                    │  0x00007fec752504e0: mov    %r9d,%ecx
                    │  0x00007fec752504e3: shl    %cl,%rbx           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.50%    0.01%    │  0x00007fec752504e6: mov    %rsi,%r11
                    │  0x00007fec752504e9: and    %rbx,%r11
                    │  0x00007fec752504ec: test   %r11,%r11
                    │  0x00007fec752504ef: jne    0x00007fec75250b5d  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.44%    0.00%    │  0x00007fec752504f5: cmp    $0x40,%r9d
                    │  0x00007fec752504f9: jge    0x00007fec7525107d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007fec752504ff: mov    %r12b,0x18(%r14)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250503: vmovq  %xmm3,%r10
                    │  0x00007fec75250508: mov    0x1c(%r10),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.57%    0.21%    │  0x00007fec7525050c: or     %rsi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007fec7525050f: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250513: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fec75251e89
  0.82%             │  0x00007fec75250518: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fec7525051f: jne    0x00007fec75250cf9
  0.55%             │  0x00007fec75250525: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250529: mov    0x18(%r9),%r8d     ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%             │  0x00007fec7525052d: cmp    $0x40,%r8d
                    │  0x00007fec75250531: jg     0x00007fec752510cd  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.39%    0.03%    │  0x00007fec75250537: mov    $0x1,%r10d
  0.06%    0.02%    │  0x00007fec7525053d: mov    %r8d,%ecx
                    │  0x00007fec75250540: shl    %cl,%r10           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.86%    0.77%    │  0x00007fec75250543: mov    %rbx,%r11
                    │  0x00007fec75250546: and    %r10,%r11          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250549: test   %r11,%r11
                    │  0x00007fec7525054c: jne    0x00007fec75251125  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.16%    │  0x00007fec75250552: cmp    $0x40,%r8d
                    │  0x00007fec75250556: jge    0x00007fec75251191  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.42%    0.53%    │  0x00007fec7525055c: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec7525055f: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007fec75250563: mov    %rdi,%r11
  0.12%    0.13%    │  0x00007fec75250566: mov    %r9,%r10
  0.40%    0.38%    │  0x00007fec75250569: shr    $0x3,%r10
                    │  0x00007fec7525056d: mov    %r10d,0x10(%r12,%rax,8)
           0.00%    │  0x00007fec75250572: shr    $0x9,%r11
  0.12%    0.03%    │  0x00007fec75250576: movabs $0x7fec711ff000,%r10
  0.39%    0.12%    │  0x00007fec75250580: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250584: vmovd  %xmm2,%r11d
  0.01%    0.00%    │  0x00007fec75250589: mov    0xc(%r12,%r11,8),%r8d  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007fec75251ead
  0.10%    0.03%    │  0x00007fec7525058e: test   %r8d,%r8d
                    │  0x00007fec75250591: jg     0x00007fec752511e9  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.08%    │  0x00007fec75250597: mov    %r8d,%r13d
                    │  0x00007fec7525059a: mov    0xc(%r14),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    │  0x00007fec7525059e: mov    %r10d,0x28(%rsp)
  0.11%    0.10%    │  0x00007fec752505a3: mov    0x20(%r14),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.41%    0.24%    │  0x00007fec752505a7: vmovd  %r10d,%xmm5
                    │  0x00007fec752505ac: mov    0x28(%rsp),%r10d
  0.02%    0.00%    │  0x00007fec752505b1: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.06%    │  0x00007fec752505b4: vmovd  %r10d,%xmm4
  0.29%    0.42%    │  0x00007fec752505b9: mov    %r10d,0xc(%r14)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec752505bd: vmovd  %xmm5,%r10d
  0.00%    0.02%    │  0x00007fec752505c2: mov    0xc(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x00007fec75251ebd
  0.10%    0.19%    │  0x00007fec752505c7: mov    0x28(%rsp),%r10d
  0.38%    0.43%    │  0x00007fec752505cc: cmp    %edx,%r10d
                    │  0x00007fec752505cf: jae    0x00007fec75250cad  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec752505d5: vmovq  %xmm3,%r10
  0.01%    0.00%    │  0x00007fec752505da: mov    0x20(%r10),%r10d   ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.10%    │  0x00007fec752505de: vmovd  %r10d,%xmm3
  0.38%    0.38%    │  0x00007fec752505e3: vmovd  %xmm5,%r10d
                    │  0x00007fec752505e8: lea    (%r12,%r10,8),%r9  ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007fec752505ec: mov    0x28(%rsp),%r10d
  0.11%    0.14%    │  0x00007fec752505f1: lea    0x10(%r9,%r10,4),%r10
  0.43%    0.28%    │  0x00007fec752505f6: mov    %eax,(%r10)
                    │  0x00007fec752505f9: shr    $0x9,%r10
  0.00%    0.00%    │  0x00007fec752505fd: movabs $0x7fec711ff000,%r11
  0.08%    0.09%    │  0x00007fec75250607: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.45%    0.47%    │  0x00007fec7525060b: vmovd  %xmm3,%r10d
                    │  0x00007fec75250610: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007fec75251ed9
  0.03%    0.02%    │  0x00007fec75250615: movslq 0x28(%rsp),%r10
  0.08%    0.12%    │  0x00007fec7525061a: lea    (%r9,%r10,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.50%    │  0x00007fec7525061e: mov    %rdi,%rsi
                    │  0x00007fec75250621: add    $0x14,%rsi         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007fec75250625: vmovd  %xmm0,%r10d
  0.08%    0.05%    │  0x00007fec7525062a: dec    %r10d              ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.30%    │  0x00007fec7525062d: vmovd  %r10d,%xmm6
                    │  0x00007fec75250632: vmovd  %xmm3,%r10d
           0.00%    │  0x00007fec75250637: lea    (%r12,%r10,8),%r8
  0.11%    0.04%    │  0x00007fec7525063b: mov    0x28(%rsp),%r10d
  0.35%    0.08%    │  0x00007fec75250640: add    $0x2,%r10d         ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250644: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007fec7525064b: jne    0x00007fec752502b1  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250651: mov    %r8,%rax
  0.08%    0.07%    │  0x00007fec75250654: mov    0x18(%r8),%r11d    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.29%    0.19%    │  0x00007fec75250658: vmovd  %r11d,%xmm3
                    │  0x00007fec7525065d: cmp    $0x40,%r11d
                    │  0x00007fec75250661: jg     0x00007fec752514ed  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007fec75250667: mov    $0x1,%r8d
  0.10%    0.08%    │  0x00007fec7525066d: mov    %r11d,%ecx
  0.39%    0.22%    │  0x00007fec75250670: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.12%    │  0x00007fec75250673: mov    %rbx,%r11
  0.41%    0.42%    │  0x00007fec75250676: and    %r8,%r11           ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250679: test   %r11,%r11
                    │  0x00007fec7525067c: jne    0x00007fec75251539  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%             │  0x00007fec75250682: mov    %ecx,%r11d
  0.10%    0.02%    │  0x00007fec75250685: cmp    $0x40,%r11d
                    │  0x00007fec75250689: jge    0x00007fec75251591  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.04%    │  0x00007fec7525068f: mov    0x14(%rax),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250692: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007fec75250695: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.08%    │  0x00007fec75250699: cmp    %r13d,%ebp
                    │  0x00007fec7525069c: jl     0x00007fec7525163d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.40%    0.52%    │  0x00007fec752506a2: mov    0x1c(%rax),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec752506a5: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fec75251f15
  0.00%    0.02%    │  0x00007fec752506aa: cmp    $0xf8019844,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    │  0x00007fec752506b1: jne    0x00007fec75250fad
  0.14%    0.13%    │  0x00007fec752506b7: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.39%    0.58%    │  0x00007fec752506bb: vmovq  %r11,%xmm3
                    │  0x00007fec752506c0: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007fec752506c4: mov    %r11d,%ecx
  0.11%    0.12%    │  0x00007fec752506c7: cmp    $0x40,%r11d
                    │  0x00007fec752506cb: jg     0x00007fec75251751  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.42%    │  0x00007fec752506d1: mov    $0x1,%r8d
                    │  0x00007fec752506d7: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.42%    0.51%    │  0x00007fec752506da: mov    %rbx,%r11
                    │  0x00007fec752506dd: and    %r8,%r11
           0.02%    │  0x00007fec752506e0: test   %r11,%r11
                    │  0x00007fec752506e3: jne    0x00007fec75250b66  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.19%    │  0x00007fec752506e9: mov    %ecx,%r11d
  0.31%    0.62%    │  0x00007fec752506ec: cmp    $0x40,%r11d
                    │  0x00007fec752506f0: jge    0x00007fec7525179d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec752506f6: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.00%    │  0x00007fec752506f9: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.09%    │  0x00007fec752506fd: vmovq  %xmm3,%r11
  0.41%    0.49%    │  0x00007fec75250702: mov    0x1c(%r11),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250706: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fec75251f45
  0.01%    0.02%    │  0x00007fec7525070b: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007fec75250712: jne    0x00007fec75250fe5
  0.12%    0.12%    │  0x00007fec75250718: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.44%    │  0x00007fec7525071c: vmovq  %r11,%xmm7
                    │  0x00007fec75250721: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.02%    │  0x00007fec75250725: mov    %r11d,%ecx
  0.09%    0.15%    │  0x00007fec75250728: cmp    $0x40,%r11d
                    │  0x00007fec7525072c: jg     0x00007fec752517e9  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.43%    │  0x00007fec75250732: mov    $0x1,%r8d
                    │  0x00007fec75250738: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.49%    0.54%    │  0x00007fec7525073b: mov    %rbx,%r11
                    │  0x00007fec7525073e: and    %r8,%r11           ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             │  0x00007fec75250741: test   %r11,%r11
                    │  0x00007fec75250744: jne    0x00007fec75251845  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.10%    │  0x00007fec7525074a: mov    %ecx,%r11d
  0.29%    0.43%    │  0x00007fec7525074d: cmp    $0x40,%r11d
                    │  0x00007fec75250751: jge    0x00007fec752518b5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec75250757: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.02%    │  0x00007fec7525075a: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.12%    │  0x00007fec7525075e: vmovd  %xmm0,%r11d
  0.31%    0.35%    │  0x00007fec75250763: test   %r11d,%r11d
                    │  0x00007fec75250766: jle    0x00007fec75251415  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec7525076c: mov    0x20(%rsp),%r8
  0.01%    0.01%    │  0x00007fec75250771: vmovd  %xmm6,%r11d
  0.09%    0.13%    │  0x00007fec75250776: mov    %r11d,0xc(%r8)     ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.45%    │  0x00007fec7525077a: vmovd  %xmm1,%r11d
           0.00%    │  0x00007fec7525077f: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007fec75251f61
  0.01%    0.01%    │  0x00007fec75250784: vmovd  %xmm6,%r11d
  0.13%    0.12%    │  0x00007fec75250789: cmp    %r8d,%r11d
                    │  0x00007fec7525078c: jae    0x00007fec75250ead
  0.40%    0.43%    │  0x00007fec75250792: vmovd  %xmm1,%r11d
                    │  0x00007fec75250797: lea    (%r12,%r11,8),%rax
  0.01%    0.01%    │  0x00007fec7525079b: vmovd  %xmm0,%r11d
  0.10%    0.13%    │  0x00007fec752507a0: mov    0xc(%rax,%r11,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.54%    │  0x00007fec752507a5: test   %ebp,%ebp
                    │  0x00007fec752507a7: je     0x00007fec75250f09  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007fec752507ad: mov    %r10d,0xc(%r14)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007fec752507b1: lea    (%r12,%rbp,8),%rcx
  0.11%    0.12%    │  0x00007fec752507b5: vmovq  %xmm7,%r11
  0.34%    0.57%    │  0x00007fec752507ba: shr    $0x3,%r11
                    │  0x00007fec752507be: mov    %r11d,0x10(%r12,%rbp,8)
  0.02%    0.04%    │  0x00007fec752507c3: mov    %rcx,%r11
  0.11%    0.02%    │  0x00007fec752507c6: shr    $0x9,%r11
  0.40%    0.23%    │  0x00007fec752507ca: movabs $0x7fec711ff000,%rcx
                    │  0x00007fec752507d4: mov    %r12b,(%rcx,%r11,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.05%    │  0x00007fec752507d8: cmp    %edx,%r10d
                    │  0x00007fec752507db: jae    0x00007fec75250f1d
  0.10%    0.13%    │  0x00007fec752507e1: mov    %ebp,(%rsi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.47%    │  0x00007fec752507e3: vmovq  %xmm3,%r10
                    │  0x00007fec752507e8: mov    0x20(%r10),%r10d   ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.07%    │  0x00007fec752507ec: mov    %r10d,%edx
  0.11%    0.13%    │  0x00007fec752507ef: mov    %rsi,%r10
  0.32%    0.42%    │  0x00007fec752507f2: shr    $0x9,%r10
                    │  0x00007fec752507f6: movabs $0x7fec711ff000,%r11
  0.04%    0.04%    │  0x00007fec75250800: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.10%    │  0x00007fec75250804: mov    %edx,%r10d
  0.35%    0.57%    │  0x00007fec75250807: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fec75251f75
  0.00%             │  0x00007fec7525080c: shl    $0x3,%r10
  0.05%    0.04%    │  0x00007fec75250810: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   ╭│  0x00007fec75250817: je     0x00007fec75250904
  0.09%    0.17%   ││  0x00007fec7525081d: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007fec75250824: jne    0x00007fec75251475  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.32%   ││  0x00007fec7525082a: mov    %r10,%rdx
                   ││  0x00007fec7525082d: mov    0x18(%r10),%r10d   ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.04%   ││  0x00007fec75250831: mov    %r10d,%r13d
  0.09%    0.11%   ││  0x00007fec75250834: cmp    $0x40,%r10d
                   ││  0x00007fec75250838: jg     0x00007fec75251a5d  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.27%   ││  0x00007fec7525083e: mov    $0x1,%r11d
                   ││  0x00007fec75250844: mov    %r10d,%ecx
  0.02%    0.03%   ││  0x00007fec75250847: shl    %cl,%r11           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.47%    0.66%   ││  0x00007fec7525084a: mov    %rbx,%r10
  0.03%    0.05%   ││  0x00007fec7525084d: and    %r11,%r10          ;*land
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.20%   ││  0x00007fec75250850: test   %r10,%r10
                   ││  0x00007fec75250853: jne    0x00007fec75251b01  ;*ifeq
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.56%   ││  0x00007fec75250859: mov    %ecx,%r10d
  0.01%    0.01%   ││  0x00007fec7525085c: cmp    $0x40,%r10d
                   ││  0x00007fec75250860: jge    0x00007fec75251b71  ;*if_icmpge
                   ││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.04%   ││  0x00007fec75250866: or     %r11,%rbx
  0.11%    0.12%   ││  0x00007fec75250869: mov    %rbx,0x10(%r14)    ;*putfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.43%   ││  0x00007fec7525086d: vmovd  %xmm6,%r10d
  0.00%    0.00%   ││  0x00007fec75250872: test   %r10d,%r10d
                   ││  0x00007fec75250875: jle    0x00007fec75251911  ;*ifle
                   ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%   ││  0x00007fec7525087b: vmovd  %xmm0,%r11d
  0.09%    0.16%   ││  0x00007fec75250880: add    $0xfffffffe,%r11d  ;*isub
                   ││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.34%   ││  0x00007fec75250884: mov    %r11d,%ecx
  0.00%            ││  0x00007fec75250887: mov    0x20(%rsp),%r11
  0.03%    0.04%   ││  0x00007fec7525088c: mov    %ecx,0xc(%r11)     ;*putfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.09%   ││  0x00007fec75250890: cmp    %r8d,%ecx
                   ││  0x00007fec75250893: jae    0x00007fec75251341
  0.35%    0.29%   ││  0x00007fec75250899: mov    %ecx,%ebx
  0.00%            ││  0x00007fec7525089b: mov    0x10(%rax,%rcx,4),%r10d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.02%   ││  0x00007fec752508a0: test   %r10d,%r10d
                   ││  0x00007fec752508a3: je     0x00007fec752513a5  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.08%   ││  0x00007fec752508a9: add    $0x18,%rdi
  0.39%    0.51%   ││  0x00007fec752508ad: mov    %r10d,(%rdi)       ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007fec752508b0: lea    (%r12,%r10,8),%r11
  0.03%    0.06%   ││  0x00007fec752508b4: mov    %rdi,%r8
  0.08%    0.20%   ││  0x00007fec752508b7: shr    $0x9,%r8
  0.32%    0.41%   ││  0x00007fec752508bb: shr    $0x9,%r11
  0.00%    0.01%   ││  0x00007fec752508bf: movabs $0x7fec711ff000,%r9
  0.03%    0.05%   ││  0x00007fec752508c9: mov    %r12b,(%r9,%r11,1)  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.22%   ││  0x00007fec752508cd: movabs $0x7fec711ff000,%r11
  0.26%    0.52%   ││  0x00007fec752508d7: mov    %r12b,(%r11,%r8,1)  ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││  0x00007fec752508db: mov    0x28(%rsp),%r11d
  0.02%    0.03%   ││  0x00007fec752508e0: add    $0x3,%r11d
  0.17%    0.17%   ││  0x00007fec752508e4: mov    %r11d,0xc(%r14)    ;*putfield size
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.40%   ││  0x00007fec752508e8: mov    %rdx,%r11
           0.00%   ││  0x00007fec752508eb: shr    $0x3,%r11
  0.04%    0.06%   ││  0x00007fec752508ef: mov    %r11d,0x10(%r12,%r10,8)  ;*putfield inst
                   ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.23%   ││  0x00007fec752508f4: xor    %edi,%edi
  0.30%    0.51%   ││  0x00007fec752508f6: mov    0x20(%rsp),%r13
  0.00%            ││  0x00007fec752508fb: vmovd  %xmm1,%edx
  0.04%    0.04%   │╰  0x00007fec752508ff: jmpq   0x00007fec752503aa
                   ↘   0x00007fec75250904: mov    %r10,%r8           ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007fec75250907: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
....................................................................................................
 60.26%   60.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 603 (993 bytes) 

                             0x00007fec7527147c: test   %r10d,%r10d
                             0x00007fec7527147f: jne    0x00007fec7527293d  ;*ifne
                                                                           ; - com.google.re2j.Machine::match@115 (line 200)
                             0x00007fec75271485: test   %edi,%edi
                             0x00007fec75271487: jl     0x00007fec75271dbe  ;*ifge
                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fec7527148d: mov    $0x5,%r10d         ;*iload_1
                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%             0x00007fec75271493: cmp    $0xa,%edi
                             0x00007fec75271496: je     0x00007fec75271dd6  ;*iload_0
                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                             0x00007fec7527149c: mov    %edi,%r8d
                             0x00007fec7527149f: add    $0xffffffbf,%r8d
                             0x00007fec752714a3: cmp    $0x1a,%r8d
                  ╭          0x00007fec752714a7: jb     0x00007fec752714ba  ;*if_icmple
                  │                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
           0.01%  │          0x00007fec752714a9: mov    %edi,%r11d
                  │          0x00007fec752714ac: add    $0xffffff9f,%r11d
                  │          0x00007fec752714b0: cmp    $0x1a,%r11d
                  │          0x00007fec752714b4: jae    0x00007fec75271df7  ;*iconst_1
                  │                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                        ; - com.google.re2j.Machine::match@121 (line 201)
           0.01%  ↘          0x00007fec752714ba: or     $0x10,%r10d        ;*iload_2
                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%             0x00007fec752714be: mov    0x40(%rsp),%r11
  0.02%                      0x00007fec752714c3: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                           ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%                      0x00007fec752714c7: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                           ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                           ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                           ; - com.google.re2j.Machine::match@315 (line 239)
                             0x00007fec752714cb: mov    %rcx,%r11
                             0x00007fec752714ce: shl    $0x3,%r11          ;*getfield q1
                                                                           ; - com.google.re2j.Machine::match@53 (line 188)
                             0x00007fec752714d2: mov    %r11,0x20(%rsp)
                             0x00007fec752714d7: xor    %r11d,%r11d
                             0x00007fec752714da: mov    $0x1,%ecx
           0.00%             0x00007fec752714df: xor    %eax,%eax
                             0x00007fec752714e1: mov    %ecx,0x60(%rsp)
  0.00%                      0x00007fec752714e5: mov    %eax,0x14(%rsp)
                   ╭         0x00007fec752714e9: jmpq   0x00007fec75271658
  0.09%    0.10%   │    ↗    0x00007fec752714ee: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%   │    │    0x00007fec752714f2: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │    │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │    │                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.29%    0.13%   │    │↗   0x00007fec752714f7: cmp    0x64(%rsp),%edx
                   │    ││   0x00007fec752714fb: je     0x00007fec75271d1f  ;*if_icmpne
                   │    ││                                                 ; - com.google.re2j.Machine::match@348 (line 242)
  0.23%    0.21%   │    ││   0x00007fec75271501: xor    %r10d,%r10d
  0.09%    0.08%   │    ││   0x00007fec75271504: mov    %edx,0x4c(%rsp)
  0.04%    0.08%   │    ││   0x00007fec75271508: mov    0x40(%rsp),%rsi
  0.20%    0.35%   │    ││   0x00007fec7527150d: mov    0x18(%rsp),%rdx
  0.10%    0.15%   │    ││   0x00007fec75271512: mov    0x20(%rsp),%rcx
  0.13%    0.21%   │    ││   0x00007fec75271517: mov    0x4c(%rsp),%r8d
  0.61%    0.39%   │    ││   0x00007fec7527151c: mov    0x14(%rsp),%r9d
  0.22%    0.37%   │    ││   0x00007fec75271521: mov    0x2c(%rsp),%ebx
  0.05%    0.06%   │    ││   0x00007fec75271525: mov    %ebx,(%rsp)
  0.13%    0.12%   │    ││   0x00007fec75271528: mov    0x3c(%rsp),%r11d
  0.18%    0.05%   │    ││   0x00007fec7527152d: mov    %r11d,0x8(%rsp)
  0.26%    0.31%   │    ││   0x00007fec75271532: mov    %r10d,0x10(%rsp)
  0.05%    0.08%   │    ││   0x00007fec75271537: callq  0x00007fec75046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=636}
                   │    ││                                                 ;*invokespecial step
                   │    ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                   │    ││                                                 ;   {optimized virtual_call}
           0.01%   │    ││   0x00007fec7527153c: mov    0x40(%rsp),%r10
  0.45%    0.20%   │    ││   0x00007fec75271541: mov    0x24(%r10),%r13d   ;*getfield pool
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                   │    ││   0x00007fec75271545: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │    ││                                                 ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │    ││                                                 ; - com.google.re2j.Machine::match@445 (line 263)
                   │    ││   0x00007fec75271549: mov    0x28(%rsp),%r10d
                   │    ││   0x00007fec7527154e: test   %r10d,%r10d
                   │    ││   0x00007fec75271551: je     0x00007fec75271c6a  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@361 (line 243)
  0.54%    0.14%   │    ││   0x00007fec75271557: mov    0x40(%rsp),%r11
                   │    ││   0x00007fec7527155c: mov    0x28(%r11),%r14d   ;*getfield matchcap
                   │    ││                                                 ; - com.google.re2j.Machine::match@368 (line 246)
                   │    ││   0x00007fec75271560: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │    ││                                                 ; - com.google.re2j.Machine::match@371 (line 246)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007fec752732b1
  0.02%    0.01%   │    ││   0x00007fec75271565: test   %ebp,%ebp
                   │    ││   0x00007fec75271567: jne    0x00007fec7527215d  ;*ifne
                   │    ││                                                 ; - com.google.re2j.Machine::match@372 (line 246)
  0.50%    0.20%   │    ││   0x00007fec7527156d: movzbl 0x10(%r11),%r11d   ;*getfield matched
                   │    ││                                                 ; - com.google.re2j.Machine::match@376 (line 246)
                   │    ││   0x00007fec75271572: test   %r11d,%r11d
                   │    ││   0x00007fec75271575: jne    0x00007fec7527239d  ;*ifeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@379 (line 246)
           0.00%   │    ││   0x00007fec7527157b: mov    0x50(%rsp),%r10
                   │    ││   0x00007fec75271580: mov    0x10(%r10),%r10d   ;*getfield end
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.47%    0.41%   │    ││   0x00007fec75271584: mov    %r10d,0x64(%rsp)
           0.00%   │    ││   0x00007fec75271589: mov    0x50(%rsp),%r10
  0.01%            │    ││   0x00007fec7527158e: mov    0xc(%r10),%ebx     ;*getfield start
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%    0.01%   │    ││   0x00007fec75271592: mov    0x14(%r10),%r9d    ;*getfield str
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.46%    0.69%   │    ││   0x00007fec75271596: mov    0x38(%rsp),%r10d
                   │    ││   0x00007fec7527159b: cmp    $0xffffffff,%r10d
                   │    ││   0x00007fec7527159f: je     0x00007fec75271d2a  ;*if_icmpeq
                   │    ││                                                 ; - com.google.re2j.Machine::match@401 (line 254)
                   │    ││   0x00007fec752715a5: mov    0x30(%rsp),%edi
           0.00%   │    ││   0x00007fec752715a9: add    0x14(%rsp),%edi
  0.41%    0.60%   │    ││   0x00007fec752715ad: add    %ebx,%edi          ;*iadd
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%   │    ││   0x00007fec752715af: cmp    0x64(%rsp),%edi
                   │    ││   0x00007fec752715b3: jge    0x00007fec75271d38  ;*if_icmpge
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.03%    0.02%   │    ││   0x00007fec752715b9: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007fec752732c1
  0.00%    0.00%   │    ││   0x00007fec752715be: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │    ││   0x00007fec752715c4: jne    0x00007fec75271ff5
  0.47%    0.75%   │    ││   0x00007fec752715ca: lea    (%r12,%r9,8),%rdx  ;*invokeinterface charAt
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││   0x00007fec752715ce: test   %edi,%edi
                   │    ││   0x00007fec752715d0: jl     0x00007fec752721b1  ;*iflt
                   │    ││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││   0x00007fec752715d6: mov    0xc(%rdx),%r10d    ;*getfield value
                   │    ││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││   0x00007fec752715da: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │    ││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
                   │    ││                                                 ; implicit exception: dispatches to 0x00007fec752732d5
  0.61%    0.54%   │    ││   0x00007fec752715df: cmp    %ebp,%edi
                   │    ││   0x00007fec752715e1: jge    0x00007fec752723f9  ;*if_icmplt
                   │    ││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.20%    0.32%   │    ││   0x00007fec752715e7: cmp    %ebp,%edi
                   │    ││   0x00007fec752715e9: jae    0x00007fec75271f21
  0.15%    0.14%   │    ││   0x00007fec752715ef: shl    $0x3,%r10
                   │    ││   0x00007fec752715f3: movzwl 0x10(%r10,%rdi,2),%ecx  ;*caload
                   │    ││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │    ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.30%    0.28%   │    ││   0x00007fec752715f9: cmp    $0xd800,%ecx
                   │    ││   0x00007fec752715ff: jge    0x00007fec7527245d  ;*if_icmplt
                   │    ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │    ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.23%    0.42%   │    ││   0x00007fec75271605: shl    $0x3,%ecx          ;*ishl
                   │    ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │    ││                                                 ; - com.google.re2j.Machine::match@409 (line 255)
  0.05%    0.14%   │    ││   0x00007fec75271608: mov    %ecx,%edx
                   │    ││   0x00007fec7527160a: or     $0x1,%edx
  0.40%    0.51%   │    ││   0x00007fec7527160d: and    $0x7,%ecx
  0.11%    0.11%   │    ││   0x00007fec75271610: sar    $0x3,%edx          ;*ishr
                   │    ││                                                 ; - com.google.re2j.Machine::match@417 (line 256)
  0.22%    0.30%   │    ││   0x00007fec75271613: or     $0x1,%ecx          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=854}
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
           0.01%   │    ││   0x00007fec75271616: test   %eax,0x1679c9e4(%rip)        # 0x00007fec8ba0e000
                   │    ││                                                 ;*goto
                   │    ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
                   │    ││                                                 ;   {poll}
  0.13%    0.19%   │    ││   0x00007fec7527161c: mov    0x40(%rsp),%r10
  0.09%    0.11%   │    ││   0x00007fec75271621: mov    0x14(%r10),%esi    ;*getfield re2
                   │    ││                                                 ; - com.google.re2j.Machine::match@169 (line 216)
  0.25%    0.29%   │    ││   0x00007fec75271625: mov    0x20(%rsp),%r10
  0.00%    0.01%   │    ││   0x00007fec7527162a: mov    %r10,%rdi
  0.20%    0.18%   │    ││   0x00007fec7527162d: shr    $0x3,%rdi
  0.13%    0.15%   │    ││   0x00007fec75271631: mov    %edi,0x34(%rsp)
  0.27%    0.31%   │    ││   0x00007fec75271635: mov    0x2c(%rsp),%r10d
                   │    ││   0x00007fec7527163a: mov    0x38(%rsp),%edi
  0.12%    0.14%   │    ││   0x00007fec7527163e: mov    %edx,0x38(%rsp)
  0.12%    0.10%   │    ││   0x00007fec75271642: mov    0x18(%rsp),%rdx
  0.27%    0.31%   │    ││   0x00007fec75271647: mov    %rdx,0x20(%rsp)
           0.00%   │    ││   0x00007fec7527164c: mov    0x30(%rsp),%edx
  0.13%    0.13%   │    ││   0x00007fec75271650: mov    %edx,0x28(%rsp)
  0.08%    0.13%   │    ││   0x00007fec75271654: mov    %ecx,0x30(%rsp)
  0.22%    0.26%   ↘    ││   0x00007fec75271658: mov    0x34(%rsp),%edx
  0.00%                 ││   0x00007fec7527165c: movzbl 0x18(%r12,%rdx,8),%edx  ; implicit exception: dispatches to 0x00007fec75273239
  0.18%    0.19%        ││   0x00007fec75271662: mov    0x34(%rsp),%eax
  0.09%    0.15%        ││   0x00007fec75271666: lea    (%r12,%rax,8),%rcx  ;*aload
                        ││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.21%    0.31%        ││   0x00007fec7527166a: mov    %rcx,0x18(%rsp)
           0.02%        ││   0x00007fec7527166f: test   %edx,%edx
                        ││   0x00007fec75271671: jne    0x00007fec75271919  ;*ifeq
                        ││                                                 ; - com.google.re2j.Machine::match@141 (line 207)
  0.12%    0.18%        ││   0x00007fec75271677: mov    0x14(%rsp),%edx    ;*aload_0
                        ││                                                 ; - com.google.re2j.Machine::match@267 (line 233)
  0.08%    0.10%        ││   0x00007fec7527167b: test   %r11d,%r11d
                        ││   0x00007fec7527167e: jne    0x00007fec7527205d  ;*ifne
                        ││                                                 ; - com.google.re2j.Machine::match@271 (line 233)
  0.24%    0.31%        ││   0x00007fec75271684: test   %edx,%edx
                    ╭   ││   0x00007fec75271686: je     0x00007fec75271696  ;*ifeq
                    │   ││                                                 ; - com.google.re2j.Machine::match@275 (line 233)
  0.01%    0.01%    │   ││   0x00007fec75271688: mov    0x3c(%rsp),%r11d
  0.18%    0.22%    │   ││   0x00007fec7527168d: test   %r11d,%r11d
                    │   ││   0x00007fec75271690: jne    0x00007fec75272109  ;*aload_0
                    │   ││                                                 ; - com.google.re2j.Machine::match@282 (line 236)
  0.11%    0.08%    ↘   ││   0x00007fec75271696: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                        ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
                        ││                                                 ; implicit exception: dispatches to 0x00007fec75273249
  0.29%    0.30%        ││   0x00007fec7527169b: test   %ebp,%ebp
                        ││   0x00007fec7527169d: jg     0x00007fec7527222d  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::match@287 (line 236)
                        ││   0x00007fec752716a3: mov    0x40(%rsp),%r11
  0.12%    0.12%        ││   0x00007fec752716a8: mov    0x18(%r11),%r9d    ;*getfield prog
                        ││                                                 ; - com.google.re2j.Machine::match@298 (line 239)
  0.10%    0.12%        ││   0x00007fec752716ac: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield startInst
                        ││                                                 ; - com.google.re2j.Machine::match@301 (line 239)
                        ││                                                 ; implicit exception: dispatches to 0x00007fec75273259
  0.24%    0.35%        ││   0x00007fec752716b1: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fec75273269
  0.41%    0.61%        ││   0x00007fec752716b6: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        ││   0x00007fec752716bd: jne    0x00007fec75271fa1
  0.48%    0.57%        ││   0x00007fec752716c3: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%        ││   0x00007fec752716c7: mov    0x18(%r9),%r10d    ;*getfield pc
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.05%        ││   0x00007fec752716cb: cmp    $0x40,%r10d
                        ││   0x00007fec752716cf: jg     0x00007fec75272285  ;*if_icmpgt
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.27%    0.34%        ││   0x00007fec752716d5: mov    $0x1,%ebx
  0.15%    0.23%        ││   0x00007fec752716da: mov    %r10d,%ecx
  0.01%    0.01%        ││   0x00007fec752716dd: shl    %cl,%rbx           ;*lshl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.77%    1.02%        ││   0x00007fec752716e0: mov    0x34(%rsp),%r11d
  0.01%                 ││   0x00007fec752716e5: mov    0x10(%r12,%r11,8),%r11  ;*getfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%        ││   0x00007fec752716ea: mov    %r11,%rcx
                        ││   0x00007fec752716ed: and    %rbx,%rcx          ;*land
                        ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.44%    0.42%        ││   0x00007fec752716f0: test   %rcx,%rcx
                        ││   0x00007fec752716f3: jne    0x00007fec752722d5  ;*ifeq
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.03%        ││   0x00007fec752716f9: cmp    $0x40,%r10d
                        ││   0x00007fec752716fd: jge    0x00007fec7527234d  ;*if_icmpge
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.02%        ││   0x00007fec75271703: mov    0x34(%rsp),%ecx
                        ││   0x00007fec75271707: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.40%    0.54%        ││   0x00007fec7527170c: or     %r11,%rbx
  0.02%    0.05%        ││   0x00007fec7527170f: mov    %rbx,0x10(%r12,%rcx,8)  ;*putfield pcsl
                        ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.03%        ││   0x00007fec75271714: test   %r8d,%r8d
                        ││   0x00007fec75271717: jle    0x00007fec752720b5  ;*ifle
                        ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                        ││   0x00007fec7527171d: mov    %r8d,%ebp
  0.36%    0.53%        ││   0x00007fec75271720: dec    %ebp               ;*isub
                        ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.02%        ││   0x00007fec75271722: mov    0x40(%rsp),%r10
  0.04%    0.01%        ││   0x00007fec75271727: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                        ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                        ││   0x00007fec7527172b: mov    0xc(%r12,%r13,8),%r11d  ; implicit exception: dispatches to 0x00007fec75273289
  0.38%    0.39%        ││   0x00007fec75271730: cmp    %r11d,%ebp
                        ││   0x00007fec75271733: jae    0x00007fec75271e40
  0.03%    0.04%        ││   0x00007fec75271739: lea    (%r12,%r13,8),%r10
  0.03%    0.03%        ││   0x00007fec7527173d: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                        ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                        ││   0x00007fec75271742: test   %r8d,%r8d
                        ││   0x00007fec75271745: je     0x00007fec75271e95  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.44%    0.50%        ││   0x00007fec7527174b: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreads
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.06%    0.03%        ││   0x00007fec75271750: mov    0x34(%rsp),%r11d
  0.02%    0.05%        ││   0x00007fec75271755: mov    0xc(%r12,%r11,8),%ebx  ;*getfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%        ││   0x00007fec7527175a: lea    (%r12,%r8,8),%r10
  0.34%    0.43%        ││   0x00007fec7527175e: mov    %ebx,%r11d
  0.04%    0.02%        ││   0x00007fec75271761: inc    %r11d
  0.03%    0.03%        ││   0x00007fec75271764: mov    0x34(%rsp),%eax
           0.00%        ││   0x00007fec75271768: mov    %r11d,0xc(%r12,%rax,8)  ;*putfield size
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.39%    0.49%        ││   0x00007fec7527176d: mov    %r9,%r11
  0.04%    0.04%        ││   0x00007fec75271770: shr    $0x3,%r11
  0.03%    0.02%        ││   0x00007fec75271774: mov    %r11d,0x10(%r12,%r8,8)
  0.00%    0.00%        ││   0x00007fec75271779: shr    $0x9,%r10
  0.48%    0.40%        ││   0x00007fec7527177d: movabs $0x7fec711ff000,%r11
  0.03%    0.03%        ││   0x00007fec75271787: mov    %r12b,(%r11,%r10,1)  ;*putfield inst
                        ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.03%        ││   0x00007fec7527178b: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007fec75273299
  0.00%                 ││   0x00007fec75271790: cmp    %r10d,%ebx
                        ││   0x00007fec75271793: jae    0x00007fec75271ea9  ;*aastore
                        ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                        ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                        ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.40%    0.50%        ││   0x00007fec75271799: test   %edi,%edi
                     ╭  ││   0x00007fec7527179b: jl     0x00007fec75271852  ;*ifge
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.06%     │  ││   0x00007fec752717a1: xor    %r9d,%r9d          ;*iload_0
                     │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │  ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.01%     │  ││↗  0x00007fec752717a4: cmp    $0xa,%edi
                     │  │││  0x00007fec752717a7: je     0x00007fec75271b59  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%              │  │││  0x00007fec752717ad: mov    0x38(%rsp),%r10d
  0.42%    0.41%     │  │││  0x00007fec752717b2: test   %r10d,%r10d
                     │  │││  0x00007fec752717b5: jl     0x00007fec75271b50  ;*iload_1
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.07%     │  │││  0x00007fec752717bb: cmp    $0xa,%r10d
                     │  │││  0x00007fec752717bf: je     0x00007fec75271b62  ;*iload_0
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%     │  │││  0x00007fec752717c5: mov    %edi,%r10d
                     │  │││  0x00007fec752717c8: add    $0xffffffbf,%r10d
  0.41%    0.62%     │  │││  0x00007fec752717cc: lea    (%r12,%rcx,8),%r11  ;*getfield denseThreads
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.07%     │  │││  0x00007fec752717d0: lea    0x10(%r11,%rbx,4),%r11
  0.03%    0.04%     │  │││  0x00007fec752717d5: mov    %r8d,(%r11)
  0.05%    0.12%     │  │││  0x00007fec752717d8: shr    $0x9,%r11
  0.36%    0.42%     │  │││  0x00007fec752717dc: movabs $0x7fec711ff000,%r8
  0.07%    0.04%     │  │││  0x00007fec752717e6: mov    %r12b,(%r8,%r11,1)  ;*aastore
                     │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │  │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.12%    0.11%     │  │││  0x00007fec752717ea: cmp    $0x1a,%r10d
                     │╭ │││  0x00007fec752717ee: jb     0x00007fec75271801  ;*if_icmple
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.05%    0.05%     ││ │││  0x00007fec752717f0: mov    %edi,%r11d
  0.40%    0.42%     ││ │││  0x00007fec752717f3: add    $0xffffff9f,%r11d
  0.03%    0.04%     ││ │││  0x00007fec752717f7: cmp    $0x1a,%r11d
                     ││ │││  0x00007fec752717fb: jae    0x00007fec75271d73  ;*iconst_1
                     ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││ │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.08%     │↘ │││  0x00007fec75271801: mov    $0x1,%ebp          ;*invokevirtual endPos
                     │  │││                                                ; - com.google.re2j.Machine::match@345 (line 242)
  0.11%    0.07%     │  │││  0x00007fec75271806: mov    %edx,%r10d
  0.33%    0.23%     │  │││  0x00007fec75271809: add    0x28(%rsp),%r10d   ;*iadd
                     │  │││                                                ; - com.google.re2j.Machine::match@337 (line 242)
  0.09%    0.02%     │  │││  0x00007fec7527180e: mov    %r10d,0x14(%rsp)
  0.04%    0.06%     │  │││  0x00007fec75271813: mov    0x38(%rsp),%r11d
  0.12%    0.07%     │  │││  0x00007fec75271818: add    $0xffffffbf,%r11d
  0.28%    0.31%     │  │││  0x00007fec7527181c: cmp    $0x1a,%r11d
                     │ ╭│││  0x00007fec75271820: jb     0x00007fec75271835  ;*if_icmple
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.05%     │ ││││  0x00007fec75271822: mov    0x38(%rsp),%r10d
  0.06%    0.06%     │ ││││  0x00007fec75271827: add    $0xffffff9f,%r10d
  0.08%    0.06%     │ ││││  0x00007fec7527182b: cmp    $0x1a,%r10d
                     │ ││││  0x00007fec7527182f: jae    0x00007fec75271d94  ;*iconst_1
                     │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.21%    0.28%     │ ↘│││  0x00007fec75271835: mov    $0x1,%r11d         ;*ireturn
                     │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │  │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.18%    0.14%     │  │││  0x00007fec7527183b: cmp    %r11d,%ebp
                     │  ╰││  0x00007fec7527183e: je     0x00007fec752714ee  ;*if_icmpeq
                     │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.02%     │   ││  0x00007fec75271844: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │   ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.04%     │   ││  0x00007fec75271848: mov    %r9d,0x2c(%rsp)
  0.07%    0.06%     │   ╰│  0x00007fec7527184d: jmpq   0x00007fec752714f7
                     ↘    │  0x00007fec75271852: mov    $0x5,%r9d
                          ╰  0x00007fec75271858: jmpq   0x00007fec752717a4
                             0x00007fec7527185d: data16 xchg %ax,%ax
                             0x00007fec75271860: mov    %eax,0x5c(%rsp)
  0.00%    0.02%             0x00007fec75271864: jmpq   0x00007fec75271aa4
                             0x00007fec75271869: mov    0x5c(%rsp),%esi
                             0x00007fec7527186d: add    $0x2,%esi
                             0x00007fec75271870: mov    %esi,0x5c(%rsp)
  0.00%                      0x00007fec75271874: mov    0x5c(%rsp),%esi
                             0x00007fec75271878: inc    %esi
                             0x00007fec7527187a: mov    %esi,0x58(%rsp)
                             0x00007fec7527187e: jmp    0x00007fec752718a2
                             0x00007fec75271880: mov    0x5c(%rsp),%esi
                             0x00007fec75271884: add    $0x2,%esi
                             0x00007fec75271887: mov    %esi,0x58(%rsp)
                             0x00007fec7527188b: jmp    0x00007fec75271898
                             0x00007fec7527188d: mov    0x5c(%rsp),%esi
                             0x00007fec75271891: add    $0x2,%esi
                             0x00007fec75271894: mov    %esi,0x5c(%rsp)
....................................................................................................
 22.66%   25.07%  <total for region 2>

....[Hottest Regions]...............................................................................
 60.26%   60.30%         C2, level 4  com.google.re2j.Machine::step, version 553 (1365 bytes) 
 22.66%   25.07%         C2, level 4  com.google.re2j.Machine::match, version 603 (993 bytes) 
  5.15%    5.19%         C2, level 4  com.google.re2j.Machine::step, version 553 (439 bytes) 
  5.03%    4.74%         C2, level 4  com.google.re2j.Machine::step, version 553 (108 bytes) 
  1.39%    0.24%         C2, level 4  com.google.re2j.Machine::init, version 592 (289 bytes) 
  0.96%    1.05%         C2, level 4  com.google.re2j.Machine::match, version 603 (70 bytes) 
  0.90%    0.90%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.32%    0.17%         C2, level 4  com.google.re2j.Machine::match, version 603 (577 bytes) 
  0.21%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 592 (18 bytes) 
  0.17%    0.10%         C2, level 4  com.google.re2j.Machine::init, version 592 (66 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 608 (21 bytes) 
  0.11%                  C2, level 4  com.google.re2j.RE2::match, version 608 (110 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 608 (0 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 608 (20 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 608 (8 bytes) 
  0.07%    0.05%         C2, level 4  java.util.Collections::shuffle, version 618 (118 bytes) 
  0.05%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 603 (125 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 592 (55 bytes) 
  2.18%    1.80%  <...other 397 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 70.44%   70.23%         C2, level 4  com.google.re2j.Machine::step, version 553 
 24.16%   26.45%         C2, level 4  com.google.re2j.Machine::match, version 603 
  1.89%    0.39%         C2, level 4  com.google.re2j.Machine::init, version 592 
  1.67%    1.60%   [kernel.kallsyms]  [unknown] 
  0.58%    0.29%         C2, level 4  com.google.re2j.RE2::match, version 608 
  0.15%    0.08%         C2, level 4  java.util.Collections::shuffle, version 618 
  0.11%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 660 
  0.06%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%        libc-2.26.so  __strlen_avx2 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.05%           libjvm.so  outputStream::update_position 
  0.03%    0.01%              [vdso]  __vdso_clock_gettime 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.01%              [vdso]  [unknown] 
  0.03%    0.01%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 615 
  0.02%    0.00%           libjvm.so  SpinPause 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.03%           libjvm.so  StringTable::unlink_or_oops_do 
  0.02%    0.04%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.58%    0.33%  <...other 83 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 97.35%   97.47%         C2, level 4
  1.67%    1.60%   [kernel.kallsyms]
  0.45%    0.51%           libjvm.so
  0.21%    0.24%        libc-2.26.so
  0.07%    0.03%  libpthread-2.26.so
  0.07%    0.03%              [vdso]
  0.06%    0.05%      hsdis-amd64.so
  0.05%    0.06%        runtime stub
  0.04%    0.01%         interpreter
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  19219.552 ± 78.225  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
