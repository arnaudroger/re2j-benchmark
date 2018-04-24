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
# Warmup Iteration   1: 13464.030 ops/s
# Warmup Iteration   2: 23410.500 ops/s
# Warmup Iteration   3: 23416.680 ops/s
# Warmup Iteration   4: 23570.330 ops/s
# Warmup Iteration   5: 23605.105 ops/s
# Warmup Iteration   6: 23627.017 ops/s
# Warmup Iteration   7: 23732.900 ops/s
# Warmup Iteration   8: 23720.594 ops/s
# Warmup Iteration   9: 23759.140 ops/s
# Warmup Iteration  10: 23753.742 ops/s
# Warmup Iteration  11: 23754.570 ops/s
# Warmup Iteration  12: 23755.693 ops/s
# Warmup Iteration  13: 23759.354 ops/s
# Warmup Iteration  14: 23450.184 ops/s
# Warmup Iteration  15: 23474.134 ops/s
# Warmup Iteration  16: 23483.271 ops/s
# Warmup Iteration  17: 23735.381 ops/s
# Warmup Iteration  18: 23741.626 ops/s
# Warmup Iteration  19: 23737.306 ops/s
# Warmup Iteration  20: 23738.930 ops/s
Iteration   1: 23689.610 ops/s
Iteration   2: 23737.951 ops/s
Iteration   3: 23730.715 ops/s
Iteration   4: 23734.546 ops/s
Iteration   5: 23732.469 ops/s
Iteration   6: 23732.599 ops/s
Iteration   7: 23732.246 ops/s
Iteration   8: 23671.356 ops/s
Iteration   9: 23722.967 ops/s
Iteration  10: 23719.500 ops/s
Iteration  11: 23717.437 ops/s
Iteration  12: 23721.169 ops/s
Iteration  13: 23717.221 ops/s
Iteration  14: 23722.684 ops/s
Iteration  15: 23682.031 ops/s
Iteration  16: 23735.557 ops/s
Iteration  17: 23726.193 ops/s
Iteration  18: 23731.071 ops/s
Iteration  19: 23731.038 ops/s
Iteration  20: 23726.524 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  23720.744 ±(99.9%) 15.977 ops/s [Average]
  (min, avg, max) = (23671.356, 23720.744, 23737.951), stdev = 18.400
  CI (99.9%): [23704.767, 23736.722] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 194876 total address lines.
Perf output processed (skipped 23.341 seconds):
 Column 1: cycles (20356 events)
 Column 2: instructions (20353 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 490 (693 bytes) 

                    0x00007f66647c6f27: jae    0x00007f66647c75fd
                    0x00007f66647c6f2d: mov    %rdi,%r10
                    0x00007f66647c6f30: mov    %rdx,%r11
                    0x00007f66647c6f33: shr    $0x3,%r11
                    0x00007f66647c6f37: mov    %r11d,(%rdi)
                    0x00007f66647c6f3a: shr    $0x9,%r10
                    0x00007f66647c6f3e: movabs $0x7f665ffd2000,%r11
                    0x00007f66647c6f48: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.05%    0x00007f66647c6f4c: mov    0x20(%rsp),%r8
  0.21%    0.15%    0x00007f66647c6f51: mov    0x28(%rsp),%rax
  0.31%    0.20%    0x00007f66647c6f56: mov    0xac(%rsp),%r9d
  0.26%    0.18%    0x00007f66647c6f5e: mov    0xc(%rsp),%r14d
  0.04%    0.04%    0x00007f66647c6f63: mov    0x38(%rsp),%r13d
  0.15%    0.13%    0x00007f66647c6f68: mov    0x40(%rsp),%rdi
  0.33%    0.14%    0x00007f66647c6f6d: mov    0xa4(%rsp),%r10d   ;*aload
                                                                  ; - com.google.re2j.Machine::step@223 (line 301)
  2.21%    2.08%    0x00007f66647c6f75: inc    %r10d              ;*iinc
                                                                  ; - com.google.re2j.Machine::step@234 (line 267)
  0.06%    0.11%    0x00007f66647c6f78: cmp    %r9d,%r10d
                    0x00007f66647c6f7b: jge    0x00007f66647c734f  ;*iload
                                                                  ; - com.google.re2j.Machine::step@47 (line 270)
  0.18%    0.11%    0x00007f66647c6f81: mov    0x10(%r8),%rdx
  0.38%    0.33%    0x00007f66647c6f85: vmovq  %rbx,%xmm0         ;*getfield pcsl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Machine::step@218 (line 298)
  1.87%    2.10%    0x00007f66647c6f8a: mov    0x10(%rdi,%r10,4),%r11d  ;*aaload
                                                                  ; - com.google.re2j.Machine::step@103 (line 280)
  0.35%    0.26%    0x00007f66647c6f8f: mov    0xc(%r12,%r11,8),%ecx  ;*getfield op
                                                                  ; - com.google.re2j.Machine::step@108 (line 282)
                                                                  ; implicit exception: dispatches to 0x00007f66647c7ded
  2.00%    1.97%    0x00007f66647c6f94: cmp    $0x6,%ecx
                    0x00007f66647c6f97: je     0x00007f66647c7464  ;*if_icmpne
                                                                  ; - com.google.re2j.Machine::step@113 (line 282)
  1.26%    1.34%    0x00007f66647c6f9d: cmp    $0xa,%ecx
                    0x00007f66647c6fa0: jne    0x00007f66647c72e1  ;*if_icmpne
                                                                  ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                  ; - com.google.re2j.Machine::step@195 (line 297)
  0.37%    0.19%    0x00007f66647c6fa6: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                                                                  ; - com.google.re2j.Machine::step@203 (line 298)
  0.30%    0.15%    0x00007f66647c6fab: mov    0x8(%r12,%rcx,8),%esi  ; implicit exception: dispatches to 0x00007f66647c7dfd
  1.98%    2.05%    0x00007f66647c6fb0: lea    (%r12,%rcx,8),%r11
                    0x00007f66647c6fb4: cmp    $0xf8019843,%esi   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f66647c6fba: jne    0x00007f66647c7362  ;*invokevirtual add
                                                                  ; - com.google.re2j.Machine::step@218 (line 298)
  0.82%    0.82%    0x00007f66647c6fc0: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@3 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
           0.00%    0x00007f66647c6fc4: cmp    $0x40,%ecx
                    0x00007f66647c6fc7: jge    0x00007f66647c76e5  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.84%    0.84%    0x00007f66647c6fcd: mov    $0x1,%ebx
           0.01%    0x00007f66647c6fd2: shl    %cl,%rbx           ;*lshl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  1.79%    1.86%    0x00007f66647c6fd5: mov    %rbx,%rcx
  0.00%             0x00007f66647c6fd8: and    %rdx,%rcx          ;*land
                                                                  ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.05%    0.00%    0x00007f66647c6fdb: test   %rcx,%rcx
                    0x00007f66647c6fde: jne    0x00007f66647c741c  ;*ifne
                                                                  ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.26%    0.24%    0x00007f66647c6fe4: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.49%    0.40%    0x00007f66647c6fe7: mov    %rbx,0x10(%r8)     ;*getfield pcsl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.19%    0.14%    0x00007f66647c6feb: test   %rcx,%rcx
                    0x00007f66647c6fee: jne    0x00007f66647c7408  ;*ifeq
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@9 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.02%    0.03%    0x00007f66647c6ff4: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@16 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.04%    0.04%    0x00007f66647c6ff8: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f66647c7e19
  0.50%    0.40%    0x00007f66647c6ffd: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f66647c7003: jne    0x00007f66647c750d
  0.49%    0.47%    0x00007f66647c7009: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
           0.00%    0x00007f66647c700d: mov    0x18(%rdx),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.01%             0x00007f66647c7010: cmp    $0x40,%ecx
                    0x00007f66647c7013: jge    0x00007f66647c774d  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.70%    0.61%    0x00007f66647c7019: mov    $0x1,%esi
  0.08%    0.13%    0x00007f66647c701e: shl    %cl,%rsi           ;*lshl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  1.42%    1.75%    0x00007f66647c7021: mov    %rsi,%rcx
                    0x00007f66647c7024: and    %rbx,%rcx          ;*land
                                                                  ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
           0.02%    0x00007f66647c7027: test   %rcx,%rcx
                    0x00007f66647c702a: jne    0x00007f66647c7424  ;*ifne
                                                                  ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.49%    0.67%    0x00007f66647c7030: or     %rbx,%rsi          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.25%    0.21%    0x00007f66647c7033: mov    %rsi,0x10(%r8)     ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.33%    0.52%    0x00007f66647c7037: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                    0x00007f66647c7039: test   %rcx,%rcx
                    0x00007f66647c703c: jne    0x00007f66647c77c1  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.16%    0x00007f66647c7042: vmovq  %xmm0,%rbx
  0.24%    0.23%    0x00007f66647c7047: mov    0x10(%rbx),%ecx    ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                                                                  ; implicit exception: dispatches to 0x00007f66647c7e35
  0.37%    0.47%    0x00007f66647c704a: vmovd  %ecx,%xmm1
                    0x00007f66647c704e: mov    %r10d,0xa4(%rsp)
  0.08%    0.19%    0x00007f66647c7056: mov    %rdi,0x40(%rsp)
  0.23%    0.18%    0x00007f66647c705b: mov    %r13d,0x38(%rsp)
  0.41%    0.42%    0x00007f66647c7060: mov    %r14d,0xc(%rsp)
                    0x00007f66647c7065: mov    %r9d,0xac(%rsp)
  0.13%    0.16%    0x00007f66647c706d: vmovsd %xmm0,0x30(%rsp)
  0.28%    0.20%    0x00007f66647c7073: mov    %rax,0x28(%rsp)
  0.38%    0.42%    0x00007f66647c7078: mov    %r8,0x20(%rsp)
                    0x00007f66647c707d: mov    0xc(%rbx),%r10d    ;*getfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.15%    0.07%    0x00007f66647c7081: mov    %r10d,%eax
  0.19%    0.18%    0x00007f66647c7084: inc    %r10d              ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.41%    0.28%    0x00007f66647c7087: mov    %r10d,0xc(%rbx)    ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                    0x00007f66647c708b: mov    %r10d,%r14d
  0.13%    0.08%    0x00007f66647c708e: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f66647c7e49
  0.20%    0.06%    0x00007f66647c7093: mov    %eax,%r10d
  0.41%    0.13%    0x00007f66647c7096: cmp    %r8d,%r10d
                    0x00007f66647c7099: jae    0x00007f66647c74d5
                    0x00007f66647c709f: mov    0x8(%r12,%rcx,8),%r10d
  0.16%    0.02%    0x00007f66647c70a4: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    0x00007f66647c70ab: jne    0x00007f66647c7585  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.25%    0.03%    0x00007f66647c70b1: mov    0x34(%r11),%r10d   ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@36 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.41%    0.24%    0x00007f66647c70b5: mov    %r10d,%ecx
                    0x00007f66647c70b8: vmovd  %xmm1,%r10d
  0.15%    0.06%    0x00007f66647c70bd: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.23%    0.15%    0x00007f66647c70c1: mov    %eax,%r10d
  0.37%    0.37%    0x00007f66647c70c4: lea    0x10(%r11,%r10,4),%r9
                    0x00007f66647c70c9: mov    %rdx,%r10
  0.16%    0.12%    0x00007f66647c70cc: shr    $0x3,%r10
  0.24%    0.18%    0x00007f66647c70d0: mov    %r10d,(%r9)
  0.37%    0.30%    0x00007f66647c70d3: mov    %r9,%r10
                    0x00007f66647c70d6: shr    $0x9,%r10
  0.16%    0.12%    0x00007f66647c70da: movabs $0x7f665ffd2000,%r9
  0.23%    0.20%    0x00007f66647c70e4: mov    %r12b,(%r9,%r10,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.39%    0.01%    0x00007f66647c70e8: mov    %ecx,%r10d
                    0x00007f66647c70eb: mov    0x8(%r12,%r10,8),%ebx  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                                                                  ; implicit exception: dispatches to 0x00007f66647c7e65
  0.14%             0x00007f66647c70f0: movslq %eax,%r10
  0.22%    0.00%    0x00007f66647c70f3: lea    (%r11,%r10,4),%r9  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.40%    0.19%    0x00007f66647c70f7: mov    %r9,%rdi
                    0x00007f66647c70fa: add    $0x14,%rdi         ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.13%    0.02%    0x00007f66647c70fe: mov    %ecx,%r10d
  0.24%    0.18%    0x00007f66647c7101: lea    (%r12,%r10,8),%rdx
  0.41%    0.37%    0x00007f66647c7105: mov    %eax,%r10d
                    0x00007f66647c7108: add    $0x2,%r10d         ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.21%    0x00007f66647c710c: cmp    $0xf8019885,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f66647c7112: jne    0x00007f66647c6ed4  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.24%    0.35%    0x00007f66647c7118: mov    0x2c(%rdx),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@75 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.45%    0.46%    0x00007f66647c711b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f66647c7e99
  0.00%    0.00%    0x00007f66647c7120: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f66647c7126: jne    0x00007f66647c76c1
  0.13%    0.17%    0x00007f66647c712c: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.20%    0.14%    0x00007f66647c7130: mov    0x18(%r13),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@3 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.44%    0.40%    0x00007f66647c7134: cmp    $0x40,%ecx
                    0x00007f66647c7137: jge    0x00007f66647c7a71  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.04%    0.02%    0x00007f66647c713d: mov    $0x1,%edx
  0.14%    0.25%    0x00007f66647c7142: shl    %cl,%rdx           ;*lshl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.68%    0.77%    0x00007f66647c7145: mov    %rdx,%rcx
  0.16%    0.15%    0x00007f66647c7148: and    %rsi,%rcx          ;*land
                                                                  ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.17%    0.13%    0x00007f66647c714b: test   %rcx,%rcx
                    0x00007f66647c714e: jne    0x00007f66647c743b  ;*ifne
                                                                  ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.48%    0.02%    0x00007f66647c7154: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.02%    0x00007f66647c7157: mov    0x20(%rsp),%rbx
  0.18%    0.02%    0x00007f66647c715c: mov    %rdx,0x10(%rbx)    ;*getfield pcsl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.15%    0.00%    0x00007f66647c7160: test   %rcx,%rcx
                    0x00007f66647c7163: jne    0x00007f66647c7412  ;*ifeq
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@9 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.40%    0.33%    0x00007f66647c7169: mov    0x2c(%r13),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@16 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.08%    0x00007f66647c716d: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f66647c7ead
  0.58%    0.65%    0x00007f66647c7172: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f66647c7178: jne    0x00007f66647c76d1
  0.43%    0.57%    0x00007f66647c717e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.28%    0.18%    0x00007f66647c7182: vmovq  %rcx,%xmm0
                    0x00007f66647c7187: mov    0x18(%rcx),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.23%    0.23%    0x00007f66647c718a: cmp    $0x40,%ecx
                    0x00007f66647c718d: jge    0x00007f66647c7a9d  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.43%    0.52%    0x00007f66647c7193: mov    $0x1,%ebx
  0.29%    0.32%    0x00007f66647c7198: shl    %cl,%rbx           ;*lshl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.77%    0.86%    0x00007f66647c719b: mov    %rbx,%rcx
  0.20%    0.26%    0x00007f66647c719e: and    %rdx,%rcx          ;*land
                                                                  ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
           0.01%    0x00007f66647c71a1: test   %rcx,%rcx
                    0x00007f66647c71a4: jne    0x00007f66647c7443  ;*ifne
                                                                  ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.24%    0.31%    0x00007f66647c71aa: or     %rdx,%rbx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.34%    0.40%    0x00007f66647c71ad: mov    0x20(%rsp),%rdx
  0.25%    0.20%    0x00007f66647c71b2: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.05%    0x00007f66647c71b6: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.17%    0.30%    0x00007f66647c71b8: test   %rcx,%rcx
                    0x00007f66647c71bb: jne    0x00007f66647c7ad1  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.24%    0.42%    0x00007f66647c71c1: mov    0x30(%rsp),%rcx
  0.21%    0.22%    0x00007f66647c71c6: mov    %r10d,0xc(%rcx)    ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.04%    0.06%    0x00007f66647c71ca: cmp    %r8d,%r10d
                    0x00007f66647c71cd: jae    0x00007f66647c765d  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.27%    0.20%    0x00007f66647c71d3: mov    0x34(%r13),%r8d    ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@36 (line 179)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.28%    0.37%    0x00007f66647c71d7: mov    %rdi,%rcx
  0.18%    0.27%    0x00007f66647c71da: vmovq  %xmm0,%r10
  0.03%    0.05%    0x00007f66647c71df: shr    $0x3,%r10
  0.18%    0.24%    0x00007f66647c71e3: mov    %r10d,(%rdi)
  0.31%    0.44%    0x00007f66647c71e6: shr    $0x9,%rcx
  0.23%    0.35%    0x00007f66647c71ea: movabs $0x7f665ffd2000,%r10
  0.04%    0.05%    0x00007f66647c71f4: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.18%    0.29%    0x00007f66647c71f8: mov    0x8(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f66647c7ec1
  0.29%    0.39%    0x00007f66647c71fd: lea    (%r12,%r8,8),%r10
  0.19%    0.16%    0x00007f66647c7201: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f66647c7207: jne    0x00007f66647c7263  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                    0x00007f66647c7209: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@75 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
....................................................................................................
 40.66%   38.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 536 (1086 bytes) 

                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@73 (line 172)
                               0x00007f66647df2d1: cmp    $0xd800,%r10d
                               0x00007f66647df2d8: jge    0x00007f66647e0911  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@73 (line 172)
           0.00%               0x00007f66647df2de: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@73 (line 172)
                               0x00007f66647df2e2: mov    %r10d,%r11d
                               0x00007f66647df2e5: and    $0x7,%r11d
                               0x00007f66647df2e9: or     $0x1,%r10d
  0.01%    0.00%               0x00007f66647df2ed: mov    %r10d,%ebp
                               0x00007f66647df2f0: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@73 (line 172)
                               0x00007f66647df2f4: mov    %r11d,0x28(%rsp)
  0.01%    0.01%               0x00007f66647df2f9: mov    %r10d,%edi
                               0x00007f66647df2fc: sar    $0x3,%edi          ;*ishr
                                                                             ; - com.google.re2j.Machine::match@81 (line 173)
                               0x00007f66647df2ff: cmp    $0xfffffff8,%r10d
                               0x00007f66647df303: je     0x00007f66647e0424  ;*if_icmpeq
                                                                             ; - com.google.re2j.Machine::match@101 (line 177)
                               0x00007f66647df309: vmovd  %xmm0,%r10d
  0.01%    0.00%               0x00007f66647df30e: add    %r11d,%r10d
  0.00%                        0x00007f66647df311: add    0x24(%rsp),%r10d   ;*iadd
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
                               0x00007f66647df316: vmovd  %r10d,%xmm2
  0.00%    0.00%               0x00007f66647df31b: cmp    0x70(%rsp),%r10d
                               0x00007f66647df320: jge    0x00007f66647dfc7a  ;*if_icmpge
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
  0.00%                        0x00007f66647df326: test   %r10d,%r10d
                               0x00007f66647df329: jl     0x00007f66647e0771  ;*iflt
                                                                             ; - java.lang.String::charAt@1 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
  0.01%    0.00%               0x00007f66647df32f: cmp    %edx,%r10d
                               0x00007f66647df332: jge    0x00007f66647e0975  ;*if_icmplt
                                                                             ; - java.lang.String::charAt@10 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
  0.01%    0.01%               0x00007f66647df338: cmp    %edx,%r10d
                               0x00007f66647df33b: jae    0x00007f66647e04d5
  0.01%    0.01%               0x00007f66647df341: movzwl 0x10(%r8,%r10,2),%r8d  ;*caload
                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
           0.00%               0x00007f66647df347: cmp    $0xd800,%r8d
                               0x00007f66647df34e: jge    0x00007f66647e09e5  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
  0.01%    0.02%               0x00007f66647df354: shl    $0x3,%r8d          ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
                               0x00007f66647df358: mov    %r8d,%r11d
                               0x00007f66647df35b: or     $0x1,%r11d
  0.00%    0.02%               0x00007f66647df35f: and    $0x7,%r8d
                               0x00007f66647df363: sar    $0x3,%r11d         ;*ishr
                                                                             ; - com.google.re2j.Machine::match@117 (line 179)
  0.00%                        0x00007f66647df367: mov    %r11d,0x38(%rsp)
                               0x00007f66647df36c: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@109 (line 178)
                               0x00007f66647df370: mov    %r8d,0x34(%rsp)    ;*ishr
                                                                             ; - com.google.re2j.Machine::match@117 (line 179)
  0.00%    0.01%               0x00007f66647df375: vmovd  %xmm0,%r10d
                               0x00007f66647df37a: test   %r10d,%r10d
                               0x00007f66647df37d: jne    0x00007f66647e0711  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@128 (line 183)
                               0x00007f66647df383: test   %edi,%edi
                               0x00007f66647df385: jl     0x00007f66647dfc63  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@134 (line 184)
                               0x00007f66647df38b: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@134 (line 184)
  0.01%    0.00%               0x00007f66647df391: cmp    $0xa,%edi
                               0x00007f66647df394: je     0x00007f66647dfc92  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@134 (line 184)
                               0x00007f66647df39a: mov    %edi,%r11d
                               0x00007f66647df39d: add    $0xffffffbf,%r11d
                               0x00007f66647df3a1: cmp    $0x1a,%r11d
                  ╭            0x00007f66647df3a5: jb     0x00007f66647df3b8  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@134 (line 184)
  0.01%           │            0x00007f66647df3a7: mov    %edi,%r8d
                  │            0x00007f66647df3aa: add    $0xffffff9f,%r8d
                  │            0x00007f66647df3ae: cmp    $0x1a,%r8d
                  │            0x00007f66647df3b2: jae    0x00007f66647dfc9b  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@134 (line 184)
  0.01%    0.01%  ↘            0x00007f66647df3b8: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@134 (line 184)
  0.02%    0.00%               0x00007f66647df3bc: mov    0x3c(%rsp),%r8d
  0.00%    0.00%               0x00007f66647df3c1: test   %r8d,%r8d
                               0x00007f66647df3c4: jne    0x00007f66647e05bd
  0.01%                        0x00007f66647df3ca: mov    0x4c(%rsp),%r11d
                               0x00007f66647df3cf: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f66647e05bd
           0.00%               0x00007f66647df3d4: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                               0x00007f66647df3db: jne    0x00007f66647e05bd  ;*aload
                                                                             ; - com.google.re2j.Machine::match@149 (line 190)
                               0x00007f66647df3e1: mov    0x40(%rsp),%r11
                               0x00007f66647df3e6: movzbl 0x19(%r11),%eax    ;*getfield captures
                                                                             ; - com.google.re2j.Machine::match@296 (line 219)
  0.01%    0.01%               0x00007f66647df3eb: mov    0x4c(%rsp),%r11d
  0.01%                        0x00007f66647df3f0: shl    $0x3,%r11          ;*invokevirtual add
                                                                             ; - com.google.re2j.Machine::match@326 (line 222)
                               0x00007f66647df3f4: mov    %r11,0x58(%rsp)
                               0x00007f66647df3f9: mov    %rcx,%r11
  0.00%                        0x00007f66647df3fc: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@66 (line 171)
                               0x00007f66647df400: mov    0x58(%rsp),%r8
  0.00%    0.00%               0x00007f66647df405: shr    $0x3,%r8           ;*aastore
                                                                             ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                             ; - com.google.re2j.Machine::match@326 (line 222)
  0.00%                        0x00007f66647df409: mov    %r8d,0x14(%rsp)
  0.00%                        0x00007f66647df40e: xor    %edx,%edx
                               0x00007f66647df410: mov    %r11,0x68(%rsp)
                               0x00007f66647df415: xor    %r8d,%r8d
                               0x00007f66647df418: mov    %r8d,0x20(%rsp)
  0.00%                        0x00007f66647df41d: xor    %r11d,%r11d
                   ╭           0x00007f66647df420: jmpq   0x00007f66647df58c
                   │ ↗         0x00007f66647df425: mov    $0x5,%r11d
                   │╭│         0x00007f66647df42b: jmpq   0x00007f66647df646
  0.25%    0.23%   │││   ↗     0x00007f66647df430: or     $0x20,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││   │                                                   ; - com.google.re2j.Machine::match@334 (line 224)
  0.15%    0.19%   │││   │     0x00007f66647df434: mov    %r11d,0x2c(%rsp)   ;*iload_2
                   │││   │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││   │                                                   ; - com.google.re2j.Machine::match@334 (line 224)
  0.38%    0.50%   │││   │↗    0x00007f66647df439: cmp    0x70(%rsp),%r9d
                   │││   ││    0x00007f66647df43e: je     0x00007f66647dfa89  ;*if_icmpne
                   │││   ││                                                  ; - com.google.re2j.Machine::match@359 (line 225)
  0.16%    0.23%   │││   ││    0x00007f66647df444: xor    %r10d,%r10d
  0.21%    0.22%   │││   ││    0x00007f66647df447: mov    %r9d,0x60(%rsp)
  0.15%    0.14%   │││   ││    0x00007f66647df44c: mov    0x40(%rsp),%rsi
  0.24%    0.29%   │││   ││    0x00007f66647df451: mov    0x18(%rsp),%rdx
  0.15%    0.18%   │││   ││    0x00007f66647df456: mov    0x68(%rsp),%rcx
  0.31%    0.31%   │││   ││    0x00007f66647df45b: mov    %r9d,%r8d
  0.15%    0.33%   │││   ││    0x00007f66647df45e: mov    0x20(%rsp),%r9d
  0.25%    0.22%   │││   ││    0x00007f66647df463: mov    0x2c(%rsp),%r11d
  0.11%    0.13%   │││   ││    0x00007f66647df468: mov    %r11d,(%rsp)
  0.27%    0.31%   │││   ││    0x00007f66647df46c: xor    %ebx,%ebx
  0.13%    0.19%   │││   ││    0x00007f66647df46e: mov    %ebx,0x8(%rsp)
  0.60%    0.34%   │││   ││    0x00007f66647df472: mov    %r10d,0x10(%rsp)
  0.22%    0.11%   │││   ││    0x00007f66647df477: callq  0x00007f66645ea020  ; OopMap{[20]=NarrowOop [24]=Oop [48]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [104]=Oop off=732}
                   │││   ││                                                  ;*invokespecial step
                   │││   ││                                                  ; - com.google.re2j.Machine::match@367 (line 225)
                   │││   ││                                                  ;   {optimized virtual_call}
  0.00%            │││   ││    0x00007f66647df47c: mov    0x40(%rsp),%r10
                   │││   ││    0x00007f66647df481: movzbl 0x19(%r10),%eax    ;*getfield captures
                   │││   ││                                                  ; - com.google.re2j.Machine::match@379 (line 229)
  0.81%    0.83%   │││   ││    0x00007f66647df486: movzbl 0x18(%r10),%r11d   ;*getfield matched
                   │││   ││                                                  ; - com.google.re2j.Machine::match@386 (line 229)
                   │││   ││    0x00007f66647df48b: mov    0x28(%rsp),%r9d
           0.00%   │││   ││    0x00007f66647df490: test   %r9d,%r9d
                   │││   ││    0x00007f66647df493: je     0x00007f66647dfa66  ;*ifne
                   │││   ││                                                  ; - com.google.re2j.Machine::match@372 (line 226)
                   │││   ││    0x00007f66647df499: test   %eax,%eax
                   │││   ││    0x00007f66647df49b: jne    0x00007f66647dfed1  ;*ifne
                   │││   ││                                                  ; - com.google.re2j.Machine::match@382 (line 229)
  0.76%    0.87%   │││   ││    0x00007f66647df4a1: test   %r11d,%r11d
                   │││   ││    0x00007f66647df4a4: jne    0x00007f66647e0089  ;*ifeq
                   │││   ││                                                  ; - com.google.re2j.Machine::match@389 (line 229)
  0.01%    0.01%   │││   ││    0x00007f66647df4aa: mov    0x50(%rsp),%r10
           0.00%   │││   ││    0x00007f66647df4af: mov    0x10(%r10),%r8d    ;*getfield end
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
                   │││   ││    0x00007f66647df4b3: mov    0xc(%r10),%r9d     ;*getfield start
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.77%    0.88%   │││   ││    0x00007f66647df4b7: mov    0x14(%r10),%r14d   ;*getfield str
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.01%    0.02%   │││   ││    0x00007f66647df4bb: mov    0x38(%rsp),%ecx
  0.00%            │││   ││    0x00007f66647df4bf: cmp    $0xffffffff,%ecx
                   │││   ││    0x00007f66647df4c2: je     0x00007f66647dfa94  ;*if_icmpeq
                   │││   ││                                                  ; - com.google.re2j.Machine::match@411 (line 237)
  0.00%            │││   ││    0x00007f66647df4c8: mov    0x34(%rsp),%ebx
  0.65%    1.14%   │││   ││    0x00007f66647df4cc: add    0x20(%rsp),%ebx
           0.01%   │││   ││    0x00007f66647df4d0: add    %r9d,%ebx          ;*iadd
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
                   │││   ││    0x00007f66647df4d3: cmp    %r8d,%ebx
                   │││   ││    0x00007f66647df4d6: jge    0x00007f66647dfa35  ;*if_icmpge
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
           0.00%   │││   ││    0x00007f66647df4dc: mov    0x8(%r12,%r14,8),%r10d  ; implicit exception: dispatches to 0x00007f66647e10dd
  0.80%    0.97%   │││   ││    0x00007f66647df4e1: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││   ││    0x00007f66647df4e8: jne    0x00007f66647dfe19
  0.07%    0.02%   │││   ││    0x00007f66647df4ee: lea    (%r12,%r14,8),%rdi  ;*invokeinterface charAt
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
                   │││   ││    0x00007f66647df4f2: test   %ebx,%ebx
                   │││   ││    0x00007f66647df4f4: jl     0x00007f66647dff2d  ;*iflt
                   │││   ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.00%            │││   ││    0x00007f66647df4fa: mov    0xc(%rdi),%r10d    ;*getfield value
                   │││   ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.76%    0.95%   │││   ││    0x00007f66647df4fe: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││   ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
                   │││   ││                                                  ; implicit exception: dispatches to 0x00007f66647e10f1
  2.02%    2.72%   │││   ││    0x00007f66647df503: cmp    %ebp,%ebx
                   │││   ││    0x00007f66647df505: jge    0x00007f66647e00e5  ;*if_icmplt
                   │││   ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.69%    0.89%   │││   ││    0x00007f66647df50b: cmp    %ebp,%ebx
                   │││   ││    0x00007f66647df50d: jae    0x00007f66647dfd49
  0.62%    0.72%   │││   ││    0x00007f66647df513: shl    $0x3,%r10
  0.02%    0.03%   │││   ││    0x00007f66647df517: movzwl 0x10(%r10,%rbx,2),%ecx  ;*caload
                   │││   ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.14%    0.14%   │││   ││    0x00007f66647df51d: cmp    $0xd800,%ecx
                   │││   ││    0x00007f66647df523: jge    0x00007f66647e0155  ;*if_icmplt
                   │││   ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││   ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.32%    0.48%   │││   ││    0x00007f66647df529: shl    $0x3,%ecx          ;*ishl
                   │││   ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@419 (line 238)
  0.37%    0.53%   │││   ││    0x00007f66647df52c: mov    %ecx,%esi
  0.00%    0.03%   │││   ││    0x00007f66647df52e: or     $0x1,%esi
  0.66%    0.62%   │││   ││    0x00007f66647df531: and    $0x7,%ecx
  0.05%    0.12%   │││   ││    0x00007f66647df534: sar    $0x3,%esi          ;*ishr
                   │││   ││                                                  ; - com.google.re2j.Machine::match@427 (line 239)
  0.80%    0.65%   │││   ││    0x00007f66647df537: or     $0x1,%ecx          ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [104]=Oop off=922}
                   │││   ││                                                  ;*goto
                   │││   ││                                                  ; - com.google.re2j.Machine::match@449 (line 245)
  0.01%    0.00%   │││   ││    0x00007f66647df53a: test   %eax,0x15f0dac0(%rip)        # 0x00007f667a6ed000
                   │││   ││                                                  ;*goto
                   │││   ││                                                  ; - com.google.re2j.Machine::match@449 (line 245)
                   │││   ││                                                  ;   {poll}
  0.01%            │││   ││    0x00007f66647df540: mov    0x40(%rsp),%r10
  0.08%    0.13%   │││   ││    0x00007f66647df545: mov    0x30(%r10),%r13d   ;*getfield matchcap
                   │││   ││                                                  ; - com.google.re2j.Machine::match@315 (line 222)
  0.59%    0.67%   │││   ││    0x00007f66647df549: mov    0x1c(%r10),%ebx    ;*getfield re2
                   │││   ││                                                  ; - com.google.re2j.Machine::match@182 (line 199)
  0.01%    0.00%   │││   ││    0x00007f66647df54d: mov    0x10(%r10),%rdx    ;*getfield pcsl
                   │││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                   │││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   │││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
                   │││   ││    0x00007f66647df551: mov    0x68(%rsp),%r10
  0.09%    0.11%   │││   ││    0x00007f66647df556: shr    $0x3,%r10
  0.57%    0.69%   │││   ││    0x00007f66647df55a: mov    %r10d,0x30(%rsp)
  0.01%    0.02%   │││   ││    0x00007f66647df55f: mov    0x2c(%rsp),%r10d
                   │││   ││    0x00007f66647df564: mov    0x38(%rsp),%edi
  0.09%    0.12%   │││   ││    0x00007f66647df568: mov    %esi,0x38(%rsp)
  0.58%    0.66%   │││   ││    0x00007f66647df56c: mov    0x18(%rsp),%rsi
  0.02%    0.02%   │││   ││    0x00007f66647df571: mov    %rsi,0x68(%rsp)
                   │││   ││    0x00007f66647df576: mov    0x34(%rsp),%ebp
  0.14%    0.13%   │││   ││    0x00007f66647df57a: mov    %ebp,0x28(%rsp)
  0.56%    0.82%   │││   ││    0x00007f66647df57e: mov    %ecx,0x34(%rsp)
  0.01%    0.00%   │││   ││    0x00007f66647df582: mov    %r9d,0x24(%rsp)
                   │││   ││    0x00007f66647df587: mov    %r8d,0x70(%rsp)    ;*getfield matchcap
                   │││   ││                                                  ; - com.google.re2j.Machine::match@315 (line 222)
  0.11%    0.14%   ↘││   ││    0x00007f66647df58c: mov    0x30(%rsp),%r8d
  0.60%    0.79%    ││   ││    0x00007f66647df591: mov    0xc(%r12,%r8,8),%r8d  ;*getfield size
                    ││   ││                                                  ; - com.google.re2j.Machine::match@151 (line 190)
                    ││   ││                                                  ; implicit exception: dispatches to 0x00007f66647e10b9
  0.04%    0.01%    ││   ││    0x00007f66647df596: mov    0x30(%rsp),%r9d
                    ││   ││    0x00007f66647df59b: shl    $0x3,%r9           ;*aload
                    ││   ││                                                  ; - com.google.re2j.Machine::match@149 (line 190)
  0.12%    0.12%    ││   ││    0x00007f66647df59f: mov    %r9,0x18(%rsp)
  0.56%    0.91%    ││   ││    0x00007f66647df5a4: test   %r8d,%r8d
                    ││   ││    0x00007f66647df5a7: je     0x00007f66647df7ca  ;*ifne
                    ││   ││                                                  ; - com.google.re2j.Machine::match@154 (line 190)
  0.02%    0.01%    ││   ││    0x00007f66647df5ad: mov    0x20(%rsp),%r9d    ;*iload_3
                    ││   ││                                                  ; - com.google.re2j.Machine::match@280 (line 216)
  0.00%             ││   ││    0x00007f66647df5b2: test   %r11d,%r11d
                    ││   ││    0x00007f66647df5b5: jne    0x00007f66647dfe85  ;*ifne
                    ││   ││                                                  ; - com.google.re2j.Machine::match@292 (line 216)
  0.08%    0.14%    ││   ││    0x00007f66647df5bb: test   %eax,%eax
                    ││   ││    0x00007f66647df5bd: jne    0x00007f66647dff99  ;*ifeq
                    ││   ││                                                  ; - com.google.re2j.Machine::match@299 (line 219)
  0.66%    0.92%    ││   ││    0x00007f66647df5c3: mov    0x58(%rsp),%r10
  0.02%    0.01%    ││   ││    0x00007f66647df5c8: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.00%             ││   ││    0x00007f66647df5cc: cmp    $0x40,%ecx
                    ││   ││    0x00007f66647df5cf: jge    0x00007f66647dffe9  ;*if_icmpge
                    ││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.09%    0.10%    ││   ││    0x00007f66647df5d5: mov    $0x1,%r11d
  0.56%    0.80%    ││   ││    0x00007f66647df5db: shl    %cl,%r11           ;*lshl
                    ││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.09%    0.16%    ││   ││    0x00007f66647df5de: mov    %r11,%r10
  0.58%    0.57%    ││   ││    0x00007f66647df5e1: and    %rdx,%r10          ;*land
                    ││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.01%    0.01%    ││   ││    0x00007f66647df5e4: test   %r10,%r10
                    ││   ││    0x00007f66647df5e7: jne    0x00007f66647dfc59  ;*ifne
                    ││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
                    ││   ││    0x00007f66647df5ed: or     %rdx,%r11
  0.09%    0.10%    ││   ││    0x00007f66647df5f0: mov    0x40(%rsp),%rcx
  0.68%    0.47%    ││   ││    0x00007f66647df5f5: mov    %r11,0x10(%rcx)    ;*putfield pcsl
                    ││   ││                                                  ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.02%    0.01%    ││   ││    0x00007f66647df5f9: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
                    ││   ││    0x00007f66647df5fb: test   %r10,%r10
                    ││   ││    0x00007f66647df5fe: jne    0x00007f66647e003d  ;*ifeq
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.07%    0.06%    ││   ││    0x00007f66647df604: mov    0x30(%rsp),%r10d
  0.57%    0.25%    ││   ││    0x00007f66647df609: mov    0x10(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                    ││   ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
           0.01%    ││   ││    0x00007f66647df60e: mov    %r8d,%ecx
                    ││   ││    0x00007f66647df611: inc    %ecx
  0.11%    0.01%    ││   ││    0x00007f66647df613: mov    0x30(%rsp),%ebx
  0.61%    0.11%    ││   ││    0x00007f66647df617: mov    %ecx,0xc(%r12,%rbx,8)  ;*putfield size
                    ││   ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.00%    0.01%    ││   ││    0x00007f66647df61c: mov    0xc(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f66647e10c9
  0.01%             ││   ││    0x00007f66647df621: cmp    %ecx,%r8d
                    ││   ││    0x00007f66647df624: jae    0x00007f66647dfce8
  0.14%    0.01%    ││   ││    0x00007f66647df62a: mov    0x8(%r12,%r10,8),%ecx
  0.68%    0.21%    ││   ││    0x00007f66647df62f: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││   ││    0x00007f66647df635: jne    0x00007f66647dfdb9  ;*aastore
                    ││   ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                    ││   ││                                                  ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                    ││   ││                                                  ; - com.google.re2j.Machine::match@326 (line 222)
  0.01%    0.01%    ││   ││    0x00007f66647df63b: test   %edi,%edi
                    │╰   ││    0x00007f66647df63d: jl     0x00007f66647df425  ;*ifge
                    │    ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │    ││                                                  ; - com.google.re2j.Machine::match@334 (line 224)
                    │    ││    0x00007f66647df643: xor    %r11d,%r11d        ;*iload_0
                    │    ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │    ││                                                  ; - com.google.re2j.Machine::match@334 (line 224)
  0.15%    0.06%    ↘    ││    0x00007f66647df646: cmp    $0xa,%edi
                         ││    0x00007f66647df649: je     0x00007f66647dfa41  ;*iload_1
                         ││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                         ││                                                  ; - com.google.re2j.Machine::match@334 (line 224)
  0.57%    0.41%         ││    0x00007f66647df64f: mov    0x38(%rsp),%ecx
  0.00%    0.02%         ││    0x00007f66647df653: test   %ecx,%ecx
                      ╭  ││    0x00007f66647df655: jl     0x00007f66647df6ed  ;*iload_1
                      │  ││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      │  ││                                                  ; - com.google.re2j.Machine::match@334 (line 224)
           0.00%      │  ││↗   0x00007f66647df65b: cmp    $0xa,%ecx
                      │  │││   0x00007f66647df65e: je     0x00007f66647dfa4a  ;*iload_0
                      │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │  │││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.17%    0.07%      │  │││   0x00007f66647df664: mov    %r9d,%ecx
  0.56%    0.68%      │  │││   0x00007f66647df667: add    0x28(%rsp),%ecx    ;*iadd
                      │  │││                                                 ; - com.google.re2j.Machine::match@348 (line 225)
           0.02%      │  │││   0x00007f66647df66b: mov    %ecx,0x20(%rsp)
  0.01%    0.00%      │  │││   0x00007f66647df66f: mov    0x38(%rsp),%ebx
  0.14%    0.13%      │  │││   0x00007f66647df673: add    $0xffffffbf,%ebx
  0.55%    0.39%      │  │││   0x00007f66647df676: mov    %edi,%edx
  0.00%    0.03%      │  │││   0x00007f66647df678: add    $0xffffffbf,%edx
  0.02%               │  │││   0x00007f66647df67b: shl    $0x3,%r10          ;*getfield denseThreadsInstructions
                      │  │││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                      │  │││                                                 ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                      │  │││                                                 ; - com.google.re2j.Machine::match@326 (line 222)
  0.14%    0.13%      │  │││   0x00007f66647df67f: lea    0x10(%r10,%r8,4),%r10
  0.62%    0.30%      │  │││   0x00007f66647df684: mov    0x14(%rsp),%ecx
  0.02%    0.01%      │  │││   0x00007f66647df688: mov    %ecx,(%r10)
  0.41%    0.39%      │  │││   0x00007f66647df68b: shr    $0x9,%r10
  0.11%    0.10%      │  │││   0x00007f66647df68f: movabs $0x7f665ffd2000,%r8
  0.45%    0.41%      │  │││   0x00007f66647df699: mov    %r12b,(%r8,%r10,1)  ;*invokevirtual endPos
                      │  │││                                                 ; - com.google.re2j.Machine::match@356 (line 225)
  0.33%    0.29%      │  │││   0x00007f66647df69d: cmp    $0x1a,%edx
                      │╭ │││   0x00007f66647df6a0: jb     0x00007f66647df6b3  ;*if_icmple
                      ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      ││ │││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.20%    0.20%      ││ │││   0x00007f66647df6a2: mov    %edi,%r8d
  0.08%    0.05%      ││ │││   0x00007f66647df6a5: add    $0xffffff9f,%r8d
  0.23%    0.33%      ││ │││   0x00007f66647df6a9: cmp    $0x1a,%r8d
                      ││ │││   0x00007f66647df6ad: jae    0x00007f66647dfc38  ;*iconst_1
                      ││ │││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      ││ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      ││ │││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.15%    0.17%      │↘ │││   0x00007f66647df6b3: mov    $0x1,%ebp          ;*ireturn
                      │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │  │││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.14%    0.22%      │  │││   0x00007f66647df6b8: cmp    $0x1a,%ebx
                      │ ╭│││   0x00007f66647df6bb: jb     0x00007f66647df6d0  ;*if_icmple
                      │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │ ││││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.13%    0.16%      │ ││││   0x00007f66647df6bd: mov    0x38(%rsp),%r8d
  0.28%    0.22%      │ ││││   0x00007f66647df6c2: add    $0xffffff9f,%r8d
  0.17%    0.24%      │ ││││   0x00007f66647df6c6: cmp    $0x1a,%r8d
                      │ ││││   0x00007f66647df6ca: jae    0x00007f66647dfc0e  ;*iconst_1
                      │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │ ││││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.22%    0.18%      │ ↘│││   0x00007f66647df6d0: mov    $0x1,%r10d         ;*ireturn
                      │  │││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │  │││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.41%    0.49%      │  │││   0x00007f66647df6d6: cmp    %r10d,%ebp
                      │  ╰││   0x00007f66647df6d9: je     0x00007f66647df430  ;*if_icmpeq
                      │   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │   ││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.01%    0.03%      │   ││   0x00007f66647df6df: or     $0x10,%r11d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │   ││                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.02%    0.00%      │   ││   0x00007f66647df6e3: mov    %r11d,0x2c(%rsp)
  0.09%    0.15%      │   ╰│   0x00007f66647df6e8: jmpq   0x00007f66647df439
                      ↘    │   0x00007f66647df6ed: or     $0xa,%r11d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │                                                 ; - com.google.re2j.Machine::match@334 (line 224)
                           ╰   0x00007f66647df6f1: jmpq   0x00007f66647df65b
                               0x00007f66647df6f6: data16 nopw 0x0(%rax,%rax,1)
  0.01%                        0x00007f66647df700: mov    %ebx,%eax
                               0x00007f66647df702: jmpq   0x00007f66647df98d
                               0x00007f66647df707: mov    %eax,%r11d
                               0x00007f66647df70a: add    $0x2,%r11d
                               0x00007f66647df70e: mov    %r11d,%eax
                               0x00007f66647df711: mov    %eax,%r11d
                               0x00007f66647df714: inc    %r11d
                               0x00007f66647df717: mov    %r11d,0x64(%rsp)
           0.01%               0x00007f66647df71c: jmp    0x00007f66647df73f
                               0x00007f66647df71e: mov    %eax,%r11d
                               0x00007f66647df721: add    $0x2,%r11d
                               0x00007f66647df725: mov    %r11d,0x64(%rsp)
                            ╭  0x00007f66647df72a: jmp    0x00007f66647df736
                            │  0x00007f66647df72c: mov    %eax,%r11d
                            │  0x00007f66647df72f: add    $0x2,%r11d
                            │  0x00007f66647df733: mov    %r11d,%eax
                            ↘  0x00007f66647df736: mov    %eax,%r11d
                               0x00007f66647df739: inc    %r11d              ;*iinc
                                                                             ; - java.lang.String::indexOf@69 (line 1772)
....................................................................................................
 30.07%   31.97%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 490 (444 bytes) 

                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Machine::step@218 (line 298)
                                                                     ;   {optimized virtual_call}
                       0x00007f66647c7250: test   %rax,%rax
                       0x00007f66647c7253: jne    0x00007f66647c7b5d  ;*ifnull
                                                                     ; - com.google.re2j.Machine::step@225 (line 301)
                       0x00007f66647c7259: mov    0x30(%rsp),%rbx
                       0x00007f66647c725e: jmpq   0x00007f66647c6f4c
  0.03%    0.05%       0x00007f66647c7263: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       0x00007f66647c7269: jne    0x00007f66647c79cd  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.17%    0.22%       0x00007f66647c726f: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.24%    0.28%       0x00007f66647c7273: cmp    $0x40,%ecx
                       0x00007f66647c7276: jge    0x00007f66647c7aed  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.22%    0.24%       0x00007f66647c727c: mov    %r10,%rdi
  0.05%    0.05%       0x00007f66647c727f: mov    $0x1,%r10d
  0.21%    0.26%       0x00007f66647c7285: shl    %cl,%r10           ;*lshl
                                                                     ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.59%    0.61%       0x00007f66647c7288: mov    %r10,%r8
  0.13%    0.21%       0x00007f66647c728b: and    %rbx,%r8           ;*land
                                                                     ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.35%    0.44%       0x00007f66647c728e: test   %r8,%r8
                       0x00007f66647c7291: jne    0x00007f66647c7450  ;*ifne
                                                                     ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.20%    0.25%       0x00007f66647c7297: or     %rbx,%r10
  0.05%    0.05%       0x00007f66647c729a: mov    0x20(%rsp),%rcx
  0.18%    0.23%       0x00007f66647c729f: mov    %r10,0x10(%rcx)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.35%    0.28%       0x00007f66647c72a3: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                     ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.23%    0.21%       0x00007f66647c72a5: test   %r8,%r8
                       0x00007f66647c72a8: jne    0x00007f66647c7b49  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.07%    0.06%       0x00007f66647c72ae: add    $0x18,%r9
  0.14%    0.20%       0x00007f66647c72b2: mov    %rdi,%r11
  0.30%    0.22%       0x00007f66647c72b5: shr    $0x3,%r11
  0.22%    0.21%       0x00007f66647c72b9: mov    %r11d,(%r9)        ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.04%    0.03%       0x00007f66647c72bc: mov    %r9,%r10
  0.16%    0.19%       0x00007f66647c72bf: add    $0x3,%eax
  0.28%    0.38%       0x00007f66647c72c2: mov    0x30(%rsp),%rbx
  0.18%    0.30%       0x00007f66647c72c7: mov    %eax,0xc(%rbx)     ;*putfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.12%       0x00007f66647c72ca: shr    $0x9,%r10
  0.17%    0.25%       0x00007f66647c72ce: movabs $0x7f665ffd2000,%r11
  0.30%    0.27%       0x00007f66647c72d8: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 260)
  0.21%    0.23%       0x00007f66647c72dc: jmpq   0x00007f66647c6f4c
  1.72%    1.95%       0x00007f66647c72e1: cmp    $0xb,%ecx
                       0x00007f66647c72e4: je     0x00007f66647c75bd  ;*if_icmpne
                                                                     ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                     ; - com.google.re2j.Machine::step@195 (line 297)
  0.41%    0.52%       0x00007f66647c72ea: mov    0x1c(%r12,%r11,8),%esi  ;*getfield f0
                                                                     ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                     ; - com.google.re2j.Machine::step@195 (line 297)
  0.02%    0.00%       0x00007f66647c72ef: cmp    $0x9,%ecx
                  ╭    0x00007f66647c72f2: je     0x00007f66647c733b  ;*if_icmpne
                  │                                                  ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                  ; - com.google.re2j.Machine::step@195 (line 297)
  0.39%    0.47%  │    0x00007f66647c72f4: cmp    $0xc,%ecx
                  │    0x00007f66647c72f7: jne    0x00007f66647c7895  ;*if_icmpne
                  │                                                  ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                  ; - com.google.re2j.Machine::step@195 (line 297)
  0.49%    0.69%  │    0x00007f66647c72fd: cmp    0x18(%rsp),%esi
                  │╭   0x00007f66647c7301: je     0x00007f66647c73fe  ;*if_icmpeq
                  ││                                                 ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                 ; - com.google.re2j.Machine::step@195 (line 297)
  0.37%    0.37%  ││   0x00007f66647c7307: mov    0x20(%r12,%r11,8),%ecx  ;*getfield f1
                  ││                                                 ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                 ; - com.google.re2j.Machine::step@195 (line 297)
  0.01%    0.00%  ││   0x00007f66647c730c: cmp    0x18(%rsp),%ecx
                  ││╭  0x00007f66647c7310: je     0x00007f66647c73fe  ;*if_icmpeq
                  │││                                                ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.56%    0.57%  │││  0x00007f66647c7316: mov    0x24(%r12,%r11,8),%ebp  ;*getfield f2
                  │││                                                ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.04%    0.01%  │││  0x00007f66647c731b: cmp    0x18(%rsp),%ebp
                  │││  0x00007f66647c731f: je     0x00007f66647c793d  ;*if_icmpeq
                  │││                                                ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.68%    0.97%  │││  0x00007f66647c7325: mov    0x28(%r12,%r11,8),%ebp  ;*getfield f3
                  │││                                                ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                ; - com.google.re2j.Machine::step@195 (line 297)
           0.00%  │││  0x00007f66647c732a: cmp    0x18(%rsp),%ebp
                  │││  0x00007f66647c732e: je     0x00007f66647c7979  ;*if_icmpne
                  │││                                                ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.17%    0.18%  │││  0x00007f66647c7334: xor    %ecx,%ecx
  0.02%    0.01%  │││  0x00007f66647c7336: jmpq   0x00007f66647c6ec2
  1.45%    1.64%  ↘││  0x00007f66647c733b: cmp    0x18(%rsp),%esi
                   ││  0x00007f66647c733f: jne    0x00007f66647c6ec0  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.01%    0.01%   ││  0x00007f66647c7345: mov    $0x1,%ecx
  0.00%            ││  0x00007f66647c734a: jmpq   0x00007f66647c6ec2  ;*if_icmpge
                   ││                                                ; - com.google.re2j.Machine::step@44 (line 267)
  0.72%    0.41%   ││  0x00007f66647c734f: mov    %r12d,0xc(%rax)    ;*getfield size
                   ││                                                ; - com.google.re2j.Machine::step@10 (line 261)
                   ││  0x00007f66647c7353: add    $0x90,%rsp
                   ││  0x00007f66647c735a: pop    %rbp
                   ││  0x00007f66647c735b: test   %eax,0x15f25c9f(%rip)        # 0x00007f667a6ed000
                   ││                                                ;   {poll_return}
  0.75%    0.52%   ││  0x00007f66647c7361: retq   
  0.03%    0.01%   ││  0x00007f66647c7362: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││  0x00007f66647c7368: jne    0x00007f66647c7c29  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.00%            ││  0x00007f66647c736e: mov    0x18(%r11),%ecx    ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c7372: cmp    $0x40,%ecx
                   ││  0x00007f66647c7375: jge    0x00007f66647c7cfd  ;*if_icmpge
                   ││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.03%            ││  0x00007f66647c737b: mov    $0x1,%ebx
  0.01%    0.01%   ││  0x00007f66647c7380: shl    %cl,%rbx           ;*lshl
                   ││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.06%    0.03%   ││  0x00007f66647c7383: mov    %rbx,%rcx
                   ││  0x00007f66647c7386: and    %rdx,%rcx          ;*land
                   ││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c7389: test   %rcx,%rcx
                   ││  0x00007f66647c738c: jne    0x00007f66647c745a  ;*ifne
                   ││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.01%   ││  0x00007f66647c7392: or     %rdx,%rbx
  0.00%            ││  0x00007f66647c7395: mov    %rbx,0x10(%r8)     ;*putfield pcsl
                   ││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c7399: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c739b: test   %rcx,%rcx
                   ││  0x00007f66647c739e: jne    0x00007f66647c7d71  ;*ifeq
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.01%    0.00%   ││  0x00007f66647c73a4: vmovq  %xmm0,%rbx
  0.00%    0.02%   ││  0x00007f66647c73a9: mov    0x10(%rbx),%edx    ;*getfield denseThreadsInstructions
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││                                                ; implicit exception: dispatches to 0x00007f66647c7ee9
  0.00%            ││  0x00007f66647c73ac: mov    0xc(%rbx),%ebp     ;*getfield size
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c73af: mov    %ebp,%ecx
  0.00%    0.00%   ││  0x00007f66647c73b1: inc    %ecx
  0.00%    0.00%   ││  0x00007f66647c73b3: mov    %ecx,0xc(%rbx)     ;*putfield size
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.00%   ││  0x00007f66647c73b6: mov    0xc(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007f66647c7efd
  0.03%    0.01%   ││  0x00007f66647c73bb: cmp    %ecx,%ebp
                   ││  0x00007f66647c73bd: jae    0x00007f66647c7bb5
  0.02%    0.00%   ││  0x00007f66647c73c3: mov    0x8(%r12,%rdx,8),%ecx
                   ││  0x00007f66647c73c8: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││  0x00007f66647c73ce: jne    0x00007f66647c7c89  ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c73d4: lea    (%r12,%rdx,8),%rcx  ;*getfield denseThreadsInstructions
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
                   ││  0x00007f66647c73d8: lea    0x10(%rcx,%rbp,4),%rcx
  0.02%    0.00%   ││  0x00007f66647c73dd: shr    $0x3,%r11
           0.00%   ││  0x00007f66647c73e1: mov    %r11d,(%rcx)
  0.04%    0.01%   ││  0x00007f66647c73e4: mov    %rcx,%r11
                   ││  0x00007f66647c73e7: shr    $0x9,%r11
  0.00%            ││  0x00007f66647c73eb: movabs $0x7f665ffd2000,%rcx
                   ││  0x00007f66647c73f5: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                   ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                   ││                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.01%    0.01%   ││  0x00007f66647c73f9: jmpq   0x00007f66647c6f75  ;*iconst_1
                   ││                                                ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.22%    0.20%   ↘↘  0x00007f66647c73fe: mov    $0x1,%ecx
  0.10%    0.08%       0x00007f66647c7403: jmpq   0x00007f66647c6ec2
           0.00%       0x00007f66647c7408: vmovq  %xmm0,%rbx
                       0x00007f66647c740d: jmpq   0x00007f66647c6f75
                       0x00007f66647c7412: vmovq  %xmm0,%rbx
                       0x00007f66647c7417: jmpq   0x00007f66647c6f4c
                       0x00007f66647c741c: mov    %rdx,%rbx
           0.00%       0x00007f66647c741f: jmpq   0x00007f66647c6feb
                       0x00007f66647c7424: mov    %rbx,%rsi
                       0x00007f66647c7427: mov    $0x1,%ebp
                       0x00007f66647c742c: jmpq   0x00007f66647c7039
                       0x00007f66647c7431: mov    $0x1,%ebp
                       0x00007f66647c7436: jmpq   0x00007f66647c6f12
                       0x00007f66647c743b: mov    %rsi,%rdx
                       0x00007f66647c743e: jmpq   0x00007f66647c7160
                       0x00007f66647c7443: mov    %rdx,%rbx
                       0x00007f66647c7446: mov    $0x1,%ebp
                       0x00007f66647c744b: jmpq   0x00007f66647c71b8
....................................................................................................
 13.64%   14.64%  <total for region 3>

....[Hottest Regions]...............................................................................
 40.66%   38.54%         C2, level 4  com.google.re2j.Machine::step, version 490 (693 bytes) 
 30.07%   31.97%         C2, level 4  com.google.re2j.Machine::match, version 536 (1086 bytes) 
 13.64%   14.64%         C2, level 4  com.google.re2j.Machine::step, version 490 (444 bytes) 
  8.95%    9.67%         C2, level 4  com.google.re2j.Machine::step, version 490 (175 bytes) 
  1.53%    1.82%         C2, level 4  com.google.re2j.Machine::match, version 536 (68 bytes) 
  0.45%    0.42%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.44%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 551 (333 bytes) 
  0.26%    0.24%         C2, level 4  com.google.re2j.Machine::match, version 536 (405 bytes) 
  0.20%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 551 (28 bytes) 
  0.18%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 551 (33 bytes) 
  0.16%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 551 (0 bytes) 
  0.13%    0.08%         C2, level 4  java.util.Collections::shuffle, version 559 (38 bytes) 
  0.12%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 551 (0 bytes) 
  0.11%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 536 (138 bytes) 
  0.11%    0.12%         C2, level 4  com.google.re2j.Machine::match, version 536 (213 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (70 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.09%    0.02%         C2, level 4  java.util.Collections::shuffle, version 559 (109 bytes) 
  0.08%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 536 (178 bytes) 
  0.07%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 551 (59 bytes) 
  2.55%    1.93%  <...other 433 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.24%   62.86%         C2, level 4  com.google.re2j.Machine::step, version 490 
 32.29%   34.31%         C2, level 4  com.google.re2j.Machine::match, version 536 
  1.79%    1.30%   [kernel.kallsyms]  [unknown] 
  1.36%    0.51%         C2, level 4  com.google.re2j.RE2::match, version 551 
  0.30%    0.13%         C2, level 4  java.util.Collections::shuffle, version 559 
  0.16%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 592 
  0.10%    0.02%              [vdso]  [unknown] 
  0.05%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 558 
  0.03%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.02%    0.00%           libjvm.so  _ZN7Monitor6unlockEv 
  0.01%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.01%    0.01%        libc-2.26.so  __strlen_avx2 
  0.01%    0.01%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.01%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.43%    0.27%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.39%   97.87%         C2, level 4
  1.79%    1.30%   [kernel.kallsyms]
  0.44%    0.47%           libjvm.so
  0.13%    0.24%        libc-2.26.so
  0.10%    0.02%              [vdso]
  0.05%    0.03%      hsdis-amd64.so
  0.05%    0.03%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.01%    0.01%         C1, level 3
  0.00%    0.01%        runtime stub
  0.00%                perf-1295.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1       thrpt   20  23720.744 ± 15.977  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN             ---
