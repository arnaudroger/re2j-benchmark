# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11397.494 ops/s
# Warmup Iteration   2: 25167.479 ops/s
# Warmup Iteration   3: 25672.172 ops/s
# Warmup Iteration   4: 24657.155 ops/s
# Warmup Iteration   5: 25031.280 ops/s
# Warmup Iteration   6: 25559.587 ops/s
# Warmup Iteration   7: 25926.062 ops/s
# Warmup Iteration   8: 25869.970 ops/s
# Warmup Iteration   9: 25791.028 ops/s
# Warmup Iteration  10: 25816.297 ops/s
# Warmup Iteration  11: 25858.303 ops/s
# Warmup Iteration  12: 25785.835 ops/s
# Warmup Iteration  13: 25905.040 ops/s
# Warmup Iteration  14: 25809.708 ops/s
# Warmup Iteration  15: 26180.815 ops/s
# Warmup Iteration  16: 25949.334 ops/s
# Warmup Iteration  17: 25821.800 ops/s
# Warmup Iteration  18: 25871.695 ops/s
# Warmup Iteration  19: 26006.915 ops/s
# Warmup Iteration  20: 26161.319 ops/s
Iteration   1: 26121.325 ops/s
Iteration   2: 25812.832 ops/s
Iteration   3: 25748.948 ops/s
Iteration   4: 25886.228 ops/s
Iteration   5: 26131.944 ops/s
Iteration   6: 26063.932 ops/s
Iteration   7: 25814.419 ops/s
Iteration   8: 25688.809 ops/s
Iteration   9: 26046.512 ops/s
Iteration  10: 26200.810 ops/s
Iteration  11: 26189.243 ops/s
Iteration  12: 26014.680 ops/s
Iteration  13: 25843.258 ops/s
Iteration  14: 26103.186 ops/s
Iteration  15: 26141.115 ops/s
Iteration  16: 25868.005 ops/s
Iteration  17: 25881.272 ops/s
Iteration  18: 25816.735 ops/s
Iteration  19: 25466.497 ops/s
Iteration  20: 25468.577 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  25915.416 ±(99.9%) 189.117 ops/s [Average]
  (min, avg, max) = (25466.497, 25915.416, 26200.810), stdev = 217.788
  CI (99.9%): [25726.299, 26104.534] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 210726 total address lines.
Perf output processed (skipped 23.865 seconds):
 Column 1: cycles (20490 events)
 Column 2: instructions (20476 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 598 (1186 bytes) 

                                       0x00007f4db5269292: cmp    $0x1a,%r10d
                                       0x00007f4db5269296: jae    0x00007f4db526985e  ;*iconst_1
                                                                                     ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f4db526929c: or     $0x10,%r9d         ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f4db52692a0: xor    %eax,%eax
                                       0x00007f4db52692a2: xor    %r10d,%r10d
  0.00%                                0x00007f4db52692a5: mov    %r10d,0x38(%rsp)
  0.02%    0.00%  ╭                    0x00007f4db52692aa: jmpq   0x00007f4db52695d9
           0.00%  │             ↗      0x00007f4db52692af: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                  │             │                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%           │╭            │      0x00007f4db52692b3: jmpq   0x00007f4db52696c6
  0.00%           ││           ↗│      0x00007f4db52692b8: mov    $0x5,%r9d
                  ││╭          ││      0x00007f4db52692be: jmpq   0x00007f4db52696af
  0.32%    0.28%  │││  ↗↗↗     ││      0x00007f4db52692c3: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@189 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.32%    0.26%  │││  │││     ││      0x00007f4db52692c8: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f4db526a705
  0.21%    0.20%  │││  │││     ││      0x00007f4db52692cd: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││  │││     ││      0x00007f4db52692d3: jne    0x00007f4db5269f5d
  0.08%    0.11%  │││  │││     ││      0x00007f4db52692d9: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.02%           │││  │││     ││      0x00007f4db52692dd: vmovq  %rcx,%xmm0
  0.00%    0.02%  │││  │││     ││      0x00007f4db52692e2: mov    0x18(%rcx),%ebx    ;*getfield pc
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.01%  │││  │││     ││      0x00007f4db52692e5: vmovd  %ebx,%xmm3
  0.09%    0.09%  │││  │││     ││      0x00007f4db52692e9: mov    0x10(%rsp),%rcx
  0.01%    0.00%  │││  │││     ││      0x00007f4db52692ee: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
                  │││  │││     ││                                                    ; implicit exception: dispatches to 0x00007f4db526a725
  0.02%    0.03%  │││  │││     ││      0x00007f4db52692f2: vmovd  %xmm3,%ecx
  0.17%    0.13%  │││  │││     ││      0x00007f4db52692f6: cmp    $0x40,%ecx
                  │││  │││     ││      0x00007f4db52692f9: jg     0x00007f4db526a021  ;*if_icmpgt
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.13%    0.11%  │││  │││     ││      0x00007f4db52692ff: mov    $0x1,%edx
  0.00%    0.01%  │││  │││     ││      0x00007f4db5269304: shl    %cl,%rdx           ;*lshl
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.27%    0.28%  │││  │││     ││      0x00007f4db5269307: mov    %rbx,%rcx
                  │││  │││     ││      0x00007f4db526930a: and    %rdx,%rcx          ;*land
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.01%  │││  │││     ││      0x00007f4db526930d: test   %rcx,%rcx
                  │││  │││     ││      0x00007f4db5269310: jne    0x00007f4db526a089  ;*ifeq
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.12%    0.22%  │││  │││     ││      0x00007f4db5269316: vmovd  %xmm3,%ecx
  0.00%    0.01%  │││  │││     ││      0x00007f4db526931a: cmp    $0x40,%ecx
                  │││  │││     ││      0x00007f4db526931d: jge    0x00007f4db526a101  ;*if_icmpge
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.13%    0.13%  │││  │││     ││      0x00007f4db5269323: mov    0x10(%rsp),%rcx
  0.00%    0.01%  │││  │││     ││      0x00007f4db5269328: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.03%  │││  │││     ││      0x00007f4db526932c: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.03%  │││  │││     ││      0x00007f4db526932f: vmovd  %ecx,%xmm2
  0.15%    0.10%  │││  │││     ││      0x00007f4db5269333: mov    0x10(%rsp),%rcx
                  │││  │││     ││      0x00007f4db5269338: mov    0xc(%rcx),%ebp     ;*getfield size
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.02%    0.04%  │││  │││     ││      0x00007f4db526933b: or     %rbx,%rdx
           0.02%  │││  │││     ││      0x00007f4db526933e: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.10%    0.10%  │││  │││     ││      0x00007f4db5269342: mov    %ebp,%ebx
                  │││  │││     ││      0x00007f4db5269344: inc    %ebx
  0.03%    0.01%  │││  │││     ││      0x00007f4db5269346: mov    %ebx,0xc(%rcx)     ;*putfield size
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.00%    0.00%  │││  │││     ││      0x00007f4db5269349: vmovd  %xmm2,%ecx
  0.09%    0.10%  │││  │││     ││      0x00007f4db526934d: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f4db526a739
  0.15%    0.08%  │││  │││     ││      0x00007f4db5269352: cmp    %ecx,%ebp
                  │││  │││     ││      0x00007f4db5269354: jae    0x00007f4db5269ef5
  0.22%    0.22%  │││  │││     ││      0x00007f4db526935a: vmovd  %xmm2,%ecx
  0.00%    0.01%  │││  │││     ││      0x00007f4db526935e: mov    0x8(%r12,%rcx,8),%ebx
  0.05%    0.05%  │││  │││     ││      0x00007f4db5269363: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │││  │││     ││      0x00007f4db5269369: jne    0x00007f4db5269fb9  ;*aastore
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.07%    0.06%  │││  │││     ││      0x00007f4db526936f: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.08%  │││  │││     ││      0x00007f4db5269373: lea    0x10(%rcx,%rbp,4),%rcx
  0.01%    0.00%  │││  │││     ││      0x00007f4db5269378: vmovq  %xmm0,%rbx
  0.05%    0.05%  │││  │││     ││      0x00007f4db526937d: mov    %rbx,%rdx
  0.08%    0.08%  │││  │││     ││      0x00007f4db5269380: shr    $0x3,%rdx
  0.03%    0.02%  │││  │││     ││      0x00007f4db5269384: mov    %edx,(%rcx)
  0.24%    0.25%  │││  │││     ││      0x00007f4db5269386: shr    $0x9,%rcx
  0.03%    0.04%  │││  │││     ││      0x00007f4db526938a: movabs $0x7f4dc62a8000,%rbx
                  │││  │││     ││      0x00007f4db5269394: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::step@202 (line 313)
                  │││  │││     ││                                                    ; - com.google.re2j.Machine::match@355 (line 246)
  0.20%    0.16%  │││╭ │││     ││      0x00007f4db5269398: jmpq   0x00007f4db526948b
  0.10%    0.11%  ││││ │││     ││  ↗   0x00007f4db526939d: or     $0x20,%r9d         ;*iload_2
                  ││││ │││     ││  │                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││││ │││     ││  │                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.30%    0.58%  ││││ │││     ││  │↗  0x00007f4db52693a1: movzbl 0x18(%r12,%rbx,8),%r14d  ;*getfield longest
                  ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::step@4 (line 280)
                  ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  ││││ │││     ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a6a1
  0.07%    0.11%  ││││ │││     ││  ││  0x00007f4db52693a7: mov    0x28(%rsp),%r11d
  0.20%    0.26%  ││││ │││     ││  ││  0x00007f4db52693ac: mov    0xc(%r12,%r11,8),%r11d  ;*getfield size
                  ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::step@10 (line 281)
                  ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.23%    0.11%  ││││ │││     ││  ││  0x00007f4db52693b1: mov    0x38(%rsp),%r8d
  0.43%    0.38%  ││││ │││     ││  ││  0x00007f4db52693b6: add    0x1c(%rsp),%r8d    ;*iadd
                  ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@336 (line 246)
  0.02%    0.03%  ││││ │││     ││  ││  0x00007f4db52693bb: test   %r11d,%r11d
                  ││││╭│││     ││  ││  0x00007f4db52693be: jle    0x00007f4db5269493  ;*if_icmpge
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@22 (line 282)
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.22%    0.20%  ││││││││     ││  ││  0x00007f4db52693c4: mov    0x70(%rsp),%r10
  0.07%    0.11%  ││││││││     ││  ││  0x00007f4db52693c9: mov    0x10(%r10),%ecx
  0.42%    0.41%  ││││││││     ││  ││  0x00007f4db52693cd: mov    0x60(%rsp),%r10
  0.01%    0.03%  ││││││││     ││  ││  0x00007f4db52693d2: movzbl 0x11(%r10),%r10d
  0.23%    0.30%  ││││││││     ││  ││  0x00007f4db52693d7: mov    0x38(%rsp),%ebx
  0.12%    0.07%  ││││││││     ││  ││  0x00007f4db52693db: mov    $0x1,%edx
  0.40%    0.42%  ││││││││     ││  ││  0x00007f4db52693e0: xor    %edi,%edi
  0.02%    0.02%  ││││││││     ││  ││  0x00007f4db52693e2: cmp    %ecx,%ebx
  0.20%    0.14%  ││││││││     ││  ││  0x00007f4db52693e4: cmovne %edi,%edx          ;*invokespecial step
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.57%    0.52%  ││││││││     ││  ││  0x00007f4db52693e7: vmovd  %edx,%xmm1
  0.05%    0.06%  ││││││││     ││  ││  0x00007f4db52693eb: test   %r10d,%r10d
                  ││││││││     ││  ││  0x00007f4db52693ee: jne    0x00007f4db5269b45  ;*aload_0
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@25 (line 285)
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.21%    0.21%  ││││││││     ││  ││  0x00007f4db52693f4: mov    0x28(%rsp),%r10d
  0.10%    0.09%  ││││││││     ││  ││  0x00007f4db52693f9: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@82 (line 295)
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.36%    0.23%  ││││││││     ││  ││  0x00007f4db52693fe: mov    0xc(%r12,%r10,8),%ebx  ;*aaload
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@87 (line 295)
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  ││││││││     ││  ││                                                ; implicit exception: dispatches to 0x00007f4db5269b45
  0.49%    0.40%  ││││││││     ││  ││  0x00007f4db5269403: test   %ebx,%ebx
                  ││││││││     ││  ││  0x00007f4db5269405: jbe    0x00007f4db5269b45
  0.43%    0.39%  ││││││││     ││  ││  0x00007f4db526940b: mov    %r11d,%edi
  0.06%    0.07%  ││││││││     ││  ││  0x00007f4db526940e: dec    %edi
  0.18%    0.33%  ││││││││     ││  ││  0x00007f4db5269410: cmp    %ebx,%edi
                  ││││││││     ││  ││  0x00007f4db5269412: jae    0x00007f4db5269b45
  0.13%    0.09%  ││││││││     ││  ││  0x00007f4db5269418: lea    (%r12,%r10,8),%rdi
  0.30%    0.36%  ││││││││     ││  ││  0x00007f4db526941c: xor    %r10d,%r10d
  0.07%    0.09%  ││││││││     ││  ││  0x00007f4db526941f: nop                       ;*aload_0
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@25 (line 285)
                  ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.66%    1.63%  ││││││││↗    ││  ││  0x00007f4db5269420: mov    0x10(%rdi,%r10,4),%ecx  ;*aaload
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@87 (line 295)
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.46%    0.32%  │││││││││    ││  ││  0x00007f4db5269425: mov    0xc(%r12,%rcx,8),%edx  ;*getfield op
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@92 (line 297)
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                  │││││││││    ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a655
  2.48%    2.33%  │││││││││    ││  ││  0x00007f4db526942a: cmp    $0x6,%edx
                  │││││││││    ││  ││  0x00007f4db526942d: je     0x00007f4db52697f4  ;*if_icmpne
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@97 (line 297)
                  │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.23%    1.49%  │││││││││    ││  ││  0x00007f4db5269433: cmp    $0xa,%edx
                  │││││╰│││    ││  ││  0x00007f4db5269436: je     0x00007f4db52692c3  ;*if_icmpne
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.50%    1.22%  │││││ │││    ││  ││  0x00007f4db526943c: cmp    $0xb,%edx
                  │││││ │││    ││  ││  0x00007f4db526943f: je     0x00007f4db52698e9  ;*if_icmpne
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.31%    1.10%  │││││ │││    ││  ││  0x00007f4db5269445: cmp    $0x9,%edx
                  │││││ │││    ││  ││  0x00007f4db5269448: je     0x00007f4db5269949  ;*if_icmpne
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.02%    1.02%  │││││ │││    ││  ││  0x00007f4db526944e: cmp    $0xc,%edx
                  │││││ │││    ││  ││  0x00007f4db5269451: jne    0x00007f4db5269889  ;*if_icmpne
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.72%    1.59%  │││││ │││    ││  ││  0x00007f4db5269457: mov    0x1c(%r12,%rcx,8),%ebx  ;*getfield f0
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.97%    0.95%  │││││ │││    ││  ││  0x00007f4db526945c: cmp    %eax,%ebx
                  │││││ ╰││    ││  ││  0x00007f4db526945e: je     0x00007f4db52692c3  ;*if_icmpeq
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.65%    1.81%  │││││  ││    ││  ││  0x00007f4db5269464: mov    0x20(%r12,%rcx,8),%ebx  ;*getfield f1
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.42%    0.50%  │││││  ││    ││  ││  0x00007f4db5269469: cmp    %eax,%ebx
                  │││││  ╰│    ││  ││  0x00007f4db526946b: je     0x00007f4db52692c3  ;*if_icmpeq
                  │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.41%    1.40%  │││││   │    ││  ││  0x00007f4db5269471: mov    0x24(%r12,%rcx,8),%ebx  ;*getfield f2
                  │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.96%    0.91%  │││││   │    ││  ││  0x00007f4db5269476: cmp    %eax,%ebx
                  │││││   │    ││  ││  0x00007f4db5269478: je     0x00007f4db52699a9  ;*if_icmpeq
                  │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.77%    1.76%  │││││   │    ││  ││  0x00007f4db526947e: mov    0x28(%r12,%rcx,8),%ebx  ;*getfield f3
                  │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@181 (line 312)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.38%    0.30%  │││││   │    ││  ││  0x00007f4db5269483: cmp    %eax,%ebx
                  │││││   │    ││  ││  0x00007f4db5269485: je     0x00007f4db5269a11  ;*aload
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@207 (line 315)
                  │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  1.10%    0.94%  │││↘│   │    ││  ││  0x00007f4db526948b: inc    %r10d              ;*iinc
                  │││ │   │    ││  ││                                                ; - com.google.re2j.Machine::step@218 (line 282)
                  │││ │   │    ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.89%    0.87%  │││ │   │    ││  ││  0x00007f4db526948e: cmp    %r11d,%r10d
                  │││ │   ╰    ││  ││  0x00007f4db5269491: jl     0x00007f4db5269420  ;*if_icmpge
                  │││ │        ││  ││                                                ; - com.google.re2j.Machine::step@22 (line 282)
                  │││ │        ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.13%    0.26%  │││ ↘        ││  ││  0x00007f4db5269493: mov    0x28(%rsp),%r11d
  0.13%    0.11%  │││          ││  ││  0x00007f4db5269498: movzbl 0x18(%r12,%r11,8),%r11d
  0.27%    0.33%  │││          ││  ││  0x00007f4db526949e: test   %r11d,%r11d
                  │││      ╭   ││  ││  0x00007f4db52694a1: jne    0x00007f4db52694c5  ;*ifeq
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.25%    0.53%  │││      │   ││  ││  0x00007f4db52694a3: mov    0x28(%rsp),%r10d
  0.09%    0.10%  │││      │   ││  ││  0x00007f4db52694a8: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.11%    0.11%  │││      │   ││  ││  0x00007f4db52694ad: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.56%    0.56%  │││      │   ││  ││  0x00007f4db52694b2: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.79%    1.18%  │││      │   ││  ││  0x00007f4db52694b8: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.31%    0.62%  │││      │   ││  ││  0x00007f4db52694bd: test   %ebp,%ebp
                  │││      │   ││  ││  0x00007f4db52694bf: jne    0x00007f4db5269d55  ;*invokevirtual clear
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@225 (line 319)
                  │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.03%  │││      ↘   ││  ││  0x00007f4db52694c5: mov    0x60(%rsp),%r10
  0.13%    0.21%  │││          ││  ││  0x00007f4db52694ca: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │││          ││  ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.34%    0.51%  │││          ││  ││  0x00007f4db52694cf: mov    0x60(%rsp),%r10
  0.18%    0.25%  │││          ││  ││  0x00007f4db52694d4: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │││          ││  ││                                                ; - com.google.re2j.Machine::match@367 (line 250)
  0.05%    0.05%  │││          ││  ││  0x00007f4db52694d9: mov    0x1c(%rsp),%r10d
  0.17%    0.21%  │││          ││  ││  0x00007f4db52694de: test   %r10d,%r10d
                  │││       ╭  ││  ││  0x00007f4db52694e1: je     0x00007f4db526973a  ;*ifne
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@360 (line 247)
  0.31%    0.54%  │││       │  ││  ││  0x00007f4db52694e7: test   %ebp,%ebp
                  │││       │  ││  ││  0x00007f4db52694e9: jne    0x00007f4db5269c51  ;*ifne
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@370 (line 250)
  0.14%    0.25%  │││       │  ││  ││  0x00007f4db52694ef: test   %eax,%eax
                  │││       │  ││  ││  0x00007f4db52694f1: jne    0x00007f4db5269d19  ;*ifeq
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@377 (line 250)
  0.09%    0.05%  │││       │  ││  ││  0x00007f4db52694f7: cmp    $0xffffffff,%r13d
                  │││       │  ││  ││  0x00007f4db52694fb: je     0x00007f4db5269779  ;*if_icmpeq
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@399 (line 258)
  0.15%    0.21%  │││       │  ││  ││  0x00007f4db5269501: mov    %r13d,0x20(%rsp)
  0.36%    0.44%  │││       │  ││  ││  0x00007f4db5269506: mov    0x70(%rsp),%r10
  0.20%    0.24%  │││       │  ││  ││  0x00007f4db526950b: mov    0x10(%r10),%r10d   ;*getfield end
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.09%    0.05%  │││       │  ││  ││  0x00007f4db526950f: mov    0x2c(%rsp),%ecx
  0.08%    0.22%  │││       │  ││  ││  0x00007f4db5269513: add    %r8d,%ecx
  0.37%    0.42%  │││       │  ││  ││  0x00007f4db5269516: mov    0x70(%rsp),%r11
  0.19%    0.28%  │││       │  ││  ││  0x00007f4db526951b: add    0xc(%r11),%ecx     ;*iadd
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.08%    0.11%  │││       │  ││  ││  0x00007f4db526951f: cmp    %r10d,%ecx
                  │││       │  ││  ││  0x00007f4db5269522: jge    0x00007f4db526978d  ;*if_icmpge
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.19%    0.23%  │││       │  ││  ││  0x00007f4db5269528: mov    0x14(%r11),%ebp    ;*getfield str
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.35%    0.38%  │││       │  ││  ││  0x00007f4db526952c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4db526a6b1
  0.37%    0.42%  │││       │  ││  ││  0x00007f4db5269531: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││       │  ││  ││  0x00007f4db5269538: jne    0x00007f4db5269b09
  0.21%    0.34%  │││       │  ││  ││  0x00007f4db526953e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.09%    0.14%  │││       │  ││  ││  0x00007f4db5269542: test   %ecx,%ecx
                  │││       │  ││  ││  0x00007f4db5269544: jl     0x00007f4db5269c95  ;*iflt
                  │││       │  ││  ││                                                ; - java.lang.String::charAt@1 (line 657)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.20%    0.45%  │││       │  ││  ││  0x00007f4db526954a: mov    0xc(%rbx),%edi     ;*getfield value
                  │││       │  ││  ││                                                ; - java.lang.String::charAt@6 (line 657)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.18%    0.24%  │││       │  ││  ││  0x00007f4db526954d: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │││       │  ││  ││                                                ; - java.lang.String::charAt@9 (line 657)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
                  │││       │  ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a6c5
  1.95%    2.49%  │││       │  ││  ││  0x00007f4db5269552: cmp    %ebp,%ecx
                  │││       │  ││  ││  0x00007f4db5269554: jge    0x00007f4db5269d8d  ;*if_icmplt
                  │││       │  ││  ││                                                ; - java.lang.String::charAt@10 (line 657)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.87%  │││       │  ││  ││  0x00007f4db526955a: cmp    %ebp,%ecx
                  │││       │  ││  ││  0x00007f4db526955c: jae    0x00007f4db5269ac5
  0.04%    0.02%  │││       │  ││  ││  0x00007f4db5269562: lea    (%r12,%rdi,8),%r10
  0.00%    0.01%  │││       │  ││  ││  0x00007f4db5269566: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │││       │  ││  ││                                                ; - java.lang.String::charAt@27 (line 660)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.09%    0.11%  │││       │  ││  ││  0x00007f4db526956c: cmp    $0xd800,%r10d
                  │││       │  ││  ││  0x00007f4db5269573: jge    0x00007f4db5269dcd  ;*if_icmplt
                  │││       │  ││  ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.63%    0.84%  │││       │  ││  ││  0x00007f4db5269579: shl    $0x3,%r10d         ;*ishl
                  │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@407 (line 259)
  0.03%    0.00%  │││       │  ││  ││  0x00007f4db526957d: mov    %r10d,%ebx
  0.01%           │││       │  ││  ││  0x00007f4db5269580: or     $0x1,%ebx
  0.61%    1.00%  │││       │  ││  ││  0x00007f4db5269583: and    $0x7,%r10d
  0.07%    0.06%  │││       │  ││  ││  0x00007f4db5269587: sar    $0x3,%ebx          ;*ishr
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@415 (line 260)
  0.63%    0.84%  │││       │  ││  ││  0x00007f4db526958a: or     $0x1,%r10d         ; OopMap{[8]=Oop [16]=Oop [96]=Oop [112]=Oop off=1294}
                  │││       │  ││  ││                                                ;*goto
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.02%    0.05%  │││       │  ││  ││  0x00007f4db526958e: test   %eax,0x18636a6c(%rip)        # 0x00007f4dcd8a0000
                  │││       │  ││  ││                                                ;*goto
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@437 (line 266)
                  │││       │  ││  ││                                                ;   {poll}
  0.04%    0.05%  │││       │  ││  ││  0x00007f4db5269594: mov    0x60(%rsp),%r11
  0.00%    0.00%  │││       │  ││  ││  0x00007f4db5269599: mov    0x14(%r11),%ecx    ;*getfield re2
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.62%    0.78%  │││       │  ││  ││  0x00007f4db526959d: vmovd  %ecx,%xmm5
  0.04%    0.02%  │││       │  ││  ││  0x00007f4db52695a1: mov    0x28(%r11),%ecx    ;*getfield matchcap
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.01%  │││       │  ││  ││  0x00007f4db52695a5: mov    0x10(%rsp),%r11
  0.01%    0.02%  │││       │  ││  ││  0x00007f4db52695aa: shr    $0x3,%r11
  0.63%    0.68%  │││       │  ││  ││  0x00007f4db52695ae: mov    %r11d,0x28(%rsp)
  0.02%    0.03%  │││       │  ││  ││  0x00007f4db52695b3: mov    0x2c(%rsp),%r11d
  0.01%           │││       │  ││  ││  0x00007f4db52695b8: mov    %r11d,0x1c(%rsp)
  0.04%    0.01%  │││       │  ││  ││  0x00007f4db52695bd: mov    %r8d,0x38(%rsp)
  0.70%    0.64%  │││       │  ││  ││  0x00007f4db52695c2: mov    %r10d,0x2c(%rsp)
  0.05%    0.05%  │││       │  ││  ││  0x00007f4db52695c7: mov    %ebx,0x24(%rsp)
  0.01%           │││       │  ││  ││  0x00007f4db52695cb: mov    0x8(%rsp),%r10
  0.02%    0.01%  │││       │  ││  ││  0x00007f4db52695d0: mov    %r10,0x10(%rsp)
  0.60%    0.41%  │││       │  ││  ││  0x00007f4db52695d5: vmovd  %ecx,%xmm2         ;*aload
                  │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.02%  ↘││       │  ││  ││  0x00007f4db52695d9: mov    0x28(%rsp),%r10d
  0.01%    0.02%   ││       │  ││  ││  0x00007f4db52695de: movzbl 0x18(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f4db526a665
  0.09%    0.06%   ││       │  ││  ││  0x00007f4db52695e4: test   %r10d,%r10d
                   ││       │╭ ││  ││  0x00007f4db52695e7: je     0x00007f4db526961b  ;*ifeq
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.56%    0.27%   ││       ││ ││  ││  0x00007f4db52695e9: mov    0x30(%rsp),%r11d
  0.01%    0.01%   ││       ││ ││  ││  0x00007f4db52695ee: test   %r11d,%r11d
                   ││       ││ ││  ││  0x00007f4db52695f1: jne    0x00007f4db5269e59  ;*ifeq
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
                   ││       ││ ││  ││  0x00007f4db52695f7: test   %eax,%eax
                   ││       ││ ││  ││  0x00007f4db52695f9: jne    0x00007f4db5269ea5  ;*ifeq
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
           0.02%   ││       ││ ││  ││  0x00007f4db52695ff: vmovd  %xmm5,%r10d
  0.54%    0.73%   ││       ││ ││  ││  0x00007f4db5269604: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                   ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a6d5
           0.00%   ││       ││ ││  ││  0x00007f4db5269609: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                   ││       ││ ││  ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a6e5
  0.02%    0.03%   ││       ││ ││  ││  0x00007f4db526960e: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   ││       ││ ││  ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a6f5
  1.10%    1.24%   ││       ││ ││  ││  0x00007f4db5269613: test   %ebp,%ebp
                   ││       ││ ││  ││  0x00007f4db5269615: jne    0x00007f4db5269e11  ;*aload_0
                   ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.64%    0.82%   ││       │↘ ││  ││  0x00007f4db526961b: test   %eax,%eax
                   ││       │  ││  ││  0x00007f4db526961d: jne    0x00007f4db5269bad  ;*ifne
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.05%    0.01%   ││       │  ││  ││  0x00007f4db5269623: mov    0x38(%rsp),%r11d
  0.04%    0.00%   ││       │  ││  ││  0x00007f4db5269628: test   %r11d,%r11d
                   ││       │ ╭││  ││  0x00007f4db526962b: je     0x00007f4db526963b  ;*ifeq
                   ││       │ │││  ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.01%    0.01%   ││       │ │││  ││  0x00007f4db526962d: mov    0x5c(%rsp),%r10d
  0.73%    0.59%   ││       │ │││  ││  0x00007f4db5269632: test   %r10d,%r10d
                   ││       │ │││  ││  0x00007f4db5269635: jne    0x00007f4db5269bfd  ;*aload_0
                   ││       │ │││  ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.02%    0.04%   ││       │ ↘││  ││  0x00007f4db526963b: mov    0x60(%rsp),%r10
  0.02%    0.02%   ││       │  ││  ││  0x00007f4db5269640: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@283 (line 240)
  0.01%    0.02%   ││       │  ││  ││  0x00007f4db5269645: test   %ebp,%ebp
                   ││       │  ││  ││  0x00007f4db5269647: jne    0x00007f4db5269cd5  ;*ifeq
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.61%    0.43%   ││       │  ││  ││  0x00007f4db526964d: mov    0x18(%r10),%r11d   ;*getfield prog
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.03%    0.04%   ││       │  ││  ││  0x00007f4db5269651: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                   ││       │  ││  ││                                                ; implicit exception: dispatches to 0x00007f4db526a675
  0.16%    0.15%   ││       │  ││  ││  0x00007f4db5269656: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4db526a685
  0.82%    0.73%   ││       │  ││  ││  0x00007f4db526965b: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   ││       │  ││  ││  0x00007f4db5269662: jne    0x00007f4db5269a79  ;*ifeq
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.67%    0.29%   ││       │  ││  ││  0x00007f4db5269668: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
  0.01%    0.01%   ││       │  ││  ││  0x00007f4db526966c: mov    0x28(%rsp),%r11d
  0.01%    0.01%   ││       │  ││  ││  0x00007f4db5269671: lea    (%r12,%r11,8),%r10  ;*aload
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%            ││       │  ││  ││  0x00007f4db5269675: mov    %r10,0x8(%rsp)
  0.71%    0.40%   ││       │  ││  ││  0x00007f4db526967a: vmovd  %xmm2,%r10d
  0.01%    0.02%   ││       │  ││  ││  0x00007f4db526967f: mov    %r10,%r8
           0.00%   ││       │  ││  ││  0x00007f4db5269682: shl    $0x3,%r8           ;*getfield matchcap
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.00%   ││       │  ││  ││  0x00007f4db5269686: mov    0x8(%rsp),%rdx
  0.71%    0.43%   ││       │  ││  ││  0x00007f4db526968b: mov    0x38(%rsp),%ecx
  0.01%    0.01%   ││       │  ││  ││  0x00007f4db526968f: xor    %edi,%edi
  0.00%    0.00%   ││       │  ││  ││  0x00007f4db5269691: mov    0x60(%rsp),%r10
                   ││       │  ││  ││  0x00007f4db5269696: mov    %r10,(%rsp)
  0.79%    0.62%   ││       │  ││  ││  0x00007f4db526969a: nop
           0.01%   ││       │  ││  ││  0x00007f4db526969b: callq  0x00007f4db5046020  ; OopMap{[8]=Oop [16]=Oop [40]=NarrowOop [96]=Oop [112]=Oop off=1568}
                   ││       │  ││  ││                                                ;*invokevirtual add
                   ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@314 (line 243)
                   ││       │  ││  ││                                                ;   {optimized virtual_call}
  0.02%    0.01%   ││       │  ││  ││  0x00007f4db52696a0: mov    0x20(%rsp),%eax
  0.26%    0.21%   ││       │  ││  ││  0x00007f4db52696a4: test   %eax,%eax
                   ││       │  ╰│  ││  0x00007f4db52696a6: jl     0x00007f4db52692b8  ;*ifge
                   ││       │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││       │   │  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.53%    0.46%   ││       │   │  ││  0x00007f4db52696ac: xor    %r9d,%r9d          ;*iload_0
                   ││       │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││       │   │  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.02%   │↘       │   │  ││  0x00007f4db52696af: cmp    $0xa,%eax
                   │        │   │  ││  0x00007f4db52696b2: je     0x00007f4db526979a  ;*iload_1
                   │        │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │        │   │  ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.15%   │        │   │  ││  0x00007f4db52696b8: mov    0x24(%rsp),%r13d
  0.07%    0.04%   │        │   │  ││  0x00007f4db52696bd: test   %r13d,%r13d
  0.52%    0.58%   │        │   ╰  ││  0x00007f4db52696c0: jl     0x00007f4db52692af  ;*iload_1
                   │        │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │        │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.01%   ↘        │      ││  0x00007f4db52696c6: cmp    $0xa,%r13d
                            │      ││  0x00007f4db52696ca: je     0x00007f4db52697a3  ;*iload_0
                            │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                            │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.10%            │      ││  0x00007f4db52696d0: mov    0x60(%rsp),%r10
  0.07%    0.04%            │      ││  0x00007f4db52696d5: mov    0x14(%r10),%ebx    ;*getfield re2
                            │      ││                                                ; - com.google.re2j.Machine::step@1 (line 280)
                            │      ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.55%    0.49%            │      ││  0x00007f4db52696d9: mov    0x20(%rsp),%r10d
  0.05%    0.01%            │      ││  0x00007f4db52696de: add    $0xffffffbf,%r10d
  0.13%    0.09%            │      ││  0x00007f4db52696e2: mov    0x24(%rsp),%r11d
  0.05%    0.07%            │      ││  0x00007f4db52696e7: add    $0xffffffbf,%r11d
  0.44%    0.67%            │      ││  0x00007f4db52696eb: cmp    $0x1a,%r10d
                            │    ╭ ││  0x00007f4db52696ef: jb     0x00007f4db5269704  ;*if_icmple
                            │    │ ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                            │    │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                            │    │ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.02%    0.02%            │    │ ││  0x00007f4db52696f1: mov    0x20(%rsp),%r8d
  0.10%    0.09%            │    │ ││  0x00007f4db52696f6: add    $0xffffff9f,%r8d
  0.07%    0.06%            │    │ ││  0x00007f4db52696fa: cmp    $0x1a,%r8d
                            │    │ ││  0x00007f4db52696fe: jae    0x00007f4db52697d1  ;*iconst_1
                            │    │ ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                            │    │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                            │    │ ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.44%    0.52%            │    ↘ ││  0x00007f4db5269704: mov    $0x1,%ebp          ;*ireturn
                            │      ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                            │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                            │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.05%            │      ││  0x00007f4db5269709: cmp    $0x1a,%r11d
                            │     ╭││  0x00007f4db526970d: jb     0x00007f4db5269722  ;*if_icmple
                            │     │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                            │     │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                            │     │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.12%    0.07%            │     │││  0x00007f4db526970f: mov    0x24(%rsp),%r10d
  0.10%    0.14%            │     │││  0x00007f4db5269714: add    $0xffffff9f,%r10d
  0.36%    0.26%            │     │││  0x00007f4db5269718: cmp    $0x1a,%r10d
                            │     │││  0x00007f4db526971c: jae    0x00007f4db52697ac  ;*iconst_1
                            │     │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                            │     │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                            │     │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.04%            │     ↘││  0x00007f4db5269722: mov    $0x1,%r11d         ;*ireturn
                            │      ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                            │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                            │      ││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.11%            │      ││  0x00007f4db5269728: cmp    %r11d,%ebp
                            │      ╰│  0x00007f4db526972b: je     0x00007f4db526939d  ;*if_icmpeq
                            │       │                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                            │       │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.17%    0.09%            │       │  0x00007f4db5269731: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                            │       │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.01%            │       ╰  0x00007f4db5269735: jmpq   0x00007f4db52693a1
  0.01%    0.02%            ↘          0x00007f4db526973a: test   %ebp,%ebp
                                       0x00007f4db526973c: jne    0x00007f4db526a485  ;*ifeq
                                                                                     ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@443 (line 267)
  0.00%    0.00%                       0x00007f4db5269742: mov    0x10(%rsp),%r10
           0.00%                       0x00007f4db5269747: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f4db526a7a9
                                       0x00007f4db526974c: test   %r11d,%r11d
                                       0x00007f4db526974f: jne    0x00007f4db526976a  ;*ifeq
                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@443 (line 267)
                                       0x00007f4db5269751: mov    0x1c(%r10),%ebp    ;*getfield pcs
                                                                                     ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
....................................................................................................
 58.40%   60.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 555 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f4db524bd00: mov    0x8(%rsi),%r10d
                     0x00007f4db524bd04: shl    $0x3,%r10
                     0x00007f4db524bd08: cmp    %r10,%rax
                     0x00007f4db524bd0b: jne    0x00007f4db5045e20  ;   {runtime_call}
                     0x00007f4db524bd11: data16 xchg %ax,%ax
                     0x00007f4db524bd14: nopl   0x0(%rax,%rax,1)
                     0x00007f4db524bd1c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.00%    0.01%     0x00007f4db524bd20: mov    %eax,-0x14000(%rsp)
  0.72%    0.63%     0x00007f4db524bd27: push   %rbp
  0.00%    0.00%     0x00007f4db524bd28: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.68%    0.58%     0x00007f4db524bd2c: vmovq  %r8,%xmm6
  0.00%    0.02%     0x00007f4db524bd31: vmovq  %rsi,%xmm4
  0.00%    0.00%     0x00007f4db524bd36: vmovd  %ecx,%xmm0
  0.01%    0.02%     0x00007f4db524bd3a: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.75%    0.63%     0x00007f4db524bd3d: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f4db524c6b1
  0.02%    0.01%     0x00007f4db524bd41: cmp    $0x40,%ecx
                     0x00007f4db524bd44: jg     0x00007f4db524c21d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.00%     0x00007f4db524bd4a: mov    $0x1,%eax
  0.01%    0.00%     0x00007f4db524bd4f: mov    $0x1,%r8d
  0.72%    0.78%     0x00007f4db524bd55: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.03%     0x00007f4db524bd58: mov    %r11,%r10
  0.73%    0.67%     0x00007f4db524bd5b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.00%     0x00007f4db524bd5e: xor    %r13d,%r13d
  0.01%    0.01%     0x00007f4db524bd61: test   %r10,%r10
                     0x00007f4db524bd64: jne    0x00007f4db524c251  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%              0x00007f4db524bd6a: cmp    $0x40,%ecx
                     0x00007f4db524bd6d: jge    0x00007f4db524c295  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.79%    0.68%     0x00007f4db524bd73: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.01%     0x00007f4db524bd77: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.01%              0x00007f4db524bd7a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.01%     0x00007f4db524bd7d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.72%    0.69%     0x00007f4db524bd81: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f4db524c6c5
  0.02%    0.01%     0x00007f4db524bd86: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f4db524bd8d: jne    0x00007f4db524c0f1
           0.01%     0x00007f4db524bd93: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
           0.01%     0x00007f4db524bd97: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.64%    0.57%     0x00007f4db524bd9b: cmp    $0x40,%ecx
                     0x00007f4db524bd9e: jg     0x00007f4db524c2c9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.01%     0x00007f4db524bda4: mov    $0x1,%r11d
  0.02%              0x00007f4db524bdaa: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.68%    0.64%     0x00007f4db524bdad: mov    %r8,%rbx
  0.00%              0x00007f4db524bdb0: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
           0.01%     0x00007f4db524bdb3: test   %rbx,%rbx
                     0x00007f4db524bdb6: jne    0x00007f4db524c309  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.63%    0.36%     0x00007f4db524bdbc: cmp    $0x40,%ecx
                     0x00007f4db524bdbf: jge    0x00007f4db524c351  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%    0.02%     0x00007f4db524bdc5: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.00%              0x00007f4db524bdc8: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%    0.06%     0x00007f4db524bdcc: mov    0x70(%rsp),%r11
  0.61%    0.45%     0x00007f4db524bdd1: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                                                                   ; implicit exception: dispatches to 0x00007f4db524c6ed
  0.02%              0x00007f4db524bdd6: test   %ebp,%ebp
                     0x00007f4db524bdd8: jne    0x00007f4db524c391  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.01%     0x00007f4db524bdde: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.05%     0x00007f4db524bde1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.63%    0.75%     0x00007f4db524bde4: mov    %ecx,%esi
           0.01%     0x00007f4db524bde6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.01%              0x00007f4db524bde8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.05%    0.04%     0x00007f4db524bdeb: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f4db524c6fd
  0.67%    0.58%     0x00007f4db524bdf0: cmp    %edi,%ecx
                  ╭  0x00007f4db524bdf2: jae    0x00007f4db524c075
  0.02%    0.03%  │  0x00007f4db524bdf8: vmovd  %esi,%xmm1
  0.01%    0.01%  │  0x00007f4db524bdfc: vmovd  %ebx,%xmm2
  0.06%    0.01%  │  0x00007f4db524be00: mov    %ecx,0x18(%rsp)
  0.73%    0.52%  │  0x00007f4db524be04: mov    %r10,%rcx
  0.04%    0.02%  │  0x00007f4db524be07: mov    0x70(%rsp),%r14
  0.02%    0.01%  │  0x00007f4db524be0c: mov    0x8(%r12,%rbx,8),%r11d
  0.05%    0.05%  │  0x00007f4db524be11: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f4db524be18: jne    0x00007f4db524c121  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.64%    0.86%  │  0x00007f4db524be1e: vmovq  %xmm4,%r10
  0.01%    0.01%  │  0x00007f4db524be23: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 266)
                  │  0x00007f4db524be27: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.06%    0.05%  │  0x00007f4db524be2b: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.65%    0.62%  │  0x00007f4db524be2f: mov    0x18(%rsp),%r10d
  0.40%    0.13%  │  0x00007f4db524be34: lea    0x10(%r11,%r10,4),%r10
  0.06%           │  0x00007f4db524be39: mov    %ecx,(%r10)
  0.37%    0.26%  │  0x00007f4db524be3c: shr    $0x9,%r10
  0.47%    0.53%  │  0x00007f4db524be40: movabs $0x7f4dc62a8000,%rbx
           0.02%  │  0x00007f4db524be4a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.19%    0.14%  │  0x00007f4db524be4e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4db524c715
  0.08%    0.06%  │  0x00007f4db524be53: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f4db524be5a: jne    0x00007f4db524c159
  0.41%    0.26%  │  0x00007f4db524be60: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.02%    0.00%  │  0x00007f4db524be64: vmovq  %r10,%xmm3
  0.08%    0.10%  │  0x00007f4db524be69: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.23%    0.16%  │  0x00007f4db524be6d: vmovd  %ecx,%xmm5
  0.56%    0.26%  │  0x00007f4db524be71: cmp    $0x40,%ecx
                  │  0x00007f4db524be74: jg     0x00007f4db524c3cd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.00%           │  0x00007f4db524be7a: mov    $0x1,%r10d
  0.08%    0.18%  │  0x00007f4db524be80: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.64%    0.53%  │  0x00007f4db524be83: mov    %r8,%rcx
  0.12%    0.14%  │  0x00007f4db524be86: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.10%    0.08%  │  0x00007f4db524be89: test   %rcx,%rcx
                  │  0x00007f4db524be8c: jne    0x00007f4db524c409  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.48%    0.63%  │  0x00007f4db524be92: vmovd  %xmm5,%ecx
  0.02%    0.01%  │  0x00007f4db524be96: cmp    $0x40,%ecx
                  │  0x00007f4db524be99: jge    0x00007f4db524c451  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.17%    0.10%  │  0x00007f4db524be9f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.05%    0.06%  │  0x00007f4db524bea2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.56%    0.30%  │  0x00007f4db524bea6: mov    0x18(%rsp),%ecx
  0.00%    0.00%  │  0x00007f4db524beaa: add    $0x2,%ecx
  0.12%    0.16%  │  0x00007f4db524bead: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.05%    0.12%  │  0x00007f4db524beb0: mov    0x18(%rsp),%r10d
  0.46%    0.58%  │  0x00007f4db524beb5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%    0.01%  │  0x00007f4db524beb9: cmp    %edi,%r10d
                  │  0x00007f4db524bebc: jae    0x00007f4db524c0b1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.15%    0.16%  │  0x00007f4db524bec2: vmovd  %r9d,%xmm7
  0.07%    0.09%  │  0x00007f4db524bec7: vmovq  %xmm4,%r9
  0.44%    0.62%  │  0x00007f4db524becc: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 267)
  0.02%    0.01%  │  0x00007f4db524bed0: vmovq  %xmm3,%r9
  0.15%    0.11%  │  0x00007f4db524bed5: mov    %r9,%rcx
  0.06%    0.08%  │  0x00007f4db524bed8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.51%    0.64%  │  0x00007f4db524bedc: movslq 0x18(%rsp),%r9
  0.01%    0.01%  │  0x00007f4db524bee1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.16%    0.14%  │  0x00007f4db524bee5: mov    %r9,%rdi
  0.07%    0.08%  │  0x00007f4db524bee8: add    $0x14,%rdi
  0.51%    0.61%  │  0x00007f4db524beec: mov    %ecx,(%rdi)
  0.06%    0.00%  │  0x00007f4db524beee: mov    %rdi,%rcx
  0.10%    0.12%  │  0x00007f4db524bef1: shr    $0x9,%rcx
  0.08%    0.07%  │  0x00007f4db524bef5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.63%    0.37%  │  0x00007f4db524bef9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f4db524c73d
  0.01%    0.02%  │  0x00007f4db524befe: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f4db524bf04: jne    0x00007f4db524c189
  0.16%    0.11%  │  0x00007f4db524bf0a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.09%    0.07%  │  0x00007f4db524bf0e: vmovq  %rcx,%xmm1
  0.55%    0.80%  │  0x00007f4db524bf13: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.03%  │  0x00007f4db524bf16: vmovd  %ecx,%xmm2
  0.13%    0.11%  │  0x00007f4db524bf1a: cmp    $0x40,%ecx
                  │  0x00007f4db524bf1d: jg     0x00007f4db524c491  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.08%    0.07%  │  0x00007f4db524bf23: mov    $0x1,%edi
  0.59%    0.62%  │  0x00007f4db524bf28: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.30%    0.26%  │  0x00007f4db524bf2b: mov    %r8,%rcx
  0.54%    0.44%  │  0x00007f4db524bf2e: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.01%  │  0x00007f4db524bf31: test   %rcx,%rcx
                  │  0x00007f4db524bf34: jne    0x00007f4db524c4d1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.17%    0.15%  │  0x00007f4db524bf3a: vmovd  %xmm2,%ecx
  0.08%    0.07%  │  0x00007f4db524bf3e: cmp    $0x40,%ecx
                  │  0x00007f4db524bf41: jge    0x00007f4db524c51d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.50%    0.67%  │  0x00007f4db524bf47: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.03%    0.03%  │  0x00007f4db524bf4a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.07%    0.09%  │  0x00007f4db524bf4e: vmovq  %xmm4,%rcx
  0.03%    0.07%  │  0x00007f4db524bf53: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 268)
  0.46%    0.62%  │  0x00007f4db524bf56: mov    %r9,%rdi
  0.03%    0.02%  │  0x00007f4db524bf59: add    $0x18,%rdi
  0.12%    0.10%  │  0x00007f4db524bf5d: vmovq  %xmm1,%rsi
  0.07%    0.07%  │  0x00007f4db524bf62: mov    %rsi,%rcx
  0.52%    0.73%  │  0x00007f4db524bf65: shr    $0x3,%rcx
  0.01%    0.01%  │  0x00007f4db524bf69: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.09%    0.07%  │  0x00007f4db524bf6b: mov    0x18(%rsp),%ecx
  0.04%    0.03%  │  0x00007f4db524bf6f: add    $0x3,%ecx
  0.54%    0.57%  │  0x00007f4db524bf72: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.01%  │  0x00007f4db524bf75: shr    $0x9,%rdi
  0.16%    0.05%  │  0x00007f4db524bf79: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%    0.06%  │  0x00007f4db524bf7d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f4db524c765
  0.51%    0.51%  │  0x00007f4db524bf82: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f4db524bf88: jne    0x00007f4db524c1bd
  0.01%    0.02%  │  0x00007f4db524bf8e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.14%  │  0x00007f4db524bf92: vmovq  %rcx,%xmm1
  0.06%    0.09%  │  0x00007f4db524bf97: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.53%    0.56%  │  0x00007f4db524bf9a: vmovd  %ecx,%xmm3
           0.01%  │  0x00007f4db524bf9e: cmp    $0x40,%ecx
                  │  0x00007f4db524bfa1: jg     0x00007f4db524c55d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.15%    0.16%  │  0x00007f4db524bfa7: mov    $0x1,%edi
  0.05%    0.08%  │  0x00007f4db524bfac: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.66%    0.62%  │  0x00007f4db524bfaf: mov    %r8,%rcx
  0.08%    0.02%  │  0x00007f4db524bfb2: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.44%    0.40%  │  0x00007f4db524bfb5: test   %rcx,%rcx
                  │  0x00007f4db524bfb8: jne    0x00007f4db524c59d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.00%    0.03%  │  0x00007f4db524bfbe: vmovd  %xmm3,%ecx
  0.12%    0.15%  │  0x00007f4db524bfc2: cmp    $0x40,%ecx
                  │  0x00007f4db524bfc5: jge    0x00007f4db524c5e9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.09%    0.10%  │  0x00007f4db524bfcb: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.41%    0.74%  │  0x00007f4db524bfcf: vmovq  %xmm4,%r10
  0.01%    0.03%  │  0x00007f4db524bfd4: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 269)
  0.10%    0.18%  │  0x00007f4db524bfd8: mov    %r9,%rcx
  0.07%    0.04%  │  0x00007f4db524bfdb: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.54%    0.51%  │  0x00007f4db524bfdf: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%    0.01%  │  0x00007f4db524bfe2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.13%  │  0x00007f4db524bfe6: vmovq  %xmm1,%r10
  0.09%    0.11%  │  0x00007f4db524bfeb: shr    $0x3,%r10
  0.43%    0.63%  │  0x00007f4db524bfef: mov    %r10d,(%rcx)
  0.02%    0.01%  │  0x00007f4db524bff2: mov    %rcx,%r10
  0.10%    0.17%  │  0x00007f4db524bff5: shr    $0x9,%r10
  0.05%    0.06%  │  0x00007f4db524bff9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.66%    0.55%  │  0x00007f4db524bffd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f4db524c78d
  0.04%    0.01%  │  0x00007f4db524c002: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f4db524c009: jne    0x00007f4db524c1f1
  0.13%    0.13%  │  0x00007f4db524c00f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.05%    0.10%  │  0x00007f4db524c013: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.56%    0.54%  │  0x00007f4db524c016: cmp    $0x40,%ecx
                  │  0x00007f4db524c019: jg     0x00007f4db524c629  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.04%    0.04%  │  0x00007f4db524c01f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.73%    0.70%  │  0x00007f4db524c022: mov    %r8,%r10
  0.02%    0.02%  │  0x00007f4db524c025: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.15%    0.17%  │  0x00007f4db524c028: test   %r10,%r10
                  │  0x00007f4db524c02b: jne    0x00007f4db524c651  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.05%    0.09%  │  0x00007f4db524c031: cmp    $0x40,%ecx
                  │  0x00007f4db524c034: jge    0x00007f4db524c689  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.47%    0.65%  │  0x00007f4db524c03a: or     %rax,%r8
  0.02%    0.01%  │  0x00007f4db524c03d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.12%    0.14%  │  0x00007f4db524c041: add    $0x20,%r9
  0.07%    0.05%  │  0x00007f4db524c045: mov    %rdi,%r10
  0.59%    0.55%  │  0x00007f4db524c048: shr    $0x3,%r10
  0.02%    0.01%  │  0x00007f4db524c04c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.12%    0.08%  │  0x00007f4db524c04f: mov    %r9,%r10
  0.05%    0.06%  │  0x00007f4db524c052: mov    0x18(%rsp),%r11d
  0.53%    0.29%  │  0x00007f4db524c057: add    $0x5,%r11d
  0.02%    0.00%  │  0x00007f4db524c05b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.13%    0.08%  │  0x00007f4db524c05f: shr    $0x9,%r10
  0.09%    0.08%  │  0x00007f4db524c063: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.47%    0.61%  │  0x00007f4db524c067: xor    %eax,%eax
  0.02%    0.02%  │  0x00007f4db524c069: add    $0x60,%rsp
  0.13%    0.17%  │  0x00007f4db524c06d: pop    %rbp
  0.07%    0.07%  │  0x00007f4db524c06e: test   %eax,0x18653f8c(%rip)        # 0x00007f4dcd8a0000
                  │                                                ;   {poll_return}
  0.56%    0.60%  │  0x00007f4db524c074: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                  ↘  0x00007f4db524c075: mov    $0xffffffe4,%esi
                     0x00007f4db524c07a: vmovq  %xmm4,%rbp
                     0x00007f4db524c07f: mov    %rdx,0x70(%rsp)
                     0x00007f4db524c084: vmovss %xmm0,(%rsp)
                     0x00007f4db524c089: vmovsd %xmm6,0x8(%rsp)
                     0x00007f4db524c08f: mov    %r9d,0x4(%rsp)
....................................................................................................
 36.65%   35.95%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.40%   60.38%         C2, level 4  com.google.re2j.Machine::match, version 598 (1186 bytes) 
 36.65%   35.95%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 555 (852 bytes) 
  0.83%    0.84%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.55%    0.70%         C2, level 4  com.google.re2j.Machine::match, version 598 (138 bytes) 
  0.30%    0.05%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 (97 bytes) 
  0.19%    0.06%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 (33 bytes) 
  0.14%    0.03%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 (8 bytes) 
  0.12%                  C2, level 4  com.google.re2j.RE2::doExecute, version 600 (163 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 (23 bytes) 
  0.08%    0.03%         C2, level 4  java.util.Collections::shuffle, version 609 (202 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 (0 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Machine::match, version 598 (106 bytes) 
  0.07%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 642 (65 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (3 bytes) 
  0.07%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 598 (122 bytes) 
  0.07%    0.05%         C2, level 4  java.util.Collections::shuffle, version 609 (44 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 598 (84 bytes) 
  0.05%    0.01%              [vdso]  __vdso_clock_gettime (44 bytes) 
  1.93%    1.66%  <...other 381 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.18%   61.16%         C2, level 4  com.google.re2j.Machine::match, version 598 
 36.65%   35.95%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 555 
  1.77%    1.69%   [kernel.kallsyms]  [unknown] 
  1.08%    0.30%         C2, level 4  com.google.re2j.RE2::doExecute, version 600 
  0.24%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 642 
  0.22%    0.10%         C2, level 4  java.util.Collections::shuffle, version 609 
  0.07%    0.01%              [vdso]  __vdso_clock_gettime 
  0.04%    0.03%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 606 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.05%           libjvm.so  RelocIterator::initialize 
  0.03%    0.02%      hsdis-amd64.so  decode_instructions 
  0.03%    0.01%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.02%    0.02%        libc-2.26.so  __strchr_avx2 
  0.02%                  interpreter  invokevirtual  182 invokevirtual  
  0.01%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.43%    0.28%  <...other 68 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.41%   97.56%         C2, level 4
  1.77%    1.69%   [kernel.kallsyms]
  0.38%    0.45%           libjvm.so
  0.19%    0.21%        libc-2.26.so
  0.09%    0.02%              [vdso]
  0.06%    0.00%         interpreter
  0.05%    0.02%  libpthread-2.26.so
  0.03%    0.02%      hsdis-amd64.so
  0.00%    0.01%        runtime stub
  0.00%    0.00%      perf-10833.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  25915.416 ± 189.117  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
