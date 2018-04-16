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
# Warmup Iteration   1: 11041.303 ops/s
# Warmup Iteration   2: 25667.053 ops/s
# Warmup Iteration   3: 25935.492 ops/s
# Warmup Iteration   4: 25418.625 ops/s
# Warmup Iteration   5: 25933.213 ops/s
# Warmup Iteration   6: 25776.571 ops/s
# Warmup Iteration   7: 26134.876 ops/s
# Warmup Iteration   8: 26157.281 ops/s
# Warmup Iteration   9: 26131.113 ops/s
# Warmup Iteration  10: 25671.227 ops/s
# Warmup Iteration  11: 25889.487 ops/s
# Warmup Iteration  12: 24225.093 ops/s
# Warmup Iteration  13: 25672.173 ops/s
# Warmup Iteration  14: 24195.962 ops/s
# Warmup Iteration  15: 25628.303 ops/s
# Warmup Iteration  16: 25483.192 ops/s
# Warmup Iteration  17: 25832.557 ops/s
# Warmup Iteration  18: 25903.034 ops/s
# Warmup Iteration  19: 25791.597 ops/s
# Warmup Iteration  20: 26270.953 ops/s
Iteration   1: 26393.258 ops/s
Iteration   2: 25754.092 ops/s
Iteration   3: 26152.795 ops/s
Iteration   4: 26006.837 ops/s
Iteration   5: 26041.265 ops/s
Iteration   6: 24055.328 ops/s
Iteration   7: 25798.360 ops/s
Iteration   8: 25615.128 ops/s
Iteration   9: 26134.472 ops/s
Iteration  10: 25994.824 ops/s
Iteration  11: 26031.676 ops/s
Iteration  12: 26100.930 ops/s
Iteration  13: 26180.914 ops/s
Iteration  14: 25723.421 ops/s
Iteration  15: 26013.879 ops/s
Iteration  16: 25958.588 ops/s
Iteration  17: 26019.149 ops/s
Iteration  18: 26157.543 ops/s
Iteration  19: 26063.470 ops/s
Iteration  20: 25772.849 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  25898.439 ±(99.9%) 409.516 ops/s [Average]
  (min, avg, max) = (24055.328, 25898.439, 26393.258), stdev = 471.599
  CI (99.9%): [25488.923, 26307.955] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 203707 total address lines.
Perf output processed (skipped 23.736 seconds):
 Column 1: cycles (20300 events)
 Column 2: instructions (20393 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 565 (1411 bytes) 

                                                                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                                                      0x00007fa4a1252326: mov    %ecx,%r10d
                                                      0x00007fa4a1252329: add    $0xffffff9f,%r10d
                                                      0x00007fa4a125232d: cmp    $0x1a,%r10d
                                                      0x00007fa4a1252331: jae    0x00007fa4a1252925  ;*if_icmple
                                                                                                    ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%                                               0x00007fa4a1252337: or     $0x10,%r9d         ;*iload_2
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                                                      0x00007fa4a125233b: mov    %ebx,%r10d
                                                      0x00007fa4a125233e: test   %r10d,%r10d
                                                      0x00007fa4a1252341: jne    0x00007fa4a1253409  ;*aload
                                                                                                    ; - com.google.re2j.Machine::match@136 (line 211)
           0.00%                                      0x00007fa4a1252347: mov    %r11d,0x34(%rsp)
           0.02%                                      0x00007fa4a125234c: mov    %r8d,0x28(%rsp)
                                                      0x00007fa4a1252351: mov    %ecx,0x24(%rsp)
                                                      0x00007fa4a1252355: mov    %r10d,0x30(%rsp)
  0.01%    0.00%                                      0x00007fa4a125235a: mov    0x68(%rsp),%r11d
                                                      0x00007fa4a125235f: and    $0x4,%r11d         ;*iand
                                                                                                    ; - com.google.re2j.Machine::match@147 (line 212)
                                                      0x00007fa4a1252363: mov    %r11d,0x38(%rsp)
                                                      0x00007fa4a1252368: mov    %r13,%r10
  0.01%    0.00%                                      0x00007fa4a125236b: shl    $0x3,%r10          ;*getfield q1
                                                                                                    ; - com.google.re2j.Machine::match@53 (line 192)
                                                      0x00007fa4a125236f: mov    %r10,0x50(%rsp)
                                                      0x00007fa4a1252374: xor    %eax,%eax
                                                      0x00007fa4a1252376: xor    %r11d,%r11d
  0.00%    0.01%                                      0x00007fa4a1252379: mov    %r11d,0x3c(%rsp)
                  ╭                                   0x00007fa4a125237e: jmpq   0x00007fa4a12526aa
  0.27%    0.34%  │   ↗↗↗                             0x00007fa4a1252383: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                  │   │││                                                                           ; - com.google.re2j.Machine::step@195 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.16%  │   │││                             0x00007fa4a1252388: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fa4a12538f1
  0.20%    0.10%  │   │││                             0x00007fa4a125238d: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │││                             0x00007fa4a1252393: jne    0x00007fa4a125307d
  0.10%    0.07%  │   │││                             0x00007fa4a1252399: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%  │   │││                             0x00007fa4a125239d: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.02%  │   │││                             0x00007fa4a12523a0: vmovd  %ecx,%xmm3
  0.13%    0.12%  │   │││                             0x00007fa4a12523a4: mov    0x50(%rsp),%rcx
  0.03%    0.02%  │   │││                             0x00007fa4a12523a9: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                  │   │││                                                                           ; implicit exception: dispatches to 0x00007fa4a125390d
  0.01%    0.01%  │   │││                             0x00007fa4a12523ad: vmovd  %xmm3,%ecx
  0.10%    0.12%  │   │││                             0x00007fa4a12523b1: cmp    $0x40,%ecx
                  │   │││                             0x00007fa4a12523b4: jg     0x00007fa4a1253155  ;*if_icmpgt
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.13%  │   │││                             0x00007fa4a12523ba: mov    $0x1,%edi
  0.04%    0.02%  │   │││                             0x00007fa4a12523bf: shl    %cl,%rdi           ;*lshl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.28%  │   │││                             0x00007fa4a12523c2: mov    %rbx,%rcx
  0.01%    0.02%  │   │││                             0x00007fa4a12523c5: and    %rdi,%rcx          ;*land
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%           │   │││                             0x00007fa4a12523c8: test   %rcx,%rcx
                  │   │││                             0x00007fa4a12523cb: jne    0x00007fa4a12531cd  ;*ifeq
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.13%  │   │││                             0x00007fa4a12523d1: vmovd  %xmm3,%ecx
  0.03%    0.02%  │   │││                             0x00007fa4a12523d5: cmp    $0x40,%ecx
                  │   │││                             0x00007fa4a12523d8: jge    0x00007fa4a1253241  ;*if_icmpge
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.03%  │   │││                             0x00007fa4a12523de: mov    0x50(%rsp),%rcx
                  │   │││                             0x00007fa4a12523e3: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.08%  │   │││                             0x00007fa4a12523e7: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.00%  │   │││                             0x00007fa4a12523ea: vmovd  %ecx,%xmm2
  0.05%    0.05%  │   │││                             0x00007fa4a12523ee: mov    0x50(%rsp),%rcx
           0.00%  │   │││                             0x00007fa4a12523f3: mov    0xc(%rcx),%ebp     ;*getfield size
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.06%  │   │││                             0x00007fa4a12523f6: or     %rbx,%rdi
  0.01%    0.01%  │   │││                             0x00007fa4a12523f9: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.10%  │   │││                             0x00007fa4a12523fd: mov    %ebp,%ecx
                  │   │││                             0x00007fa4a12523ff: inc    %ecx
  0.11%    0.06%  │   │││                             0x00007fa4a1252401: mov    0x50(%rsp),%rbx
  0.00%    0.02%  │   │││                             0x00007fa4a1252406: mov    %ecx,0xc(%rbx)     ;*putfield size
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.06%  │   │││                             0x00007fa4a1252409: vmovd  %xmm2,%ecx
  0.01%    0.00%  │   │││                             0x00007fa4a125240d: mov    0xc(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007fa4a1253921
  0.31%    0.25%  │   │││                             0x00007fa4a1252412: cmp    %ebx,%ebp
                  │   │││                             0x00007fa4a1252414: jae    0x00007fa4a1253005
  0.19%    0.23%  │   │││                             0x00007fa4a125241a: mov    0x8(%r12,%rcx,8),%ecx
  0.02%    0.02%  │   │││                             0x00007fa4a125241f: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │   │││                             0x00007fa4a1252425: jne    0x00007fa4a12530dd  ;*aastore
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%    0.00%  │   │││                             0x00007fa4a125242b: vmovd  %xmm2,%ecx
  0.04%    0.02%  │   │││                             0x00007fa4a125242f: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.08%  │   │││                             0x00007fa4a1252433: lea    0x10(%rcx,%rbp,4),%rcx
  0.02%    0.04%  │   │││                             0x00007fa4a1252438: mov    %rdx,%rbx
           0.00%  │   │││                             0x00007fa4a125243b: shr    $0x3,%rbx
  0.05%    0.05%  │   │││                             0x00007fa4a125243f: mov    %ebx,(%rcx)
  0.25%    0.36%  │   │││                             0x00007fa4a1252441: shr    $0x9,%rcx
  0.02%    0.01%  │   │││                             0x00007fa4a1252445: movabs $0x7fa4b13a7000,%rbx
                  │   │││                             0x00007fa4a125244f: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@210 (line 315)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.20%    0.27%  │╭  │││                             0x00007fa4a1252453: jmpq   0x00007fa4a125255c
  0.34%    0.19%  ││  │││              ↗              0x00007fa4a1252458: or     $0x20,%r9d         ;*iload_2
                  ││  │││              │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││  │││              │                                                            ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.21%  ││  │││              │↗             0x00007fa4a125245c: mov    0x60(%rsp),%r10
  0.07%    0.08%  ││  │││              ││             0x00007fa4a1252461: mov    0x14(%r10),%r11d   ;*getfield re2
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@1 (line 280)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.12%  ││  │││              ││             0x00007fa4a1252465: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                  ││  │││              ││                                                           ; implicit exception: dispatches to 0x00007fa4a125388d
  0.44%    0.41%  ││  │││              ││             0x00007fa4a125246b: mov    0x2c(%rsp),%r11d
  0.26%    0.25%  ││  │││              ││             0x00007fa4a1252470: mov    0xc(%r12,%r11,8),%r11d  ;*getfield size
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.08%  ││  │││              ││             0x00007fa4a1252475: mov    0x3c(%rsp),%r8d
  0.03%    0.09%  ││  │││              ││             0x00007fa4a125247a: add    0x20(%rsp),%r8d    ;*iadd
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@340 (line 246)
  0.33%    0.47%  ││  │││              ││             0x00007fa4a125247f: test   %r11d,%r11d
                  ││╭ │││              ││             0x00007fa4a1252482: jle    0x00007fa4a1252564  ;*if_icmpge
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@34 (line 284)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.25%    0.22%  │││ │││              ││             0x00007fa4a1252488: mov    0x70(%rsp),%r10
  0.06%    0.08%  │││ │││              ││             0x00007fa4a125248d: mov    0x10(%r10),%r10d
  0.08%    0.07%  │││ │││              ││             0x00007fa4a1252491: mov    0x2c(%rsp),%ecx
  0.37%    0.34%  │││ │││              ││             0x00007fa4a1252495: mov    0x20(%r12,%rcx,8),%ebx  ;*getfield denseThreadsInstructions
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@22 (line 283)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.28%  │││ │││              ││             0x00007fa4a125249a: vmovd  %ebx,%xmm0
  0.06%    0.07%  │││ │││              ││             0x00007fa4a125249e: mov    0x3c(%rsp),%ebx
  0.09%    0.05%  │││ │││              ││             0x00007fa4a12524a2: mov    $0x1,%ecx
  0.31%    0.38%  │││ │││              ││             0x00007fa4a12524a7: xor    %edx,%edx
  0.25%    0.27%  │││ │││              ││             0x00007fa4a12524a9: cmp    %r10d,%ebx
  0.08%    0.08%  │││ │││              ││             0x00007fa4a12524ac: cmovne %edx,%ecx          ;*invokespecial step
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.49%    0.53%  │││ │││              ││             0x00007fa4a12524af: vmovd  %ecx,%xmm1
  0.25%    0.20%  │││ │││              ││             0x00007fa4a12524b3: mov    0x60(%rsp),%r10
  0.06%    0.11%  │││ │││              ││             0x00007fa4a12524b8: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@16 (line 282)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.09%  │││ │││              ││             0x00007fa4a12524bd: test   %ebp,%ebp
                  │││ │││              ││             0x00007fa4a12524bf: jne    0x00007fa4a1252c6d  ;*iload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@37 (line 287)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.37%    0.34%  │││ │││              ││             0x00007fa4a12524c5: vmovd  %xmm0,%ecx
  0.30%    0.23%  │││ │││              ││             0x00007fa4a12524c9: mov    0xc(%r12,%rcx,8),%r10d  ;*aaload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@95 (line 297)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                  │││ │││              ││                                                           ; implicit exception: dispatches to 0x00007fa4a1252c6d
  0.21%    0.13%  │││ │││              ││             0x00007fa4a12524ce: test   %r10d,%r10d
                  │││ │││              ││             0x00007fa4a12524d1: jbe    0x00007fa4a1252c6d
  0.18%    0.17%  │││ │││              ││             0x00007fa4a12524d7: mov    %r11d,%ecx
  0.28%    0.25%  │││ │││              ││             0x00007fa4a12524da: dec    %ecx
  0.16%    0.23%  │││ │││              ││             0x00007fa4a12524dc: cmp    %r10d,%ecx
                  │││ │││              ││             0x00007fa4a12524df: jae    0x00007fa4a1252c6d
  0.12%    0.13%  │││ │││              ││             0x00007fa4a12524e5: vmovd  %xmm0,%r10d
  0.09%    0.13%  │││ │││              ││             0x00007fa4a12524ea: lea    (%r12,%r10,8),%rsi
  0.26%    0.40%  │││ │││              ││             0x00007fa4a12524ee: xor    %r10d,%r10d        ;*iload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@37 (line 287)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.19%    1.06%  │││ │││↗             ││             0x00007fa4a12524f1: mov    0x10(%rsi,%r10,4),%ecx  ;*aaload
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@95 (line 297)
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.66%    0.65%  │││ ││││             ││             0x00007fa4a12524f6: mov    0xc(%r12,%rcx,8),%edi  ;*getfield op
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@100 (line 299)
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                  │││ ││││             ││                                                           ; implicit exception: dispatches to 0x00007fa4a125383d
  3.33%    3.14%  │││ ││││             ││             0x00007fa4a12524fb: cmp    $0x6,%edi
                  │││╭││││             ││             0x00007fa4a12524fe: je     0x00007fa4a12528ba  ;*if_icmpne
                  ││││││││             ││                                                           ; - com.google.re2j.Machine::step@105 (line 299)
                  ││││││││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.19%    1.15%  ││││││││             ││             0x00007fa4a1252504: cmp    $0xa,%edi
                  ││││╰│││             ││             0x00007fa4a1252507: je     0x00007fa4a1252383  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.34%    1.20%  ││││ │││             ││             0x00007fa4a125250d: cmp    $0xb,%edi
                  ││││ │││             ││             0x00007fa4a1252510: je     0x00007fa4a12529bd  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.20%    1.24%  ││││ │││             ││             0x00007fa4a1252516: cmp    $0x9,%edi
                  ││││ │││             ││             0x00007fa4a1252519: je     0x00007fa4a1252a35  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.39%    1.66%  ││││ │││             ││             0x00007fa4a125251f: cmp    $0xc,%edi
                  ││││ │││             ││             0x00007fa4a1252522: jne    0x00007fa4a1252945  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.22%    1.23%  ││││ │││             ││             0x00007fa4a1252528: mov    0x1c(%r12,%rcx,8),%edi  ;*getfield f0
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.61%    0.60%  ││││ │││             ││             0x00007fa4a125252d: cmp    %eax,%edi
                  ││││ ╰││             ││             0x00007fa4a125252f: je     0x00007fa4a1252383  ;*if_icmpeq
                  ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.55%    1.49%  ││││  ││             ││             0x00007fa4a1252535: mov    0x20(%r12,%rcx,8),%edi  ;*getfield f1
                  ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.76%  ││││  ││             ││             0x00007fa4a125253a: cmp    %eax,%edi
                  ││││  ╰│             ││             0x00007fa4a125253c: je     0x00007fa4a1252383  ;*if_icmpeq
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.85%    1.72%  ││││   │             ││             0x00007fa4a1252542: mov    0x24(%r12,%rcx,8),%edx  ;*getfield f2
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.72%  ││││   │             ││             0x00007fa4a1252547: cmp    %eax,%edx
                  ││││   │             ││             0x00007fa4a1252549: je     0x00007fa4a1252aad  ;*if_icmpeq
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.26%    1.21%  ││││   │             ││             0x00007fa4a125254f: mov    0x28(%r12,%rcx,8),%edx  ;*getfield f3
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@187 (line 314)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.66%    0.51%  ││││   │             ││             0x00007fa4a1252554: cmp    %eax,%edx
                  ││││   │             ││             0x00007fa4a1252556: je     0x00007fa4a1252b25  ;*aload
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@215 (line 318)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.64%    1.80%  │↘││   │             ││             0x00007fa4a125255c: inc    %r10d              ;*iinc
                  │ ││   │             ││                                                           ; - com.google.re2j.Machine::step@226 (line 284)
                  │ ││   │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.50%    0.53%  │ ││   │             ││             0x00007fa4a125255f: cmp    %r11d,%r10d
                  │ ││   ╰             ││             0x00007fa4a1252562: jl     0x00007fa4a12524f1  ;*if_icmpge
                  │ ││                 ││                                                           ; - com.google.re2j.Machine::step@34 (line 284)
                  │ ││                 ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.11%  │ ↘│                 ││             0x00007fa4a1252564: mov    0x2c(%rsp),%r11d
  0.11%    0.19%  │  │                 ││             0x00007fa4a1252569: movzbl 0x18(%r12,%r11,8),%r11d
  0.38%    0.38%  │  │                 ││             0x00007fa4a125256f: test   %r11d,%r11d
                  │  │    ╭            ││             0x00007fa4a1252572: jne    0x00007fa4a1252596  ;*ifeq
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.24%  │  │    │            ││             0x00007fa4a1252574: mov    0x2c(%rsp),%r10d
  0.07%    0.09%  │  │    │            ││             0x00007fa4a1252579: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.14%  │  │    │            ││             0x00007fa4a125257e: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.40%    0.65%  │  │    │            ││             0x00007fa4a1252584: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.85%    1.14%  │  │    │            ││             0x00007fa4a1252589: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.46%    0.66%  │  │    │            ││             0x00007fa4a125258e: test   %ebp,%ebp
                  │  │    │            ││             0x00007fa4a1252590: jne    0x00007fa4a1252e51  ;*invokevirtual clear
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@233 (line 322)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.03%  │  │    ↘            ││             0x00007fa4a1252596: mov    0x60(%rsp),%r10
  0.08%    0.11%  │  │                 ││             0x00007fa4a125259b: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │  │                 ││                                                           ; - com.google.re2j.Machine::match@378 (line 250)
  0.41%    0.51%  │  │                 ││             0x00007fa4a12525a0: mov    0x60(%rsp),%r10
  0.19%    0.36%  │  │                 ││             0x00007fa4a12525a5: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │  │                 ││                                                           ; - com.google.re2j.Machine::match@371 (line 250)
  0.07%    0.06%  │  │                 ││             0x00007fa4a12525aa: mov    0x20(%rsp),%r10d
  0.08%    0.10%  │  │                 ││             0x00007fa4a12525af: test   %r10d,%r10d
                  │  │     ╭           ││             0x00007fa4a12525b2: je     0x00007fa4a12527fa  ;*ifne
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@364 (line 247)
  0.42%    0.56%  │  │     │           ││             0x00007fa4a12525b8: test   %ebp,%ebp
                  │  │     │           ││             0x00007fa4a12525ba: jne    0x00007fa4a1252d35  ;*ifne
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@374 (line 250)
  0.28%    0.33%  │  │     │           ││             0x00007fa4a12525c0: test   %eax,%eax
                  │  │     │           ││             0x00007fa4a12525c2: jne    0x00007fa4a1252e11  ;*ifeq
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@381 (line 250)
  0.13%    0.08%  │  │     │           ││             0x00007fa4a12525c8: cmp    $0xffffffff,%r13d
                  │  │     │╭          ││             0x00007fa4a12525cc: je     0x00007fa4a1252839  ;*if_icmpeq
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@403 (line 258)
  0.05%    0.12%  │  │     ││          ││             0x00007fa4a12525d2: mov    %r13d,0x24(%rsp)
  0.33%    0.52%  │  │     ││          ││             0x00007fa4a12525d7: mov    0x70(%rsp),%r10
  0.20%    0.33%  │  │     ││          ││             0x00007fa4a12525dc: mov    0x10(%r10),%r10d   ;*getfield end
                  │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.14%    0.11%  │  │     ││          ││             0x00007fa4a12525e0: mov    0x34(%rsp),%ecx
  0.09%    0.10%  │  │     ││          ││             0x00007fa4a12525e4: add    %r8d,%ecx
  0.34%    0.53%  │  │     ││          ││             0x00007fa4a12525e7: mov    0x70(%rsp),%r11
  0.27%    0.28%  │  │     ││          ││             0x00007fa4a12525ec: add    0xc(%r11),%ecx     ;*iadd
                  │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.09%  │  │     ││          ││             0x00007fa4a12525f0: cmp    %r10d,%ecx
                  │  │     ││╭         ││             0x00007fa4a12525f3: jge    0x00007fa4a125284d  ;*if_icmpge
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.11%  │  │     │││         ││             0x00007fa4a12525f9: mov    0x14(%r11),%ebp    ;*getfield str
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.32%    0.44%  │  │     │││         ││             0x00007fa4a12525fd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa4a125389d
  0.36%    0.38%  │  │     │││         ││             0x00007fa4a1252602: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │  │     │││         ││             0x00007fa4a1252609: jne    0x00007fa4a1252c31
  0.18%    0.19%  │  │     │││         ││             0x00007fa4a125260f: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.06%  │  │     │││         ││             0x00007fa4a1252613: test   %ecx,%ecx
                  │  │     │││         ││             0x00007fa4a1252615: jl     0x00007fa4a1252d79  ;*iflt
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@1 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.24%    0.43%  │  │     │││         ││             0x00007fa4a125261b: mov    0xc(%rbx),%edi     ;*getfield value
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@6 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.20%    0.24%  │  │     │││         ││             0x00007fa4a125261e: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@9 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
                  │  │     │││         ││                                                           ; implicit exception: dispatches to 0x00007fa4a12538b1
  1.80%    2.56%  │  │     │││         ││             0x00007fa4a1252623: cmp    %ebp,%ecx
                  │  │     │││         ││             0x00007fa4a1252625: jge    0x00007fa4a1252e89  ;*if_icmplt
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@10 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.55%    0.98%  │  │     │││         ││             0x00007fa4a125262b: cmp    %ebp,%ecx
                  │  │     │││         ││             0x00007fa4a125262d: jae    0x00007fa4a1252bed
  0.06%    0.04%  │  │     │││         ││             0x00007fa4a1252633: lea    (%r12,%rdi,8),%r10
  0.01%    0.01%  │  │     │││         ││             0x00007fa4a1252637: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@27 (line 660)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.04%  │  │     │││         ││             0x00007fa4a125263d: cmp    $0xd800,%r10d
                  │  │     │││         ││             0x00007fa4a1252644: jge    0x00007fa4a1252ed5  ;*if_icmplt
                  │  │     │││         ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.58%    0.97%  │  │     │││         ││             0x00007fa4a125264a: shl    $0x3,%r10d         ;*ishl
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.05%    0.05%  │  │     │││         ││             0x00007fa4a125264e: mov    %r10d,%ebx
  0.00%           │  │     │││         ││             0x00007fa4a1252651: and    $0x7,%ebx
  0.76%    0.86%  │  │     │││         ││             0x00007fa4a1252654: or     $0x1,%r10d
  0.06%    0.03%  │  │     │││         ││             0x00007fa4a1252658: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.70%    0.86%  │  │     │││         ││             0x00007fa4a125265b: sar    $0x3,%r10d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1311}
                  │  │     │││         ││                                                           ;*goto
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@441 (line 266)
  0.01%    0.00%  │  │     │││         ││   ↗↗        0x00007fa4a125265f: test   %eax,0x1774c99b(%rip)        # 0x00007fa4b899f000
                  │  │     │││         ││   ││                                                      ;*goto
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@441 (line 266)
                  │  │     │││         ││   ││                                                      ;   {poll}
  0.02%    0.04%  │  │     │││         ││   ││        0x00007fa4a1252665: mov    0x60(%rsp),%r11
  0.02%    0.03%  │  │     │││         ││   ││        0x00007fa4a125266a: mov    0x14(%r11),%ecx    ;*getfield re2
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.76%    0.69%  │  │     │││         ││   ││        0x00007fa4a125266e: vmovd  %ecx,%xmm5
  0.01%    0.01%  │  │     │││         ││   ││        0x00007fa4a1252672: mov    0x28(%r11),%ecx    ;*getfield matchcap
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.01%  │  │     │││         ││   ││        0x00007fa4a1252676: mov    0x50(%rsp),%r11
  0.08%    0.04%  │  │     │││         ││   ││        0x00007fa4a125267b: shr    $0x3,%r11
  0.74%    0.65%  │  │     │││         ││   ││        0x00007fa4a125267f: mov    %r11d,0x2c(%rsp)
  0.02%    0.01%  │  │     │││         ││   ││        0x00007fa4a1252684: mov    0x34(%rsp),%r11d
  0.04%    0.01%  │  │     │││         ││   ││        0x00007fa4a1252689: mov    %r11d,0x20(%rsp)
  0.06%    0.05%  │  │     │││         ││   ││        0x00007fa4a125268e: mov    %r8d,0x3c(%rsp)
  0.63%    0.46%  │  │     │││         ││   ││        0x00007fa4a1252693: mov    %ebx,0x34(%rsp)
  0.03%    0.01%  │  │     │││         ││   ││        0x00007fa4a1252697: mov    %r10d,0x28(%rsp)
  0.02%    0.02%  │  │     │││         ││   ││        0x00007fa4a125269c: mov    0x10(%rsp),%r10
  0.03%    0.03%  │  │     │││         ││   ││        0x00007fa4a12526a1: mov    %r10,0x50(%rsp)
  0.76%    0.46%  │  │     │││         ││   ││        0x00007fa4a12526a6: vmovd  %ecx,%xmm2         ;*aload
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%    0.01%  ↘  │     │││         ││   ││        0x00007fa4a12526aa: mov    0x2c(%rsp),%r11d
  0.03%    0.01%     │     │││         ││   ││        0x00007fa4a12526af: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fa4a125384d
  0.07%    0.08%     │     │││         ││   ││        0x00007fa4a12526b5: test   %r10d,%r10d
                     │     │││╭        ││   ││        0x00007fa4a12526b8: je     0x00007fa4a12526ec  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.50%    0.23%     │     ││││        ││   ││        0x00007fa4a12526ba: mov    0x38(%rsp),%r10d
  0.01%              │     ││││        ││   ││        0x00007fa4a12526bf: test   %r10d,%r10d
                     │     ││││        ││   ││        0x00007fa4a12526c2: jne    0x00007fa4a1252f6d  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@148 (line 212)
           0.00%     │     ││││        ││   ││        0x00007fa4a12526c8: test   %eax,%eax
                     │     ││││        ││   ││        0x00007fa4a12526ca: jne    0x00007fa4a1252fb9  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.03%    0.01%     │     ││││        ││   ││        0x00007fa4a12526d0: vmovd  %xmm5,%r10d
  0.51%    0.81%     │     ││││        ││   ││        0x00007fa4a12526d5: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007fa4a12538c1
  0.00%    0.01%     │     ││││        ││   ││        0x00007fa4a12526da: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                     │     ││││        ││   ││                                                      ; - java.lang.String::isEmpty@1 (line 635)
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007fa4a12538d1
  0.00%    0.03%     │     ││││        ││   ││        0x00007fa4a12526df: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                     │     ││││        ││   ││                                                      ; - java.lang.String::isEmpty@4 (line 635)
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007fa4a12538e1
  1.52%    1.66%     │     ││││        ││   ││        0x00007fa4a12526e4: test   %ebp,%ebp
                     │     ││││        ││   ││        0x00007fa4a12526e6: jne    0x00007fa4a1252f25  ;*iload_3
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.67%    0.61%     │     │││↘        ││   ││        0x00007fa4a12526ec: test   %eax,%eax
                     │     │││         ││   ││        0x00007fa4a12526ee: jne    0x00007fa4a1252ce5  ;*ifne
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@279 (line 237)
  0.02%    0.01%     │     │││         ││   ││        0x00007fa4a12526f4: mov    0x60(%rsp),%r10
  0.01%    0.01%     │     │││         ││   ││        0x00007fa4a12526f9: movzbl 0x11(%r10),%ebx    ;*getfield captures
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.03%    0.03%     │     │││         ││   ││        0x00007fa4a12526fe: test   %ebx,%ebx
  0.81%    0.46%     │     │││         ││   ││        0x00007fa4a1252700: jne    0x00007fa4a1252dc1  ;*ifeq
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.00%              │     │││         ││   ││        0x00007fa4a1252706: mov    0x18(%r10),%r10d   ;*getfield prog
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@297 (line 243)
  0.05%    0.02%     │     │││         ││   ││        0x00007fa4a125270a: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield startInst
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                     │     │││         ││   ││                                                      ; implicit exception: dispatches to 0x00007fa4a125385d
  0.03%    0.03%     │     │││         ││   ││        0x00007fa4a125270f: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fa4a125386d
  0.87%    0.54%     │     │││         ││   ││        0x00007fa4a1252714: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                     │     │││         ││   ││        0x00007fa4a125271b: jne    0x00007fa4a1252b91  ;*ifeq
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.23%    0.25%     │     │││         ││   ││        0x00007fa4a1252721: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%              │     │││         ││   ││        0x00007fa4a1252725: mov    0x2c(%rsp),%r11d
           0.01%     │     │││         ││   ││        0x00007fa4a125272a: lea    (%r12,%r11,8),%r10  ;*aload
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.45%    0.14%     │     │││         ││   ││        0x00007fa4a125272e: mov    %r10,0x10(%rsp)
  0.26%    0.14%     │     │││         ││   ││        0x00007fa4a1252733: vmovd  %xmm2,%r11d
                     │     │││         ││   ││        0x00007fa4a1252738: mov    %r11,%r8
  0.03%    0.02%     │     │││         ││   ││        0x00007fa4a125273b: shl    $0x3,%r8           ;*getfield matchcap
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.48%    0.32%     │     │││         ││   ││        0x00007fa4a125273f: mov    %r10,%rdx
  0.20%    0.15%     │     │││         ││   ││        0x00007fa4a1252742: mov    0x3c(%rsp),%ecx
                     │     │││         ││   ││        0x00007fa4a1252746: xor    %edi,%edi
  0.01%    0.02%     │     │││         ││   ││        0x00007fa4a1252748: mov    0x60(%rsp),%r10
  0.49%    0.45%     │     │││         ││   ││        0x00007fa4a125274d: mov    %r10,(%rsp)
  0.28%    0.17%     │     │││         ││   ││        0x00007fa4a1252751: mov    %ebx,0x8(%rsp)
           0.00%     │     │││         ││   ││        0x00007fa4a1252755: xchg   %ax,%ax
  0.00%              │     │││         ││   ││        0x00007fa4a1252757: callq  0x00007fa4a1046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1564}
                     │     │││         ││   ││                                                      ;*invokevirtual add
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                     │     │││         ││   ││                                                      ;   {optimized virtual_call}
  0.21%    0.25%     │     │││         ││   ││        0x00007fa4a125275c: mov    0x24(%rsp),%eax
  0.12%    0.11%     │     │││         ││   ││        0x00007fa4a1252760: test   %eax,%eax
                     │     │││ ╭       ││   ││        0x00007fa4a1252762: jl     0x00007fa4a12527e9  ;*ifge
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.49%    0.49%     │     │││ │       ││   ││        0x00007fa4a1252768: xor    %r9d,%r9d          ;*iload_0
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.25%     │     │││ │       ││↗  ││        0x00007fa4a125276b: cmp    $0xa,%eax
                     │     │││ │╭      │││  ││        0x00007fa4a125276e: je     0x00007fa4a125285a  ;*iload_1
                     │     │││ ││      │││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │     │││ ││      │││  ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.06%     │     │││ ││      │││  ││↗       0x00007fa4a1252774: mov    0x28(%rsp),%r13d
  0.02%    0.04%     │     │││ ││      │││  │││       0x00007fa4a1252779: test   %r13d,%r13d
                     │     │││ ││╭     │││  │││       0x00007fa4a125277c: jl     0x00007fa4a12527f4  ;*iload_1
                     │     │││ │││     │││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │     │││ │││     │││  │││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.51%    0.47%     │     │││ │││     │││↗ │││       0x00007fa4a125277e: cmp    $0xa,%r13d
                     │     │││ │││╭    ││││ │││       0x00007fa4a1252782: je     0x00007fa4a1252863  ;*iload_0
                     │     │││ ││││    ││││ │││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │     │││ ││││    ││││ │││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.16%     │     │││ ││││    ││││ │││↗      0x00007fa4a1252788: mov    0x24(%rsp),%r11d
  0.05%    0.03%     │     │││ ││││    ││││ ││││      0x00007fa4a125278d: add    $0xffffffbf,%r11d
  0.02%    0.03%     │     │││ ││││    ││││ ││││      0x00007fa4a1252791: cmp    $0x1a,%r11d
                     │     │││ ││││╭   ││││ ││││      0x00007fa4a1252795: jb     0x00007fa4a12527aa  ;*if_icmple
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.47%     │     │││ │││││   ││││ ││││      0x00007fa4a1252797: mov    0x24(%rsp),%r10d
  0.24%    0.21%     │     │││ │││││   ││││ ││││      0x00007fa4a125279c: add    $0xffffff9f,%r10d
  0.06%    0.06%     │     │││ │││││   ││││ ││││      0x00007fa4a12527a0: cmp    $0x1a,%r10d
                     │     │││ │││││╭  ││││ ││││      0x00007fa4a12527a4: jae    0x00007fa4a125286c  ;*iconst_1
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.03%     │     │││ ││││↘│  ││││ ││││↗     0x00007fa4a12527aa: mov    $0x1,%ebp          ;*ireturn
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.37%    0.41%     │     │││ ││││ │  ││││ │││││↗    0x00007fa4a12527af: mov    0x28(%rsp),%r11d
  0.14%    0.19%     │     │││ ││││ │  ││││ ││││││    0x00007fa4a12527b4: add    $0xffffffbf,%r11d
  0.07%    0.10%     │     │││ ││││ │  ││││ ││││││    0x00007fa4a12527b8: cmp    $0x1a,%r11d
                     │     │││ ││││ │╭ ││││ ││││││    0x00007fa4a12527bc: jb     0x00007fa4a12527d1  ;*if_icmple
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.06%     │     │││ ││││ ││ ││││ ││││││    0x00007fa4a12527be: mov    0x28(%rsp),%r10d
  0.35%    0.43%     │     │││ ││││ ││ ││││ ││││││    0x00007fa4a12527c3: add    $0xffffff9f,%r10d
  0.15%    0.18%     │     │││ ││││ ││ ││││ ││││││    0x00007fa4a12527c7: cmp    $0x1a,%r10d
                     │     │││ ││││ ││╭││││ ││││││    0x00007fa4a12527cb: jae    0x00007fa4a1252895  ;*iconst_1
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.11%     │     │││ ││││ │↘│││││ ││││││↗   0x00007fa4a12527d1: mov    $0x1,%r11d         ;*ireturn
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.19%     │     │││ ││││ │ │││││ │││││││↗  0x00007fa4a12527d7: cmp    %r11d,%ebp
                     │     │││ ││││ │ │╰│││ ││││││││  0x00007fa4a12527da: je     0x00007fa4a1252458  ;*if_icmpeq
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.03%     │     │││ ││││ │ │ │││ ││││││││  0x00007fa4a12527e0: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%     │     │││ ││││ │ │ ╰││ ││││││││  0x00007fa4a12527e4: jmpq   0x00007fa4a125245c
           0.01%     │     │││ ↘│││ │ │  ││ ││││││││  0x00007fa4a12527e9: mov    $0x5,%r9d
                     │     │││  │││ │ │  ╰│ ││││││││  0x00007fa4a12527ef: jmpq   0x00007fa4a125276b
  0.01%    0.01%     │     │││  │↘│ │ │   │ ││││││││  0x00007fa4a12527f4: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │     │││  │ │ │ │   │ ││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                     │     │││  │ │ │ │   ╰ ││││││││  0x00007fa4a12527f8: jmp    0x00007fa4a125277e
  0.01%    0.02%     │     ↘││  │ │ │ │     ││││││││  0x00007fa4a12527fa: test   %ebp,%ebp
                     │      ││  │ │ │ │     ││││││││  0x00007fa4a12527fc: jne    0x00007fa4a125360d  ;*ifeq
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%              │      ││  │ │ │ │     ││││││││  0x00007fa4a1252802: mov    0x50(%rsp),%r10
           0.01%     │      ││  │ │ │ │     ││││││││  0x00007fa4a1252807: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007fa4a125398d
  0.01%    0.01%     │      ││  │ │ │ │     ││││││││  0x00007fa4a125280c: test   %r11d,%r11d
                     │      ││  │ │ │ │    ╭││││││││  0x00007fa4a125280f: jne    0x00007fa4a125282a  ;*ifeq
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a1252811: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a1252815: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a125281a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a125281e: mov    %r12d,0xc(%r10)    ;*putfield size
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a1252822: test   %ebp,%ebp
                     │      ││  │ │ │ │    │││││││││  0x00007fa4a1252824: jne    0x00007fa4a12536ad  ;*if_icmpne
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.01%              │      ││  │ │ │ │    ↘││││││││  0x00007fa4a125282a: add    $0xb0,%rsp
  0.00%              │      ││  │ │ │ │     ││││││││  0x00007fa4a1252831: pop    %rbp
                     │      ││  │ │ │ │     ││││││││  0x00007fa4a1252832: test   %eax,0x1774c7c8(%rip)        # 0x00007fa4b899f000
                     │      ││  │ │ │ │     ││││││││                                                ;   {poll_return}
  0.00%    0.00%     │      ││  │ │ │ │     ││││││││  0x00007fa4a1252838: retq   
  0.00%              │      ↘│  │ │ │ │     ││││││││  0x00007fa4a1252839: mov    %r13d,0x24(%rsp)
  0.01%    0.01%     │       │  │ │ │ │     ││││││││  0x00007fa4a125283e: mov    0x34(%rsp),%ebx
           0.00%     │       │  │ │ │ │     ││││││││  0x00007fa4a1252842: mov    $0xffffffff,%r10d
                     │       │  │ │ │ │     ╰│││││││  0x00007fa4a1252848: jmpq   0x00007fa4a125265f
  0.00%    0.01%     │       ↘  │ │ │ │      │││││││  0x00007fa4a125284d: mov    $0xffffffff,%r10d
           0.00%     │          │ │ │ │      │││││││  0x00007fa4a1252853: xor    %ebx,%ebx
           0.00%     │          │ │ │ │      ╰││││││  0x00007fa4a1252855: jmpq   0x00007fa4a125265f
  0.01%    0.00%     │          ↘ │ │ │       ││││││  0x00007fa4a125285a: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                     │            │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.01%     │            │ │ │       ╰│││││  0x00007fa4a125285e: jmpq   0x00007fa4a1252774
           0.00%     │            ↘ │ │        │││││  0x00007fa4a1252863: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                     │              │ │        │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%     │              │ │        ╰││││  0x00007fa4a1252867: jmpq   0x00007fa4a1252788
  0.02%    0.00%     │              ↘ │         ││││  0x00007fa4a125286c: mov    0x24(%rsp),%r11d
  0.09%    0.12%     │                │         ││││  0x00007fa4a1252871: add    $0xffffffd0,%r11d
  0.02%    0.05%     │                │         ││││  0x00007fa4a1252875: cmp    $0xa,%r11d
                     │                │         ╰│││  0x00007fa4a1252879: jb     0x00007fa4a12527aa  ;*if_icmple
                     │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                │          │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%     │                │          │││  0x00007fa4a125287f: mov    0x24(%rsp),%r10d
  0.00%    0.01%     │                │          │││  0x00007fa4a1252884: cmp    $0x5f,%r10d
                     │                │          │││  0x00007fa4a1252888: je     0x00007fa4a125376d  ;*if_icmpne
                     │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                │          │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.12%     │                │          │││  0x00007fa4a125288e: xor    %ebp,%ebp
  0.03%    0.04%     │                │          ╰││  0x00007fa4a1252890: jmpq   0x00007fa4a12527af
  0.01%    0.04%     │                ↘           ││  0x00007fa4a1252895: mov    0x28(%rsp),%r11d
  0.04%    0.03%     │                            ││  0x00007fa4a125289a: add    $0xffffffd0,%r11d
  0.05%    0.03%     │                            ││  0x00007fa4a125289e: cmp    $0xa,%r11d
                     │                            ╰│  0x00007fa4a12528a2: jb     0x00007fa4a12527d1  ;*if_icmple
                     │                             │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                             │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.01%     │                             │  0x00007fa4a12528a8: cmp    $0x5f,%r13d
                     │                             │  0x00007fa4a12528ac: je     0x00007fa4a12537a9  ;*if_icmpne
                     │                             │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                             │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.02%     │                             │  0x00007fa4a12528b2: xor    %r11d,%r11d
  0.01%    0.01%     │                             ╰  0x00007fa4a12528b5: jmpq   0x00007fa4a12527d7
           0.00%     ↘                                0x00007fa4a12528ba: mov    0x60(%rsp),%rcx
                                                      0x00007fa4a12528bf: movb   $0x1,0x10(%rcx)    ;*putfield matched
                                                                                                    ; - com.google.re2j.Machine::step@167 (line 307)
                                                                                                    ; - com.google.re2j.Machine::match@359 (line 246)
                                                      0x00007fa4a12528c3: test   %r14d,%r14d
                                                      0x00007fa4a12528c6: jne    0x00007fa4a12536bd  ;*ifne
                                                                                                    ; - com.google.re2j.Machine::step@172 (line 308)
                                                                                                    ; - com.google.re2j.Machine::match@359 (line 246)
                                                      0x00007fa4a12528cc: mov    0x2c(%rsp),%r10d
                                                      0x00007fa4a12528d1: movzbl 0x18(%r12,%r10,8),%r11d
                                                      0x00007fa4a12528d7: test   %r11d,%r11d
....................................................................................................
 58.84%   60.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 540 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007fa4a123a940: mov    0x8(%rsi),%r10d
                     0x00007fa4a123a944: shl    $0x3,%r10
                     0x00007fa4a123a948: cmp    %r10,%rax
                     0x00007fa4a123a94b: jne    0x00007fa4a1045e20  ;   {runtime_call}
                     0x00007fa4a123a951: data16 xchg %ax,%ax
                     0x00007fa4a123a954: nopl   0x0(%rax,%rax,1)
                     0x00007fa4a123a95c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.69%    0.67%     0x00007fa4a123a960: mov    %eax,-0x14000(%rsp)
           0.02%     0x00007fa4a123a967: push   %rbp
  0.52%    0.52%     0x00007fa4a123a968: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.23%    0.25%     0x00007fa4a123a96c: vmovq  %r8,%xmm5
  0.01%    0.00%     0x00007fa4a123a971: vmovq  %rsi,%xmm4
  0.42%    0.46%     0x00007fa4a123a976: mov    %ecx,%r14d
  0.23%    0.24%     0x00007fa4a123a979: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.00%    0.00%     0x00007fa4a123a97c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007fa4a123b299
  0.01%    0.01%     0x00007fa4a123a980: cmp    $0x40,%ecx
                     0x00007fa4a123a983: jg     0x00007fa4a123ae41  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.42%    0.47%     0x00007fa4a123a989: mov    $0x1,%esi
  0.22%    0.24%     0x00007fa4a123a98e: mov    $0x1,%r8d
                     0x00007fa4a123a994: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.76%    0.69%     0x00007fa4a123a997: mov    %r11,%r10
  0.00%              0x00007fa4a123a99a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.01%     0x00007fa4a123a99d: xor    %r13d,%r13d
  0.52%    0.46%     0x00007fa4a123a9a0: test   %r10,%r10
                     0x00007fa4a123a9a3: jne    0x00007fa4a123ae75  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.23%    0.23%     0x00007fa4a123a9a9: cmp    $0x40,%ecx
                     0x00007fa4a123a9ac: jge    0x00007fa4a123aeb5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
           0.00%     0x00007fa4a123a9b2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%              0x00007fa4a123a9b6: vmovq  %xmm4,%r10
  0.48%    0.59%     0x00007fa4a123a9bb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.23%    0.19%     0x00007fa4a123a9bf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.01%     0x00007fa4a123a9c2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007fa4a123a9c6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa4a123b2ad
  0.49%    0.54%     0x00007fa4a123a9cb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fa4a123a9d2: jne    0x00007fa4a123ad25
  0.25%    0.25%     0x00007fa4a123a9d8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                     0x00007fa4a123a9dc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.00%     0x00007fa4a123a9e0: cmp    $0x40,%ecx
                     0x00007fa4a123a9e3: jg     0x00007fa4a123aee9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.47%    0.37%     0x00007fa4a123a9e9: mov    $0x1,%r10d
  0.25%    0.27%     0x00007fa4a123a9ef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.54%    0.19%     0x00007fa4a123a9f2: mov    %r8,%rbx
  0.22%    0.26%     0x00007fa4a123a9f5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                     0x00007fa4a123a9f8: test   %rbx,%rbx
                     0x00007fa4a123a9fb: jne    0x00007fa4a123af25  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.03%     0x00007fa4a123aa01: cmp    $0x40,%ecx
                     0x00007fa4a123aa04: jge    0x00007fa4a123af6d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.60%    0.13%     0x00007fa4a123aa0a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.16%     0x00007fa4a123aa0d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%              0x00007fa4a123aa11: mov    0x88(%rsp),%ecx
  0.03%    0.01%     0x00007fa4a123aa18: test   %ecx,%ecx
                     0x00007fa4a123aa1a: jne    0x00007fa4a123afa9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.51%    0.18%     0x00007fa4a123aa20: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.25%    0.19%     0x00007fa4a123aa23: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.01%     0x00007fa4a123aa26: mov    %edi,%r10d
  0.02%    0.02%     0x00007fa4a123aa29: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.41%    0.65%     0x00007fa4a123aa2c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.18%    0.08%     0x00007fa4a123aa30: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007fa4a123b2d5
  0.00%              0x00007fa4a123aa35: cmp    %ebx,%edi
                  ╭  0x00007fa4a123aa37: jae    0x00007fa4a123aca8
  0.03%    0.00%  │  0x00007fa4a123aa3d: vmovd  %r10d,%xmm2
  0.39%    0.49%  │  0x00007fa4a123aa42: vmovd  %eax,%xmm0
  0.26%    0.12%  │  0x00007fa4a123aa46: mov    %edi,%eax
  0.01%           │  0x00007fa4a123aa48: vmovd  %xmm0,%r10d
  0.03%    0.04%  │  0x00007fa4a123aa4d: mov    0x8(%r12,%r10,8),%r10d
  0.40%    0.61%  │  0x00007fa4a123aa52: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fa4a123aa59: jne    0x00007fa4a123ad55  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.30%  │  0x00007fa4a123aa5f: vmovq  %xmm4,%r10
                  │  0x00007fa4a123aa64: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.03%    0.03%  │  0x00007fa4a123aa68: mov    %r11,%rcx
  0.42%    0.49%  │  0x00007fa4a123aa6b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.25%  │  0x00007fa4a123aa6f: vmovd  %xmm0,%r10d
  0.00%    0.01%  │  0x00007fa4a123aa74: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.05%  │  0x00007fa4a123aa78: lea    0x10(%r11,%rdi,4),%r10
  0.54%    0.46%  │  0x00007fa4a123aa7d: mov    %ecx,(%r10)
  0.70%    0.56%  │  0x00007fa4a123aa80: shr    $0x9,%r10
           0.00%  │  0x00007fa4a123aa84: movabs $0x7fa4b13a7000,%rdi
  0.01%    0.02%  │  0x00007fa4a123aa8e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.60%    0.58%  │  0x00007fa4a123aa92: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa4a123b2f1
  0.18%    0.21%  │  0x00007fa4a123aa97: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fa4a123aa9e: jne    0x00007fa4a123ad95
  0.01%    0.01%  │  0x00007fa4a123aaa4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.01%  │  0x00007fa4a123aaa8: vmovq  %r10,%xmm1
  0.51%    0.28%  │  0x00007fa4a123aaad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.95%    1.00%  │  0x00007fa4a123aab1: vmovd  %ecx,%xmm3
  0.17%    0.17%  │  0x00007fa4a123aab5: cmp    $0x40,%ecx
                  │  0x00007fa4a123aab8: jg     0x00007fa4a123afe5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.00%  │  0x00007fa4a123aabe: mov    $0x1,%r10d
  0.35%    0.30%  │  0x00007fa4a123aac4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.44%    0.60%  │  0x00007fa4a123aac7: mov    %r8,%rcx
  0.40%    0.35%  │  0x00007fa4a123aaca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.23%  │  0x00007fa4a123aacd: test   %rcx,%rcx
                  │  0x00007fa4a123aad0: jne    0x00007fa4a123b021  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.18%  │  0x00007fa4a123aad6: vmovd  %xmm3,%ecx
  0.03%    0.05%  │  0x00007fa4a123aada: cmp    $0x40,%ecx
                  │  0x00007fa4a123aadd: jge    0x00007fa4a123b065  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.41%    0.55%  │  0x00007fa4a123aae3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.09%  │  0x00007fa4a123aae6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.04%  │  0x00007fa4a123aaea: mov    %eax,%ecx
  0.04%    0.02%  │  0x00007fa4a123aaec: add    $0x2,%ecx
  0.50%    0.43%  │  0x00007fa4a123aaef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.19%  │  0x00007fa4a123aaf2: mov    %eax,%r10d
  0.02%    0.02%  │  0x00007fa4a123aaf5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007fa4a123aaf9: cmp    %ebx,%r10d
                  │  0x00007fa4a123aafc: jae    0x00007fa4a123ace5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.51%    0.65%  │  0x00007fa4a123ab02: vmovd  %r9d,%xmm3
  0.14%    0.26%  │  0x00007fa4a123ab07: vmovq  %xmm4,%r9
  0.03%    0.04%  │  0x00007fa4a123ab0c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.02%    0.04%  │  0x00007fa4a123ab10: vmovq  %xmm1,%r9
  0.46%    0.57%  │  0x00007fa4a123ab15: mov    %r9,%rcx
  0.17%    0.21%  │  0x00007fa4a123ab18: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │  0x00007fa4a123ab1c: movslq %eax,%r9
  0.03%    0.01%  │  0x00007fa4a123ab1f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.49%    0.57%  │  0x00007fa4a123ab23: mov    %r9,%rbx
  0.15%    0.26%  │  0x00007fa4a123ab26: add    $0x14,%rbx
  0.03%    0.05%  │  0x00007fa4a123ab2a: mov    %ecx,(%rbx)
  0.04%    0.04%  │  0x00007fa4a123ab2c: mov    %rbx,%rcx
  0.54%    0.48%  │  0x00007fa4a123ab2f: shr    $0x9,%rcx
  0.18%    0.11%  │  0x00007fa4a123ab33: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.04%  │  0x00007fa4a123ab37: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fa4a123b315
  0.06%    0.02%  │  0x00007fa4a123ab3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fa4a123ab42: jne    0x00007fa4a123adc1
  0.47%    0.47%  │  0x00007fa4a123ab48: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.12%    0.23%  │  0x00007fa4a123ab4c: vmovq  %rcx,%xmm0
  0.06%    0.01%  │  0x00007fa4a123ab51: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.00%  │  0x00007fa4a123ab54: vmovd  %ecx,%xmm2
  0.54%    0.46%  │  0x00007fa4a123ab58: cmp    $0x40,%ecx
                  │  0x00007fa4a123ab5b: jg     0x00007fa4a123b0a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.22%    0.19%  │  0x00007fa4a123ab61: mov    $0x1,%ebx
  0.04%    0.03%  │  0x00007fa4a123ab66: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.72%    0.62%  │  0x00007fa4a123ab69: mov    %r8,%rcx
  0.05%    0.04%  │  0x00007fa4a123ab6c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.01%  │  0x00007fa4a123ab6f: test   %rcx,%rcx
                  │  0x00007fa4a123ab72: jne    0x00007fa4a123b0dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.53%    0.49%  │  0x00007fa4a123ab78: vmovd  %xmm2,%ecx
  0.15%    0.19%  │  0x00007fa4a123ab7c: cmp    $0x40,%ecx
                  │  0x00007fa4a123ab7f: jge    0x00007fa4a123b125  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.09%  │  0x00007fa4a123ab85: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.04%  │  0x00007fa4a123ab88: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.43%    0.35%  │  0x00007fa4a123ab8c: vmovq  %xmm4,%rcx
  0.13%    0.12%  │  0x00007fa4a123ab91: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.05%    0.03%  │  0x00007fa4a123ab94: mov    %r9,%rbx
  0.01%    0.01%  │  0x00007fa4a123ab97: add    $0x18,%rbx
  0.39%    0.40%  │  0x00007fa4a123ab9b: vmovq  %xmm0,%rcx
  0.17%    0.20%  │  0x00007fa4a123aba0: shr    $0x3,%rcx
  0.05%    0.04%  │  0x00007fa4a123aba4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.01%  │  0x00007fa4a123aba6: mov    %eax,%ecx
  0.57%    0.31%  │  0x00007fa4a123aba8: add    $0x3,%ecx
  0.14%    0.11%  │  0x00007fa4a123abab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.06%  │  0x00007fa4a123abae: shr    $0x9,%rbx
  0.03%    0.04%  │  0x00007fa4a123abb2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.50%    0.33%  │  0x00007fa4a123abb6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fa4a123b33d
  0.12%    0.13%  │  0x00007fa4a123abbb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fa4a123abc1: jne    0x00007fa4a123aded
  0.04%    0.05%  │  0x00007fa4a123abc7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.04%  │  0x00007fa4a123abcb: vmovq  %rcx,%xmm0
  0.37%    0.54%  │  0x00007fa4a123abd0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.17%    0.21%  │  0x00007fa4a123abd3: vmovd  %ecx,%xmm1
  0.08%    0.05%  │  0x00007fa4a123abd7: cmp    $0x40,%ecx
                  │  0x00007fa4a123abda: jg     0x00007fa4a123b161  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.03%  │  0x00007fa4a123abe0: mov    $0x1,%ebx
  0.51%    0.48%  │  0x00007fa4a123abe5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.26%    0.27%  │  0x00007fa4a123abe8: mov    %r8,%rcx
  0.50%    0.28%  │  0x00007fa4a123abeb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.06%  │  0x00007fa4a123abee: test   %rcx,%rcx
                  │  0x00007fa4a123abf1: jne    0x00007fa4a123b19d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.06%  │  0x00007fa4a123abf7: vmovd  %xmm1,%ecx
  0.03%    0.07%  │  0x00007fa4a123abfb: cmp    $0x40,%ecx
                  │  0x00007fa4a123abfe: jge    0x00007fa4a123b1e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.50%    0.53%  │  0x00007fa4a123ac04: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.19%    0.25%  │  0x00007fa4a123ac08: vmovq  %xmm4,%r10
  0.04%    0.10%  │  0x00007fa4a123ac0d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.02%    0.02%  │  0x00007fa4a123ac11: mov    %r9,%rcx
  0.52%    0.53%  │  0x00007fa4a123ac14: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.14%  │  0x00007fa4a123ac18: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.06%  │  0x00007fa4a123ac1b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.04%  │  0x00007fa4a123ac1f: vmovq  %xmm0,%r10
  0.49%    0.52%  │  0x00007fa4a123ac24: shr    $0x3,%r10
  0.12%    0.20%  │  0x00007fa4a123ac28: mov    %r10d,(%rcx)
  0.09%    0.07%  │  0x00007fa4a123ac2b: mov    %rcx,%r10
  0.02%    0.02%  │  0x00007fa4a123ac2e: shr    $0x9,%r10
  0.49%    0.72%  │  0x00007fa4a123ac32: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.17%  │  0x00007fa4a123ac36: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fa4a123b365
  0.05%    0.11%  │  0x00007fa4a123ac3b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fa4a123ac42: jne    0x00007fa4a123ae19
  0.04%    0.03%  │  0x00007fa4a123ac48: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.40%    0.49%  │  0x00007fa4a123ac4c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.15%  │  0x00007fa4a123ac50: cmp    $0x40,%ecx
                  │  0x00007fa4a123ac53: jg     0x00007fa4a123b221  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.09%  │  0x00007fa4a123ac59: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.77%    0.76%  │  0x00007fa4a123ac5c: mov    %r8,%rbx
  0.05%    0.09%  │  0x00007fa4a123ac5f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.03%  │  0x00007fa4a123ac62: test   %rbx,%rbx
                  │  0x00007fa4a123ac65: jne    0x00007fa4a123b245  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.48%    0.52%  │  0x00007fa4a123ac6b: cmp    $0x40,%ecx
                  │  0x00007fa4a123ac6e: jge    0x00007fa4a123b275  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.18%    0.21%  │  0x00007fa4a123ac74: or     %rsi,%r8
  0.07%    0.05%  │  0x00007fa4a123ac77: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.04%  │  0x00007fa4a123ac7b: add    $0x20,%r9
  0.45%    0.49%  │  0x00007fa4a123ac7f: mov    %r10,%r11
  0.21%    0.15%  │  0x00007fa4a123ac82: shr    $0x3,%r11
  0.05%    0.03%  │  0x00007fa4a123ac86: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.09%  │  0x00007fa4a123ac89: mov    %r9,%r10
  0.43%    0.42%  │  0x00007fa4a123ac8c: add    $0x5,%eax
  0.22%    0.12%  │  0x00007fa4a123ac8f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  │  0x00007fa4a123ac92: shr    $0x9,%r10
  0.01%    0.03%  │  0x00007fa4a123ac96: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.52%    0.31%  │  0x00007fa4a123ac9a: xor    %eax,%eax
  0.20%    0.22%  │  0x00007fa4a123ac9c: add    $0x70,%rsp
  0.04%    0.05%  │  0x00007fa4a123aca0: pop    %rbp
  0.02%    0.05%  │  0x00007fa4a123aca1: test   %eax,0x17764359(%rip)        # 0x00007fa4b899f000
                  │                                                ;   {poll_return}
  0.40%    0.63%  │  0x00007fa4a123aca7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007fa4a123aca8: mov    $0xffffffe4,%esi
                     0x00007fa4a123acad: vmovq  %xmm4,%rbp
                     0x00007fa4a123acb2: mov    %rdx,(%rsp)
                     0x00007fa4a123acb6: mov    %r14d,0x88(%rsp)
                     0x00007fa4a123acbe: vmovsd %xmm5,0x8(%rsp)
                     0x00007fa4a123acc4: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.08%   36.41%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.84%   60.78%         C2, level 4  com.google.re2j.Machine::match, version 565 (1411 bytes) 
 37.08%   36.41%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 540 (839 bytes) 
  0.41%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 585 (342 bytes) 
  0.35%    0.34%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.19%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 585 (28 bytes) 
  0.18%    0.08%         C2, level 4  com.google.re2j.Machine::match, version 565 (312 bytes) 
  0.12%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 585 (8 bytes) 
  0.12%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 585 (0 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 585 (12 bytes) 
  0.09%    0.01%         C2, level 4  java.util.Collections::shuffle, version 593 (120 bytes) 
  0.09%    0.07%         C2, level 4  java.util.Collections::shuffle, version 593 (174 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 624 (96 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (29 bytes) 
  0.04%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.04%    0.01%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> (27 bytes) 
  0.04%    0.00%              [vdso]  [unknown] (2 bytes) 
  0.03%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 565 (11 bytes) 
  0.03%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 585 (54 bytes) 
  2.01%    1.71%  <...other 403 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.06%   60.89%         C2, level 4  com.google.re2j.Machine::match, version 565 
 37.08%   36.41%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 540 
  1.39%    1.15%   [kernel.kallsyms]  [unknown] 
  1.10%    0.51%         C2, level 4  com.google.re2j.RE2::match, version 585 
  0.26%    0.10%         C2, level 4  java.util.Collections::shuffle, version 593 
  0.14%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 624 
  0.09%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime 
  0.04%    0.03%        libc-2.26.so  vfprintf 
  0.04%    0.00%              [vdso]  [unknown] 
  0.03%    0.07%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%    0.02%           libjvm.so  fileStream::write 
  0.03%    0.04%      hsdis-amd64.so  [unknown] 
  0.02%                    libjvm.so  os::javaTimeNanos 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.05%           libjvm.so  RelocIterator::initialize 
  0.01%    0.02%           libjvm.so  xmlTextStream::write 
  0.01%    0.02%           libjvm.so  PSPromotionManager::process_array_chunk 
  0.48%    0.26%  <...other 75 warm methods...>
....................................................................................................
 99.99%   99.80%  <totals>

....[Distribution by Source]........................................................................
 97.65%   97.96%         C2, level 4
  1.39%    1.15%   [kernel.kallsyms]
  0.57%    0.57%           libjvm.so
  0.15%    0.21%        libc-2.26.so
  0.08%    0.01%              [vdso]
  0.06%    0.03%  libpthread-2.26.so
  0.03%    0.04%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.01%         C1, level 3
  0.01%                 runtime stub
  0.00%                    libnet.so
  0.00%                    libzip.so
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  25898.439 ± 409.516  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
