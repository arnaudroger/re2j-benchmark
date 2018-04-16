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
# Warmup Iteration   1: 14673.227 ops/s
# Warmup Iteration   2: 27473.659 ops/s
# Warmup Iteration   3: 27761.490 ops/s
# Warmup Iteration   4: 27962.744 ops/s
# Warmup Iteration   5: 28074.258 ops/s
# Warmup Iteration   6: 27908.367 ops/s
# Warmup Iteration   7: 27953.786 ops/s
# Warmup Iteration   8: 28175.910 ops/s
# Warmup Iteration   9: 28139.453 ops/s
# Warmup Iteration  10: 28148.281 ops/s
# Warmup Iteration  11: 28018.929 ops/s
# Warmup Iteration  12: 28157.224 ops/s
# Warmup Iteration  13: 28432.117 ops/s
# Warmup Iteration  14: 28080.251 ops/s
# Warmup Iteration  15: 28167.836 ops/s
# Warmup Iteration  16: 28289.376 ops/s
# Warmup Iteration  17: 27969.825 ops/s
# Warmup Iteration  18: 28391.360 ops/s
# Warmup Iteration  19: 28387.099 ops/s
# Warmup Iteration  20: 28432.252 ops/s
Iteration   1: 28245.209 ops/s
Iteration   2: 28055.688 ops/s
Iteration   3: 28265.106 ops/s
Iteration   4: 27272.604 ops/s
Iteration   5: 27413.476 ops/s
Iteration   6: 26602.681 ops/s
Iteration   7: 27153.234 ops/s
Iteration   8: 27270.532 ops/s
Iteration   9: 27405.053 ops/s
Iteration  10: 28105.816 ops/s
Iteration  11: 28336.661 ops/s
Iteration  12: 28222.574 ops/s
Iteration  13: 28416.563 ops/s
Iteration  14: 28444.230 ops/s
Iteration  15: 28332.020 ops/s
Iteration  16: 28134.126 ops/s
Iteration  17: 27902.042 ops/s
Iteration  18: 28209.342 ops/s
Iteration  19: 28195.919 ops/s
Iteration  20: 28363.979 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27917.343 ±(99.9%) 459.622 ops/s [Average]
  (min, avg, max) = (26602.681, 27917.343, 28444.230), stdev = 529.301
  CI (99.9%): [27457.721, 28376.965] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1:·asm":
PrintAssembly processed: 216246 total address lines.
Perf output processed (skipped 23.207 seconds):
 Column 1: cycles (20694 events)
 Column 2: instructions (20691 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 554 (942 bytes) 

                      0x00007f8821254ba2: jae    0x00007f8821255355
                      0x00007f8821254ba8: mov    %rdx,%r10
                      0x00007f8821254bab: mov    %r9,%r11
                      0x00007f8821254bae: shr    $0x3,%r11
                      0x00007f8821254bb2: mov    %r11d,(%rdx)
                      0x00007f8821254bb5: shr    $0x9,%r10
                      0x00007f8821254bb9: movabs $0x7f8831d67000,%r11
                      0x00007f8821254bc3: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.33%    0.20%   ↗  0x00007f8821254bc7: mov    0x28(%rsp),%r13
  0.17%    0.19%   │  0x00007f8821254bcc: mov    0x30(%rsp),%r11
  0.19%    0.16%   │  0x00007f8821254bd1: mov    0xac(%rsp),%r9d
  0.05%    0.03%   │  0x00007f8821254bd9: mov    0xc(%rsp),%r14d
  0.26%    0.26%   │  0x00007f8821254bde: mov    0x38(%rsp),%rdx
  0.17%    0.25%   │  0x00007f8821254be3: mov    0xa4(%rsp),%ebx
  0.21%    0.15%   │  0x00007f8821254bea: mov    0x44(%rsp),%r10d   ;*aload
                   │                                                ; - com.google.re2j.Machine::step@219 (line 322)
  1.42%    1.62%  ↗│  0x00007f8821254bef: inc    %r10d              ;*iinc
                  ││                                                ; - com.google.re2j.Machine::step@230 (line 288)
  0.26%    0.22%  ││  0x00007f8821254bf2: cmp    %r9d,%r10d
                  ││  0x00007f8821254bf5: jge    0x00007f88212550d4
  0.17%    0.20%  ││  0x00007f8821254bfb: mov    %r11,%rax          ;*iload
                  ││                                                ; - com.google.re2j.Machine::step@43 (line 291)
  0.70%    0.78%  ││  0x00007f8821254bfe: mov    0x10(%rdx,%r10,4),%r11d  ;*aaload
                  ││                                                ; - com.google.re2j.Machine::step@99 (line 301)
  1.18%    1.20%  ││  0x00007f8821254c03: mov    0xc(%r12,%r11,8),%r8d  ;*getfield op
                  ││                                                ; - com.google.re2j.Machine::step@104 (line 303)
                  ││                                                ; implicit exception: dispatches to 0x00007f88212560c1
  1.06%    0.96%  ││  0x00007f8821254c08: cmp    $0x6,%r8d
                  ││  0x00007f8821254c0c: je     0x00007f88212551b9  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Machine::step@109 (line 303)
  1.03%    1.06%  ││  0x00007f8821254c12: cmp    $0xa,%r8d
                  ││  0x00007f8821254c16: jne    0x00007f8821255061  ;*if_icmpne
                  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││                                                ; - com.google.re2j.Machine::step@191 (line 318)
  0.08%    0.14%  ││  0x00007f8821254c1c: mov    0x2c(%r12,%r11,8),%ecx  ;*getfield outInst
                  ││                                                ; - com.google.re2j.Machine::step@199 (line 319)
  0.34%    0.32%  ││  0x00007f8821254c21: mov    0x8(%r12,%rcx,8),%r11d  ; implicit exception: dispatches to 0x00007f88212560d1
  1.27%    1.31%  ││  0x00007f8821254c26: lea    (%r12,%rcx,8),%r8
  0.02%    0.03%  ││  0x00007f8821254c2a: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ││  0x00007f8821254c31: jne    0x00007f8821255106  ;*invokevirtual add
                  ││                                                ; - com.google.re2j.Machine::step@214 (line 319)
  0.48%    0.70%  ││  0x00007f8821254c37: mov    0x18(%r8),%edi     ;*getfield pc
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.42%    1.54%  ││  0x00007f8821254c3b: mov    %rax,%r11
  0.05%    0.08%  ││  0x00007f8821254c3e: mov    0x10(%rax),%rsi    ;*getfield pcsl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                  ││                                                ; implicit exception: dispatches to 0x00007f88212560e5
  0.02%    0.01%  ││  0x00007f8821254c42: cmp    $0x40,%edi
                  ││  0x00007f8821254c45: jg     0x00007f88212554a5  ;*if_icmpgt
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.56%    0.58%  ││  0x00007f8821254c4b: mov    $0x1,%eax
  0.05%    0.12%  ││  0x00007f8821254c50: mov    %edi,%ecx
  0.04%    0.08%  ││  0x00007f8821254c52: shl    %cl,%rax           ;*lshl
                  ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                  ││                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.22%    1.14%  ││  0x00007f8821254c55: mov    %rsi,%rcx
  0.03%    0.04%  ││  0x00007f8821254c58: and    %rax,%rcx
  0.01%    0.01%  ││  0x00007f8821254c5b: test   %rcx,%rcx
                  ╰│  0x00007f8821254c5e: jne    0x00007f8821254bef  ;*ifeq
                   │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.19%    0.19%   │  0x00007f8821254c60: cmp    $0x40,%edi
                   │  0x00007f8821254c63: jge    0x00007f8821255515  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.42%    0.36%   │  0x00007f8821254c69: mov    %r12b,0x18(%r11)   ;*putfield empty
                   │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.06%   │  0x00007f8821254c6d: mov    0x2c(%r8),%ebp     ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.04%   │  0x00007f8821254c71: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.24%    0.16%   │  0x00007f8821254c74: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.47%    0.43%   │  0x00007f8821254c78: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f88212560f9
  0.99%    1.00%   │  0x00007f8821254c7d: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  0x00007f8821254c83: jne    0x00007f8821255269
  0.63%    0.67%   │  0x00007f8821254c89: shl    $0x3,%rbp          ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f8821254c8d: mov    0x18(%rbp),%edi    ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.99%    0.96%   │  0x00007f8821254c90: cmp    $0x40,%edi
                   │  0x00007f8821254c93: jg     0x00007f8821255581  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.61%    0.65%   │  0x00007f8821254c99: mov    $0x1,%esi
  0.03%    0.02%   │  0x00007f8821254c9e: mov    %edi,%ecx
  0.00%    0.00%   │  0x00007f8821254ca0: shl    %cl,%rsi           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  1.41%    1.20%   │  0x00007f8821254ca3: mov    %rax,%rcx
                   │  0x00007f8821254ca6: and    %rsi,%rcx          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%            │  0x00007f8821254ca9: test   %rcx,%rcx
                   │  0x00007f8821254cac: jne    0x00007f88212555f5  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.34%    0.44%   │  0x00007f8821254cb2: cmp    $0x40,%edi
                   │  0x00007f8821254cb5: jge    0x00007f8821255675  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.38%    0.14%   │  0x00007f8821254cbb: mov    %rbp,%rcx
                   │  0x00007f8821254cbe: mov    %r10d,0x44(%rsp)
  0.00%            │  0x00007f8821254cc3: mov    %ebx,0xa4(%rsp)
  0.43%    0.33%   │  0x00007f8821254cca: mov    %rdx,0x38(%rsp)
  0.33%    0.27%   │  0x00007f8821254ccf: mov    %r14d,0xc(%rsp)
                   │  0x00007f8821254cd4: mov    %r9d,0xac(%rsp)
  0.00%    0.01%   │  0x00007f8821254cdc: mov    %r11,0x30(%rsp)
  0.39%    0.30%   │  0x00007f8821254ce1: mov    %r13,0x28(%rsp)
  0.40%    0.13%   │  0x00007f8821254ce6: or     %rsi,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%   │  0x00007f8821254ce9: mov    %rax,0x10(%r11)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f8821254ced: mov    0x20(%r11),%r10d   ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.24%   │  0x00007f8821254cf1: mov    %r10d,%r13d
  0.32%    0.10%   │  0x00007f8821254cf4: mov    0xc(%r11),%r10d    ;*getfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f8821254cf8: mov    %r10d,%r14d
           0.00%   │  0x00007f8821254cfb: inc    %r10d              ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.29%    0.29%   │  0x00007f8821254cfe: vmovd  %r10d,%xmm0
  0.44%    0.17%   │  0x00007f8821254d03: mov    %r10d,0xc(%r11)    ;*putfield size
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%            │  0x00007f8821254d07: mov    %r13d,%r10d
  0.00%            │  0x00007f8821254d0a: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007f882125610d
  0.28%    0.40%   │  0x00007f8821254d0f: mov    %r14d,%r10d
  0.32%    0.37%   │  0x00007f8821254d12: cmp    %ebx,%r10d
                   │  0x00007f8821254d15: jae    0x00007f8821255221
                   │  0x00007f8821254d1b: mov    %r13d,%r10d
  0.00%            │  0x00007f8821254d1e: mov    0x8(%r12,%r10,8),%r11d
  0.30%    0.36%   │  0x00007f8821254d23: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  0x00007f8821254d2a: jne    0x00007f88212552d9  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.35%    0.35%   │  0x00007f8821254d30: mov    0x34(%r8),%r10d    ;*getfield inst2
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%            │  0x00007f8821254d34: vmovd  %r10d,%xmm2
  0.00%    0.01%   │  0x00007f8821254d39: mov    %rbp,%r10
  0.32%    0.20%   │  0x00007f8821254d3c: shr    $0x3,%r10          ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.29%    0.12%   │  0x00007f8821254d40: lea    (%r12,%r13,8),%r9  ;*getfield denseThreadsInstructions
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │  0x00007f8821254d44: lea    0x10(%r9,%r14,4),%r11
  0.01%    0.01%   │  0x00007f8821254d49: mov    %r10d,(%r11)
  0.35%    0.38%   │  0x00007f8821254d4c: mov    %r11,%r10
  0.33%    0.28%   │  0x00007f8821254d4f: shr    $0x9,%r10
  0.00%            │  0x00007f8821254d53: movabs $0x7f8831d67000,%r11
  0.01%    0.02%   │  0x00007f8821254d5d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.37%   │  0x00007f8821254d61: vmovd  %xmm2,%r10d
  0.34%    0.34%   │  0x00007f8821254d66: mov    0x8(%r12,%r10,8),%r10d  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
                   │                                                ; implicit exception: dispatches to 0x00007f8821256129
  0.01%            │  0x00007f8821254d6b: movslq %r14d,%r11
  0.00%            │  0x00007f8821254d6e: lea    (%r9,%r11,4),%rdi  ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.41%    0.24%   │  0x00007f8821254d72: mov    %rdi,%rdx
  0.37%    0.14%   │  0x00007f8821254d75: add    $0x14,%rdx         ;*aastore
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%            │  0x00007f8821254d79: vmovd  %xmm2,%r11d
  0.00%    0.01%   │  0x00007f8821254d7e: shl    $0x3,%r11
  0.31%    0.15%   │  0x00007f8821254d82: mov    %r14d,%r8d
  0.43%    0.10%   │  0x00007f8821254d85: add    $0x2,%r8d          ;*iadd
                   │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                   │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
           0.01%   │  0x00007f8821254d89: cmp    $0xf8019885,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                   │  0x00007f8821254d90: jne    0x00007f8821254b44  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%            │  0x00007f8821254d96: vmovq  %r11,%xmm1
  0.31%    0.24%   │  0x00007f8821254d9b: mov    0x18(%r11),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.37%    0.21%   │  0x00007f8821254d9f: mov    %r10d,%ecx
                   │  0x00007f8821254da2: cmp    $0x40,%r10d
                   │  0x00007f8821254da6: jg     0x00007f8821255875  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.01%   │  0x00007f8821254dac: mov    $0x1,%r11d
  0.32%    0.13%   │  0x00007f8821254db2: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.12%   │  0x00007f8821254db5: mov    %rax,%r10
  0.34%    0.17%   │  0x00007f8821254db8: and    %r11,%r10          ;*land
                   │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.40%    0.15%   │  0x00007f8821254dbb: test   %r10,%r10
                   │  0x00007f8821254dbe: jne    0x00007f88212558b1  ;*ifeq
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%            │  0x00007f8821254dc4: mov    %ecx,%r10d
                   │  0x00007f8821254dc7: cmp    $0x40,%r10d
                   │  0x00007f8821254dcb: jge    0x00007f8821255905  ;*if_icmpge
                   │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.37%   │  0x00007f8821254dd1: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.34%    0.37%   │  0x00007f8821254dd4: mov    0x30(%rsp),%r10
                   │  0x00007f8821254dd9: mov    %rax,0x10(%r10)    ;*putfield pcsl
                   │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.01%   │  0x00007f8821254ddd: vmovq  %xmm1,%r10
  0.29%    0.04%   │  0x00007f8821254de2: mov    0x2c(%r10),%ebp    ;*getfield outInst
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.04%   │  0x00007f8821254de6: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f882125615d
  0.01%    0.02%   │  0x00007f8821254deb: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   │  0x00007f8821254df2: jne    0x00007f8821255441
  0.05%    0.08%   │  0x00007f8821254df8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.30%    0.23%   │  0x00007f8821254dfc: vmovq  %r10,%xmm1
  0.28%    0.48%   │  0x00007f8821254e01: mov    0x18(%r10),%r10d   ;*getfield pc
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.00%    0.03%   │  0x00007f8821254e05: mov    %r10d,%ecx
  0.03%    0.08%   │  0x00007f8821254e08: cmp    $0x40,%r10d
                   │  0x00007f8821254e0c: jg     0x00007f8821255a81  ;*if_icmpgt
                   │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.55%   │  0x00007f8821254e12: mov    $0x1,%r11d
  0.29%    0.38%   │  0x00007f8821254e18: shl    %cl,%r11           ;*lshl
                   │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                   │                                                ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                   │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                   │                                                ; - com.google.re2j.Machine::step@-1 (line 282)
  0.54%    0.48%   │  0x00007f8821254e1b: mov    %rax,%r10
  0.25%    0.24%   │  0x00007f8821254e1e: and    %r11,%r10
                   │  0x00007f8821254e21: test   %r10,%r10
                   ╰  0x00007f8821254e24: jne    0x00007f8821254bc7  ;*ifeq
                                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.06%    0.06%      0x00007f8821254e2a: mov    %ecx,%r10d
  0.36%    0.33%      0x00007f8821254e2d: cmp    $0x40,%r10d
                      0x00007f8821254e31: jge    0x00007f8821255abd  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.33%    0.32%      0x00007f8821254e37: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
           0.00%      0x00007f8821254e3a: mov    0x30(%rsp),%r10
  0.09%    0.04%      0x00007f8821254e3f: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.35%    0.38%      0x00007f8821254e43: vmovq  %xmm1,%r10
  0.27%    0.28%      0x00007f8821254e48: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
                      0x00007f8821254e4c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f8821256171
  0.51%    0.77%      0x00007f8821254e51: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      0x00007f8821254e58: jne    0x00007f8821255471
  0.52%    0.69%      0x00007f8821254e5e: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.17%    0.19%      0x00007f8821254e62: vmovq  %r10,%xmm2
                      0x00007f8821254e67: mov    0x18(%r10),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.15%    0.11%      0x00007f8821254e6b: vmovd  %r10d,%xmm3
  0.44%    0.67%      0x00007f8821254e70: cmp    $0x40,%r10d
                      0x00007f8821254e74: jg     0x00007f8821255af9  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.13%    0.16%      0x00007f8821254e7a: mov    $0x1,%r11d
                      0x00007f8821254e80: mov    %r10d,%ecx
  0.01%               0x00007f8821254e83: shl    %cl,%r11           ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.96%    1.17%      0x00007f8821254e86: mov    %rax,%r10
                      0x00007f8821254e89: and    %r11,%r10          ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.31%    0.39%      0x00007f8821254e8c: test   %r10,%r10
                      0x00007f8821254e8f: jne    0x00007f8821255b3d  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.21%      0x00007f8821254e95: mov    %ecx,%r10d
  0.19%    0.24%      0x00007f8821254e98: cmp    $0x40,%r10d
                      0x00007f8821254e9c: jge    0x00007f8821255b95  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.05%    0.03%      0x00007f8821254ea2: mov    0x30(%rsp),%r10
  0.32%    0.39%      0x00007f8821254ea7: mov    %r8d,0xc(%r10)     ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.21%      0x00007f8821254eab: or     %r11,%rax          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.25%      0x00007f8821254eae: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.02%    0.03%      0x00007f8821254eb2: cmp    %ebx,%r8d
                      0x00007f8821254eb5: jae    0x00007f88212553bd  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.32%      0x00007f8821254ebb: vmovq  %xmm1,%r10
  0.20%    0.20%      0x00007f8821254ec0: mov    0x34(%r10),%r10d   ;*getfield inst2
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.21%    0.26%      0x00007f8821254ec4: mov    %rdx,%r11
  0.03%    0.03%      0x00007f8821254ec7: vmovq  %xmm2,%r8
  0.30%    0.32%      0x00007f8821254ecc: shr    $0x3,%r8
  0.15%    0.20%      0x00007f8821254ed0: mov    %r8d,(%rdx)
  0.17%    0.25%      0x00007f8821254ed3: shr    $0x9,%r11
  0.02%    0.02%      0x00007f8821254ed7: movabs $0x7f8831d67000,%r8
  0.31%    0.41%      0x00007f8821254ee1: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.20%    0.19%      0x00007f8821254ee5: mov    0x8(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f8821256185
  0.21%    0.23%      0x00007f8821254eea: lea    (%r12,%r10,8),%r11
  0.01%    0.03%      0x00007f8821254eee: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                      0x00007f8821254ef4: je     0x00007f8821254f7a
  0.31%    0.36%      0x00007f8821254efa: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
  0.16%    0.24%      0x00007f8821254f00: jne    0x00007f882125580d  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.22%    0.23%      0x00007f8821254f06: mov    0x18(%r11),%r10d   ;*getfield pc
                                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%      0x00007f8821254f0a: cmp    $0x40,%r10d
                      0x00007f8821254f0e: jg     0x00007f8821255ca5  ;*if_icmpgt
                                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.26%    0.19%      0x00007f8821254f14: mov    $0x1,%r8d
  0.16%    0.09%      0x00007f8821254f1a: mov    %r10d,%ecx
  0.19%    0.26%      0x00007f8821254f1d: shl    %cl,%r8            ;*lshl
                                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.53%    0.68%      0x00007f8821254f20: mov    %rax,%rcx
  0.22%    0.18%      0x00007f8821254f23: and    %r8,%rcx           ;*land
                                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.01%    0.03%      0x00007f8821254f26: test   %rcx,%rcx
                      0x00007f8821254f29: jne    0x00007f8821255d09  ;*ifeq
                                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.27%    0.34%      0x00007f8821254f2f: cmp    $0x40,%r10d
                      0x00007f8821254f33: jge    0x00007f8821255d7d  ;*if_icmpge
                                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.18%    0.14%      0x00007f8821254f39: or     %r8,%rax
  0.20%    0.22%      0x00007f8821254f3c: mov    0x30(%rsp),%r10
  0.02%    0.02%      0x00007f8821254f41: mov    %rax,0x10(%r10)    ;*putfield pcsl
                                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.39%      0x00007f8821254f45: add    $0x18,%rdi
  0.13%    0.21%      0x00007f8821254f49: mov    %r11,%r10
  0.26%    0.23%      0x00007f8821254f4c: shr    $0x3,%r10
  0.05%    0.04%      0x00007f8821254f50: mov    %r10d,(%rdi)       ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.32%    0.34%      0x00007f8821254f53: mov    %rdi,%r10
  0.21%    0.23%      0x00007f8821254f56: add    $0x3,%r14d
  0.25%    0.23%      0x00007f8821254f5a: mov    0x30(%rsp),%r11
  0.01%    0.02%      0x00007f8821254f5f: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.33%    0.24%      0x00007f8821254f63: shr    $0x9,%r10
  0.13%    0.13%      0x00007f8821254f67: movabs $0x7f8831d67000,%r11
  0.19%    0.18%      0x00007f8821254f71: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
  0.03%    0.03%      0x00007f8821254f75: jmpq   0x00007f8821254bc7  ;*invokevirtual add
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                    ; - com.google.re2j.Machine::step@-1 (line 282)
....................................................................................................
 45.77%   44.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 603 (819 bytes) 

                           0x00007f8821276912: mov    0x40(%rsp),%r8
                           0x00007f8821276917: movzbl 0x11(%r8),%r9d     ;*getfield captures
                                                                         ; - com.google.re2j.Machine::match@292 (line 242)
                           0x00007f882127691c: mov    0x4c(%rsp),%r8d
                           0x00007f8821276921: shl    $0x3,%r8           ;*invokevirtual add
                                                                         ; - com.google.re2j.Machine::match@322 (line 245)
                           0x00007f8821276925: mov    %r8,0x58(%rsp)
                           0x00007f882127692a: mov    %rcx,%r8
                           0x00007f882127692d: shl    $0x3,%r8           ;*getfield q1
                                                                         ; - com.google.re2j.Machine::match@62 (line 194)
           0.00%           0x00007f8821276931: mov    0x58(%rsp),%rcx
  0.00%    0.01%           0x00007f8821276936: shr    $0x3,%rcx          ;*aastore
                                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                         ; - com.google.re2j.Machine::match@322 (line 245)
                           0x00007f882127693a: mov    %ecx,0x14(%rsp)
  0.01%    0.00%           0x00007f882127693e: mov    %r8,0x20(%rsp)
                           0x00007f8821276943: xor    %eax,%eax
                           0x00007f8821276945: mov    $0x1,%r8d
                           0x00007f882127694b: xor    %ebx,%ebx
                           0x00007f882127694d: mov    %r8d,0x70(%rsp)
                           0x00007f8821276952: mov    %ebx,0x6c(%rsp)
                  ╭        0x00007f8821276956: jmpq   0x00007f8821276adc
  0.17%    0.19%  │   ↗    0x00007f882127695b: or     $0x20,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │   │                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.04%  │   │    0x00007f882127695f: mov    %r9d,0x60(%rsp)    ;*iload_2
                  │   │                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │   │                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.19%  │   │↗   0x00007f8821276964: mov    0x6c(%rsp),%r8d
  0.28%    0.35%  │   ││   0x00007f8821276969: cmp    0x74(%rsp),%r8d
                  │   ││   0x00007f882127696e: je     0x00007f8821276fd2  ;*if_icmpne
                  │   ││                                                 ; - com.google.re2j.Machine::match@355 (line 248)
  0.30%    0.32%  │   ││   0x00007f8821276974: xor    %r10d,%r10d        ;*invokespecial step
                  │   ││                                                 ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.13%  │   ││   0x00007f8821276977: mov    %rax,-0x8(%rsp)
  0.18%    0.22%  │   ││   0x00007f882127697c: mov    0x6c(%rsp),%eax
  0.29%    0.32%  │   ││   0x00007f8821276980: mov    %eax,0x34(%rsp)
  0.40%    0.37%  │   ││   0x00007f8821276984: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                  │   ││                                                 ; - com.google.re2j.Machine::match@352 (line 248)
  0.65%    0.36%  │   ││   0x00007f8821276989: add    0x28(%rsp),%r8d    ;*iadd
                  │   ││                                                 ; - com.google.re2j.Machine::match@344 (line 248)
  0.09%    0.14%  │   ││   0x00007f882127698e: mov    %r8d,0x6c(%rsp)
  0.38%    0.49%  │   ││   0x00007f8821276993: mov    0x40(%rsp),%rsi
  0.15%    0.18%  │   ││   0x00007f8821276998: mov    0x18(%rsp),%rdx
  0.19%    0.22%  │   ││   0x00007f882127699d: mov    0x20(%rsp),%rcx
  0.06%    0.04%  │   ││   0x00007f88212769a2: mov    0x34(%rsp),%r8d
  0.50%    0.44%  │   ││   0x00007f88212769a7: mov    0x6c(%rsp),%r9d
  0.26%    0.20%  │   ││   0x00007f88212769ac: mov    0x60(%rsp),%r11d
  0.11%    0.08%  │   ││   0x00007f88212769b1: mov    %r11d,(%rsp)
  0.06%    0.07%  │   ││   0x00007f88212769b5: xor    %r11d,%r11d
  0.31%    0.33%  │   ││   0x00007f88212769b8: mov    %r11d,0x8(%rsp)
  0.22%    0.20%  │   ││   0x00007f88212769bd: mov    %r10d,0x10(%rsp)
  0.07%    0.10%  │   ││   0x00007f88212769c2: nop
  0.08%    0.05%  │   ││   0x00007f88212769c3: callq  0x00007f8821046020  ; OopMap{[20]=NarrowOop [24]=Oop [32]=Oop [44]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop off=744}
                  │   ││                                                 ;*invokespecial step
                  │   ││                                                 ; - com.google.re2j.Machine::match@363 (line 248)
                  │   ││                                                 ;   {optimized virtual_call}
  0.00%           │   ││   0x00007f88212769c8: mov    0x40(%rsp),%r10
  0.72%    0.60%  │   ││   0x00007f88212769cd: movzbl 0x11(%r10),%r9d    ;*getfield captures
                  │   ││                                                 ; - com.google.re2j.Machine::match@375 (line 252)
  0.02%    0.02%  │   ││   0x00007f88212769d2: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │   ││                                                 ; - com.google.re2j.Machine::match@382 (line 252)
           0.01%  │   ││   0x00007f88212769d7: mov    0x28(%rsp),%r10d
  0.69%    0.65%  │   ││   0x00007f88212769dc: test   %r10d,%r10d
                  │   ││   0x00007f88212769df: je     0x00007f8821276feb  ;*ifne
                  │   ││                                                 ; - com.google.re2j.Machine::match@368 (line 249)
                  │   ││   0x00007f88212769e5: test   %r9d,%r9d
                  │   ││   0x00007f88212769e8: jne    0x00007f8821277441  ;*ifne
                  │   ││                                                 ; - com.google.re2j.Machine::match@378 (line 252)
           0.01%  │   ││   0x00007f88212769ee: test   %eax,%eax
                  │   ││   0x00007f88212769f0: jne    0x00007f882127766d  ;*ifeq
                  │   ││                                                 ; - com.google.re2j.Machine::match@385 (line 252)
  0.04%    0.03%  │   ││   0x00007f88212769f6: mov    0x50(%rsp),%r10
  0.55%    0.66%  │   ││   0x00007f88212769fb: mov    0x10(%r10),%r8d    ;*getfield end
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.01%  │   ││   0x00007f88212769ff: mov    0xc(%r10),%r10d    ;*getfield start
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.02%  │   ││   0x00007f8821276a03: mov    %r10d,0x78(%rsp)
  0.02%    0.03%  │   ││   0x00007f8821276a08: mov    0x50(%rsp),%r10
  0.73%    0.85%  │   ││   0x00007f8821276a0d: mov    0x14(%r10),%r14d   ;*getfield str
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.00%  │   ││   0x00007f8821276a11: mov    0x38(%rsp),%r11d
           0.01%  │   ││   0x00007f8821276a16: cmp    $0xffffffff,%r11d
                  │   ││   0x00007f8821276a1a: je     0x00007f8821276fdd  ;*if_icmpeq
                  │   ││                                                 ; - com.google.re2j.Machine::match@407 (line 260)
  0.01%    0.03%  │   ││   0x00007f8821276a20: mov    0x30(%rsp),%ebx
  0.71%    0.95%  │   ││   0x00007f8821276a24: add    0x6c(%rsp),%ebx
           0.00%  │   ││   0x00007f8821276a28: add    0x78(%rsp),%ebx    ;*iadd
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.11%    0.09%  │   ││   0x00007f8821276a2c: cmp    %r8d,%ebx
                  │   ││   0x00007f8821276a2f: jge    0x00007f882127702b  ;*if_icmpge
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.16%    0.17%  │   ││   0x00007f8821276a35: mov    0x8(%r12,%r14,8),%r11d  ; implicit exception: dispatches to 0x00007f8821278699
  1.35%    1.60%  │   ││   0x00007f8821276a3a: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │   ││   0x00007f8821276a41: jne    0x00007f882127737d
  0.17%    0.25%  │   ││   0x00007f8821276a47: lea    (%r12,%r14,8),%r11  ;*invokeinterface charAt
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.00%  │   ││   0x00007f8821276a4b: test   %ebx,%ebx
                  │   ││   0x00007f8821276a4d: jl     0x00007f88212774a1  ;*iflt
                  │   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.14%    0.16%  │   ││   0x00007f8821276a53: mov    0xc(%r11),%ecx     ;*getfield value
                  │   ││                                                 ; - java.lang.String::charAt@6 (line 657)
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.34%    0.51%  │   ││   0x00007f8821276a57: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                  │   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
                  │   ││                                                 ; implicit exception: dispatches to 0x00007f88212786ad
  1.01%    1.33%  │   ││   0x00007f8821276a5c: cmp    %ebp,%ebx
                  │   ││   0x00007f8821276a5e: jge    0x00007f88212776cd  ;*if_icmplt
                  │   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.51%    0.47%  │   ││   0x00007f8821276a64: cmp    %ebp,%ebx
                  │   ││   0x00007f8821276a66: jae    0x00007f88212772a1
  0.20%    0.22%  │   ││   0x00007f8821276a6c: lea    (%r12,%rcx,8),%r10
  0.09%    0.12%  │   ││   0x00007f8821276a70: movzwl 0x10(%r10,%rbx,2),%ecx  ;*caload
                  │   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                  │   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.31%    0.35%  │   ││   0x00007f8821276a76: cmp    $0xd800,%ecx
                  │   ││   0x00007f8821276a7c: jge    0x00007f8821277739  ;*if_icmplt
                  │   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.47%    0.48%  │   ││   0x00007f8821276a82: shl    $0x3,%ecx          ;*ishl
                  │   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │   ││                                                 ; - com.google.re2j.Machine::match@415 (line 261)
  0.28%    0.44%  │   ││   0x00007f8821276a85: mov    %ecx,%ebx
  0.11%    0.07%  │   ││   0x00007f8821276a87: or     $0x1,%ebx
  0.50%    0.66%  │   ││   0x00007f8821276a8a: and    $0x7,%ecx
  0.11%    0.12%  │   ││   0x00007f8821276a8d: sar    $0x3,%ebx          ;*ishr
                  │   ││                                                 ; - com.google.re2j.Machine::match@423 (line 262)
  0.48%    0.66%  │   ││   0x00007f8821276a90: or     $0x1,%ecx          ; OopMap{r14=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop off=947}
                  │   ││                                                 ;*goto
                  │   ││                                                 ; - com.google.re2j.Machine::match@445 (line 268)
  0.04%    0.04%  │   ││   0x00007f8821276a93: test   %eax,0x180e8567(%rip)        # 0x00007f883935f000
                  │   ││                                                 ;*goto
                  │   ││                                                 ; - com.google.re2j.Machine::match@445 (line 268)
                  │   ││                                                 ;   {poll}
  0.06%    0.11%  │   ││   0x00007f8821276a99: mov    0x40(%rsp),%r10
  0.08%    0.13%  │   ││   0x00007f8821276a9e: mov    0x28(%r10),%r11d   ;*getfield matchcap
                  │   ││                                                 ; - com.google.re2j.Machine::match@311 (line 245)
  0.53%    0.66%  │   ││   0x00007f8821276aa2: mov    0x14(%r10),%esi    ;*getfield re2
                  │   ││                                                 ; - com.google.re2j.Machine::match@178 (line 222)
  0.01%    0.02%  │   ││   0x00007f8821276aa6: mov    0x20(%rsp),%r10
  0.10%    0.13%  │   ││   0x00007f8821276aab: shr    $0x3,%r10
  0.08%    0.13%  │   ││   0x00007f8821276aaf: mov    %r10d,0x2c(%rsp)
  0.53%    0.53%  │   ││   0x00007f8821276ab4: mov    0x60(%rsp),%r10d
  0.03%    0.06%  │   ││   0x00007f8821276ab9: mov    0x38(%rsp),%edi
  0.08%    0.06%  │   ││   0x00007f8821276abd: mov    %ebx,0x38(%rsp)
  0.08%    0.14%  │   ││   0x00007f8821276ac1: mov    0x18(%rsp),%rbx
  0.41%    0.58%  │   ││   0x00007f8821276ac6: mov    %rbx,0x20(%rsp)
  0.03%    0.05%  │   ││   0x00007f8821276acb: mov    0x30(%rsp),%ebx
  0.07%    0.07%  │   ││   0x00007f8821276acf: mov    %ebx,0x28(%rsp)
  0.06%    0.07%  │   ││   0x00007f8821276ad3: mov    %ecx,0x30(%rsp)
  0.45%    0.66%  │   ││   0x00007f8821276ad7: mov    %r8d,0x74(%rsp)    ;*getfield matchcap
                  │   ││                                                 ; - com.google.re2j.Machine::match@311 (line 245)
  0.05%    0.06%  ↘   ││   0x00007f8821276adc: mov    0x2c(%rsp),%r8d
  0.08%    0.10%      ││   0x00007f8821276ae1: movzbl 0x18(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f8821278675
  0.10%    0.08%      ││   0x00007f8821276ae7: shl    $0x3,%r8           ;*aload
                      ││                                                 ; - com.google.re2j.Machine::match@145 (line 213)
  0.44%    0.59%      ││   0x00007f8821276aeb: mov    %r8,0x18(%rsp)
  0.05%    0.01%      ││   0x00007f8821276af0: test   %ecx,%ecx
                      ││   0x00007f8821276af2: jne    0x00007f8821276d76  ;*iload_3
                      ││                                                 ; - com.google.re2j.Machine::match@276 (line 239)
  0.09%    0.12%      ││   0x00007f8821276af8: test   %eax,%eax
                      ││   0x00007f8821276afa: jne    0x00007f88212773ed  ;*ifne
                      ││                                                 ; - com.google.re2j.Machine::match@288 (line 239)
  0.08%    0.12%      ││   0x00007f8821276b00: test   %r9d,%r9d
                      ││   0x00007f8821276b03: jne    0x00007f882127751d  ;*ifeq
                      ││                                                 ; - com.google.re2j.Machine::match@295 (line 242)
  0.49%    0.59%      ││   0x00007f8821276b09: mov    0x58(%rsp),%r10
  0.07%    0.03%      ││   0x00007f8821276b0e: mov    0x18(%r10),%r8d    ;*getfield pc
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.09%      ││   0x00007f8821276b12: cmp    $0x40,%r8d
                      ││   0x00007f8821276b16: jg     0x00007f8821277571  ;*if_icmpgt
                      ││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.09%      ││   0x00007f8821276b1c: mov    0x2c(%rsp),%r10d
  0.49%    0.44%      ││   0x00007f8821276b21: mov    0x10(%r12,%r10,8),%r10  ;*getfield pcsl
                      ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.08%      ││   0x00007f8821276b26: mov    $0x1,%ebx
  0.06%    0.06%      ││   0x00007f8821276b2b: mov    %r8d,%ecx
  0.13%    0.12%      ││   0x00007f8821276b2e: shl    %cl,%rbx           ;*lshl
                      ││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.66%    0.59%      ││   0x00007f8821276b31: mov    %r10,%rcx
  0.10%    0.10%      ││   0x00007f8821276b34: and    %rbx,%rcx          ;*land
                      ││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.51%    0.53%      ││   0x00007f8821276b37: test   %rcx,%rcx
                      ││   0x00007f8821276b3a: jne    0x00007f88212775c1  ;*ifeq
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.06%      ││   0x00007f8821276b40: cmp    $0x40,%r8d
                      ││   0x00007f8821276b44: jge    0x00007f882127761d  ;*if_icmpge
                      ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.01%      ││   0x00007f8821276b4a: mov    0x2c(%rsp),%r11d
  0.07%    0.12%      ││   0x00007f8821276b4f: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                      ││                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.42%    0.34%      ││   0x00007f8821276b54: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                      ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.10%    0.07%      ││   0x00007f8821276b59: mov    0x2c(%rsp),%r8d
  0.11%    0.01%      ││   0x00007f8821276b5e: mov    0xc(%r12,%r8,8),%r8d  ;*getfield size
                      ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.08%      ││   0x00007f8821276b63: or     %r10,%rbx
  0.54%    0.31%      ││   0x00007f8821276b66: mov    0x2c(%rsp),%r9d
  0.04%    0.06%      ││   0x00007f8821276b6b: mov    %rbx,0x10(%r12,%r9,8)  ;*putfield pcsl
                      ││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.03%      ││   0x00007f8821276b70: mov    %r8d,%r10d
  0.07%    0.09%      ││   0x00007f8821276b73: inc    %r10d
  0.40%    0.24%      ││   0x00007f8821276b76: mov    %r10d,0xc(%r12,%r9,8)  ;*putfield size
                      ││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%      ││   0x00007f8821276b7b: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f8821278685
  0.17%    0.03%      ││   0x00007f8821276b80: cmp    %r10d,%r8d
                      ││   0x00007f8821276b83: jae    0x00007f8821277239
  0.24%    0.15%      ││   0x00007f8821276b89: mov    0x8(%r12,%r11,8),%r10d
  0.45%    0.29%      ││   0x00007f8821276b8e: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                      ││   0x00007f8821276b95: jne    0x00007f8821277315  ;*aastore
                      ││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                      ││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                      ││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.04%      ││   0x00007f8821276b9b: test   %edi,%edi
                   ╭  ││   0x00007f8821276b9d: jl     0x00007f8821276c48  ;*ifge
                   │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │  ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.12%    0.03%   │  ││   0x00007f8821276ba3: xor    %r9d,%r9d          ;*iload_0
                   │  ││                                                 ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │  ││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.13%    0.12%   │  ││↗  0x00007f8821276ba6: cmp    $0xa,%edi
                   │  │││  0x00007f8821276ba9: je     0x00007f8821277019  ;*iload_1
                   │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.42%    0.44%   │  │││  0x00007f8821276baf: mov    0x38(%rsp),%ecx
  0.04%    0.10%   │  │││  0x00007f8821276bb3: test   %ecx,%ecx
                   │  │││  0x00007f8821276bb5: jl     0x00007f8821276fc9  ;*iload_1
                   │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.10%   │  │││  0x00007f8821276bbb: cmp    $0xa,%ecx
                   │  │││  0x00007f8821276bbe: je     0x00007f8821277022  ;*iload_0
                   │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.09%   │  │││  0x00007f8821276bc4: mov    %edi,%r10d
  0.38%    0.33%   │  │││  0x00007f8821276bc7: add    $0xffffffbf,%r10d
  0.06%    0.06%   │  │││  0x00007f8821276bcb: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                   │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.10%   │  │││  0x00007f8821276bcf: lea    0x10(%r11,%r8,4),%r11
  0.17%    0.14%   │  │││  0x00007f8821276bd4: mov    0x14(%rsp),%ecx
  0.39%    0.33%   │  │││  0x00007f8821276bd8: mov    %ecx,(%r11)
  0.62%    0.64%   │  │││  0x00007f8821276bdb: shr    $0x9,%r11
  0.08%    0.05%   │  │││  0x00007f8821276bdf: movabs $0x7f8831d67000,%r8
  0.07%    0.08%   │  │││  0x00007f8821276be9: mov    %r12b,(%r8,%r11,1)  ;*aastore
                   │  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.82%    0.82%   │  │││  0x00007f8821276bed: cmp    $0x1a,%r10d
                   │╭ │││  0x00007f8821276bf1: jb     0x00007f8821276c04  ;*if_icmple
                   ││ │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.12%    0.14%   ││ │││  0x00007f8821276bf3: mov    %edi,%r11d
  0.05%    0.05%   ││ │││  0x00007f8821276bf6: add    $0xffffff9f,%r11d
  0.03%    0.04%   ││ │││  0x00007f8821276bfa: cmp    $0x1a,%r11d
                   ││ │││  0x00007f8821276bfe: jae    0x00007f882127716b  ;*iconst_1
                   ││ │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││ │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││ │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.39%    0.34%   │↘ │││  0x00007f8821276c04: mov    $0x1,%ebp          ;*ireturn
                   │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.12%    0.16%   │  │││  0x00007f8821276c09: mov    0x38(%rsp),%r10d
  0.03%    0.05%   │  │││  0x00007f8821276c0e: add    $0xffffffbf,%r10d
  0.09%    0.14%   │  │││  0x00007f8821276c12: cmp    $0x1a,%r10d
                   │ ╭│││  0x00007f8821276c16: jb     0x00007f8821276c2b  ;*if_icmple
                   │ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.34%    0.43%   │ ││││  0x00007f8821276c18: mov    0x38(%rsp),%r11d
  0.14%    0.16%   │ ││││  0x00007f8821276c1d: add    $0xffffff9f,%r11d
  0.04%    0.04%   │ ││││  0x00007f8821276c21: cmp    $0x1a,%r11d
                   │ ││││  0x00007f8821276c25: jae    0x00007f882127718c  ;*iconst_1
                   │ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.13%    0.14%   │ ↘│││  0x00007f8821276c2b: mov    $0x1,%r10d         ;*ireturn
                   │  │││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │  │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │  │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.43%    0.59%   │  │││  0x00007f8821276c31: cmp    %r10d,%ebp
                   │  ╰││  0x00007f8821276c34: je     0x00007f882127695b  ;*if_icmpeq
                   │   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │   ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.04%   │   ││  0x00007f8821276c3a: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │   ││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.05%   │   ││  0x00007f8821276c3e: mov    %r9d,0x60(%rsp)
  0.21%    0.14%   │   ╰│  0x00007f8821276c43: jmpq   0x00007f8821276964
           0.00%   ↘    │  0x00007f8821276c48: mov    $0x5,%r9d
                        ╰  0x00007f8821276c4e: jmpq   0x00007f8821276ba6
                           0x00007f8821276c53: nopw   0x0(%rax,%rax,1)
                           0x00007f8821276c5c: data16 data16 xchg %ax,%ax
  0.00%    0.00%           0x00007f8821276c60: mov    %ecx,0x68(%rsp)
  0.01%    0.00%           0x00007f8821276c64: jmpq   0x00007f8821276f0e
                           0x00007f8821276c69: mov    0x68(%rsp),%r8d
                           0x00007f8821276c6e: add    $0x2,%r8d
                           0x00007f8821276c72: mov    %r8d,0x68(%rsp)
                           0x00007f8821276c77: mov    0x68(%rsp),%r8d
                           0x00007f8821276c7c: inc    %r8d
                           0x00007f8821276c7f: mov    %r8d,0x64(%rsp)
                           0x00007f8821276c84: jmp    0x00007f8821276cb1
                           0x00007f8821276c86: mov    0x68(%rsp),%r8d
                           0x00007f8821276c8b: add    $0x2,%r8d
                           0x00007f8821276c8f: mov    %r8d,0x64(%rsp)
....................................................................................................
 29.99%   31.86%  <total for region 2>

....[Hottest Regions]...............................................................................
 45.77%   44.59%         C2, level 4  com.google.re2j.Machine::step, version 554 (942 bytes) 
 29.99%   31.86%         C2, level 4  com.google.re2j.Machine::match, version 603 (819 bytes) 
  8.72%    9.21%         C2, level 4  com.google.re2j.Machine::step, version 554 (339 bytes) 
  7.88%    8.03%         C2, level 4  com.google.re2j.Machine::step, version 554 (159 bytes) 
  1.93%    1.92%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.55%    1.68%         C2, level 4  com.google.re2j.Machine::match, version 603 (236 bytes) 
  0.32%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 606 (110 bytes) 
  0.26%    0.13%         C2, level 4  com.google.re2j.Machine::match, version 603 (239 bytes) 
  0.20%    0.15%         C2, level 4  com.google.re2j.Machine::match, version 603 (371 bytes) 
  0.18%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 606 (30 bytes) 
  0.15%    0.19%         C2, level 4  com.google.re2j.Machine::match, version 603 (336 bytes) 
  0.14%                  C2, level 4  com.google.re2j.RE2::match, version 606 (169 bytes) 
  0.13%    0.09%         C2, level 4  java.util.Collections::shuffle, version 617 (106 bytes) 
  0.12%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 606 (28 bytes) 
  0.11%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 606 (0 bytes) 
  0.11%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 606 (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.07%                  C2, level 4  com.google.re2j.RE2::match, version 606 (80 bytes) 
  0.07%    0.09%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 (139 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.15%    1.63%  <...other 373 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.37%   61.84%         C2, level 4  com.google.re2j.Machine::step, version 554 
 32.34%   34.11%         C2, level 4  com.google.re2j.Machine::match, version 603 
  2.75%    2.53%   [kernel.kallsyms]  [unknown] 
  1.17%    0.43%         C2, level 4  com.google.re2j.RE2::match, version 606 
  0.29%    0.13%         C2, level 4  java.util.Collections::shuffle, version 617 
  0.19%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 649 
  0.08%    0.09%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.02%      hsdis-amd64.so  [unknown] 
  0.05%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 615 
  0.05%                       [vdso]  __vdso_clock_gettime 
  0.04%                       [vdso]  [unknown] 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.03%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.01%           libjvm.so  Monitor::ILock 
  0.02%                    libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.02%    0.01%        libc-2.26.so  __clock_gettime 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.01%    0.04%           libjvm.so  fileStream::write 
  0.39%    0.25%  <...other 66 warm methods...>
....................................................................................................
100.00%   99.71%  <totals>

....[Distribution by Source]........................................................................
 96.42%   96.54%         C2, level 4
  2.75%    2.53%   [kernel.kallsyms]
  0.49%    0.53%           libjvm.so
  0.11%    0.28%        libc-2.26.so
  0.09%                       [vdso]
  0.06%    0.03%      hsdis-amd64.so
  0.03%    0.03%  libpthread-2.26.so
  0.03%    0.02%         interpreter
  0.00%    0.02%        runtime stub
  0.00%                  C1, level 1
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1       thrpt   20  27917.343 ± 459.622  ops/s
Re2jFindRegex.testExp1:·asm  thrpt             NaN              ---
