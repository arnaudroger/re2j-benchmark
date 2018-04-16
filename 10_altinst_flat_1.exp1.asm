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
# Warmup Iteration   1: 5512.860 ops/s
# Warmup Iteration   2: 17078.877 ops/s
# Warmup Iteration   3: 17558.088 ops/s
# Warmup Iteration   4: 18027.916 ops/s
# Warmup Iteration   5: 17559.230 ops/s
# Warmup Iteration   6: 17884.161 ops/s
# Warmup Iteration   7: 17994.837 ops/s
# Warmup Iteration   8: 17891.361 ops/s
# Warmup Iteration   9: 18178.340 ops/s
# Warmup Iteration  10: 18307.325 ops/s
# Warmup Iteration  11: 18162.886 ops/s
# Warmup Iteration  12: 18127.657 ops/s
# Warmup Iteration  13: 17988.782 ops/s
# Warmup Iteration  14: 18180.548 ops/s
# Warmup Iteration  15: 18166.669 ops/s
# Warmup Iteration  16: 18242.074 ops/s
# Warmup Iteration  17: 18015.134 ops/s
# Warmup Iteration  18: 18083.821 ops/s
# Warmup Iteration  19: 18354.541 ops/s
# Warmup Iteration  20: 18294.112 ops/s
Iteration   1: 18386.080 ops/s
Iteration   2: 18304.628 ops/s
Iteration   3: 18106.439 ops/s
Iteration   4: 17077.448 ops/s
Iteration   5: 18034.991 ops/s
Iteration   6: 18359.771 ops/s
Iteration   7: 18208.529 ops/s
Iteration   8: 18222.113 ops/s
Iteration   9: 18286.815 ops/s
Iteration  10: 17132.968 ops/s
Iteration  11: 18357.701 ops/s
Iteration  12: 18352.599 ops/s
Iteration  13: 18298.860 ops/s
Iteration  14: 18381.460 ops/s
Iteration  15: 18380.942 ops/s
Iteration  16: 17887.884 ops/s
Iteration  17: 18131.548 ops/s
Iteration  18: 18305.974 ops/s
Iteration  19: 18309.913 ops/s
Iteration  20: 18221.554 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp1":
  18137.411 ±(99.9%) 326.432 ops/s [Average]
  (min, avg, max) = (17077.448, 18137.411, 18386.080), stdev = 375.919
  CI (99.9%): [17810.979, 18463.843] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp1:·asm":
PrintAssembly processed: 212165 total address lines.
Perf output processed (skipped 23.819 seconds):
 Column 1: cycles (20479 events)
 Column 2: instructions (20455 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 556 (1396 bytes) 

                       0x00007f73d924a154: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f73d924a158: xor    %edi,%edi
                       0x00007f73d924a15a: mov    %r13d,%r8d
                       0x00007f73d924a15d: vmovd  %xmm1,%edx         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.03%    ↗  0x00007f73d924a161: mov    0xa4(%rsp),%r10d   ;*aload
                    │                                                ; - com.google.re2j.Machine::step@218 (line 302)
  1.47%    1.71%   ↗│  0x00007f73d924a169: test   %rdi,%rdi
                  ╭││  0x00007f73d924a16c: je     0x00007f73d924a1b8  ;*ifnull
                  │││                                                ; - com.google.re2j.Machine::step@220 (line 302)
  0.01%           │││  0x00007f73d924a16e: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
                  │││                                                ; implicit exception: dispatches to 0x00007f73d924b869
  0.11%    0.12%  │││  0x00007f73d924a173: cmp    %ebp,%r8d
                  │││  0x00007f73d924a176: jge    0x00007f73d924ab71  ;*if_icmplt
                  │││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.01%    0.06%  │││  0x00007f73d924a17c: mov    %r8d,%ecx
  1.33%    1.53%  │││  0x00007f73d924a17f: inc    %ecx
  0.00%           │││  0x00007f73d924a181: mov    0x20(%rsp),%r9
  0.09%    0.06%  │││  0x00007f73d924a186: mov    %ecx,0xc(%r9)      ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.03%    0.05%  │││  0x00007f73d924a18a: cmp    %ebp,%r8d
                  │││  0x00007f73d924a18d: jae    0x00007f73d924aa15  ;*aastore
                  │││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  1.26%    1.58%  │││  0x00007f73d924a193: mov    %rdi,%r9
                  │││  0x00007f73d924a196: shr    $0x3,%r9
  0.13%    0.07%  │││  0x00007f73d924a19a: lea    (%r12,%rdx,8),%rcx  ;*getfield pool
                  │││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                  │││                                                ; - com.google.re2j.Machine::step@226 (line 303)
  0.04%    0.07%  │││  0x00007f73d924a19e: lea    0x10(%rcx,%r8,4),%r8
  1.29%    1.49%  │││  0x00007f73d924a1a3: mov    %r9d,(%r8)
  0.02%    0.00%  │││  0x00007f73d924a1a6: shr    $0x9,%r8
  0.10%    0.11%  │││  0x00007f73d924a1aa: movabs $0x7f73e9a5c000,%r9
  0.03%    0.05%  │││  0x00007f73d924a1b4: mov    %r12b,(%r9,%r8,1)  ;*goto
                  │││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  1.60%    1.96%  ↘││  0x00007f73d924a1b8: mov    0x8(%rsp),%r8
                   ││  0x00007f73d924a1bd: mov    0xc(%r8),%r9d      ;*getfield size
                   ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.12%    0.10%   ││  0x00007f73d924a1c1: inc    %r10d              ; OopMap{r11=Oop [8]=Oop [32]=Oop off=484}
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
  0.20%    0.19%   ││  0x00007f73d924a1c4: test   %eax,0x17e09e36(%rip)        # 0x00007f73f1054000
                   ││                                                ;*goto
                   ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                   ││                                                ;   {poll}
  1.72%    1.66%   ││  0x00007f73d924a1ca: cmp    %r9d,%r10d
                   ││  0x00007f73d924a1cd: jge    0x00007f73d924a7fa
  0.00%            ││  0x00007f73d924a1d3: mov    %r11,%rcx          ;*aload_1
                   ││                                                ; - com.google.re2j.Machine::step@21 (line 278)
  0.18%    0.36%   ││  0x00007f73d924a1d6: mov    0x8(%rsp),%r11
  0.20%    0.21%   ││  0x00007f73d924a1db: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                   ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  1.45%    1.32%   ││  0x00007f73d924a1df: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f73d924b835
  1.71%    2.12%   ││  0x00007f73d924a1e4: cmp    %r9d,%r10d
                   ││  0x00007f73d924a1e7: jae    0x00007f73d924a982
  0.58%    0.54%   ││  0x00007f73d924a1ed: shl    $0x3,%r11
  0.19%    0.13%   ││  0x00007f73d924a1f1: mov    0x10(%r11,%r10,4),%r14d  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.10%    0.83%   ││  0x00007f73d924a1f6: mov    0x10(%r12,%r14,8),%r11d  ;*getfield inst
                   ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                   ││                                                ; implicit exception: dispatches to 0x00007f73d924b849
  2.98%    3.30%   ││  0x00007f73d924a1fb: mov    0xc(%r12,%r11,8),%ebp  ;*getfield op
                   ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
                   ││                                                ; implicit exception: dispatches to 0x00007f73d924b859
  6.08%    6.19%   ││  0x00007f73d924a200: cmp    $0x6,%ebp
                   ││  0x00007f73d924a203: je     0x00007f73d924aa71  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Machine::step@90 (line 285)
  1.78%    1.84%   ││  0x00007f73d924a209: mov    0x8(%r12,%r11,8),%r9d
  0.21%    0.10%   ││  0x00007f73d924a20e: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f73d924a215: jne    0x00007f73d924a9c9  ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  1.06%    0.85%   ││  0x00007f73d924a21b: mov    0x20(%rsp),%r8
  0.01%    0.03%   ││  0x00007f73d924a220: mov    0xc(%r8),%r8d      ;*getfield poolSize
                   ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.64%    0.85%   ││  0x00007f73d924a224: mov    0x20(%rsp),%r9
  0.12%    0.04%   ││  0x00007f73d924a229: mov    0x24(%r9),%edx     ;*getfield pool
                   ││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                   ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.02%    1.04%   ││  0x00007f73d924a22d: lea    (%r12,%r11,8),%r9  ;*invokevirtual matchRune
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.03%    0.01%   ││  0x00007f73d924a231: mov    0xc(%r9),%ebp      ;*getfield op
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.68%    0.76%   ││  0x00007f73d924a235: lea    (%r12,%r14,8),%rdi  ;*aaload
                   ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.17%    0.04%   ││  0x00007f73d924a239: cmp    $0xa,%ebp
                   ││  0x00007f73d924a23c: jne    0x00007f73d924a78e  ;*if_icmpne
                   ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                   ││                                                ; - com.google.re2j.Machine::step@189 (line 299)
  0.46%    0.21%   ││  0x00007f73d924a242: mov    0x1c(%r9),%ebx     ;*getfield outInst
                   ││                                                ; - com.google.re2j.Machine::step@197 (line 300)
  0.03%    0.02%   ││  0x00007f73d924a246: mov    0xc(%r12,%r14,8),%eax  ;*getfield cap
                   ││                                                ; - com.google.re2j.Machine::step@205 (line 300)
  0.05%    0.01%   ││  0x00007f73d924a24b: mov    0x8(%r12,%rbx,8),%r11d  ; implicit exception: dispatches to 0x00007f73d924b879
  0.88%    0.10%   ││  0x00007f73d924a250: lea    (%r12,%rbx,8),%r9
  0.00%    0.00%   ││  0x00007f73d924a254: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                   ││  0x00007f73d924a25b: jne    0x00007f73d924a836  ;*invokevirtual add
                   ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
  0.40%    0.12%   ││  0x00007f73d924a261: mov    0x18(%r9),%ebx     ;*getfield pc
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%            ││  0x00007f73d924a265: mov    %rcx,%r11
  0.01%            ││  0x00007f73d924a268: mov    0x10(%rcx),%rsi    ;*getfield pcsl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                   ││                                                ; implicit exception: dispatches to 0x00007f73d924b89d
                   ││  0x00007f73d924a26c: cmp    $0x40,%ebx
                   ││  0x00007f73d924a26f: jg     0x00007f73d924ad91  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.46%    0.58%   ││  0x00007f73d924a275: mov    %ebx,%ecx
                   ││  0x00007f73d924a277: mov    $0x1,%r13d
  0.01%            ││  0x00007f73d924a27d: shl    %cl,%r13           ;*lshl
                   ││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                   ││                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                   ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.95%            ││  0x00007f73d924a280: mov    %rsi,%rcx
                   ││  0x00007f73d924a283: and    %r13,%rcx
                   ││  0x00007f73d924a286: test   %rcx,%rcx
                   ╰│  0x00007f73d924a289: jne    0x00007f73d924a169  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.00%    │  0x00007f73d924a28f: cmp    $0x40,%ebx
                    │  0x00007f73d924a292: jge    0x00007f73d924add9  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.39%             │  0x00007f73d924a298: mov    %r12b,0x18(%r11)   ;*putfield empty
                    │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%             │  0x00007f73d924a29c: mov    0x1c(%r9),%ebp     ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f73d924a2a0: or     %rsi,%r13          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.01%    │  0x00007f73d924a2a3: vmovq  %r13,%xmm2
  0.38%    0.00%    │  0x00007f73d924a2a8: mov    %r13,0x10(%r11)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f73d924a2ac: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f73d924b8b1
  0.63%    0.14%    │  0x00007f73d924a2b1: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f73d924a2b7: jne    0x00007f73d924aaf5
  0.42%             │  0x00007f73d924a2bd: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f73d924a2c1: mov    0x18(%r13),%ebx    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.61%             │  0x00007f73d924a2c5: cmp    $0x40,%ebx
                    │  0x00007f73d924a2c8: jg     0x00007f73d924ae21  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.03%    │  0x00007f73d924a2ce: mov    $0x1,%esi
  0.00%             │  0x00007f73d924a2d3: mov    %ebx,%ecx
                    │  0x00007f73d924a2d5: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.95%    0.45%    │  0x00007f73d924a2d8: vmovq  %xmm2,%rcx
                    │  0x00007f73d924a2dd: and    %rsi,%rcx          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.01%    │  0x00007f73d924a2e0: test   %rcx,%rcx
                    │  0x00007f73d924a2e3: jne    0x00007f73d924a90b  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.09%    │  0x00007f73d924a2e9: vmovd  %ebx,%xmm3
  0.45%    0.41%    │  0x00007f73d924a2ed: mov    %r13,%rbx
                    │  0x00007f73d924a2f0: mov    %r9,%r13
                    │  0x00007f73d924a2f3: vmovd  %edx,%xmm1
  0.11%    0.14%    │  0x00007f73d924a2f7: vmovd  %r8d,%xmm0
  0.33%    0.45%    │  0x00007f73d924a2fc: mov    %r10d,0xa4(%rsp)
                    │  0x00007f73d924a304: mov    %r11,%r8
  0.01%             │  0x00007f73d924a307: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.11%    │  0x00007f73d924a309: test   %rcx,%rcx
                    │  0x00007f73d924a30c: jne    0x00007f73d924ae6d  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.41%    │  0x00007f73d924a312: vmovd  %xmm3,%r9d
                    │  0x00007f73d924a317: cmp    $0x40,%r9d
                    │  0x00007f73d924a31b: jge    0x00007f73d924aea9  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f73d924a321: vmovq  %xmm2,%rdx
  0.08%    0.06%    │  0x00007f73d924a326: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.12%    │  0x00007f73d924a329: mov    %r8,%rcx
                    │  0x00007f73d924a32c: mov    %rdx,0x10(%r8)     ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007f73d924a330: mov    %rdi,%r11
  0.09%    0.11%    │  0x00007f73d924a333: mov    %rbx,%r10
  0.31%    0.18%    │  0x00007f73d924a336: shr    $0x3,%r10
           0.00%    │  0x00007f73d924a33a: mov    %r14d,%r8d
                    │  0x00007f73d924a33d: mov    %r10d,0x10(%r12,%r14,8)
  0.11%    0.10%    │  0x00007f73d924a342: shr    $0x9,%r11
  0.34%    0.48%    │  0x00007f73d924a346: movabs $0x7f73e9a5c000,%r10
                    │  0x00007f73d924a350: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007f73d924a354: mov    0xc(%r12,%rax,8),%ebx  ;*arraylength
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f73d924b8d5
  0.11%    0.08%    │  0x00007f73d924a359: test   %ebx,%ebx
                    │  0x00007f73d924a35b: jg     0x00007f73d924aeed  ;*ifle
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.38%    0.44%    │  0x00007f73d924a361: mov    %ebx,0xac(%rsp)
                    │  0x00007f73d924a368: vmovd  %eax,%xmm2
  0.01%    0.01%    │  0x00007f73d924a36c: mov    %rcx,%r14
  0.10%    0.09%    │  0x00007f73d924a36f: mov    0xc(%rcx),%r10d    ;*getfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.35%    0.09%    │  0x00007f73d924a373: mov    %r10d,0x28(%rsp)
                    │  0x00007f73d924a378: mov    0x20(%rcx),%r10d   ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.00%    │  0x00007f73d924a37c: vmovd  %r10d,%xmm4
  0.10%    0.10%    │  0x00007f73d924a381: mov    0x28(%rsp),%r10d
  0.40%    0.39%    │  0x00007f73d924a386: inc    %r10d              ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │  0x00007f73d924a389: vmovd  %r10d,%xmm5
  0.01%             │  0x00007f73d924a38e: mov    %r10d,0xc(%rcx)    ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.07%    │  0x00007f73d924a392: vmovd  %xmm4,%r10d
  0.39%    0.41%    │  0x00007f73d924a397: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f73d924b8e5
                    │  0x00007f73d924a39c: mov    0x28(%rsp),%r11d
           0.01%    │  0x00007f73d924a3a1: cmp    %r10d,%r11d
                    │  0x00007f73d924a3a4: jae    0x00007f73d924aab9  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.03%    │  0x00007f73d924a3aa: mov    0x20(%r13),%r11d   ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.23%    │  0x00007f73d924a3ae: mov    %r11d,%ecx
                    │  0x00007f73d924a3b1: vmovd  %xmm4,%r11d
  0.00%    0.01%    │  0x00007f73d924a3b6: lea    (%r12,%r11,8),%rbx  ;*getfield denseThreads
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.04%    │  0x00007f73d924a3ba: mov    0x28(%rsp),%r11d
  0.31%    0.13%    │  0x00007f73d924a3bf: lea    0x10(%rbx,%r11,4),%r11
           0.00%    │  0x00007f73d924a3c4: mov    %r8d,(%r11)
  0.09%    0.05%    │  0x00007f73d924a3c7: shr    $0x9,%r11
  0.10%    0.05%    │  0x00007f73d924a3cb: movabs $0x7f73e9a5c000,%r8
  0.29%    0.23%    │  0x00007f73d924a3d5: mov    %r12b,(%r8,%r11,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f73d924a3d9: mov    %ecx,%r11d
  0.02%    0.01%    │  0x00007f73d924a3dc: mov    0x8(%r12,%r11,8),%r11d  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                    │                                                ; implicit exception: dispatches to 0x00007f73d924b901
  0.12%    0.02%    │  0x00007f73d924a3e1: movslq 0x28(%rsp),%r8
  0.36%    0.12%    │  0x00007f73d924a3e6: lea    (%rbx,%r8,4),%rdi  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.01%    │  0x00007f73d924a3ea: mov    %rdi,%r9
  0.01%    0.03%    │  0x00007f73d924a3ed: add    $0x14,%r9          ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.11%    0.06%    │  0x00007f73d924a3f1: vmovd  %xmm0,%r8d
  0.37%    0.15%    │  0x00007f73d924a3f6: dec    %r8d               ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%    │  0x00007f73d924a3f9: mov    %r8d,%r13d
  0.02%    0.02%    │  0x00007f73d924a3fc: lea    (%r12,%rcx,8),%rsi
  0.15%    0.12%    │  0x00007f73d924a400: mov    0x28(%rsp),%r8d
  0.34%    0.36%    │  0x00007f73d924a405: add    $0x2,%r8d          ;*iadd
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f73d924a409: cmp    $0xf8019887,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f73d924a410: jne    0x00007f73d924a074  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.01%    │  0x00007f73d924a416: mov    %rsi,%rax
  0.10%    0.00%    │  0x00007f73d924a419: mov    0x18(%rsi),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%             │  0x00007f73d924a41d: vmovd  %r11d,%xmm3
  0.02%    0.00%    │  0x00007f73d924a422: cmp    $0x40,%r11d
                    │  0x00007f73d924a426: jg     0x00007f73d924b18d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.01%    │  0x00007f73d924a42c: mov    $0x1,%esi
  0.09%    0.07%    │  0x00007f73d924a431: mov    %r11d,%ecx
  0.32%    0.45%    │  0x00007f73d924a434: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.18%    │  0x00007f73d924a437: mov    %rdx,%r11
  0.34%    0.41%    │  0x00007f73d924a43a: and    %rsi,%r11          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%    │  0x00007f73d924a43d: test   %r11,%r11
  0.01%    0.01%    │  0x00007f73d924a440: jne    0x00007f73d924a933  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.13%    │  0x00007f73d924a446: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.41%    │  0x00007f73d924a448: test   %r11,%r11
                    │  0x00007f73d924a44b: jne    0x00007f73d924b1c9  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 474)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.03%    │  0x00007f73d924a451: mov    %ecx,%r11d
  0.02%    0.02%    │  0x00007f73d924a454: cmp    $0x40,%r11d
                    │  0x00007f73d924a458: jge    0x00007f73d924b1f5  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.18%    │  0x00007f73d924a45e: mov    0x14(%rax),%ebp    ;*getfield arg
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.61%    │  0x00007f73d924a461: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f73d924a464: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 477)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │  0x00007f73d924a468: cmp    0xac(%rsp),%ebp
                    │  0x00007f73d924a46f: jl     0x00007f73d924b231  ;*if_icmpge
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 479)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.07%    │  0x00007f73d924a475: mov    0x1c(%rax),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.44%    │  0x00007f73d924a478: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f73d924b93d
  0.05%    0.04%    │  0x00007f73d924a47d: cmp    $0xf8019844,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    │  0x00007f73d924a484: jne    0x00007f73d924acfd
  0.02%    0.02%    │  0x00007f73d924a48a: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.07%    0.11%    │  0x00007f73d924a48e: vmovq  %r11,%xmm3
  0.32%    0.47%    │  0x00007f73d924a493: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%    │  0x00007f73d924a497: mov    %r11d,%ecx
  0.03%    0.01%    │  0x00007f73d924a49a: cmp    $0x40,%r11d
                    │  0x00007f73d924a49e: jg     0x00007f73d924b251  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.09%    0.10%    │  0x00007f73d924a4a4: mov    $0x1,%esi
  0.39%    0.33%    │  0x00007f73d924a4a9: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.17%    │  0x00007f73d924a4ac: mov    %rdx,%r11
  0.31%    0.49%    │  0x00007f73d924a4af: and    %rsi,%r11
  0.01%    0.01%    │  0x00007f73d924a4b2: test   %r11,%r11
                    │  0x00007f73d924a4b5: jne    0x00007f73d924a93d  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 188)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.00%    0.03%    │  0x00007f73d924a4bb: mov    %ecx,%r11d
  0.07%    0.13%    │  0x00007f73d924a4be: cmp    $0x40,%r11d
                    │  0x00007f73d924a4c2: jge    0x00007f73d924b365  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.48%    │  0x00007f73d924a4c8: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.02%    │  0x00007f73d924a4cb: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 191)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f73d924a4cf: vmovq  %xmm3,%r11
  0.06%    0.11%    │  0x00007f73d924a4d4: mov    0x1c(%r11),%ebp    ;*getfield outInst
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.31%    0.41%    │  0x00007f73d924a4d8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f73d924b96d
  0.05%    0.03%    │  0x00007f73d924a4dd: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f73d924a4e3: jne    0x00007f73d924ad55
  0.00%             │  0x00007f73d924a4e9: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.08%    │  0x00007f73d924a4ed: vmovq  %r11,%xmm6
  0.31%    0.44%    │  0x00007f73d924a4f2: mov    0x18(%r11),%r11d   ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.02%    │  0x00007f73d924a4f6: mov    %r11d,%ecx
           0.01%    │  0x00007f73d924a4f9: cmp    $0x40,%r11d
                    │  0x00007f73d924a4fd: jg     0x00007f73d924b3a1  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.08%    0.12%    │  0x00007f73d924a503: mov    $0x1,%esi
  0.32%    0.38%    │  0x00007f73d924a508: shl    %cl,%rsi           ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.17%    │  0x00007f73d924a50b: mov    %rdx,%r11
  0.34%    0.46%    │  0x00007f73d924a50e: and    %rsi,%r11          ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%    0.03%    │  0x00007f73d924a511: test   %r11,%r11
                    │  0x00007f73d924a514: jne    0x00007f73d924a95a  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.01%    │  0x00007f73d924a51a: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.12%    │  0x00007f73d924a51c: test   %r11,%r11
                    │  0x00007f73d924a51f: jne    0x00007f73d924b3e5  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.25%    0.33%    │  0x00007f73d924a525: mov    %ecx,%r11d
  0.02%    0.03%    │  0x00007f73d924a528: cmp    $0x40,%r11d
                    │  0x00007f73d924a52c: jge    0x00007f73d924b41d  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.00%    │  0x00007f73d924a532: or     %rsi,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.14%    │  0x00007f73d924a535: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.41%    │  0x00007f73d924a539: vmovd  %xmm0,%r11d
  0.01%    0.01%    │  0x00007f73d924a53e: test   %r11d,%r11d
                    │  0x00007f73d924a541: jle    0x00007f73d924b115  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.00%    │  0x00007f73d924a547: mov    0x20(%rsp),%rcx
  0.09%    0.12%    │  0x00007f73d924a54c: mov    %r13d,0xc(%rcx)    ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.37%    │  0x00007f73d924a550: vmovd  %xmm1,%r11d
  0.01%    0.03%    │  0x00007f73d924a555: mov    0xc(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f73d924b989
  0.01%    0.02%    │  0x00007f73d924a55a: cmp    %r11d,%r13d
                    │  0x00007f73d924a55d: jae    0x00007f73d924ac65
  0.07%    0.13%    │  0x00007f73d924a563: vmovd  %xmm1,%ecx
  0.31%    0.50%    │  0x00007f73d924a567: lea    (%r12,%rcx,8),%rax
  0.01%    0.02%    │  0x00007f73d924a56b: vmovd  %xmm0,%esi
  0.02%    0.03%    │  0x00007f73d924a56f: mov    0xc(%rax,%rsi,4),%ebp  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.14%    0.09%    │  0x00007f73d924a573: test   %ebp,%ebp
                    │  0x00007f73d924a575: je     0x00007f73d924acad  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.34%    0.42%    │  0x00007f73d924a57b: mov    %r8d,0xc(%r14)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%    │  0x00007f73d924a57f: lea    (%r12,%rbp,8),%rcx
  0.01%    0.02%    │  0x00007f73d924a583: vmovq  %xmm6,%rsi
  0.05%    0.04%    │  0x00007f73d924a588: shr    $0x3,%rsi
  0.39%    0.23%    │  0x00007f73d924a58c: mov    %esi,0x10(%r12,%rbp,8)
  0.03%    0.04%    │  0x00007f73d924a591: shr    $0x9,%rcx
  0.01%    0.03%    │  0x00007f73d924a595: movabs $0x7f73e9a5c000,%rsi
  0.08%    0.06%    │  0x00007f73d924a59f: mov    %r12b,(%rsi,%rcx,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.37%    0.47%    │  0x00007f73d924a5a3: cmp    %r10d,%r8d
                    │  0x00007f73d924a5a6: jae    0x00007f73d924acc1
  0.02%    0.02%    │  0x00007f73d924a5ac: mov    %ebp,(%r9)         ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%    │  0x00007f73d924a5af: vmovq  %xmm3,%r10
  0.12%    0.13%    │  0x00007f73d924a5b4: mov    0x20(%r10),%r10d   ;*getfield inst2
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@41 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.32%    0.65%    │  0x00007f73d924a5b8: vmovd  %r10d,%xmm3
  0.02%    0.03%    │  0x00007f73d924a5bd: mov    %r9,%r10
  0.01%    0.00%    │  0x00007f73d924a5c0: shr    $0x9,%r10
  0.05%    0.13%    │  0x00007f73d924a5c4: movabs $0x7f73e9a5c000,%r8
  0.40%    0.46%    │  0x00007f73d924a5ce: mov    %r12b,(%r8,%r10,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 193)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.03%    │  0x00007f73d924a5d2: vmovd  %xmm3,%r10d
  0.01%    0.02%    │  0x00007f73d924a5d7: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f73d924b99d
  0.16%    0.24%    │  0x00007f73d924a5dc: vmovd  %xmm3,%r8d
  0.39%    0.44%    │  0x00007f73d924a5e1: shl    $0x3,%r8
  0.01%    0.02%    │  0x00007f73d924a5e5: cmp    $0xf8019887,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    │  0x00007f73d924a5ec: je     0x00007f73d924a6da
  0.08%    0.06%    │  0x00007f73d924a5f2: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │  0x00007f73d924a5f9: jne    0x00007f73d924b159  ;*invokevirtual add
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.12%    │  0x00007f73d924a5ff: vmovq  %r8,%xmm3
  0.33%    0.33%    │  0x00007f73d924a604: mov    0x18(%r8),%r10d    ;*getfield pc
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.02%    │  0x00007f73d924a608: mov    %r10d,%ecx
  0.02%    0.01%    │  0x00007f73d924a60b: cmp    $0x40,%r10d
                    │  0x00007f73d924a60f: jg     0x00007f73d924b571  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.16%    0.15%    │  0x00007f73d924a615: mov    $0x1,%r8d
  0.31%    0.19%    │  0x00007f73d924a61b: shl    %cl,%r8            ;*lshl
                    │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.37%    │  0x00007f73d924a61e: mov    %rdx,%r10
  0.18%    0.34%    │  0x00007f73d924a621: and    %r8,%r10           ;*land
                    │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.02%    0.01%    │  0x00007f73d924a624: test   %r10,%r10
                    │  0x00007f73d924a627: jne    0x00007f73d924a96e  ;*ifeq
                    │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.32%    │  0x00007f73d924a62d: xor    %ebp,%ebp          ;*ireturn
                    │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.05%    0.08%    │  0x00007f73d924a62f: test   %r10,%r10
                    │  0x00007f73d924a632: jne    0x00007f73d924b5c1  ;*ifeq
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.33%    │  0x00007f73d924a638: mov    %ecx,%r10d
  0.01%    0.01%    │  0x00007f73d924a63b: cmp    $0x40,%r10d
                    │  0x00007f73d924a63f: jge    0x00007f73d924b605  ;*if_icmpge
                    │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.12%    0.17%    │  0x00007f73d924a645: or     %r8,%rdx
  0.03%    0.08%    │  0x00007f73d924a648: mov    %rdx,0x10(%r14)    ;*putfield pcsl
                    │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.26%    0.36%    │  0x00007f73d924a64c: test   %r13d,%r13d
                    │  0x00007f73d924a64f: jle    0x00007f73d924b461  ;*ifle
                    │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
           0.02%    │  0x00007f73d924a655: vmovd  %xmm0,%r8d
  0.09%    0.14%    │  0x00007f73d924a65a: add    $0xfffffffe,%r8d   ;*isub
                    │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.06%    0.07%    │  0x00007f73d924a65e: mov    0x20(%rsp),%r10
  0.29%    0.34%    │  0x00007f73d924a663: mov    %r8d,0xc(%r10)     ;*putfield poolSize
                    │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.03%    0.01%    │  0x00007f73d924a667: cmp    %r11d,%r8d
                    │  0x00007f73d924a66a: jae    0x00007f73d924b031
  0.12%    0.15%    │  0x00007f73d924a670: mov    0x10(%rax,%r8,4),%r9d  ;*aaload
                    │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.04%    0.06%    │  0x00007f73d924a675: test   %r9d,%r9d
                    │  0x00007f73d924a678: je     0x00007f73d924b08d  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.33%    0.20%    │  0x00007f73d924a67e: add    $0x18,%rdi
  0.01%    0.01%    │  0x00007f73d924a682: mov    %r9d,(%rdi)        ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.15%    0.18%    │  0x00007f73d924a685: lea    (%r12,%r9,8),%r10
  0.08%    0.08%    │  0x00007f73d924a689: mov    %rdi,%r11
  0.24%    0.44%    │  0x00007f73d924a68c: shr    $0x9,%r11
  0.01%    0.01%    │  0x00007f73d924a690: shr    $0x9,%r10
  0.12%    0.16%    │  0x00007f73d924a694: movabs $0x7f73e9a5c000,%rcx
  0.09%    0.14%    │  0x00007f73d924a69e: mov    %r12b,(%rcx,%r10,1)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.36%    0.50%    │  0x00007f73d924a6a2: movabs $0x7f73e9a5c000,%r10
  0.00%    0.00%    │  0x00007f73d924a6ac: mov    %r12b,(%r10,%r11,1)  ;*aastore
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.18%    │  0x00007f73d924a6b0: mov    0x28(%rsp),%ecx
  0.06%    0.09%    │  0x00007f73d924a6b4: add    $0x3,%ecx
  0.30%    0.39%    │  0x00007f73d924a6b7: mov    %r14,%r11
  0.01%    0.01%    │  0x00007f73d924a6ba: mov    %ecx,0xc(%r11)     ;*putfield size
                    │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.13%    0.17%    │  0x00007f73d924a6be: vmovq  %xmm3,%r10
  0.08%    0.07%    │  0x00007f73d924a6c3: mov    %r10,%rcx
  0.27%    0.39%    │  0x00007f73d924a6c6: shr    $0x3,%rcx
  0.01%    0.02%    │  0x00007f73d924a6ca: mov    %ecx,0x10(%r12,%r9,8)  ;*putfield inst
                    │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                    │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                    │                                                ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                    │                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.10%    0.16%    │  0x00007f73d924a6cf: xor    %edi,%edi
  0.06%    0.05%    │  0x00007f73d924a6d1: vmovd  %xmm1,%edx
  0.30%    0.27%    ╰  0x00007f73d924a6d5: jmpq   0x00007f73d924a161  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@53 (line 194)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
                       0x00007f73d924a6da: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@2 (line 474)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Inst$CaptureInst::add@87 (line 485)
                                                                     ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 188)
                                                                     ; - com.google.re2j.Machine::step@-1 (line 276)
....................................................................................................
 61.96%   60.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 601 (1202 bytes) 

                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 189)
                               0x00007f73d926f795: cmp    $0xd800,%r10d
                               0x00007f73d926f79c: jge    0x00007f73d9270ef1  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@60 (line 189)
           0.00%               0x00007f73d926f7a2: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@60 (line 189)
                               0x00007f73d926f7a6: mov    %r10d,%r11d
                               0x00007f73d926f7a9: and    $0x7,%r11d
                               0x00007f73d926f7ad: or     $0x1,%r10d
  0.01%                        0x00007f73d926f7b1: mov    %r10d,%ebp
                               0x00007f73d926f7b4: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@60 (line 189)
                               0x00007f73d926f7b8: mov    %r11d,0x28(%rsp)
  0.00%    0.00%               0x00007f73d926f7bd: mov    %r10d,%edi
                               0x00007f73d926f7c0: sar    $0x3,%edi          ;*ishr
                                                                             ; - com.google.re2j.Machine::match@68 (line 190)
                               0x00007f73d926f7c3: cmp    $0xfffffff8,%r10d
                               0x00007f73d926f7c7: je     0x00007f73d9270add  ;*if_icmpeq
                                                                             ; - com.google.re2j.Machine::match@88 (line 194)
                               0x00007f73d926f7cd: vmovd  %xmm0,%r10d
           0.01%               0x00007f73d926f7d2: add    %r11d,%r10d
                               0x00007f73d926f7d5: add    %ebx,%r10d         ;*iadd
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
                               0x00007f73d926f7d8: vmovd  %r10d,%xmm1
           0.00%               0x00007f73d926f7dd: cmp    0x64(%rsp),%r10d
                               0x00007f73d926f7e2: jge    0x00007f73d92701ba  ;*if_icmpge
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
                               0x00007f73d926f7e8: test   %r10d,%r10d
                               0x00007f73d926f7eb: jl     0x00007f73d9270d7d  ;*iflt
                                                                             ; - java.lang.String::charAt@1 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%                        0x00007f73d926f7f1: cmp    %r13d,%r10d
                               0x00007f73d926f7f4: jge    0x00007f73d9270f41  ;*if_icmplt
                                                                             ; - java.lang.String::charAt@10 (line 657)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.00%               0x00007f73d926f7fa: cmp    %r13d,%r10d
                               0x00007f73d926f7fd: jae    0x00007f73d9270b81
  0.00%    0.01%               0x00007f73d926f803: movzwl 0x10(%r8,%r10,2),%r10d  ;*caload
                                                                             ; - java.lang.String::charAt@27 (line 660)
                                                                             ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%                        0x00007f73d926f809: cmp    $0xd800,%r10d
                               0x00007f73d926f810: jge    0x00007f73d9270fa5  ;*if_icmplt
                                                                             ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                             ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
                               0x00007f73d926f816: shl    $0x3,%r10d         ;*ishl
                                                                             ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
                               0x00007f73d926f81a: mov    %r10d,%r11d
                               0x00007f73d926f81d: or     $0x1,%r11d
  0.00%                        0x00007f73d926f821: and    $0x7,%r10d
                               0x00007f73d926f825: sar    $0x3,%r11d         ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 196)
           0.00%               0x00007f73d926f829: mov    %r11d,0x2c(%rsp)
  0.01%    0.00%               0x00007f73d926f82e: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                             ; - com.google.re2j.Machine::match@96 (line 195)
                               0x00007f73d926f832: mov    %r10d,0x30(%rsp)   ;*ishr
                                                                             ; - com.google.re2j.Machine::match@104 (line 196)
  0.01%    0.00%               0x00007f73d926f837: vmovd  %xmm0,%r10d
                               0x00007f73d926f83c: test   %r10d,%r10d
                               0x00007f73d926f83f: jne    0x00007f73d9270d29  ;*ifne
                                                                             ; - com.google.re2j.Machine::match@115 (line 200)
                               0x00007f73d926f845: test   %edi,%edi
                               0x00007f73d926f847: jl     0x00007f73d9270199  ;*ifge
                                                                             ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007f73d926f84d: mov    $0x5,%r10d         ;*iload_1
                                                                             ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
           0.00%               0x00007f73d926f853: cmp    $0xa,%edi
                               0x00007f73d926f856: je     0x00007f73d92701b1  ;*iload_0
                                                                             ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
                               0x00007f73d926f85c: mov    %edi,%r8d
                               0x00007f73d926f85f: add    $0xffffffbf,%r8d
                               0x00007f73d926f863: cmp    $0x1a,%r8d
                  ╭            0x00007f73d926f867: jb     0x00007f73d926f87a  ;*if_icmple
                  │                                                          ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%  │            0x00007f73d926f869: mov    %edi,%r11d
                  │            0x00007f73d926f86c: add    $0xffffff9f,%r11d
                  │            0x00007f73d926f870: cmp    $0x1a,%r11d
                  │            0x00007f73d926f874: jae    0x00007f73d92701d2  ;*iconst_1
                  │                                                          ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                          ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%  ↘            0x00007f73d926f87a: or     $0x10,%r10d        ;*iload_2
                                                                             ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                             ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%               0x00007f73d926f87e: mov    0x40(%rsp),%r11
  0.01%                        0x00007f73d926f883: mov    0x24(%r11),%r13d   ;*getfield pool
                                                                             ; - com.google.re2j.Machine::alloc@18 (line 134)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                        0x00007f73d926f887: mov    0xc(%r11),%r8d     ;*getfield poolSize
                                                                             ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                             ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                             ; - com.google.re2j.Machine::match@315 (line 239)
                               0x00007f73d926f88b: mov    %rcx,%r11
                               0x00007f73d926f88e: shl    $0x3,%r11          ;*getfield q1
                                                                             ; - com.google.re2j.Machine::match@53 (line 188)
                               0x00007f73d926f892: mov    %r11,0x20(%rsp)
  0.00%                        0x00007f73d926f897: xor    %r11d,%r11d
                               0x00007f73d926f89a: mov    $0x1,%ecx
  0.00%                        0x00007f73d926f89f: xor    %eax,%eax
                               0x00007f73d926f8a1: mov    %ecx,0x14(%rsp)
                               0x00007f73d926f8a5: mov    %eax,0x60(%rsp)
                   ╭           0x00007f73d926f8a9: jmpq   0x00007f73d926fa31
  0.07%    0.10%   │     ↗     0x00007f73d926f8ae: or     $0x20,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │     │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.03%   │     │     0x00007f73d926f8b1: mov    %ebx,0x4c(%rsp)    ;*iload_2
                   │     │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │     │                                                   ; - com.google.re2j.Machine::match@323 (line 241)
  0.15%    0.11%   │     │↗    0x00007f73d926f8b5: mov    0x60(%rsp),%r10d
  0.22%    0.02%   │     ││    0x00007f73d926f8ba: cmp    0x64(%rsp),%r10d
                   │     ││    0x00007f73d926f8bf: je     0x00007f73d92700fb  ;*if_icmpne
                   │     ││                                                  ; - com.google.re2j.Machine::match@348 (line 242)
  0.16%    0.18%   │     ││    0x00007f73d926f8c5: xor    %ebx,%ebx          ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
  0.06%    0.09%   │     ││    0x00007f73d926f8c7: mov    %rax,-0x8(%rsp)
  0.11%    0.12%   │     ││    0x00007f73d926f8cc: mov    0x60(%rsp),%eax
  0.23%    0.27%   │     ││    0x00007f73d926f8d0: mov    %eax,0x38(%rsp)
  0.23%    0.17%   │     ││    0x00007f73d926f8d4: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │     ││                                                  ; - com.google.re2j.Machine::match@345 (line 242)
  0.73%    0.45%   │     ││    0x00007f73d926f8d9: add    0x28(%rsp),%r10d   ;*iadd
                   │     ││                                                  ; - com.google.re2j.Machine::match@337 (line 242)
  0.05%    0.05%   │     ││    0x00007f73d926f8de: mov    %r10d,0x60(%rsp)
  0.32%    0.40%   │     ││    0x00007f73d926f8e3: mov    0x40(%rsp),%rsi
  0.04%    0.09%   │     ││    0x00007f73d926f8e8: mov    0x18(%rsp),%rdx
  0.14%    0.06%   │     ││    0x00007f73d926f8ed: mov    0x20(%rsp),%rcx
  0.03%    0.03%   │     ││    0x00007f73d926f8f2: mov    0x38(%rsp),%r8d
  0.37%    0.42%   │     ││    0x00007f73d926f8f7: mov    %r10d,%r9d
  0.03%    0.05%   │     ││    0x00007f73d926f8fa: mov    0x4c(%rsp),%r10d
  0.11%    0.09%   │     ││    0x00007f73d926f8ff: mov    %r10d,(%rsp)
  0.06%    0.05%   │     ││    0x00007f73d926f903: mov    0x3c(%rsp),%r10d
  0.27%    0.23%   │     ││    0x00007f73d926f908: mov    %r10d,0x8(%rsp)
  0.06%    0.04%   │     ││    0x00007f73d926f90d: mov    %ebx,0x10(%rsp)
  0.05%    0.10%   │     ││    0x00007f73d926f911: xchg   %ax,%ax
  0.02%    0.06%   │     ││    0x00007f73d926f913: callq  0x00007f73d9046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [80]=Oop off=664}
                   │     ││                                                  ;*invokespecial step
                   │     ││                                                  ; - com.google.re2j.Machine::match@356 (line 242)
                   │     ││                                                  ;   {optimized virtual_call}
                   │     ││    0x00007f73d926f918: mov    0x40(%rsp),%r10
  0.47%    0.36%   │     ││    0x00007f73d926f91d: mov    0x24(%r10),%r13d   ;*getfield pool
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@1 (line 156)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
  0.00%    0.02%   │     ││    0x00007f73d926f921: mov    0xc(%r10),%r8d     ;*getfield poolSize
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@8 (line 157)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │     ││                                                  ; - com.google.re2j.Machine::freeQueue@3 (line 144)
                   │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 263)
           0.00%   │     ││    0x00007f73d926f925: mov    0x28(%rsp),%r10d
                   │     ││    0x00007f73d926f92a: test   %r10d,%r10d
                   │     ││    0x00007f73d926f92d: je     0x00007f73d927003c  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@361 (line 243)
  0.55%    0.38%   │     ││    0x00007f73d926f933: mov    0x40(%rsp),%r11
  0.00%            │     ││    0x00007f73d926f938: mov    0x28(%r11),%r14d   ;*getfield matchcap
                   │     ││                                                  ; - com.google.re2j.Machine::match@368 (line 246)
                   │     ││    0x00007f73d926f93c: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │     ││                                                  ; - com.google.re2j.Machine::match@371 (line 246)
                   │     ││                                                  ; implicit exception: dispatches to 0x00007f73d9271685
  0.03%    0.04%   │     ││    0x00007f73d926f941: test   %ebp,%ebp
                   │     ││    0x00007f73d926f943: jne    0x00007f73d927053d  ;*ifne
                   │     ││                                                  ; - com.google.re2j.Machine::match@372 (line 246)
  0.44%    0.31%   │     ││    0x00007f73d926f949: movzbl 0x10(%r11),%r11d   ;*getfield matched
                   │     ││                                                  ; - com.google.re2j.Machine::match@376 (line 246)
                   │     ││    0x00007f73d926f94e: test   %r11d,%r11d
                   │     ││    0x00007f73d926f951: jne    0x00007f73d9270789  ;*ifeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@379 (line 246)
                   │     ││    0x00007f73d926f957: mov    0x50(%rsp),%r10
                   │     ││    0x00007f73d926f95c: mov    0x10(%r10),%r10d   ;*getfield end
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.45%    0.33%   │     ││    0x00007f73d926f960: mov    %r10d,0x64(%rsp)
                   │     ││    0x00007f73d926f965: mov    0x50(%rsp),%r10
                   │     ││    0x00007f73d926f96a: mov    0xc(%r10),%ebx     ;*getfield start
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.01%   │     ││    0x00007f73d926f96e: mov    0x14(%r10),%r9d    ;*getfield str
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.45%    0.83%   │     ││    0x00007f73d926f972: mov    0x2c(%rsp),%ecx
                   │     ││    0x00007f73d926f976: cmp    $0xffffffff,%ecx
                   │     ││    0x00007f73d926f979: je     0x00007f73d9270105  ;*if_icmpeq
                   │     ││                                                  ; - com.google.re2j.Machine::match@401 (line 254)
                   │     ││    0x00007f73d926f97f: mov    0x30(%rsp),%ecx
                   │     ││    0x00007f73d926f983: add    0x60(%rsp),%ecx
  0.51%    0.50%   │     ││    0x00007f73d926f987: add    %ebx,%ecx          ;*iadd
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
           0.00%   │     ││    0x00007f73d926f989: cmp    0x64(%rsp),%ecx
                   │     ││    0x00007f73d926f98d: jge    0x00007f73d9270113  ;*if_icmpge
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.04%    0.08%   │     ││    0x00007f73d926f993: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f73d9271695
  0.01%    0.01%   │     ││    0x00007f73d926f998: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │     ││    0x00007f73d926f99f: jne    0x00007f73d92703d9
  0.44%    0.70%   │     ││    0x00007f73d926f9a5: lea    (%r12,%r9,8),%rdi  ;*invokeinterface charAt
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │     ││    0x00007f73d926f9a9: test   %ecx,%ecx
                   │     ││    0x00007f73d926f9ab: jl     0x00007f73d9270591  ;*iflt
                   │     ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.02%    0.01%   │     ││    0x00007f73d926f9b1: mov    0xc(%rdi),%r10d    ;*getfield value
                   │     ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.00%            │     ││    0x00007f73d926f9b5: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │     ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
                   │     ││                                                  ; implicit exception: dispatches to 0x00007f73d92716a9
  0.74%    0.77%   │     ││    0x00007f73d926f9ba: cmp    %ebp,%ecx
                   │     ││    0x00007f73d926f9bc: jge    0x00007f73d92707dd  ;*if_icmplt
                   │     ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.24%    0.47%   │     ││    0x00007f73d926f9c2: cmp    %ebp,%ecx
                   │     ││    0x00007f73d926f9c4: jae    0x00007f73d92702fd
  0.13%    0.20%   │     ││    0x00007f73d926f9ca: shl    $0x3,%r10
                   │     ││    0x00007f73d926f9ce: movzwl 0x10(%r10,%rcx,2),%eax  ;*caload
                   │     ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.21%    0.30%   │     ││    0x00007f73d926f9d4: cmp    $0xd800,%eax
                   │     ││    0x00007f73d926f9da: jge    0x00007f73d9270855  ;*if_icmplt
                   │     ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │     ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.24%    0.42%   │     ││    0x00007f73d926f9e0: shl    $0x3,%eax          ;*ishl
                   │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │     ││                                                  ; - com.google.re2j.Machine::match@409 (line 255)
  0.06%    0.08%   │     ││    0x00007f73d926f9e3: mov    %eax,%edx
                   │     ││    0x00007f73d926f9e5: or     $0x1,%edx
  0.25%    0.52%   │     ││    0x00007f73d926f9e8: and    $0x7,%eax
  0.12%    0.13%   │     ││    0x00007f73d926f9eb: sar    $0x3,%edx          ;*ishr
                   │     ││                                                  ; - com.google.re2j.Machine::match@417 (line 256)
  0.25%    0.33%   │     ││    0x00007f73d926f9ee: or     $0x1,%eax          ; OopMap{r9=NarrowOop r13=NarrowOop r14=NarrowOop [24]=Oop [32]=Oop [64]=Oop [80]=Oop off=881}
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
  0.01%    0.00%   │     ││    0x00007f73d926f9f1: test   %eax,0x17de4609(%rip)        # 0x00007f73f1054000
                   │     ││                                                  ;*goto
                   │     ││                                                  ; - com.google.re2j.Machine::match@439 (line 262)
                   │     ││                                                  ;   {poll}
  0.37%    0.59%   │     ││    0x00007f73d926f9f7: mov    0x40(%rsp),%r10
  0.00%    0.02%   │     ││    0x00007f73d926f9fc: mov    0x14(%r10),%esi    ;*getfield re2
                   │     ││                                                  ; - com.google.re2j.Machine::match@169 (line 216)
  0.01%    0.01%   │     ││    0x00007f73d926fa00: mov    0x20(%rsp),%r10
                   │     ││    0x00007f73d926fa05: shr    $0x3,%r10
  0.40%    0.54%   │     ││    0x00007f73d926fa09: mov    %r10d,0x34(%rsp)
           0.02%   │     ││    0x00007f73d926fa0e: mov    0x4c(%rsp),%r10d
           0.02%   │     ││    0x00007f73d926fa13: mov    0x2c(%rsp),%edi
                   │     ││    0x00007f73d926fa17: mov    %edx,0x2c(%rsp)
  0.42%    0.50%   │     ││    0x00007f73d926fa1b: mov    0x18(%rsp),%rcx
  0.03%    0.00%   │     ││    0x00007f73d926fa20: mov    %rcx,0x20(%rsp)
  0.01%    0.00%   │     ││    0x00007f73d926fa25: mov    0x30(%rsp),%ecx
                   │     ││    0x00007f73d926fa29: mov    %ecx,0x28(%rsp)
  0.46%    0.53%   │     ││    0x00007f73d926fa2d: mov    %eax,0x30(%rsp)
  0.01%    0.00%   ↘     ││    0x00007f73d926fa31: mov    0x34(%rsp),%edx
  0.01%    0.01%         ││    0x00007f73d926fa35: movzbl 0x18(%r12,%rdx,8),%edx  ; implicit exception: dispatches to 0x00007f73d9271611
  0.03%    0.03%         ││    0x00007f73d926fa3b: mov    0x34(%rsp),%eax
  0.51%    0.48%         ││    0x00007f73d926fa3f: lea    (%r12,%rax,8),%rcx  ;*aload
                         ││                                                  ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.01%         ││    0x00007f73d926fa43: mov    %rcx,0x18(%rsp)
  0.02%    0.02%         ││    0x00007f73d926fa48: test   %edx,%edx
                         ││    0x00007f73d926fa4a: jne    0x00007f73d926fcf9  ;*aload_0
                         ││                                                  ; - com.google.re2j.Machine::match@267 (line 233)
                         ││    0x00007f73d926fa50: test   %r11d,%r11d
                         ││    0x00007f73d926fa53: jne    0x00007f73d9270441  ;*ifne
                         ││                                                  ; - com.google.re2j.Machine::match@271 (line 233)
  0.46%    0.52%         ││    0x00007f73d926fa59: mov    0x60(%rsp),%r9d
  0.01%    0.01%         ││    0x00007f73d926fa5e: test   %r9d,%r9d
                    ╭    ││    0x00007f73d926fa61: je     0x00007f73d926fa71  ;*ifeq
                    │    ││                                                  ; - com.google.re2j.Machine::match@275 (line 233)
  0.00%    0.01%    │    ││    0x00007f73d926fa63: mov    0x3c(%rsp),%r11d
  0.01%             │    ││    0x00007f73d926fa68: test   %r11d,%r11d
                    │    ││    0x00007f73d926fa6b: jne    0x00007f73d92704ed  ;*aload_0
                    │    ││                                                  ; - com.google.re2j.Machine::match@282 (line 236)
  0.44%    0.57%    ↘    ││    0x00007f73d926fa71: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                         ││                                                  ; - com.google.re2j.Machine::match@286 (line 236)
                         ││                                                  ; implicit exception: dispatches to 0x00007f73d9271621
  0.01%    0.02%         ││    0x00007f73d926fa76: test   %ebp,%ebp
                         ││    0x00007f73d926fa78: jg     0x00007f73d927060d  ;*ifle
                         ││                                                  ; - com.google.re2j.Machine::match@287 (line 236)
           0.03%         ││    0x00007f73d926fa7e: mov    0x40(%rsp),%r11
  0.01%    0.00%         ││    0x00007f73d926fa83: mov    0x18(%r11),%r11d   ;*getfield prog
                         ││                                                  ; - com.google.re2j.Machine::match@298 (line 239)
  0.42%    0.47%         ││    0x00007f73d926fa87: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                         ││                                                  ; - com.google.re2j.Machine::match@301 (line 239)
                         ││                                                  ; implicit exception: dispatches to 0x00007f73d9271631
  0.02%    0.02%         ││    0x00007f73d926fa8c: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f73d9271641
  0.35%    0.54%         ││    0x00007f73d926fa91: cmp    $0xf8019993,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         ││    0x00007f73d926fa98: jne    0x00007f73d927037d
  0.40%    0.61%         ││    0x00007f73d926fa9e: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.07%         ││    0x00007f73d926faa2: mov    0x18(%rbx),%r11d   ;*getfield pc
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%         ││    0x00007f73d926faa6: cmp    $0x40,%r11d
                         ││    0x00007f73d926faaa: jg     0x00007f73d9270661  ;*if_icmpgt
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.47%    0.45%         ││    0x00007f73d926fab0: mov    $0x1,%edx
  0.01%    0.01%         ││    0x00007f73d926fab5: mov    %r11d,%ecx
  0.04%    0.04%         ││    0x00007f73d926fab8: shl    %cl,%rdx           ;*lshl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.79%    0.95%         ││    0x00007f73d926fabb: mov    0x34(%rsp),%r10d
  0.03%    0.03%         ││    0x00007f73d926fac0: mov    0x10(%r12,%r10,8),%r9  ;*getfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
                         ││    0x00007f73d926fac5: mov    %r9,%r10
           0.00%         ││    0x00007f73d926fac8: and    %rdx,%r10          ;*land
                         ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.39%    0.34%         ││    0x00007f73d926facb: test   %r10,%r10
                         ││    0x00007f73d926face: jne    0x00007f73d92706b5  ;*ifeq
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.01%         ││    0x00007f73d926fad4: cmp    $0x40,%r11d
                         ││    0x00007f73d926fad8: jge    0x00007f73d9270735  ;*if_icmpge
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%         ││    0x00007f73d926fade: mov    0x34(%rsp),%r10d
                         ││    0x00007f73d926fae3: mov    %r12b,0x18(%r12,%r10,8)  ;*putfield empty
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.40%    0.50%         ││    0x00007f73d926fae8: or     %r9,%rdx
  0.02%    0.02%         ││    0x00007f73d926faeb: mov    %rdx,0x10(%r12,%r10,8)  ;*putfield pcsl
                         ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%         ││    0x00007f73d926faf0: test   %r8d,%r8d
                         ││    0x00007f73d926faf3: jle    0x00007f73d9270495  ;*ifle
                         ││                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                  ││    0x00007f73d926faf9: mov    %r8d,%ebp
  0.43%    0.44%         ││    0x00007f73d926fafc: dec    %ebp               ;*isub
                         ││                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.04%         ││    0x00007f73d926fafe: mov    0x40(%rsp),%r10
                         ││    0x00007f73d926fb03: mov    %ebp,0xc(%r10)     ;*putfield poolSize
                         ││                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%         ││    0x00007f73d926fb07: mov    0xc(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007f73d927165d
  0.37%    0.38%         ││    0x00007f73d926fb0c: cmp    %r10d,%ebp
                         ││    0x00007f73d926fb0f: jae    0x00007f73d927021d
  0.04%    0.05%         ││    0x00007f73d926fb15: lea    (%r12,%r13,8),%r10
  0.00%                  ││    0x00007f73d926fb19: mov    0xc(%r10,%r8,4),%r8d  ;*aaload
                         ││                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%         ││    0x00007f73d926fb1e: test   %r8d,%r8d
                         ││    0x00007f73d926fb21: je     0x00007f73d9270271  ;*putfield inst
                         ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.42%    0.41%         ││    0x00007f73d926fb27: mov    0x34(%rsp),%r10d
  0.03%    0.02%         ││    0x00007f73d926fb2c: mov    0x20(%r12,%r10,8),%r9d  ;*getfield denseThreads
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.00%         ││    0x00007f73d926fb31: mov    0xc(%r12,%r10,8),%ecx  ;*getfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%         ││    0x00007f73d926fb36: lea    (%r12,%r8,8),%r10
  0.48%    0.41%         ││    0x00007f73d926fb3a: mov    %ecx,%r11d
  0.02%    0.04%         ││    0x00007f73d926fb3d: inc    %r11d
  0.00%    0.00%         ││    0x00007f73d926fb40: mov    0x34(%rsp),%esi
  0.00%                  ││    0x00007f73d926fb44: mov    %r11d,0xc(%r12,%rsi,8)  ;*putfield size
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.47%    0.52%         ││    0x00007f73d926fb49: mov    %r10,%r11
  0.02%    0.04%         ││    0x00007f73d926fb4c: mov    %rbx,%r10
           0.00%         ││    0x00007f73d926fb4f: shr    $0x3,%r10
  0.00%                  ││    0x00007f73d926fb53: mov    %r10d,0x10(%r12,%r8,8)
  0.38%    0.51%         ││    0x00007f73d926fb58: shr    $0x9,%r11
  0.05%    0.06%         ││    0x00007f73d926fb5c: movabs $0x7f73e9a5c000,%r10
  0.00%    0.00%         ││    0x00007f73d926fb66: mov    %r12b,(%r10,%r11,1)  ;*putfield inst
                         ││                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
           0.01%         ││    0x00007f73d926fb6a: mov    0xc(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007f73d927166d
  0.46%    0.51%         ││    0x00007f73d926fb6f: cmp    %r11d,%ecx
                         ││    0x00007f73d926fb72: jae    0x00007f73d9270285  ;*aastore
                         ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                         ││                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                         ││                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.04%         ││    0x00007f73d926fb78: test   %edi,%edi
                     ╭   ││    0x00007f73d926fb7a: jl     0x00007f73d926fc21  ;*ifge
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
  0.00%    0.00%     │   ││    0x00007f73d926fb80: xor    %ebx,%ebx          ;*iload_0
                     │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │   ││                                                  ; - com.google.re2j.Machine::match@323 (line 241)
                     │   ││↗   0x00007f73d926fb82: cmp    $0xa,%edi
                     │   │││   0x00007f73d926fb85: je     0x00007f73d926ff28  ;*iload_1
                     │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │   │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.37%    0.49%     │   │││   0x00007f73d926fb8b: mov    0x2c(%rsp),%r10d
  0.04%    0.06%     │   │││   0x00007f73d926fb90: test   %r10d,%r10d
                     │╭  │││   0x00007f73d926fb93: jl     0x00007f73d926fc2b  ;*iload_1
                     ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     ││  │││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.00%     ││  │││↗  0x00007f73d926fb99: cmp    $0xa,%r10d
                     ││  ││││  0x00007f73d926fb9d: je     0x00007f73d926ff30  ;*iload_0
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
                     ││  ││││  0x00007f73d926fba3: mov    %edi,%r10d
  0.31%    0.69%     ││  ││││  0x00007f73d926fba6: add    $0xffffffbf,%r10d
  0.04%    0.02%     ││  ││││  0x00007f73d926fbaa: lea    (%r12,%r9,8),%r11  ;*getfield denseThreads
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%              ││  ││││  0x00007f73d926fbae: lea    0x10(%r11,%rcx,4),%r11
                     ││  ││││  0x00007f73d926fbb3: mov    %r8d,(%r11)
  0.54%    0.62%     ││  ││││  0x00007f73d926fbb6: shr    $0x9,%r11
  0.01%    0.05%     ││  ││││  0x00007f73d926fbba: movabs $0x7f73e9a5c000,%r8
  0.01%    0.00%     ││  ││││  0x00007f73d926fbc4: mov    %r12b,(%r8,%r11,1)  ;*aastore
                     ││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     ││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.04%     ││  ││││  0x00007f73d926fbc8: cmp    $0x1a,%r10d
                     ││╭ ││││  0x00007f73d926fbcc: jb     0x00007f73d926fbdf  ;*if_icmple
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.35%    0.31%     │││ ││││  0x00007f73d926fbce: mov    %edi,%r10d
  0.02%    0.05%     │││ ││││  0x00007f73d926fbd1: add    $0xffffff9f,%r10d
  0.02%    0.01%     │││ ││││  0x00007f73d926fbd5: cmp    $0x1a,%r10d
                     │││ ││││  0x00007f73d926fbd9: jae    0x00007f73d927014e  ;*iconst_1
                     │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │││ ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.01%     ││↘ ││││  0x00007f73d926fbdf: mov    $0x1,%ebp          ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.27%    0.27%     ││  ││││  0x00007f73d926fbe4: mov    0x2c(%rsp),%r11d
  0.04%    0.04%     ││  ││││  0x00007f73d926fbe9: add    $0xffffffbf,%r11d
           0.01%     ││  ││││  0x00007f73d926fbed: cmp    $0x1a,%r11d
                     ││ ╭││││  0x00007f73d926fbf1: jb     0x00007f73d926fc06  ;*if_icmple
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.08%    0.08%     ││ │││││  0x00007f73d926fbf3: mov    0x2c(%rsp),%r10d
  0.41%    0.35%     ││ │││││  0x00007f73d926fbf8: add    $0xffffff9f,%r10d
  0.03%    0.06%     ││ │││││  0x00007f73d926fbfc: cmp    $0x1a,%r10d
  0.00%    0.00%     ││ │││││  0x00007f73d926fc00: jae    0x00007f73d927016f  ;*iconst_1
                     ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││ │││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.06%     ││ ↘││││  0x00007f73d926fc06: mov    $0x1,%r11d         ;*ireturn
                     ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     ││  ││││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.32%    0.41%     ││  ││││  0x00007f73d926fc0c: cmp    %r11d,%ebp
                     ││  ╰│││  0x00007f73d926fc0f: je     0x00007f73d926f8ae  ;*if_icmpeq
                     ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.00%     ││   │││  0x00007f73d926fc15: or     $0x10,%ebx         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     ││   │││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%     ││   │││  0x00007f73d926fc18: mov    %ebx,0x4c(%rsp)
  0.16%    0.16%     ││   ╰││  0x00007f73d926fc1c: jmpq   0x00007f73d926f8b5
                     ↘│    ││  0x00007f73d926fc21: mov    $0x5,%ebx
                      │    ╰│  0x00007f73d926fc26: jmpq   0x00007f73d926fb82
  0.00%               ↘     │  0x00007f73d926fc2b: or     $0xa,%ebx          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                ; - com.google.re2j.Machine::match@323 (line 241)
                            ╰  0x00007f73d926fc2e: jmpq   0x00007f73d926fb99
                               0x00007f73d926fc33: nopw   0x0(%rax,%rax,1)
                               0x00007f73d926fc3c: data16 data16 xchg %ax,%ax
  0.00%    0.00%               0x00007f73d926fc40: mov    %eax,0x5c(%rsp)
  0.02%    0.00%               0x00007f73d926fc44: jmpq   0x00007f73d926fe7b
                               0x00007f73d926fc49: mov    0x5c(%rsp),%esi
                               0x00007f73d926fc4d: add    $0x2,%esi
                               0x00007f73d926fc50: mov    %esi,0x5c(%rsp)
  0.00%                        0x00007f73d926fc54: mov    0x5c(%rsp),%esi
                               0x00007f73d926fc58: inc    %esi
                               0x00007f73d926fc5a: mov    %esi,0x58(%rsp)
                               0x00007f73d926fc5e: jmp    0x00007f73d926fc82
                               0x00007f73d926fc60: mov    0x5c(%rsp),%esi
                               0x00007f73d926fc64: add    $0x2,%esi
                               0x00007f73d926fc67: mov    %esi,0x58(%rsp)
                               0x00007f73d926fc6b: jmp    0x00007f73d926fc78
                               0x00007f73d926fc6d: mov    0x5c(%rsp),%esi
                               0x00007f73d926fc71: add    $0x2,%esi
                               0x00007f73d926fc74: mov    %esi,0x5c(%rsp)
....................................................................................................
 22.81%   25.56%  <total for region 2>

....[Hottest Regions]...............................................................................
 61.96%   60.29%         C2, level 4  com.google.re2j.Machine::step, version 556 (1396 bytes) 
 22.81%   25.56%         C2, level 4  com.google.re2j.Machine::match, version 601 (1202 bytes) 
  4.40%    5.12%         C2, level 4  com.google.re2j.Machine::step, version 556 (376 bytes) 
  4.37%    4.69%         C2, level 4  com.google.re2j.Machine::step, version 556 (111 bytes) 
  1.35%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 591 (312 bytes) 
  0.87%    0.94%         C2, level 4  com.google.re2j.Machine::match, version 601 (70 bytes) 
  0.76%    0.76%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.18%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 591 (40 bytes) 
  0.16%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 591 (85 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 601 (246 bytes) 
  0.14%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 601 (277 bytes) 
  0.10%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 611 (10 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.09%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 611 (23 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 611 (0 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 611 (0 bytes) 
  0.05%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 611 (20 bytes) 
  0.04%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 601 (36 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 601 (52 bytes) 
  2.26%    1.91%  <...other 417 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 70.73%   70.10%         C2, level 4  com.google.re2j.Machine::step, version 556 
 24.18%   26.87%         C2, level 4  com.google.re2j.Machine::match, version 601 
  1.81%    1.70%   [kernel.kallsyms]  [unknown] 
  1.77%    0.30%         C2, level 4  com.google.re2j.Machine::init, version 591 
  0.52%    0.22%         C2, level 4  com.google.re2j.Pattern::find, version 611 
  0.11%    0.06%         C2, level 4  java.util.Collections::shuffle, version 622 
  0.05%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp1_jmhTest::testExp1_thrpt_jmhStub, version 661 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%        libc-2.26.so  vfprintf 
  0.04%    0.01%           libjvm.so  xmlTextStream::write 
  0.04%    0.00%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.04%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.03%           libjvm.so  StringTable::unlink_or_oops_do 
  0.03%    0.01%        libc-2.26.so  __strlen_avx2 
  0.03%    0.01%           libjvm.so  SpinPause 
  0.03%                       [vdso]  [unknown] 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%    0.03%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.00%              [vdso]  __vdso_clock_gettime 
  0.40%    0.22%  <...other 60 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.38%   97.59%         C2, level 4
  1.81%    1.70%   [kernel.kallsyms]
  0.39%    0.38%           libjvm.so
  0.20%    0.20%        libc-2.26.so
  0.05%    0.03%      hsdis-amd64.so
  0.05%    0.00%              [vdso]
  0.04%    0.01%        runtime stub
  0.04%    0.02%         interpreter
  0.03%    0.06%  libpthread-2.26.so
  0.00%                             
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1       thrpt   20  18137.411 ± 326.432  ops/s
Re2jRegex.testExp1:·asm  thrpt             NaN              ---
