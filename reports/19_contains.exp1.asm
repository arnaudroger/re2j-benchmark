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
# Warmup Iteration   1: 10146.013 ops/s
# Warmup Iteration   2: 23399.165 ops/s
# Warmup Iteration   3: 23452.863 ops/s
# Warmup Iteration   4: 23142.826 ops/s
# Warmup Iteration   5: 23044.636 ops/s
# Warmup Iteration   6: 23300.476 ops/s
# Warmup Iteration   7: 23452.205 ops/s
# Warmup Iteration   8: 23991.650 ops/s
# Warmup Iteration   9: 23929.915 ops/s
# Warmup Iteration  10: 23936.303 ops/s
# Warmup Iteration  11: 23405.781 ops/s
# Warmup Iteration  12: 23955.031 ops/s
# Warmup Iteration  13: 24024.500 ops/s
# Warmup Iteration  14: 23940.517 ops/s
# Warmup Iteration  15: 24064.142 ops/s
# Warmup Iteration  16: 24027.478 ops/s
# Warmup Iteration  17: 23903.945 ops/s
# Warmup Iteration  18: 23904.813 ops/s
# Warmup Iteration  19: 23904.789 ops/s
# Warmup Iteration  20: 23907.077 ops/s
Iteration   1: 24025.785 ops/s
Iteration   2: 23823.398 ops/s
Iteration   3: 23713.759 ops/s
Iteration   4: 23383.479 ops/s
Iteration   5: 24051.112 ops/s
Iteration   6: 23221.748 ops/s
Iteration   7: 24063.963 ops/s
Iteration   8: 24014.055 ops/s
Iteration   9: 24064.658 ops/s
Iteration  10: 24066.234 ops/s
Iteration  11: 24050.845 ops/s
Iteration  12: 24064.002 ops/s
Iteration  13: 24063.456 ops/s
Iteration  14: 24065.900 ops/s
Iteration  15: 23921.159 ops/s
Iteration  16: 23933.801 ops/s
Iteration  17: 23932.981 ops/s
Iteration  18: 23936.349 ops/s
Iteration  19: 23937.102 ops/s
Iteration  20: 23937.812 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  23913.580 ±(99.9%) 199.978 ops/s [Average]
  (min, avg, max) = (23221.748, 23913.580, 24066.234), stdev = 230.295
  CI (99.9%): [23713.602, 24113.558] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 190301 total address lines.
Perf output processed (skipped 23.212 seconds):
 Column 1: cycles (20406 events)
 Column 2: instructions (20385 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (705 bytes) 

                     0x00007f73d0de7f4d: jae    0x00007f73d0de8635
                     0x00007f73d0de7f53: mov    %rdi,%r10
                     0x00007f73d0de7f56: mov    %rdx,%r9
                     0x00007f73d0de7f59: shr    $0x3,%r9
                     0x00007f73d0de7f5d: mov    %r9d,(%rdi)
                     0x00007f73d0de7f60: shr    $0x9,%r10
                     0x00007f73d0de7f64: movabs $0x7f73cc601000,%r8
                     0x00007f73d0de7f6e: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.41%    0.31%     0x00007f73d0de7f72: mov    0x28(%rsp),%rbx
                     0x00007f73d0de7f77: mov    0xac(%rsp),%r9d
  0.12%    0.17%     0x00007f73d0de7f7f: mov    0xc(%rsp),%r14d
  0.35%    0.26%     0x00007f73d0de7f84: mov    0x38(%rsp),%r13d
  0.33%    0.19%     0x00007f73d0de7f89: mov    0x40(%rsp),%rdx
  0.00%    0.00%     0x00007f73d0de7f8e: mov    0xa4(%rsp),%r10d   ;*aload
                                                                   ; - com.google.re2j.Machine::step@219 (line 341)
  1.97%    2.16%  ↗  0x00007f73d0de7f96: inc    %r10d              ;*iinc
                  │                                                ; - com.google.re2j.Machine::step@230 (line 307)
  0.20%    0.27%  │  0x00007f73d0de7f99: cmp    %r9d,%r10d
                  │  0x00007f73d0de7f9c: jge    0x00007f73d0de838d
  0.31%    0.26%  │  0x00007f73d0de7fa2: mov    %r11,%rax          ;*iload
                  │                                                ; - com.google.re2j.Machine::step@43 (line 310)
  0.64%    0.72%  │  0x00007f73d0de7fa5: mov    0x10(%rdx,%r10,4),%r11d  ;*aaload
                  │                                                ; - com.google.re2j.Machine::step@99 (line 320)
  1.64%    1.65%  │  0x00007f73d0de7faa: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  │                                                ; - com.google.re2j.Machine::step@104 (line 322)
                  │                                                ; implicit exception: dispatches to 0x00007f73d0de8d89
  0.65%    0.62%  │  0x00007f73d0de7faf: cmp    $0x6,%r8d
                  │  0x00007f73d0de7fb3: je     0x00007f73d0de84bc  ;*if_icmpne
                  │                                                ; - com.google.re2j.Machine::step@109 (line 322)
  0.89%    0.93%  │  0x00007f73d0de7fb9: cmp    $0xa,%r8d
                  │  0x00007f73d0de7fbd: jne    0x00007f73d0de831b  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 337)
  0.33%    0.19%  │  0x00007f73d0de7fc3: mov    0x2c(%r12,%r11,8),%edi  ;*getfield outInst
                  │                                                ; - com.google.re2j.Machine::step@199 (line 338)
  0.33%    0.22%  │  0x00007f73d0de7fc8: mov    0x8(%r12,%rdi,8),%r11d  ; implicit exception: dispatches to 0x00007f73d0de8d99
  1.42%    1.29%  │  0x00007f73d0de7fcd: lea    (%r12,%rdi,8),%r8
  0.07%    0.04%  │  0x00007f73d0de7fd1: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  │  0x00007f73d0de7fd8: jne    0x00007f73d0de83bd  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.67%    0.64%  │  0x00007f73d0de7fde: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.03%  │  0x00007f73d0de7fe2: mov    %rax,%r11
  0.01%    0.01%  │  0x00007f73d0de7fe5: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
                  │                                                ; implicit exception: dispatches to 0x00007f73d0de8dad
  0.06%    0.03%  │  0x00007f73d0de7fe9: cmp    $0x40,%ecx
                  │  0x00007f73d0de7fec: jge    0x00007f73d0de8721  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.61%    0.72%  │  0x00007f73d0de7ff2: mov    $0x1,%edi
  0.03%    0.02%  │  0x00007f73d0de7ff7: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  1.36%    1.70%  │  0x00007f73d0de7ffa: mov    %rdi,%rcx
  0.02%    0.01%  │  0x00007f73d0de7ffd: and    %rsi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.01%  │  0x00007f73d0de8000: test   %rcx,%rcx
                  │  0x00007f73d0de8003: jne    0x00007f73d0de8474  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.46%    0.66%  │  0x00007f73d0de8009: mov    %r12b,0x18(%rax)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.26%    0.17%  │  0x00007f73d0de800d: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
           0.01%  │  0x00007f73d0de8010: mov    %rdi,0x10(%rax)    ;*invokevirtual containsOrAdd
                  │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                  │                                                ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.04%  │  0x00007f73d0de8014: test   %rcx,%rcx
                  ╰  0x00007f73d0de8017: jne    0x00007f73d0de7f96  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@8 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.45%    0.48%     0x00007f73d0de801d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@15 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.22%    0.22%     0x00007f73d0de8021: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f73d0de8dc1
  1.10%    1.00%     0x00007f73d0de8026: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f73d0de802c: jne    0x00007f73d0de8561
  0.70%    0.69%     0x00007f73d0de8032: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.02%     0x00007f73d0de8036: mov    0x18(%rax),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.32%    0.33%     0x00007f73d0de8039: cmp    $0x40,%ecx
                     0x00007f73d0de803c: jge    0x00007f73d0de8785  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.64%    0.61%     0x00007f73d0de8042: mov    $0x1,%esi
  0.14%    0.20%     0x00007f73d0de8047: shl    %cl,%rsi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  1.42%    1.31%     0x00007f73d0de804a: mov    %rsi,%rcx
  0.04%    0.03%     0x00007f73d0de804d: and    %rdi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.05%    0.08%     0x00007f73d0de8050: test   %rcx,%rcx
                     0x00007f73d0de8053: jne    0x00007f73d0de847c  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.53%    0.61%     0x00007f73d0de8059: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.18%    0.13%     0x00007f73d0de805d: or     %rdi,%rsi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.04%     0x00007f73d0de8060: mov    %rsi,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.03%    0.07%     0x00007f73d0de8064: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.51%    0.53%     0x00007f73d0de8066: test   %rcx,%rcx
                     0x00007f73d0de8069: jne    0x00007f73d0de87e9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.21%    0.15%     0x00007f73d0de806f: mov    %r8,%rcx
  0.03%    0.06%     0x00007f73d0de8072: mov    %r10d,0xa4(%rsp)
  0.05%    0.09%     0x00007f73d0de807a: mov    %rdx,0x40(%rsp)
  0.43%    0.59%     0x00007f73d0de807f: mov    %r13d,0x38(%rsp)
  0.17%    0.16%     0x00007f73d0de8084: mov    %r14d,0xc(%rsp)
  0.05%    0.03%     0x00007f73d0de8089: mov    %r9d,0xac(%rsp)
  0.03%    0.03%     0x00007f73d0de8091: mov    %r11,0x30(%rsp)
  0.49%    0.45%     0x00007f73d0de8096: mov    %rbx,0x28(%rsp)
  0.20%    0.03%     0x00007f73d0de809b: mov    0xc(%r11),%r10d    ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.06%    0.02%     0x00007f73d0de809f: mov    0x20(%r11),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.03%    0.03%     0x00007f73d0de80a3: vmovd  %r8d,%xmm0
  0.59%    0.40%     0x00007f73d0de80a8: mov    %r10d,%r14d
  0.22%    0.05%     0x00007f73d0de80ab: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.01%     0x00007f73d0de80ae: mov    %r10d,0xc(%r11)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.03%    0.03%     0x00007f73d0de80b2: mov    %r10d,%r13d
  0.40%    0.38%     0x00007f73d0de80b5: mov    0xc(%r12,%r8,8),%r8d  ; implicit exception: dispatches to 0x00007f73d0de8dd5
  0.22%    0.12%     0x00007f73d0de80ba: mov    %r14d,%r10d
  0.05%    0.02%     0x00007f73d0de80bd: cmp    %r8d,%r10d
  0.04%    0.03%     0x00007f73d0de80c0: jae    0x00007f73d0de8529
  0.43%    0.45%     0x00007f73d0de80c6: vmovd  %xmm0,%r10d
  0.14%    0.20%     0x00007f73d0de80cb: mov    0x8(%r12,%r10,8),%r11d
  0.02%    0.02%     0x00007f73d0de80d0: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007f73d0de80d7: jne    0x00007f73d0de85c5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.03%     0x00007f73d0de80dd: mov    0x34(%rcx),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.52%    0.54%     0x00007f73d0de80e1: vmovd  %r10d,%xmm1
  0.15%    0.16%     0x00007f73d0de80e6: mov    %rax,%r9
  0.00%    0.02%     0x00007f73d0de80e9: shr    $0x3,%r9           ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.03%    0.04%     0x00007f73d0de80ed: vmovd  %xmm0,%r10d
  0.48%    0.32%     0x00007f73d0de80f2: shl    $0x3,%r10          ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.23%    0.05%     0x00007f73d0de80f6: lea    0x10(%r10,%r14,4),%r11
  0.03%    0.01%     0x00007f73d0de80fb: mov    %r9d,(%r11)
  0.09%    0.03%     0x00007f73d0de80fe: shr    $0x9,%r11
  0.53%    0.22%     0x00007f73d0de8102: movabs $0x7f73cc601000,%r9
  0.17%    0.28%     0x00007f73d0de810c: mov    %r12b,(%r9,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.05%     0x00007f73d0de8110: vmovd  %xmm1,%r11d
  0.03%    0.03%     0x00007f73d0de8115: mov    0x8(%r12,%r11,8),%r11d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                                                                   ; implicit exception: dispatches to 0x00007f73d0de8df1
  0.47%    0.45%     0x00007f73d0de811a: movslq %r14d,%r9
  0.19%    0.28%     0x00007f73d0de811d: lea    (%r10,%r9,4),%r9   ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.06%    0.06%     0x00007f73d0de8121: mov    %r9,%rdi
  0.04%    0.04%     0x00007f73d0de8124: add    $0x14,%rdi         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.48%    0.36%     0x00007f73d0de8128: vmovd  %xmm1,%ecx
  0.21%    0.08%     0x00007f73d0de812c: lea    (%r12,%rcx,8),%rdx
  0.07%    0.06%     0x00007f73d0de8130: mov    %r14d,%ebx
  0.04%    0.04%     0x00007f73d0de8133: add    $0x2,%ebx          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.46%    0.26%     0x00007f73d0de8136: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f73d0de813d: jne    0x00007f73d0de7ef5  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.19%    0.05%     0x00007f73d0de8143: mov    0x2c(%rdx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@74 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.02%     0x00007f73d0de8146: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f73d0de8e25
  0.11%    0.06%     0x00007f73d0de814b: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007f73d0de8151: jne    0x00007f73d0de86fd
  0.59%    0.26%     0x00007f73d0de8157: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.19%    0.10%     0x00007f73d0de815b: mov    0x18(%rax),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.01%     0x00007f73d0de815e: cmp    $0x40,%ecx
                     0x00007f73d0de8161: jge    0x00007f73d0de8a31  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.23%    0.19%     0x00007f73d0de8167: mov    $0x1,%r11d
  0.30%    0.15%     0x00007f73d0de816d: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.69%    0.45%     0x00007f73d0de8170: mov    %r11,%rcx
  0.27%    0.29%     0x00007f73d0de8173: and    %rsi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.14%    0.08%     0x00007f73d0de8176: test   %rcx,%rcx
                     0x00007f73d0de8179: jne    0x00007f73d0de8493  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.23%    0.17%     0x00007f73d0de817f: mov    0x30(%rsp),%rdx
  0.22%    0.19%     0x00007f73d0de8184: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.32%    0.04%     0x00007f73d0de8188: or     %rsi,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.13%    0.01%     0x00007f73d0de818b: mov    %r11,0x10(%rdx)    ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.13%    0.18%     0x00007f73d0de818f: test   %rcx,%rcx
                     0x00007f73d0de8192: jne    0x00007f73d0de846a  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@8 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.24%    0.30%     0x00007f73d0de8198: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@15 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.29%    0.15%     0x00007f73d0de819b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f73d0de8e39
  0.91%    1.12%     0x00007f73d0de81a0: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f73d0de81a6: jne    0x00007f73d0de870d
  0.49%    0.47%     0x00007f73d0de81ac: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007f73d0de81b0: vmovq  %rcx,%xmm1
  0.15%    0.19%     0x00007f73d0de81b5: mov    0x18(%rcx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.27%    0.38%     0x00007f73d0de81b8: cmp    $0x40,%ecx
                     0x00007f73d0de81bb: jge    0x00007f73d0de8a5d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.48%    0.54%     0x00007f73d0de81c1: mov    $0x1,%edx
  0.00%              0x00007f73d0de81c6: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  1.07%    1.41%     0x00007f73d0de81c9: mov    %rdx,%rcx
                     0x00007f73d0de81cc: and    %r11,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.12%    0.12%     0x00007f73d0de81cf: test   %rcx,%rcx
                     0x00007f73d0de81d2: jne    0x00007f73d0de849b  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.22%    0.30%     0x00007f73d0de81d8: mov    0x30(%rsp),%rsi
  0.37%    0.39%     0x00007f73d0de81dd: mov    %r12b,0x18(%rsi)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007f73d0de81e1: or     %r11,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.10%    0.11%     0x00007f73d0de81e4: mov    %rdx,0x10(%rsi)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.27%    0.32%     0x00007f73d0de81e8: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.35%    0.44%     0x00007f73d0de81ea: test   %rcx,%rcx
                     0x00007f73d0de81ed: jne    0x00007f73d0de8a91  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%              0x00007f73d0de81f3: mov    0x30(%rsp),%r11
  0.08%    0.13%     0x00007f73d0de81f8: mov    %ebx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.27%    0.27%     0x00007f73d0de81fc: cmp    %r8d,%ebx
                     0x00007f73d0de81ff: jae    0x00007f73d0de8699  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.40%    0.41%     0x00007f73d0de8205: mov    0x34(%rax),%r8d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
           0.00%     0x00007f73d0de8209: mov    %rdi,%rcx
  0.06%    0.10%     0x00007f73d0de820c: vmovq  %xmm1,%r11
  0.29%    0.27%     0x00007f73d0de8211: shr    $0x3,%r11
  0.41%    0.48%     0x00007f73d0de8215: mov    %r11d,(%rdi)
  0.00%              0x00007f73d0de8218: shr    $0x9,%rcx
  0.16%    0.17%     0x00007f73d0de821c: movabs $0x7f73cc601000,%r11
  0.26%    0.28%     0x00007f73d0de8226: mov    %r12b,(%r11,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.44%    0.38%     0x00007f73d0de822a: mov    0x8(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f73d0de8e4d
           0.00%     0x00007f73d0de822f: lea    (%r12,%r8,8),%r11
  0.11%    0.10%     0x00007f73d0de8233: cmp    $0xf8019885,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007f73d0de8239: jne    0x00007f73d0de8297  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007f73d0de823b: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@74 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
....................................................................................................
 39.62%   37.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 527 (1427 bytes) 

                              # parm2:    r8        = int
                              #           [sp+0xa0]  (sp of caller)
                              0x00007f73d0e0bb20: mov    0x8(%rsi),%r10d
                              0x00007f73d0e0bb24: shl    $0x3,%r10
                              0x00007f73d0e0bb28: cmp    %r10,%rax
                              0x00007f73d0e0bb2b: jne    0x00007f73d0c18e20  ;   {runtime_call}
                              0x00007f73d0e0bb31: data16 xchg %ax,%ax
                              0x00007f73d0e0bb34: nopl   0x0(%rax,%rax,1)
                              0x00007f73d0e0bb3c: data16 data16 xchg %ax,%ax
                            [Verified Entry Point]
  0.00%                       0x00007f73d0e0bb40: mov    %eax,-0x14000(%rsp)
                              0x00007f73d0e0bb47: push   %rbp
  0.00%                       0x00007f73d0e0bb48: sub    $0x90,%rsp         ;*synchronization entry
                                                                            ; - com.google.re2j.Machine::match@-1 (line 201)
                              0x00007f73d0e0bb4f: vmovd  %ecx,%xmm1
                              0x00007f73d0e0bb53: mov    %rsi,%r10
  0.02%                       0x00007f73d0e0bb56: mov    0x14(%rsi),%esi    ;*getfield re2
                                                                            ; - com.google.re2j.Machine::match@1 (line 201)
                              0x00007f73d0e0bb59: mov    0xc(%r12,%rsi,8),%r11d  ;*getfield cond
                                                                            ; - com.google.re2j.Machine::match@4 (line 201)
                                                                            ; implicit exception: dispatches to 0x00007f73d0e0d965
                              0x00007f73d0e0bb5e: cmp    $0xffffffff,%r11d
                              0x00007f73d0e0bb62: je     0x00007f73d0e0d0d1  ;*if_icmpne
                                                                            ; - com.google.re2j.Machine::match@12 (line 202)
                              0x00007f73d0e0bb68: cmp    $0x1,%r8d
                              0x00007f73d0e0bb6c: je     0x00007f73d0e0d0f9  ;*if_icmpeq
                                                                            ; - com.google.re2j.Machine::match@19 (line 205)
  0.00%                       0x00007f73d0e0bb72: cmp    $0x2,%r8d
                              0x00007f73d0e0bb76: je     0x00007f73d0e0d121  ;*if_icmpne
                                                                            ; - com.google.re2j.Machine::match@24 (line 205)
                              0x00007f73d0e0bb7c: mov    %r12b,0x10(%r10)   ;*putfield matched
                                                                            ; - com.google.re2j.Machine::match@35 (line 209)
                              0x00007f73d0e0bb80: mov    0x18(%r10),%ecx    ;*getfield prog
                                                                            ; - com.google.re2j.Machine::match@39 (line 210)
                              0x00007f73d0e0bb84: mov    0x1c(%r12,%rcx,8),%r9d  ;*getfield startInst
                                                                            ; - com.google.re2j.Machine::match@42 (line 210)
                                                                            ; implicit exception: dispatches to 0x00007f73d0e0d975
  0.00%                       0x00007f73d0e0bb89: mov    0x28(%r10),%ebx    ;*getfield matchcap
                                                                            ; - com.google.re2j.Machine::match@48 (line 212)
           0.00%              0x00007f73d0e0bb8d: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength
                                                                            ; - java.util.Arrays::fill@3 (line 2881)
                                                                            ; - com.google.re2j.Machine::match@52 (line 212)
                                                                            ; implicit exception: dispatches to 0x00007f73d0e0d985
                              0x00007f73d0e0bb92: test   %ebp,%ebp
                              0x00007f73d0e0bb94: jg     0x00007f73d0e0d149  ;*if_icmpge
                                                                            ; - java.util.Arrays::fill@7 (line 2881)
                                                                            ; - com.google.re2j.Machine::match@52 (line 212)
           0.00%              0x00007f73d0e0bb9a: mov    %rdx,%rdi
  0.00%                       0x00007f73d0e0bb9d: mov    0x8(%rdx),%ebp     ; implicit exception: dispatches to 0x00007f73d0e0d995
                              0x00007f73d0e0bba0: mov    0x20(%r10),%ecx    ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@62 (line 213)
                              0x00007f73d0e0bba4: mov    0x1c(%r10),%edx    ;*getfield q0
                                                                            ; - com.google.re2j.Machine::match@56 (line 213)
                              0x00007f73d0e0bba8: cmp    $0xf8019b8e,%ebp   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                              0x00007f73d0e0bbae: jne    0x00007f73d0e0ce59
  0.00%                       0x00007f73d0e0bbb4: mov    %rdi,%rax          ;*invokevirtual step
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bbb7: mov    0xc(%rax),%r13d    ;*getfield start
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bbbb: mov    0x10(%rax),%r14d   ;*getfield end
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
  0.00%                       0x00007f73d0e0bbbf: vmovd  %xmm1,%edi
  0.00%                       0x00007f73d0e0bbc3: add    %r13d,%edi         ;*iadd
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bbc6: cmp    %r14d,%edi
                              0x00007f73d0e0bbc9: jge    0x00007f73d0e0cd25  ;*if_icmpge
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bbcf: mov    %r14d,0x24(%rsp)
                              0x00007f73d0e0bbd4: mov    0x14(%rax),%r14d   ;*getfield str
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
  0.01%                       0x00007f73d0e0bbd8: mov    0x8(%r12,%r14,8),%ebp  ; implicit exception: dispatches to 0x00007f73d0e0d9a9
                              0x00007f73d0e0bbdd: cmp    $0xf80002da,%ebp   ;   {metadata(&apos;java/lang/String&apos;)}
                              0x00007f73d0e0bbe3: jne    0x00007f73d0e0ce8d
                              0x00007f73d0e0bbe9: lea    (%r12,%r14,8),%rbp  ;*invokeinterface charAt
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bbed: test   %edi,%edi
                              0x00007f73d0e0bbef: jl     0x00007f73d0e0cfcd  ;*iflt
                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
           0.00%              0x00007f73d0e0bbf5: mov    %rax,0x50(%rsp)
                              0x00007f73d0e0bbfa: mov    %edx,0x38(%rsp)
                              0x00007f73d0e0bbfe: mov    %r9d,0x4c(%rsp)
                              0x00007f73d0e0bc03: mov    %r11d,0x48(%rsp)
  0.01%    0.00%              0x00007f73d0e0bc08: mov    %r8d,0x3c(%rsp)
                              0x00007f73d0e0bc0d: mov    %r10,0x40(%rsp)
                              0x00007f73d0e0bc12: mov    0xc(%rbp),%r10d    ;*getfield value
                                                                            ; - java.lang.String::charAt@6 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bc16: mov    %r10d,%eax
  0.00%    0.01%              0x00007f73d0e0bc19: mov    %rbp,%r9
                              0x00007f73d0e0bc1c: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                            ; - java.lang.String::charAt@9 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                                                            ; implicit exception: dispatches to 0x00007f73d0e0d9bd
                              0x00007f73d0e0bc21: mov    %r10d,%edx
                              0x00007f73d0e0bc24: cmp    %edx,%edi
                              0x00007f73d0e0bc26: jge    0x00007f73d0e0d17d  ;*if_icmplt
                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
           0.00%              0x00007f73d0e0bc2c: cmp    %edx,%edi
                              0x00007f73d0e0bc2e: jae    0x00007f73d0e0cd99
                              0x00007f73d0e0bc34: mov    %eax,%r10d
                              0x00007f73d0e0bc37: lea    (%r12,%r10,8),%r8
                              0x00007f73d0e0bc3b: movzwl 0x10(%r8,%rdi,2),%r11d  ;*caload
                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
           0.01%              0x00007f73d0e0bc41: cmp    $0xd800,%r11d
                              0x00007f73d0e0bc48: jge    0x00007f73d0e0d1d9  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bc4e: shl    $0x3,%r11d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bc52: mov    %r11d,%r10d
                              0x00007f73d0e0bc55: and    $0x7,%r10d
  0.00%                       0x00007f73d0e0bc59: or     $0x1,%r11d
  0.01%                       0x00007f73d0e0bc5d: vmovd  %r11d,%xmm0
                              0x00007f73d0e0bc62: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                              0x00007f73d0e0bc66: mov    %r10d,0x28(%rsp)
  0.01%    0.01%              0x00007f73d0e0bc6b: mov    %r11d,%edi
                              0x00007f73d0e0bc6e: sar    $0x3,%edi          ;*ishr
                                                                            ; - com.google.re2j.Machine::match@77 (line 215)
                              0x00007f73d0e0bc71: cmp    $0xfffffff8,%r11d
                              0x00007f73d0e0bc75: je     0x00007f73d0e0cd33  ;*if_icmpeq
                                                                            ; - com.google.re2j.Machine::match@97 (line 219)
                              0x00007f73d0e0bc7b: vmovd  %xmm1,%r10d
  0.00%    0.00%              0x00007f73d0e0bc80: add    0x28(%rsp),%r10d
  0.00%                       0x00007f73d0e0bc85: add    %r13d,%r10d        ;*iadd
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                              0x00007f73d0e0bc88: vmovd  %r10d,%xmm2
           0.00%              0x00007f73d0e0bc8d: cmp    0x24(%rsp),%r10d
                              0x00007f73d0e0bc92: jge    0x00007f73d0e0c601  ;*if_icmpge
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
  0.01%    0.01%              0x00007f73d0e0bc98: test   %r10d,%r10d
                              0x00007f73d0e0bc9b: jl     0x00007f73d0e0d061  ;*iflt
                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
           0.00%              0x00007f73d0e0bca1: cmp    %edx,%r10d
                              0x00007f73d0e0bca4: jge    0x00007f73d0e0d23d  ;*if_icmplt
                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
           0.00%              0x00007f73d0e0bcaa: cmp    %edx,%r10d
                              0x00007f73d0e0bcad: jae    0x00007f73d0e0cde5
           0.00%              0x00007f73d0e0bcb3: movzwl 0x10(%r8,%r10,2),%r10d  ;*caload
                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
           0.00%              0x00007f73d0e0bcb9: cmp    $0xd800,%r10d
                              0x00007f73d0e0bcc0: jge    0x00007f73d0e0d2b1  ;*if_icmplt
                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                              0x00007f73d0e0bcc6: shl    $0x3,%r10d         ;*ishl
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                              0x00007f73d0e0bcca: mov    %r10d,%r8d
                              0x00007f73d0e0bccd: or     $0x1,%r8d
  0.00%    0.00%              0x00007f73d0e0bcd1: and    $0x7,%r10d
                              0x00007f73d0e0bcd5: sar    $0x3,%r8d          ;*ishr
                                                                            ; - com.google.re2j.Machine::match@113 (line 221)
                              0x00007f73d0e0bcd9: mov    %r8d,0x58(%rsp)
                              0x00007f73d0e0bcde: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
  0.00%    0.01%              0x00007f73d0e0bce2: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                            ; - com.google.re2j.Machine::match@113 (line 221)
                              0x00007f73d0e0bce7: vmovd  %xmm1,%r10d
                              0x00007f73d0e0bcec: test   %r10d,%r10d
                              0x00007f73d0e0bcef: jne    0x00007f73d0e0d00d  ;*ifne
                                                                            ; - com.google.re2j.Machine::match@124 (line 225)
                              0x00007f73d0e0bcf5: test   %edi,%edi
                              0x00007f73d0e0bcf7: jl     0x00007f73d0e0c5df  ;*ifge
                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
           0.00%              0x00007f73d0e0bcfd: mov    $0x5,%r10d         ;*iload_1
                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
                              0x00007f73d0e0bd03: cmp    $0xa,%edi
                              0x00007f73d0e0bd06: je     0x00007f73d0e0c5f8  ;*iload_0
                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
                              0x00007f73d0e0bd0c: mov    %edi,%r8d
                              0x00007f73d0e0bd0f: add    $0xffffffbf,%r8d
           0.01%              0x00007f73d0e0bd13: cmp    $0x1a,%r8d
                  ╭           0x00007f73d0e0bd17: jb     0x00007f73d0e0bd2a  ;*if_icmple
                  │                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@130 (line 226)
                  │           0x00007f73d0e0bd19: mov    %edi,%r11d
                  │           0x00007f73d0e0bd1c: add    $0xffffff9f,%r11d
  0.00%           │           0x00007f73d0e0bd20: cmp    $0x1a,%r11d
                  │           0x00007f73d0e0bd24: jae    0x00007f73d0e0c619  ;*iconst_1
                  │                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                         ; - com.google.re2j.Machine::match@130 (line 226)
                  ↘           0x00007f73d0e0bd2a: or     $0x10,%r10d        ;*iload_2
                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
                              0x00007f73d0e0bd2e: mov    0x3c(%rsp),%r8d
                              0x00007f73d0e0bd33: test   %r8d,%r8d
                              0x00007f73d0e0bd36: jne    0x00007f73d0e0ced1
           0.00%              0x00007f73d0e0bd3c: mov    0x4c(%rsp),%r11d
                              0x00007f73d0e0bd41: mov    0x8(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f73d0e0ced1
           0.00%              0x00007f73d0e0bd46: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                              0x00007f73d0e0bd4d: jne    0x00007f73d0e0ced1  ;*aload
                                                                            ; - com.google.re2j.Machine::match@145 (line 232)
                              0x00007f73d0e0bd53: mov    0x40(%rsp),%r11
                              0x00007f73d0e0bd58: movzbl 0x11(%r11),%r11d   ;*getfield captures
                                                                            ; - com.google.re2j.Machine::match@292 (line 261)
  0.00%    0.00%              0x00007f73d0e0bd5d: mov    0x4c(%rsp),%r9d
                              0x00007f73d0e0bd62: lea    (%r12,%r9,8),%r8   ;*invokevirtual add
                                                                            ; - com.google.re2j.Machine::match@322 (line 264)
                              0x00007f73d0e0bd66: mov    %r8,0x60(%rsp)
           0.00%              0x00007f73d0e0bd6b: mov    %rcx,%r9
  0.01%                       0x00007f73d0e0bd6e: shl    $0x3,%r9           ;*getfield q1
                                                                            ; - com.google.re2j.Machine::match@62 (line 213)
                              0x00007f73d0e0bd72: shr    $0x3,%r8           ;*aastore
                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                            ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                            ; - com.google.re2j.Machine::match@322 (line 264)
                              0x00007f73d0e0bd76: mov    %r8d,0x14(%rsp)
           0.01%              0x00007f73d0e0bd7b: mov    %r9,0x70(%rsp)
  0.00%    0.00%              0x00007f73d0e0bd80: xor    %eax,%eax
                              0x00007f73d0e0bd82: xor    %r9d,%r9d
  0.00%                       0x00007f73d0e0bd85: mov    %r9d,0x20(%rsp)
           0.00%   ╭          0x00007f73d0e0bd8a: jmpq   0x00007f73d0e0beed
  0.04%    0.07%   │   ↗      0x00007f73d0e0bd8f: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │                                                    ; - com.google.re2j.Machine::match@330 (line 266)
  0.18%    0.24%   │   │      0x00007f73d0e0bd93: mov    %r9d,0x2c(%rsp)    ;*iload_2
                   │   │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │                                                    ; - com.google.re2j.Machine::match@330 (line 266)
  0.25%    0.26%   │   │↗     0x00007f73d0e0bd98: cmp    0x24(%rsp),%r13d
                   │   ││     0x00007f73d0e0bd9d: je     0x00007f73d0e0c42f  ;*if_icmpne
                   │   ││                                                   ; - com.google.re2j.Machine::match@355 (line 267)
  0.61%    0.53%   │   ││     0x00007f73d0e0bda3: xor    %r10d,%r10d
  0.10%    0.06%   │   ││     0x00007f73d0e0bda6: mov    %r13d,0x34(%rsp)
  0.21%    0.26%   │   ││     0x00007f73d0e0bdab: mov    0x40(%rsp),%rsi
  0.11%    0.16%   │   ││     0x00007f73d0e0bdb0: mov    0x18(%rsp),%rdx
  0.34%    0.41%   │   ││     0x00007f73d0e0bdb5: mov    0x70(%rsp),%rcx
  0.08%    0.05%   │   ││     0x00007f73d0e0bdba: mov    %r13d,%r8d
  0.21%    0.26%   │   ││     0x00007f73d0e0bdbd: mov    0x20(%rsp),%r9d
  0.10%    0.22%   │   ││     0x00007f73d0e0bdc2: mov    0x2c(%rsp),%r11d
  0.45%    0.47%   │   ││     0x00007f73d0e0bdc7: mov    %r11d,(%rsp)
  0.07%    0.05%   │   ││     0x00007f73d0e0bdcb: xor    %r11d,%r11d
  0.26%    0.19%   │   ││     0x00007f73d0e0bdce: mov    %r11d,0x8(%rsp)
  0.38%    0.22%   │   ││     0x00007f73d0e0bdd3: mov    %r10d,0x10(%rsp)
  0.35%    0.36%   │   ││     0x00007f73d0e0bdd8: data16 xchg %ax,%ax
  0.06%    0.14%   │   ││     0x00007f73d0e0bddb: callq  0x00007f73d0c19020  ; OopMap{[20]=NarrowOop [24]=Oop [56]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=704}
                   │   ││                                                   ;*invokespecial step
                   │   ││                                                   ; - com.google.re2j.Machine::match@363 (line 267)
                   │   ││                                                   ;   {optimized virtual_call}
           0.00%   │   ││     0x00007f73d0e0bde0: mov    0x40(%rsp),%r10
  0.76%    0.76%   │   ││     0x00007f73d0e0bde5: movzbl 0x11(%r10),%r11d   ;*getfield captures
                   │   ││                                                   ; - com.google.re2j.Machine::match@375 (line 271)
  0.02%    0.03%   │   ││     0x00007f73d0e0bdea: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │   ││                                                   ; - com.google.re2j.Machine::match@382 (line 271)
                   │   ││     0x00007f73d0e0bdef: mov    0x28(%rsp),%r9d
  0.69%    0.85%   │   ││     0x00007f73d0e0bdf4: test   %r9d,%r9d
                   │   ││     0x00007f73d0e0bdf7: je     0x00007f73d0e0c3dd  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@368 (line 268)
                   │   ││     0x00007f73d0e0bdfd: test   %r11d,%r11d
  0.02%            │   ││     0x00007f73d0e0be00: jne    0x00007f73d0e0c859  ;*ifne
                   │   ││                                                   ; - com.google.re2j.Machine::match@378 (line 271)
  0.01%    0.01%   │   ││     0x00007f73d0e0be06: test   %eax,%eax
                   │   ││     0x00007f73d0e0be08: jne    0x00007f73d0e0ca05  ;*ifeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@385 (line 271)
  0.73%    0.80%   │   ││     0x00007f73d0e0be0e: mov    0x50(%rsp),%r10
                   │   ││     0x00007f73d0e0be13: mov    0x10(%r10),%ecx    ;*getfield end
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.01%    0.02%   │   ││     0x00007f73d0e0be17: mov    0xc(%r10),%r13d    ;*getfield start
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.01%    0.02%   │   ││     0x00007f73d0e0be1b: mov    0x14(%r10),%r14d   ;*getfield str
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.69%    0.92%   │   ││     0x00007f73d0e0be1f: mov    0x58(%rsp),%r10d
                   │   ││     0x00007f73d0e0be24: cmp    $0xffffffff,%r10d
                   │   ││     0x00007f73d0e0be28: je     0x00007f73d0e0c43a  ;*if_icmpeq
                   │   ││                                                   ; - com.google.re2j.Machine::match@407 (line 279)
           0.01%   │   ││     0x00007f73d0e0be2e: mov    0x30(%rsp),%ebx
  0.00%    0.01%   │   ││     0x00007f73d0e0be32: add    0x20(%rsp),%ebx
  0.83%    0.99%   │   ││     0x00007f73d0e0be36: add    %r13d,%ebx         ;*iadd
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
           0.00%   │   ││     0x00007f73d0e0be39: cmp    %ecx,%ebx
                   │   ││     0x00007f73d0e0be3b: jge    0x00007f73d0e0c449  ;*if_icmpge
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
           0.01%   │   ││     0x00007f73d0e0be41: mov    0x8(%r12,%r14,8),%r8d  ; implicit exception: dispatches to 0x00007f73d0e0d941
  0.17%    0.21%   │   ││     0x00007f73d0e0be46: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │   ││     0x00007f73d0e0be4d: jne    0x00007f73d0e0c7ad
  0.85%    0.93%   │   ││     0x00007f73d0e0be53: lea    (%r12,%r14,8),%r10  ;*invokeinterface charAt
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
                   │   ││     0x00007f73d0e0be57: test   %ebx,%ebx
                   │   ││     0x00007f73d0e0be59: jl     0x00007f73d0e0c8b5  ;*iflt
                   │   ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.00%            │   ││     0x00007f73d0e0be5f: mov    0xc(%r10),%r8d     ;*getfield value
                   │   ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.03%    0.05%   │   ││     0x00007f73d0e0be63: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │   ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
                   │   ││                                                   ; implicit exception: dispatches to 0x00007f73d0e0d955
  2.34%    2.76%   │   ││     0x00007f73d0e0be68: cmp    %ebp,%ebx
                   │   ││     0x00007f73d0e0be6a: jge    0x00007f73d0e0ca61  ;*if_icmplt
                   │   ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.65%    0.85%   │   ││     0x00007f73d0e0be70: cmp    %ebp,%ebx
                   │   ││     0x00007f73d0e0be72: jae    0x00007f73d0e0c6d5
  0.11%    0.16%   │   ││     0x00007f73d0e0be78: shl    $0x3,%r8
                   │   ││     0x00007f73d0e0be7c: movzwl 0x10(%r8,%rbx,2),%r9d  ;*caload
                   │   ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │   ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.25%    0.34%   │   ││     0x00007f73d0e0be82: cmp    $0xd800,%r9d
                   │   ││     0x00007f73d0e0be89: jge    0x00007f73d0e0cacd  ;*if_icmplt
                   │   ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.65%    0.80%   │   ││     0x00007f73d0e0be8f: shl    $0x3,%r9d          ;*ishl
                   │   ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   ││                                                   ; - com.google.re2j.Machine::match@415 (line 280)
  0.16%    0.22%   │   ││     0x00007f73d0e0be93: mov    %r9d,%edx
                   │   ││     0x00007f73d0e0be96: or     $0x1,%edx
  0.65%    0.91%   │   ││     0x00007f73d0e0be99: and    $0x7,%r9d
  0.05%    0.03%   │   ││     0x00007f73d0e0be9d: sar    $0x3,%edx          ;*ishr
                   │   ││                                                   ; - com.google.re2j.Machine::match@423 (line 281)
  0.68%    0.85%   │   ││     0x00007f73d0e0bea0: or     $0x1,%r9d          ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=900}
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@445 (line 287)
           0.00%   │   ││     0x00007f73d0e0bea4: test   %eax,0x15fa9156(%rip)        # 0x00007f73e6db5000
                   │   ││                                                   ;*goto
                   │   ││                                                   ; - com.google.re2j.Machine::match@445 (line 287)
                   │   ││                                                   ;   {poll}
  0.03%    0.07%   │   ││     0x00007f73d0e0beaa: mov    0x40(%rsp),%r10
  0.04%    0.01%   │   ││     0x00007f73d0e0beaf: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@311 (line 264)
  0.64%    0.92%   │   ││     0x00007f73d0e0beb3: mov    0x14(%r10),%esi    ;*getfield re2
                   │   ││                                                   ; - com.google.re2j.Machine::match@178 (line 241)
                   │   ││     0x00007f73d0e0beb7: mov    0x70(%rsp),%r10
  0.02%    0.06%   │   ││     0x00007f73d0e0bebc: shr    $0x3,%r10
  0.03%    0.04%   │   ││     0x00007f73d0e0bec0: mov    %r10d,0x38(%rsp)
  0.62%    0.74%   │   ││     0x00007f73d0e0bec5: mov    0x2c(%rsp),%r10d
           0.00%   │   ││     0x00007f73d0e0beca: mov    0x58(%rsp),%edi
  0.03%    0.06%   │   ││     0x00007f73d0e0bece: mov    %edx,0x58(%rsp)
  0.04%    0.05%   │   ││     0x00007f73d0e0bed2: mov    0x18(%rsp),%r8
  0.54%    0.80%   │   ││     0x00007f73d0e0bed7: mov    %r8,0x70(%rsp)
                   │   ││     0x00007f73d0e0bedc: mov    0x30(%rsp),%edx
  0.04%    0.03%   │   ││     0x00007f73d0e0bee0: mov    %edx,0x28(%rsp)
  0.03%    0.01%   │   ││     0x00007f73d0e0bee4: mov    %r9d,0x30(%rsp)
  0.66%    0.80%   │   ││     0x00007f73d0e0bee9: mov    %ecx,0x24(%rsp)    ;*getfield matchcap
                   │   ││                                                   ; - com.google.re2j.Machine::match@311 (line 264)
  0.00%            ↘   ││     0x00007f73d0e0beed: mov    0x38(%rsp),%r9d
  0.07%    0.05%       ││     0x00007f73d0e0bef2: movzbl 0x18(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f73d0e0d91d
  0.15%    0.14%       ││     0x00007f73d0e0bef8: mov    0x38(%rsp),%r8d
  0.66%    0.77%       ││     0x00007f73d0e0befd: shl    $0x3,%r8           ;*aload
                       ││                                                   ; - com.google.re2j.Machine::match@145 (line 232)
  0.01%                ││     0x00007f73d0e0bf01: mov    %r8,0x18(%rsp)
  0.06%    0.03%       ││     0x00007f73d0e0bf06: test   %r9d,%r9d
                       ││     0x00007f73d0e0bf09: jne    0x00007f73d0e0c14c  ;*ifeq
                       ││                                                   ; - com.google.re2j.Machine::match@150 (line 232)
  0.10%    0.09%       ││     0x00007f73d0e0bf0f: mov    0x20(%rsp),%r13d   ;*iload_3
                       ││                                                   ; - com.google.re2j.Machine::match@276 (line 258)
  0.67%    0.89%       ││     0x00007f73d0e0bf14: test   %eax,%eax
                       ││     0x00007f73d0e0bf16: jne    0x00007f73d0e0c815  ;*ifne
                       ││                                                   ; - com.google.re2j.Machine::match@288 (line 258)
  0.00%    0.00%       ││     0x00007f73d0e0bf1c: test   %r11d,%r11d
                       ││     0x00007f73d0e0bf1f: jne    0x00007f73d0e0c925  ;*ifeq
                       ││                                                   ; - com.google.re2j.Machine::match@295 (line 261)
  0.03%    0.02%       ││     0x00007f73d0e0bf25: mov    0x60(%rsp),%r10
  0.09%    0.12%       ││     0x00007f73d0e0bf2a: mov    0x18(%r10),%ecx    ;*getfield pc
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.61%    0.67%       ││     0x00007f73d0e0bf2e: cmp    $0x40,%ecx
                       ││     0x00007f73d0e0bf31: jge    0x00007f73d0e0c969  ;*if_icmpge
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.01%    0.00%       ││     0x00007f73d0e0bf37: mov    0x38(%rsp),%r10d
  0.00%    0.05%       ││     0x00007f73d0e0bf3c: mov    0x10(%r12,%r10,8),%r10  ;*getfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.15%    0.12%       ││     0x00007f73d0e0bf41: mov    $0x1,%r8d
  0.64%    0.76%       ││     0x00007f73d0e0bf47: shl    %cl,%r8            ;*lshl
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.16%    0.15%       ││     0x00007f73d0e0bf4a: mov    %r8,%r9
  0.68%    0.72%       ││     0x00007f73d0e0bf4d: and    %r10,%r9           ;*land
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.01%    0.00%       ││     0x00007f73d0e0bf50: test   %r9,%r9
                       ││     0x00007f73d0e0bf53: jne    0x00007f73d0e0c5d5  ;*ifne
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.13%    0.10%       ││     0x00007f73d0e0bf59: mov    0x38(%rsp),%edx
  0.06%    0.05%       ││     0x00007f73d0e0bf5d: mov    %r12b,0x18(%r12,%rdx,8)  ;*putfield empty
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.64%    0.52%       ││     0x00007f73d0e0bf62: or     %r10,%r8
           0.01%       ││     0x00007f73d0e0bf65: mov    %r8,0x10(%r12,%rdx,8)  ;*putfield pcsl
                       ││                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.12%    0.14%       ││     0x00007f73d0e0bf6a: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.06%    0.04%       ││     0x00007f73d0e0bf6c: test   %r9,%r9
                       ││     0x00007f73d0e0bf6f: jne    0x00007f73d0e0c9b9  ;*ifeq
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.54%    0.42%       ││     0x00007f73d0e0bf75: mov    0x38(%rsp),%r10d
                       ││     0x00007f73d0e0bf7a: mov    0xc(%r12,%r10,8),%r11d  ;*getfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.12%    0.07%       ││     0x00007f73d0e0bf7f: mov    0x20(%r12,%r10,8),%r8d  ;*getfield denseThreadsInstructions
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.04%    0.02%       ││     0x00007f73d0e0bf84: mov    %r11d,%r9d
  0.58%    0.26%       ││     0x00007f73d0e0bf87: inc    %r9d
  0.02%    0.00%       ││     0x00007f73d0e0bf8a: mov    %r9d,0xc(%r12,%r10,8)  ;*putfield size
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.13%    0.11%       ││     0x00007f73d0e0bf8f: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f73d0e0d92d
  0.19%    0.11%       ││     0x00007f73d0e0bf94: cmp    %r9d,%r11d
                       ││     0x00007f73d0e0bf97: jae    0x00007f73d0e0c666
  0.86%    0.32%       ││     0x00007f73d0e0bf9d: mov    0x8(%r12,%r8,8),%r9d
  0.00%    0.01%       ││     0x00007f73d0e0bfa2: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       ││     0x00007f73d0e0bfa9: jne    0x00007f73d0e0c741  ;*aastore
                       ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                       ││                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                       ││                                                   ; - com.google.re2j.Machine::match@322 (line 264)
  0.07%    0.05%       ││     0x00007f73d0e0bfaf: test   %edi,%edi
                    ╭  ││     0x00007f73d0e0bfb1: jl     0x00007f73d0e0c065  ;*ifge
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    │  ││                                                   ; - com.google.re2j.Machine::match@330 (line 266)
  0.03%    0.03%    │  ││     0x00007f73d0e0bfb7: xor    %r9d,%r9d          ;*iload_0
                    │  ││                                                   ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    │  ││                                                   ; - com.google.re2j.Machine::match@330 (line 266)
  0.60%    0.60%    │  ││↗    0x00007f73d0e0bfba: cmp    $0xa,%edi
                    │  │││    0x00007f73d0e0bfbd: je     0x00007f73d0e0c41d  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │  │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.02%    0.00%    │  │││    0x00007f73d0e0bfc3: mov    0x58(%rsp),%ecx
  0.03%    0.11%    │  │││    0x00007f73d0e0bfc7: test   %ecx,%ecx
                    │  │││    0x00007f73d0e0bfc9: jl     0x00007f73d0e0c3c4  ;*iload_1
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │  │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.03%    0.02%    │  │││    0x00007f73d0e0bfcf: cmp    $0xa,%ecx
                    │  │││    0x00007f73d0e0bfd2: je     0x00007f73d0e0c426  ;*iload_0
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.60%    0.73%    │  │││    0x00007f73d0e0bfd8: mov    %r13d,%ecx
  0.00%    0.00%    │  │││    0x00007f73d0e0bfdb: add    0x28(%rsp),%ecx    ;*iadd
                    │  │││                                                  ; - com.google.re2j.Machine::match@344 (line 267)
  0.10%    0.09%    │  │││    0x00007f73d0e0bfdf: mov    %ecx,0x20(%rsp)
  0.04%    0.03%    │  │││    0x00007f73d0e0bfe3: mov    0x58(%rsp),%ecx
  0.67%    0.57%    │  │││    0x00007f73d0e0bfe7: add    $0xffffffbf,%ecx
  0.01%    0.01%    │  │││    0x00007f73d0e0bfea: mov    %edi,%r10d
  0.10%    0.08%    │  │││    0x00007f73d0e0bfed: add    $0xffffffbf,%r10d
  0.05%    0.05%    │  │││    0x00007f73d0e0bff1: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                    │  │││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                    │  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    │  │││                                                  ; - com.google.re2j.Machine::match@322 (line 264)
  0.60%    0.34%    │  │││    0x00007f73d0e0bff5: lea    0x10(%r8,%r11,4),%r11
  0.01%             │  │││    0x00007f73d0e0bffa: mov    0x14(%rsp),%r8d
  0.10%    0.08%    │  │││    0x00007f73d0e0bfff: mov    %r8d,(%r11)
  0.68%    0.80%    │  │││    0x00007f73d0e0c002: shr    $0x9,%r11
  0.53%    0.43%    │  │││    0x00007f73d0e0c006: movabs $0x7f73cc601000,%r8
  0.00%             │  │││    0x00007f73d0e0c010: mov    %r12b,(%r8,%r11,1)  ;*invokevirtual endPos
                    │  │││                                                  ; - com.google.re2j.Machine::match@352 (line 267)
  0.44%    0.46%    │  │││    0x00007f73d0e0c014: cmp    $0x1a,%r10d
                    │╭ │││    0x00007f73d0e0c018: jb     0x00007f73d0e0c02b  ;*if_icmple
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.18%    0.19%    ││ │││    0x00007f73d0e0c01a: mov    %edi,%r10d
  0.32%    0.26%    ││ │││    0x00007f73d0e0c01d: add    $0xffffff9f,%r10d
  0.01%    0.00%    ││ │││    0x00007f73d0e0c021: cmp    $0x1a,%r10d
                    ││ │││    0x00007f73d0e0c025: jae    0x00007f73d0e0c58a  ;*iconst_1
                    ││ │││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││ │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.21%    0.23%    │↘ │││    0x00007f73d0e0c02b: mov    $0x1,%ebp          ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.20%    0.22%    │  │││    0x00007f73d0e0c030: cmp    $0x1a,%ecx
                    │ ╭│││    0x00007f73d0e0c033: jb     0x00007f73d0e0c048  ;*if_icmple
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.28%    0.25%    │ ││││    0x00007f73d0e0c035: mov    0x58(%rsp),%r10d
  0.04%    0.02%    │ ││││    0x00007f73d0e0c03a: add    $0xffffff9f,%r10d
  0.26%    0.26%    │ ││││    0x00007f73d0e0c03e: cmp    $0x1a,%r10d
                    │ ││││    0x00007f73d0e0c042: jae    0x00007f73d0e0c5ab  ;*iconst_1
                    │ ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    │ ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ ││││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.24%    0.16%    │ ↘│││    0x00007f73d0e0c048: mov    $0x1,%r11d         ;*ireturn
                    │  │││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │  │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │  │││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.37%    0.39%    │  │││    0x00007f73d0e0c04e: cmp    %r11d,%ebp
                    │  ╰││    0x00007f73d0e0c051: je     0x00007f73d0e0bd8f  ;*if_icmpeq
                    │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.02%    0.03%    │   ││    0x00007f73d0e0c057: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                    │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 266)
  0.03%    0.05%    │   ││    0x00007f73d0e0c05b: mov    %r9d,0x2c(%rsp)
  0.14%    0.26%    │   ╰│    0x00007f73d0e0c060: jmpq   0x00007f73d0e0bd98
  0.00%             ↘    │    0x00007f73d0e0c065: mov    $0x5,%r9d
                         ╰    0x00007f73d0e0c06b: jmpq   0x00007f73d0e0bfba
           0.00%              0x00007f73d0e0c070: mov    %r8d,0x68(%rsp)
  0.01%    0.02%              0x00007f73d0e0c075: jmpq   0x00007f73d0e0c2fa
                              0x00007f73d0e0c07a: mov    0x68(%rsp),%r8d
                              0x00007f73d0e0c07f: add    $0x2,%r8d
                              0x00007f73d0e0c083: mov    %r8d,0x68(%rsp)
                              0x00007f73d0e0c088: mov    0x68(%rsp),%r8d
                              0x00007f73d0e0c08d: inc    %r8d
  0.00%                       0x00007f73d0e0c090: mov    %r8d,0x5c(%rsp)
                          ╭   0x00007f73d0e0c095: jmp    0x00007f73d0e0c0c2
  0.00%                   │   0x00007f73d0e0c097: mov    0x68(%rsp),%r8d
                          │   0x00007f73d0e0c09c: add    $0x2,%r8d
                          │   0x00007f73d0e0c0a0: mov    %r8d,0x5c(%rsp)
                          │╭  0x00007f73d0e0c0a5: jmp    0x00007f73d0e0c0b5
                          ││  0x00007f73d0e0c0a7: mov    0x68(%rsp),%r8d
                          ││  0x00007f73d0e0c0ac: add    $0x2,%r8d
                          ││  0x00007f73d0e0c0b0: mov    %r8d,0x68(%rsp)
  0.00%                   │↘  0x00007f73d0e0c0b5: mov    0x68(%rsp),%r8d
                          │   0x00007f73d0e0c0ba: inc    %r8d               ;*iinc
                          │                                                 ; - java.lang.String::indexOf@69 (line 1772)
                          │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │                                                 ; - com.google.re2j.Machine::match@215 (line 245)
                          │   0x00007f73d0e0c0bd: mov    %r8d,0x68(%rsp)
           0.00%          ↘   0x00007f73d0e0c0c2: mov    0x68(%rsp),%r8d
                              0x00007f73d0e0c0c7: cmp    0x28(%rsp),%r8d
                              0x00007f73d0e0c0cc: jg     0x00007f73d0e0c131
                              0x00007f73d0e0c0ce: mov    0x68(%rsp),%r8d
  0.01%                       0x00007f73d0e0c0d3: add    0x34(%rsp),%r8d    ;*iadd
                                                                            ; - java.lang.String::indexOf@101 (line 1777)
                                                                            ; - java.lang.String::indexOf@21 (line 1718)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                            ; - com.google.re2j.Machine::match@215 (line 245)
                              0x00007f73d0e0c0d8: mov    %r8d,%r9d
                              0x00007f73d0e0c0db: mov    0x5c(%rsp),%r8d
                              0x00007f73d0e0c0e0: cmp    %r9d,%r8d
                              0x00007f73d0e0c0e3: jge    0x00007f73d0e0c123  ;*if_icmpge
                                                                            ; - java.lang.String::indexOf@123 (line 1779)
....................................................................................................
 31.76%   33.93%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 488 (480 bytes) 

                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Machine::step@214 (line 338)
                                                                      ;   {optimized virtual_call}
                        0x00007f73d0de8284: test   %rax,%rax
                        0x00007f73d0de8287: jne    0x00007f73d0de8b1d  ;*ifnull
                                                                      ; - com.google.re2j.Machine::step@221 (line 341)
                        0x00007f73d0de828d: mov    0x30(%rsp),%r11
                        0x00007f73d0de8292: jmpq   0x00007f73d0de7f72
  0.25%    0.27%        0x00007f73d0de8297: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                        0x00007f73d0de829d: jne    0x00007f73d0de8989  ;*invokevirtual add
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.42%    0.53%        0x00007f73d0de82a3: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                      ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.00%        0x00007f73d0de82a7: cmp    $0x40,%ecx
                        0x00007f73d0de82aa: jge    0x00007f73d0de8aad  ;*if_icmpge
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.06%        0x00007f73d0de82b0: mov    %r11,%rbx
  0.28%    0.31%        0x00007f73d0de82b3: mov    $0x1,%r11d
  0.41%    0.46%        0x00007f73d0de82b9: shl    %cl,%r11           ;*lshl
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.33%    0.41%        0x00007f73d0de82bc: mov    %r11,%r8
  0.38%    0.38%        0x00007f73d0de82bf: and    %rdx,%r8           ;*land
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
           0.00%        0x00007f73d0de82c2: test   %r8,%r8
                        0x00007f73d0de82c5: jne    0x00007f73d0de84a8  ;*ifne
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.13%    0.09%        0x00007f73d0de82cb: mov    0x30(%rsp),%rcx
  0.29%    0.26%        0x00007f73d0de82d0: mov    %r12b,0x18(%rcx)   ;*putfield empty
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.42%    0.38%        0x00007f73d0de82d4: or     %rdx,%r11
                        0x00007f73d0de82d7: mov    %r11,0x10(%rcx)    ;*putfield pcsl
                                                                      ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.13%    0.06%        0x00007f73d0de82db: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                      ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.36%    0.29%        0x00007f73d0de82dd: test   %r8,%r8
                        0x00007f73d0de82e0: jne    0x00007f73d0de8b09  ;*ifeq
                                                                      ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.38%    0.43%        0x00007f73d0de82e6: add    $0x18,%r9
  0.00%                 0x00007f73d0de82ea: mov    %rbx,%r10
  0.09%    0.11%        0x00007f73d0de82ed: shr    $0x3,%r10
  0.31%    0.35%        0x00007f73d0de82f1: mov    %r10d,(%r9)        ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.40%    0.49%        0x00007f73d0de82f4: mov    %r9,%r10
           0.00%        0x00007f73d0de82f7: add    $0x3,%r14d
  0.09%    0.14%        0x00007f73d0de82fb: mov    0x30(%rsp),%r11
  0.26%    0.33%        0x00007f73d0de8300: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                      ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.33%    0.31%        0x00007f73d0de8304: shr    $0x9,%r10
  0.00%    0.00%        0x00007f73d0de8308: movabs $0x7f73cc601000,%r8
  0.08%    0.03%        0x00007f73d0de8312: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                      ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                      ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                      ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                      ; - com.google.re2j.Machine::step@-1 (line 301)
  0.33%    0.16%        0x00007f73d0de8316: jmpq   0x00007f73d0de7f72
  0.45%    0.58%        0x00007f73d0de831b: cmp    $0xb,%r8d
                        0x00007f73d0de831f: je     0x00007f73d0de85fd  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                      ; - com.google.re2j.Machine::step@191 (line 337)
  1.37%    1.53%        0x00007f73d0de8325: mov    0x1c(%r12,%r11,8),%edi  ;*getfield f0
                                                                      ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                      ; - com.google.re2j.Machine::step@191 (line 337)
  0.09%    0.03%        0x00007f73d0de832a: cmp    $0x9,%r8d
                  ╭     0x00007f73d0de832e: je     0x00007f73d0de8379  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                   ; - com.google.re2j.Machine::step@191 (line 337)
  0.54%    0.47%  │     0x00007f73d0de8330: cmp    $0xc,%r8d
                  │     0x00007f73d0de8334: jne    0x00007f73d0de88b5  ;*if_icmpne
                  │                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │                                                   ; - com.google.re2j.Machine::step@191 (line 337)
  0.34%    0.40%  │     0x00007f73d0de833a: cmp    0x18(%rsp),%edi
                  │╭    0x00007f73d0de833e: je     0x00007f73d0de8460  ;*if_icmpeq
                  ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@191 (line 337)
  0.52%    0.48%  ││    0x00007f73d0de8344: mov    0x20(%r12,%r11,8),%r8d  ;*getfield f1
                  ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││                                                  ; - com.google.re2j.Machine::step@191 (line 337)
  0.05%    0.04%  ││    0x00007f73d0de8349: cmp    0x18(%rsp),%r8d
                  ││╭   0x00007f73d0de834e: je     0x00007f73d0de8460  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.50%    0.74%  │││   0x00007f73d0de8354: mov    0x24(%r12,%r11,8),%ebp  ;*getfield f2
                  │││                                                 ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.05%    0.05%  │││   0x00007f73d0de8359: cmp    0x18(%rsp),%ebp
                  │││   0x00007f73d0de835d: je     0x00007f73d0de88ed  ;*if_icmpeq
                  │││                                                 ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.55%    0.54%  │││   0x00007f73d0de8363: mov    0x28(%r12,%r11,8),%ebp  ;*getfield f3
                  │││                                                 ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.02%    0.02%  │││   0x00007f73d0de8368: cmp    0x18(%rsp),%ebp
                  │││   0x00007f73d0de836c: je     0x00007f73d0de8925  ;*if_icmpne
                  │││                                                 ; - com.google.re2j.Inst::matchRune@93 (line 103)
                  │││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.33%    0.42%  │││   0x00007f73d0de8372: xor    %ecx,%ecx
  0.03%    0.03%  │││   0x00007f73d0de8374: jmpq   0x00007f73d0de7ee5
  0.47%    0.51%  ↘││   0x00007f73d0de8379: cmp    0x18(%rsp),%edi
                   ││   0x00007f73d0de837d: jne    0x00007f73d0de7ee3  ;*if_icmpne
                   ││                                                 ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   ││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.00%    0.00%   ││   0x00007f73d0de8383: mov    $0x1,%ecx
  0.01%    0.00%   ││   0x00007f73d0de8388: jmpq   0x00007f73d0de7ee5  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine::step@40 (line 307)
  0.66%    0.81%   ││   0x00007f73d0de838d: movzbl 0x18(%rbx),%r10d
                   ││   0x00007f73d0de8392: test   %r10d,%r10d
                   ││╭  0x00007f73d0de8395: jne    0x00007f73d0de83ae  ;*ifeq
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 88)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  0x00007f73d0de8397: movb   $0x1,0x18(%rbx)    ;*putfield empty
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 90)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  0x00007f73d0de839b: mov    0x1c(%rbx),%ebp    ;*getfield pcs
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@24 (line 92)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 345)
  0.86%    0.64%   │││  0x00007f73d0de839e: mov    %r12d,0xc(%rbx)    ;*putfield size
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 89)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 345)
  0.01%            │││  0x00007f73d0de83a2: mov    %r12,0x10(%rbx)    ;*putfield pcsl
                   │││                                                ; - com.google.re2j.Machine$Queue::clear@20 (line 91)
                   │││                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  0x00007f73d0de83a6: test   %ebp,%ebp
                   │││  0x00007f73d0de83a8: jne    0x00007f73d0de8971  ;*getfield size
                   │││                                                ; - com.google.re2j.Machine::step@10 (line 302)
                   ││↘  0x00007f73d0de83ae: add    $0x90,%rsp
  0.74%    0.70%   ││   0x00007f73d0de83b5: pop    %rbp
           0.01%   ││   0x00007f73d0de83b6: test   %eax,0x15fccc44(%rip)        # 0x00007f73e6db5000
                   ││                                                 ;   {poll_return}
                   ││   0x00007f73d0de83bc: retq   
  0.03%    0.02%   ││   0x00007f73d0de83bd: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││   0x00007f73d0de83c4: jne    0x00007f73d0de8be1  ;*invokevirtual add
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de83ca: mov    0x18(%r8),%ecx     ;*getfield pc
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de83ce: mov    %rax,%r11
                   ││   0x00007f73d0de83d1: mov    0x10(%rax),%rdi    ;*getfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││                                                 ; implicit exception: dispatches to 0x00007f73d0de8e75
  0.02%    0.00%   ││   0x00007f73d0de83d5: cmp    $0x40,%ecx
                   ││   0x00007f73d0de83d8: jge    0x00007f73d0de8ca5  ;*if_icmpge
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de83de: mov    $0x1,%esi
                   ││   0x00007f73d0de83e3: shl    %cl,%rsi           ;*lshl
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.05%    0.03%   ││   0x00007f73d0de83e6: mov    %rsi,%rcx
                   ││   0x00007f73d0de83e9: and    %rdi,%rcx          ;*land
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de83ec: test   %rcx,%rcx
                   ││   0x00007f73d0de83ef: jne    0x00007f73d0de84b2  ;*ifne
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.02%    0.01%   ││   0x00007f73d0de83f5: mov    %r12b,0x18(%rax)   ;*putfield empty
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
           0.00%   ││   0x00007f73d0de83f9: or     %rdi,%rsi
                   ││   0x00007f73d0de83fc: mov    %rsi,0x10(%rax)    ;*putfield pcsl
                   ││                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de8400: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.01%    0.01%   ││   0x00007f73d0de8402: test   %rcx,%rcx
                   ││   0x00007f73d0de8405: jne    0x00007f73d0de8d11  ;*ifeq
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.01%            ││   0x00007f73d0de840b: mov    0xc(%rax),%ecx     ;*getfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de840e: mov    0x20(%rax),%ebp    ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
           0.00%   ││   0x00007f73d0de8411: mov    %ecx,%esi
  0.04%    0.02%   ││   0x00007f73d0de8413: inc    %esi
  0.01%            ││   0x00007f73d0de8415: mov    %esi,0xc(%rax)     ;*putfield size
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.00%            ││   0x00007f73d0de8418: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f73d0de8e89
  0.03%    0.01%   ││   0x00007f73d0de841d: cmp    %esi,%ecx
                   ││   0x00007f73d0de841f: jae    0x00007f73d0de8b75
  0.03%    0.00%   ││   0x00007f73d0de8425: mov    0x8(%r12,%rbp,8),%esi
                   ││   0x00007f73d0de842a: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││   0x00007f73d0de8430: jne    0x00007f73d0de8c39  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de8436: lea    (%r12,%rbp,8),%rdi  ;*getfield denseThreadsInstructions
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   ││   0x00007f73d0de843a: lea    0x10(%rdi,%rcx,4),%rcx
  0.01%    0.02%   ││   0x00007f73d0de843f: shr    $0x3,%r8
  0.00%            ││   0x00007f73d0de8443: mov    %r8d,(%rcx)
  0.04%            ││   0x00007f73d0de8446: mov    %rcx,%r8
                   ││   0x00007f73d0de8449: shr    $0x9,%r8
  0.01%            ││   0x00007f73d0de844d: movabs $0x7f73cc601000,%rcx
                   ││   0x00007f73d0de8457: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   ││                                                 ; - com.google.re2j.Machine::step@214 (line 338)
  0.03%    0.03%   ││   0x00007f73d0de845b: jmpq   0x00007f73d0de7f96  ;*iconst_1
                   ││                                                 ; - com.google.re2j.Inst::matchRune@96 (line 103)
                   ││                                                 ; - com.google.re2j.Machine::step@191 (line 337)
  0.21%    0.19%   ↘↘   0x00007f73d0de8460: mov    $0x1,%ecx
  0.05%    0.12%        0x00007f73d0de8465: jmpq   0x00007f73d0de7ee5
                        0x00007f73d0de846a: mov    0x30(%rsp),%r11
                        0x00007f73d0de846f: jmpq   0x00007f73d0de7f72
                        0x00007f73d0de8474: mov    %rsi,%rdi
           0.00%        0x00007f73d0de8477: jmpq   0x00007f73d0de8014
                        0x00007f73d0de847c: mov    %rdi,%rsi
                        0x00007f73d0de847f: mov    $0x1,%ebp
                        0x00007f73d0de8484: jmpq   0x00007f73d0de8066
                        0x00007f73d0de8489: mov    $0x1,%ebp
                        0x00007f73d0de848e: jmpq   0x00007f73d0de7f38
                        0x00007f73d0de8493: mov    %rsi,%r11
                        0x00007f73d0de8496: jmpq   0x00007f73d0de818f
                        0x00007f73d0de849b: mov    %r11,%rdx
                        0x00007f73d0de849e: mov    $0x1,%ebp
                        0x00007f73d0de84a3: jmpq   0x00007f73d0de81ea
....................................................................................................
 13.94%   14.37%  <total for region 3>

....[Hottest Regions]...............................................................................
 39.62%   37.64%         C2, level 4  com.google.re2j.Machine::step, version 488 (705 bytes) 
 31.76%   33.93%         C2, level 4  com.google.re2j.Machine::match, version 527 (1427 bytes) 
 13.94%   14.37%         C2, level 4  com.google.re2j.Machine::step, version 488 (480 bytes) 
  8.68%    9.03%         C2, level 4  com.google.re2j.Machine::step, version 488 (144 bytes) 
  1.52%    1.64%         C2, level 4  com.google.re2j.Machine::match, version 527 (75 bytes) 
  0.57%    0.56%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.26%    0.22%         C2, level 4  com.google.re2j.Machine::match, version 527 (393 bytes) 
  0.16%    0.13%         C2, level 4  com.google.re2j.Pattern::find, version 541 (32 bytes) 
  0.15%    0.05%         C2, level 4  java.util.Collections::shuffle, version 553 (83 bytes) 
  0.15%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 541 (28 bytes) 
  0.14%    0.18%         C2, level 4  com.google.re2j.Machine::match, version 527 (210 bytes) 
  0.12%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 541 (173 bytes) 
  0.12%                  C2, level 4  com.google.re2j.Pattern::find, version 541 (130 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 541 (0 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 541 (0 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.09%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 541 (75 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 527 (117 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (6 bytes) 
  2.19%    1.80%  <...other 361 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.23%   61.04%         C2, level 4  com.google.re2j.Machine::step, version 488 
 33.83%   36.11%         C2, level 4  com.google.re2j.Machine::match, version 527 
  1.66%    1.39%   [kernel.kallsyms]  [unknown] 
  1.05%    0.44%         C2, level 4  com.google.re2j.Pattern::find, version 541 
  0.27%    0.08%         C2, level 4  java.util.Collections::shuffle, version 553 
  0.12%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 586 
  0.12%    0.03%              [vdso]  [unknown] 
  0.06%    0.00%        libc-2.26.so  __clock_gettime 
  0.05%    0.04%      hsdis-amd64.so  decode_instructions 
  0.04%    0.06%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.02%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%                    libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.01%    0.03%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.00%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.01%    0.00%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.01%    0.01%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.35%    0.35%  <...other 56 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.52%   97.73%         C2, level 4
  1.66%    1.39%   [kernel.kallsyms]
  0.37%    0.40%           libjvm.so
  0.19%    0.30%        libc-2.26.so
  0.12%    0.03%              [vdso]
  0.07%    0.08%  libpthread-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.00%                             
  0.00%    0.01%        runtime stub
  0.00%                  interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  23913.580 ± 199.978  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
