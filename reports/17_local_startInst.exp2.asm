# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14397.332 ops/s
# Warmup Iteration   2: 26229.074 ops/s
# Warmup Iteration   3: 26640.599 ops/s
# Warmup Iteration   4: 26640.990 ops/s
# Warmup Iteration   5: 26722.984 ops/s
# Warmup Iteration   6: 26044.028 ops/s
# Warmup Iteration   7: 27094.819 ops/s
# Warmup Iteration   8: 27069.274 ops/s
# Warmup Iteration   9: 27136.064 ops/s
# Warmup Iteration  10: 27123.946 ops/s
# Warmup Iteration  11: 25455.135 ops/s
# Warmup Iteration  12: 26603.178 ops/s
# Warmup Iteration  13: 25816.421 ops/s
# Warmup Iteration  14: 25806.277 ops/s
# Warmup Iteration  15: 25820.121 ops/s
# Warmup Iteration  16: 25767.864 ops/s
# Warmup Iteration  17: 26609.669 ops/s
# Warmup Iteration  18: 26750.050 ops/s
# Warmup Iteration  19: 26422.344 ops/s
# Warmup Iteration  20: 26454.674 ops/s
Iteration   1: 26429.002 ops/s
Iteration   2: 25588.895 ops/s
Iteration   3: 26420.691 ops/s
Iteration   4: 26351.317 ops/s
Iteration   5: 26716.925 ops/s
Iteration   6: 27205.502 ops/s
Iteration   7: 27032.907 ops/s
Iteration   8: 27143.187 ops/s
Iteration   9: 26971.537 ops/s
Iteration  10: 27124.770 ops/s
Iteration  11: 27111.634 ops/s
Iteration  12: 26981.187 ops/s
Iteration  13: 27085.815 ops/s
Iteration  14: 27132.962 ops/s
Iteration  15: 27138.734 ops/s
Iteration  16: 27066.569 ops/s
Iteration  17: 27009.122 ops/s
Iteration  18: 27148.426 ops/s
Iteration  19: 27046.483 ops/s
Iteration  20: 27192.497 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  26894.908 ±(99.9%) 352.781 ops/s [Average]
  (min, avg, max) = (25588.895, 26894.908, 27205.502), stdev = 406.264
  CI (99.9%): [26542.127, 27247.689] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 210709 total address lines.
Perf output processed (skipped 23.099 seconds):
 Column 1: cycles (20355 events)
 Column 2: instructions (20345 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 600 (1191 bytes) 

                                        0x00007f6969267491: mov    0x68(%rsp),%r10d
                                        0x00007f6969267496: and    $0x4,%r10d         ;*iand
                                                                                      ; - com.google.re2j.Machine::match@156 (line 214)
                                        0x00007f696926749a: mov    %r10d,0x3c(%rsp)
                                        0x00007f696926749f: mov    %rbx,%r10
                                        0x00007f69692674a2: shl    $0x3,%r10          ;*getfield q1
                                                                                      ; - com.google.re2j.Machine::match@62 (line 194)
                                        0x00007f69692674a6: mov    %r10,0x50(%rsp)
                                        0x00007f69692674ab: xor    %eax,%eax
                                        0x00007f69692674ad: xor    %r10d,%r10d
  0.01%                                 0x00007f69692674b0: mov    %r10d,0x40(%rsp)
                  ╭                     0x00007f69692674b5: jmpq   0x00007f6969267810
  0.01%    0.01%  │         ↗           0x00007f69692674ba: mov    $0xffffffff,%r8d
  0.01%    0.00%  │         │           0x00007f69692674c0: xor    %edi,%edi
                  │╭        │           0x00007f69692674c2: jmpq   0x00007f69692677c3
  0.24%    0.31%  ││  ↗↗↗   │           0x00007f69692674c7: mov    0x2c(%r12,%r8,8),%ebp  ;*getfield outInst
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@199 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.21%    0.18%  ││  │││   │           0x00007f69692674cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6969268b11
  0.14%    0.13%  ││  │││   │           0x00007f69692674d1: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  │││   │           0x00007f69692674d7: jne    0x00007f6969268261
  0.08%    0.13%  ││  │││   │           0x00007f69692674dd: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
                  ││  │││   │           0x00007f69692674e1: mov    0x18(%rdi),%r8d    ;*getfield pc
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.04%    0.02%  ││  │││   │           0x00007f69692674e5: vmovd  %r8d,%xmm4
  0.11%    0.12%  ││  │││   │           0x00007f69692674ea: mov    0x50(%rsp),%r8
  0.01%    0.04%  ││  │││   │           0x00007f69692674ef: mov    0x10(%r8),%r8      ;*getfield pcsl
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
                  ││  │││   │                                                         ; implicit exception: dispatches to 0x00007f6969268b2d
  0.00%    0.01%  ││  │││   │           0x00007f69692674f3: vmovd  %xmm4,%ecx
  0.12%    0.14%  ││  │││   │           0x00007f69692674f7: cmp    $0x40,%ecx
                  ││  │││   │           0x00007f69692674fa: jg     0x00007f6969268365  ;*if_icmpgt
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.11%  ││  │││   │           0x00007f6969267500: mov    $0x1,%ebx
  0.00%    0.00%  ││  │││   │           0x00007f6969267505: shl    %cl,%rbx           ;*lshl
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.32%    0.36%  ││  │││   │           0x00007f6969267508: mov    %r8,%rcx
           0.00%  ││  │││   │           0x00007f696926750b: and    %rbx,%rcx          ;*land
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%    0.01%  ││  │││   │           0x00007f696926750e: test   %rcx,%rcx
                  ││  │││   │           0x00007f6969267511: jne    0x00007f69692683fd  ;*ifeq
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.10%    0.13%  ││  │││   │           0x00007f6969267517: vmovd  %xmm4,%ecx
  0.09%    0.07%  ││  │││   │           0x00007f696926751b: cmp    $0x40,%ecx
                  ││  │││   │           0x00007f696926751e: jge    0x00007f6969268485  ;*if_icmpge
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.09%  ││  │││   │           0x00007f6969267524: mov    0x50(%rsp),%rcx
           0.01%  ││  │││   │           0x00007f6969267529: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.09%  ││  │││   │           0x00007f696926752d: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.02%  ││  │││   │           0x00007f6969267530: vmovd  %ecx,%xmm2
  0.06%    0.06%  ││  │││   │           0x00007f6969267534: mov    0x50(%rsp),%rcx
  0.01%    0.00%  ││  │││   │           0x00007f6969267539: mov    0xc(%rcx),%ebp     ;*getfield size
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.04%    0.08%  ││  │││   │           0x00007f696926753c: or     %r8,%rbx
  0.01%    0.03%  ││  │││   │           0x00007f696926753f: mov    %rbx,0x10(%rcx)    ;*putfield pcsl
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.13%    0.05%  ││  │││   │           0x00007f6969267543: mov    %ebp,%r8d
  0.00%    0.00%  ││  │││   │           0x00007f6969267546: inc    %r8d
  0.04%    0.06%  ││  │││   │           0x00007f6969267549: mov    %r8d,0xc(%rcx)     ;*putfield size
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%    0.02%  ││  │││   │           0x00007f696926754d: vmovd  %xmm2,%r8d
  0.06%    0.08%  ││  │││   │           0x00007f6969267552: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f6969268b41
  0.27%    0.21%  ││  │││   │           0x00007f6969267557: cmp    %ecx,%ebp
                  ││  │││   │           0x00007f6969267559: jae    0x00007f69692681c9
  0.21%    0.23%  ││  │││   │           0x00007f696926755f: mov    0x8(%r12,%r8,8),%r8d
  0.04%    0.01%  ││  │││   │           0x00007f6969267564: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  │││   │           0x00007f696926756b: jne    0x00007f69692682d5  ;*aastore
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.03%  ││  │││   │           0x00007f6969267571: vmovd  %xmm2,%r8d
                  ││  │││   │           0x00007f6969267576: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.10%    0.13%  ││  │││   │           0x00007f696926757a: lea    0x10(%r8,%rbp,4),%r8
  0.02%    0.00%  ││  │││   │           0x00007f696926757f: mov    %rdi,%rcx
  0.05%    0.07%  ││  │││   │           0x00007f6969267582: shr    $0x3,%rcx
                  ││  │││   │           0x00007f6969267586: mov    %ecx,(%r8)
  0.33%    0.33%  ││  │││   │           0x00007f6969267589: shr    $0x9,%r8
  0.01%    0.01%  ││  │││   │           0x00007f696926758d: movabs $0x7f697a3f9000,%rcx
  0.04%    0.03%  ││  │││   │           0x00007f6969267597: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                  ││  │││   │                                                         ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  │││   │                                                         ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::step@214 (line 319)
                  ││  │││   │                                                         ; - com.google.re2j.Machine::match@363 (line 248)
  0.24%    0.22%  ││╭ │││   │           0x00007f696926759b: jmpq   0x00007f69692676bf
  0.34%    0.15%  │││ │││   │     ↗     0x00007f69692675a0: or     $0x20,%r9d         ;*iload_2
                  │││ │││   │     │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││ │││   │     │                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.40%    0.25%  │││ │││   │     │↗    0x00007f69692675a4: mov    0x60(%rsp),%r10
  0.05%    0.10%  │││ │││   │     ││    0x00007f69692675a9: mov    0x14(%r10),%r11d   ;*getfield re2
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::step@1 (line 282)
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.13%    0.16%  │││ │││   │     ││    0x00007f69692675ad: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::step@4 (line 282)
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                  │││ │││   │     ││                                                  ; implicit exception: dispatches to 0x00007f6969268aad
  0.38%    0.31%  │││ │││   │     ││    0x00007f69692675b3: mov    0x2c(%rsp),%r10d
  0.26%    0.38%  │││ │││   │     ││    0x00007f69692675b8: mov    0xc(%r12,%r10,8),%eax  ;*getfield size
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::step@10 (line 283)
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.05%    0.06%  │││ │││   │     ││    0x00007f69692675bd: mov    0x40(%rsp),%r11d
  0.06%    0.07%  │││ │││   │     ││    0x00007f69692675c2: add    0x20(%rsp),%r11d   ;*iadd
                  │││ │││   │     ││                                                  ; - com.google.re2j.Machine::match@344 (line 248)
  0.29%    0.30%  │││ │││   │     ││    0x00007f69692675c7: test   %eax,%eax
                  │││╭│││   │     ││    0x00007f69692675c9: jle    0x00007f69692676c7  ;*if_icmpge
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@40 (line 288)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.28%    0.34%  │││││││   │     ││    0x00007f69692675cf: mov    0x24(%r12,%r10,8),%r8d  ;*getfield denseThreadsCapture
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@28 (line 286)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.05%    0.07%  │││││││   │     ││    0x00007f69692675d4: vmovd  %r8d,%xmm0
  0.06%    0.06%  │││││││   │     ││    0x00007f69692675d9: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@22 (line 285)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.35%    0.36%  │││││││   │     ││    0x00007f69692675de: vmovd  %r10d,%xmm1
  0.31%    0.40%  │││││││   │     ││    0x00007f69692675e3: mov    0x60(%rsp),%r10
  0.04%    0.07%  │││││││   │     ││    0x00007f69692675e8: movzbl 0x11(%r10),%ecx    ;*getfield captures
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@16 (line 284)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.04%  │││││││   │     ││    0x00007f69692675ed: mov    0x70(%rsp),%r10
  0.22%    0.19%  │││││││   │     ││    0x00007f69692675f2: mov    0x10(%r10),%r10d
  0.33%    0.25%  │││││││   │     ││    0x00007f69692675f6: mov    0x40(%rsp),%ebx
  0.04%    0.05%  │││││││   │     ││    0x00007f69692675fa: mov    $0x1,%r8d
  0.08%    0.06%  │││││││   │     ││    0x00007f6969267600: xor    %edx,%edx
  0.27%    0.38%  │││││││   │     ││    0x00007f6969267602: cmp    %r10d,%ebx
  0.37%    0.48%  │││││││   │     ││    0x00007f6969267605: cmovne %edx,%r8d          ;*invokespecial step
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.19%    0.19%  │││││││   │     ││    0x00007f6969267609: vmovd  %r8d,%xmm3
  0.29%    0.22%  │││││││   │     ││    0x00007f696926760e: test   %ecx,%ecx
                  │││││││   │     ││    0x00007f6969267610: jne    0x00007f6969267de1  ;*iload
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@43 (line 291)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.32%    0.28%  │││││││   │     ││    0x00007f6969267616: vmovd  %xmm1,%r8d
  0.04%    0.09%  │││││││   │     ││    0x00007f696926761b: mov    0xc(%r12,%r8,8),%r10d  ;*aaload
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@99 (line 301)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                  │││││││   │     ││                                                  ; implicit exception: dispatches to 0x00007f6969267de1
  0.17%    0.27%  │││││││   │     ││    0x00007f6969267620: test   %r10d,%r10d
                  │││││││   │     ││    0x00007f6969267623: jbe    0x00007f6969267de1
  0.36%    0.27%  │││││││   │     ││    0x00007f6969267629: mov    %eax,%r8d
  0.39%    0.28%  │││││││   │     ││    0x00007f696926762c: dec    %r8d
  0.05%    0.03%  │││││││   │     ││    0x00007f696926762f: cmp    %r10d,%r8d
                  │││││││   │     ││    0x00007f6969267632: jae    0x00007f6969267de1
  0.10%    0.08%  │││││││   │     ││    0x00007f6969267638: vmovd  %xmm1,%r10d
  0.32%    0.36%  │││││││   │     ││    0x00007f696926763d: lea    (%r12,%r10,8),%rdx
  0.28%    0.31%  │││││││   │     ││    0x00007f6969267641: xor    %r10d,%r10d
  0.03%    0.06%  │││││││   │     ││    0x00007f6969267644: nopl   0x0(%rax,%rax,1)
  0.09%    0.05%  │││││││   │     ││    0x00007f696926764c: data16 data16 xchg %ax,%ax  ;*iload
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::step@43 (line 291)
                  │││││││   │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.79%    1.82%  │││││││↗  │     ││    0x00007f6969267650: mov    0x10(%rdx,%r10,4),%r8d  ;*aaload
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::step@99 (line 301)
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.67%    0.67%  ││││││││  │     ││    0x00007f6969267655: mov    0xc(%r12,%r8,8),%ebx  ;*getfield op
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::step@104 (line 303)
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                  ││││││││  │     ││                                                  ; implicit exception: dispatches to 0x00007f6969268a8d
  1.54%    1.21%  ││││││││  │     ││    0x00007f696926765a: cmp    $0x6,%ebx
                  ││││││││  │     ││    0x00007f696926765d: je     0x00007f69692679f3  ;*if_icmpne
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::step@109 (line 303)
                  ││││││││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.37%    1.23%  ││││││││  │     ││    0x00007f6969267663: cmp    $0xa,%ebx
                  ││││╰│││  │     ││    0x00007f6969267666: je     0x00007f69692674c7  ;*if_icmpne
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.56%    1.55%  ││││ │││  │     ││    0x00007f696926766c: cmp    $0xb,%ebx
                  ││││ │││  │     ││    0x00007f696926766f: je     0x00007f6969267b19  ;*if_icmpne
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.12%    1.14%  ││││ │││  │     ││    0x00007f6969267675: cmp    $0x9,%ebx
                  ││││ │││  │     ││    0x00007f6969267678: je     0x00007f6969267bb1  ;*if_icmpne
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.88%    0.96%  ││││ │││  │     ││    0x00007f696926767e: cmp    $0xc,%ebx
                  ││││ │││  │     ││    0x00007f6969267681: jne    0x00007f6969267a83  ;*if_icmpne
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.54%    1.67%  ││││ │││  │     ││    0x00007f6969267687: mov    0x1c(%r12,%r8,8),%ebx  ;*getfield f0
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.14%    1.14%  ││││ │││  │     ││    0x00007f696926768c: cmp    %r13d,%ebx
                  ││││ ╰││  │     ││    0x00007f696926768f: je     0x00007f69692674c7  ;*if_icmpeq
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.48%    1.82%  ││││  ││  │     ││    0x00007f6969267695: mov    0x20(%r12,%r8,8),%ebx  ;*getfield f1
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││  ││  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.53%    0.66%  ││││  ││  │     ││    0x00007f696926769a: cmp    %r13d,%ebx
                  ││││  ╰│  │     ││    0x00007f696926769d: je     0x00007f69692674c7  ;*if_icmpeq
                  ││││   │  │     ││                                                  ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.30%    1.43%  ││││   │  │     ││    0x00007f69692676a3: mov    0x24(%r12,%r8,8),%edi  ;*getfield f2
                  ││││   │  │     ││                                                  ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.17%    1.29%  ││││   │  │     ││    0x00007f69692676a8: cmp    %r13d,%edi
                  ││││   │  │     ││    0x00007f69692676ab: je     0x00007f6969267c49  ;*if_icmpeq
                  ││││   │  │     ││                                                  ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.68%    1.71%  ││││   │  │     ││    0x00007f69692676b1: mov    0x28(%r12,%r8,8),%edi  ;*getfield f3
                  ││││   │  │     ││                                                  ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.40%    0.57%  ││││   │  │     ││    0x00007f69692676b6: cmp    %r13d,%edi
                  ││││   │  │     ││    0x00007f69692676b9: je     0x00007f6969267ccd  ;*aload
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::step@219 (line 322)
                  ││││   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.94%    1.04%  ││↘│   │  │     ││    0x00007f69692676bf: inc    %r10d              ;*iinc
                  ││ │   │  │     ││                                                  ; - com.google.re2j.Machine::step@230 (line 288)
                  ││ │   │  │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.01%    1.04%  ││ │   │  │     ││    0x00007f69692676c2: cmp    %eax,%r10d
                  ││ │   ╰  │     ││    0x00007f69692676c5: jl     0x00007f6969267650  ;*if_icmpge
                  ││ │      │     ││                                                  ; - com.google.re2j.Machine::step@40 (line 288)
                  ││ │      │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.33%    0.38%  ││ ↘      │     ││    0x00007f69692676c7: mov    0x2c(%rsp),%r8d
  0.08%    0.20%  ││        │     ││    0x00007f69692676cc: movzbl 0x18(%r12,%r8,8),%r8d
  0.13%    0.13%  ││        │     ││    0x00007f69692676d2: test   %r8d,%r8d
                  ││      ╭ │     ││    0x00007f69692676d5: jne    0x00007f69692676f9  ;*ifeq
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.28%    0.39%  ││      │ │     ││    0x00007f69692676d7: mov    0x2c(%rsp),%r10d
  0.25%    0.28%  ││      │ │     ││    0x00007f69692676dc: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.19%    0.16%  ││      │ │     ││    0x00007f69692676e1: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.48%    0.71%  ││      │ │     ││    0x00007f69692676e7: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.95%    1.21%  ││      │ │     ││    0x00007f69692676ec: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.43%    0.60%  ││      │ │     ││    0x00007f69692676f1: test   %ebp,%ebp
                  ││      │ │     ││    0x00007f69692676f3: jne    0x00007f6969267fed  ;*invokevirtual clear
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                  ││      │ │     ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.06%  ││      ↘ │     ││    0x00007f69692676f9: mov    0x60(%rsp),%r10
  0.11%    0.17%  ││        │     ││    0x00007f69692676fe: movzbl 0x10(%r10),%eax    ;*getfield matched
                  ││        │     ││                                                  ; - com.google.re2j.Machine::match@382 (line 252)
  0.38%    0.43%  ││        │     ││    0x00007f6969267703: mov    0x60(%rsp),%r10
  0.16%    0.32%  ││        │     ││    0x00007f6969267708: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  ││        │     ││                                                  ; - com.google.re2j.Machine::match@375 (line 252)
  0.08%    0.08%  ││        │     ││    0x00007f696926770d: mov    0x20(%rsp),%r10d
  0.13%    0.17%  ││        │     ││    0x00007f6969267712: test   %r10d,%r10d
                  ││       ╭│     ││    0x00007f6969267715: je     0x00007f6969267945  ;*ifne
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@368 (line 249)
  0.32%    0.41%  ││       ││     ││    0x00007f696926771b: test   %ebp,%ebp
                  ││       ││     ││    0x00007f696926771d: jne    0x00007f6969267ec5  ;*ifne
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@378 (line 252)
  0.24%    0.32%  ││       ││     ││    0x00007f6969267723: test   %eax,%eax
                  ││       ││     ││    0x00007f6969267725: jne    0x00007f6969267fa9  ;*ifeq
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@385 (line 252)
  0.06%    0.09%  ││       ││     ││    0x00007f696926772b: mov    0x34(%rsp),%r8d
  0.14%    0.17%  ││       ││     ││    0x00007f6969267730: cmp    $0xffffffff,%r8d
                  ││       ││     ││    0x00007f6969267734: je     0x00007f6969267984  ;*if_icmpeq
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@407 (line 260)
  0.27%    0.49%  ││       ││     ││    0x00007f696926773a: mov    0x70(%rsp),%r10
  0.18%    0.27%  ││       ││     ││    0x00007f696926773f: mov    0x10(%r10),%r10d   ;*getfield end
                  ││       ││     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.10%    0.11%  ││       ││     ││    0x00007f6969267743: mov    0x28(%rsp),%ecx
  0.16%    0.14%  ││       ││     ││    0x00007f6969267747: add    %r11d,%ecx
  0.25%    0.38%  ││       ││     ││    0x00007f696926774a: mov    0x70(%rsp),%r8
  0.22%    0.25%  ││       ││     ││    0x00007f696926774f: add    0xc(%r8),%ecx      ;*iadd
                  ││       ││     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  ││       ││     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.30%    0.42%  ││       ││     ││    0x00007f6969267753: cmp    %r10d,%ecx
                  ││       │╰     ││    0x00007f6969267756: jge    0x00007f69692674ba  ;*if_icmpge
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.28%    0.55%  ││       │      ││    0x00007f696926775c: mov    0x14(%r8),%ebp     ;*getfield str
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.22%    0.31%  ││       │      ││    0x00007f6969267760: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f6969268abd
  1.35%    1.81%  ││       │      ││    0x00007f6969267765: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  ││       │      ││    0x00007f696926776c: jne    0x00007f6969267da1
  0.49%    0.58%  ││       │      ││    0x00007f6969267772: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.04%    0.03%  ││       │      ││    0x00007f6969267776: test   %ecx,%ecx
                  ││       │      ││    0x00007f6969267778: jl     0x00007f6969267f0d  ;*iflt
                  ││       │      ││                                                  ; - java.lang.String::charAt@1 (line 657)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.13%    0.09%  ││       │      ││    0x00007f696926777e: mov    0xc(%rbx),%r8d     ;*getfield value
                  ││       │      ││                                                  ; - java.lang.String::charAt@6 (line 657)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.19%    0.24%  ││       │      ││    0x00007f6969267782: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                  ││       │      ││                                                  ; - java.lang.String::charAt@9 (line 657)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
                  ││       │      ││                                                  ; implicit exception: dispatches to 0x00007f6969268ad1
  3.35%    4.16%  ││       │      ││    0x00007f6969267787: cmp    %ebp,%ecx
                  ││       │      ││    0x00007f6969267789: jge    0x00007f6969268029  ;*if_icmplt
                  ││       │      ││                                                  ; - java.lang.String::charAt@10 (line 657)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.72%    0.65%  ││       │      ││    0x00007f696926778f: cmp    %ebp,%ecx
                  ││       │      ││    0x00007f6969267791: jae    0x00007f6969267d4d
  0.05%    0.05%  ││       │      ││    0x00007f6969267797: lea    (%r12,%r8,8),%r10
  0.03%           ││       │      ││    0x00007f696926779b: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                  ││       │      ││                                                  ; - java.lang.String::charAt@27 (line 660)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.02%    0.01%  ││       │      ││    0x00007f69692677a1: cmp    $0xd800,%r8d
                  ││       │      ││    0x00007f69692677a8: jge    0x00007f6969268081  ;*if_icmplt
                  ││       │      ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  ││       │      ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.65%    0.49%  ││       │      ││    0x00007f69692677ae: shl    $0x3,%r8d          ;*ishl
                  ││       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.04%    0.05%  ││       │      ││    0x00007f69692677b2: mov    %r8d,%edi
  0.00%           ││       │      ││    0x00007f69692677b5: and    $0x7,%edi
  0.53%    0.53%  ││       │      ││    0x00007f69692677b8: or     $0x1,%r8d
  0.25%    0.13%  ││       │      ││    0x00007f69692677bc: or     $0x1,%edi          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.59%    0.47%  ││       │      ││    0x00007f69692677bf: sar    $0x3,%r8d          ; OopMap{[16]=Oop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1411}
                  ││       │      ││                                                  ;*goto
                  ││       │      ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
  0.04%    0.01%  │↘       │      ││    0x00007f69692677c3: test   %eax,0x18789837(%rip)        # 0x00007f69819f1000
                  │        │      ││                                                  ;*goto
                  │        │      ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
                  │        │      ││                                                  ;   {poll}
  0.01%    0.01%  │        │      ││    0x00007f69692677c9: mov    0x60(%rsp),%r10
  0.19%    0.10%  │        │      ││    0x00007f69692677ce: mov    0x14(%r10),%esi    ;*getfield re2
                  │        │      ││                                                  ; - com.google.re2j.Machine::match@178 (line 222)
  0.42%    0.50%  │        │      ││    0x00007f69692677d2: mov    0x28(%r10),%r10d   ;*getfield matchcap
                  │        │      ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.02%    0.02%  │        │      ││    0x00007f69692677d6: mov    0x50(%rsp),%rcx
                  │        │      ││    0x00007f69692677db: shr    $0x3,%rcx
  0.17%    0.16%  │        │      ││    0x00007f69692677df: mov    %ecx,0x2c(%rsp)
  0.53%    0.45%  │        │      ││    0x00007f69692677e3: mov    0x28(%rsp),%ecx
  0.02%    0.01%  │        │      ││    0x00007f69692677e7: mov    %ecx,0x20(%rsp)
                  │        │      ││    0x00007f69692677eb: mov    %r11d,0x40(%rsp)
  0.17%    0.21%  │        │      ││    0x00007f69692677f0: mov    %edi,0x28(%rsp)
  0.47%    0.40%  │        │      ││    0x00007f69692677f4: mov    0x34(%rsp),%ecx
  0.01%    0.01%  │        │      ││    0x00007f69692677f8: mov    %ecx,0x24(%rsp)
           0.00%  │        │      ││    0x00007f69692677fc: mov    %r8d,0x34(%rsp)
  0.22%    0.14%  │        │      ││    0x00007f6969267801: mov    0x10(%rsp),%r11
  0.49%    0.44%  │        │      ││    0x00007f6969267806: mov    %r11,0x50(%rsp)
  0.02%    0.01%  │        │      ││    0x00007f696926780b: vmovd  %r10d,%xmm3        ;*aload
                  │        │      ││                                                  ; - com.google.re2j.Machine::match@145 (line 213)
  0.00%           ↘        │      ││    0x00007f6969267810: mov    0x2c(%rsp),%r11d
  0.24%    0.23%           │      ││    0x00007f6969267815: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f6969268a9d
  0.63%    0.45%           │      ││    0x00007f696926781b: test   %r11d,%r11d
                           │ ╭    ││    0x00007f696926781e: je     0x00007f696926784d  ;*ifeq
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@150 (line 213)
  0.04%    0.03%           │ │    ││    0x00007f6969267820: mov    0x3c(%rsp),%r11d
           0.00%           │ │    ││    0x00007f6969267825: test   %r11d,%r11d
                           │ │    ││    0x00007f6969267828: jne    0x00007f696926811d  ;*ifeq
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@157 (line 214)
  0.19%    0.14%           │ │    ││    0x00007f696926782e: test   %eax,%eax
                           │ │    ││    0x00007f6969267830: jne    0x00007f6969268171  ;*ifeq
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@171 (line 218)
  0.33%    0.23%           │ │    ││    0x00007f6969267836: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@181 (line 222)
                           │ │    ││                                                  ; implicit exception: dispatches to 0x00007f6969268ae1
  0.02%    0.02%           │ │    ││    0x00007f696926783b: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                           │ │    ││                                                  ; - java.lang.String::isEmpty@1 (line 635)
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@184 (line 222)
                           │ │    ││                                                  ; implicit exception: dispatches to 0x00007f6969268af1
  0.01%    0.01%           │ │    ││    0x00007f6969267840: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                           │ │    ││                                                  ; - java.lang.String::isEmpty@4 (line 635)
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@184 (line 222)
                           │ │    ││                                                  ; implicit exception: dispatches to 0x00007f6969268b01
  0.33%    0.23%           │ │    ││    0x00007f6969267845: test   %ebp,%ebp
                           │ │    ││    0x00007f6969267847: jne    0x00007f69692680d5  ;*iload_3
                           │ │    ││                                                  ; - com.google.re2j.Machine::match@276 (line 239)
  0.51%    0.28%           │ ↘    ││    0x00007f696926784d: test   %eax,%eax
                           │      ││    0x00007f696926784f: jne    0x00007f6969267e75  ;*ifne
                           │      ││                                                  ; - com.google.re2j.Machine::match@288 (line 239)
  0.00%    0.01%           │      ││    0x00007f6969267855: mov    0x60(%rsp),%r10
  0.01%    0.02%           │      ││    0x00007f696926785a: movzbl 0x11(%r10),%r10d   ;*getfield captures
                           │      ││                                                  ; - com.google.re2j.Machine::match@292 (line 242)
  0.28%    0.23%           │      ││    0x00007f696926785f: test   %r10d,%r10d
                           │      ││    0x00007f6969267862: jne    0x00007f6969267f59  ;*ifeq
                           │      ││                                                  ; - com.google.re2j.Machine::match@295 (line 242)
  0.54%    0.30%           │      ││    0x00007f6969267868: vmovd  %xmm3,%r11d
  0.00%    0.00%           │      ││    0x00007f696926786d: mov    %r11,%r8
  0.02%    0.01%           │      ││    0x00007f6969267870: shl    $0x3,%r8           ;*getfield matchcap
                           │      ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.31%    0.18%           │      ││    0x00007f6969267874: mov    0x2c(%rsp),%ecx
  0.42%    0.22%           │      ││    0x00007f6969267878: lea    (%r12,%rcx,8),%r11  ;*aload
                           │      ││                                                  ; - com.google.re2j.Machine::match@145 (line 213)
  0.01%    0.02%           │      ││    0x00007f696926787c: mov    %r11,0x10(%rsp)
  0.03%    0.03%           │      ││    0x00007f6969267881: mov    0x78(%rsp),%rsi
  0.27%    0.13%           │      ││    0x00007f6969267886: mov    %r11,%rdx
  0.49%    0.25%           │      ││    0x00007f6969267889: mov    0x40(%rsp),%ecx
  0.01%    0.01%           │      ││    0x00007f696926788d: xor    %edi,%edi
  0.01%    0.01%           │      ││    0x00007f696926788f: mov    0x60(%rsp),%r11
  0.22%    0.13%           │      ││    0x00007f6969267894: mov    %r11,(%rsp)
  0.51%    0.11%           │      ││    0x00007f6969267898: mov    %r10d,0x8(%rsp)
  0.00%    0.01%           │      ││    0x00007f696926789d: xchg   %ax,%ax
  0.00%    0.01%           │      ││    0x00007f696926789f: callq  0x00007f6969046020  ; OopMap{[16]=Oop [44]=NarrowOop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1636}
                           │      ││                                                  ;*invokevirtual add
                           │      ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
                           │      ││                                                  ;   {optimized virtual_call}
  0.41%    0.49%           │      ││    0x00007f69692678a4: mov    0x24(%rsp),%r13d
  0.02%    0.03%           │      ││    0x00007f69692678a9: test   %r13d,%r13d
                           │  ╭   ││    0x00007f69692678ac: jl     0x00007f6969267934  ;*ifge
                           │  │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                           │  │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.31%    0.30%           │  │   ││    0x00007f69692678b2: xor    %r9d,%r9d          ;*iload_0
                           │  │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                           │  │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.38%    0.38%           │  │   ││↗   0x00007f69692678b5: cmp    $0xa,%r13d
                           │  │   │││   0x00007f69692678b9: je     0x00007f6969267993  ;*iload_1
                           │  │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                           │  │   │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.02%           │  │   │││   0x00007f69692678bf: mov    0x34(%rsp),%r11d
  0.02%    0.02%           │  │   │││   0x00007f69692678c4: test   %r11d,%r11d
                           │  │╭  │││   0x00007f69692678c7: jl     0x00007f696926793f  ;*iload_1
                           │  ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                           │  ││  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.31%    0.34%           │  ││  │││↗  0x00007f69692678c9: cmp    $0xa,%r11d
                           │  ││  ││││  0x00007f69692678cd: je     0x00007f696926799c  ;*iload_0
                           │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                           │  ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.45%    0.42%           │  ││  ││││  0x00007f69692678d3: mov    0x24(%rsp),%r11d
  0.02%    0.04%           │  ││  ││││  0x00007f69692678d8: add    $0xffffffbf,%r11d
  0.02%    0.01%           │  ││  ││││  0x00007f69692678dc: cmp    $0x1a,%r11d
                           │  ││╭ ││││  0x00007f69692678e0: jb     0x00007f69692678f5  ;*if_icmple
                           │  │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │  │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │  │││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.26%    0.29%           │  │││ ││││  0x00007f69692678e2: mov    0x24(%rsp),%r10d
  0.39%    0.36%           │  │││ ││││  0x00007f69692678e7: add    $0xffffff9f,%r10d
  0.02%    0.01%           │  │││ ││││  0x00007f69692678eb: cmp    $0x1a,%r10d
                           │  │││ ││││  0x00007f69692678ef: jae    0x00007f69692679a5  ;*iconst_1
                           │  │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │  │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │  │││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%    0.01%           │  ││↘ ││││  0x00007f69692678f5: mov    $0x1,%ebp          ;*ireturn
                           │  ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │  ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.41%    0.40%           │  ││  ││││  0x00007f69692678fa: mov    0x34(%rsp),%r11d
  0.30%    0.40%           │  ││  ││││  0x00007f69692678ff: add    $0xffffffbf,%r11d
  0.01%    0.01%           │  ││  ││││  0x00007f6969267903: cmp    $0x1a,%r11d
                           │  ││ ╭││││  0x00007f6969267907: jb     0x00007f696926791c  ;*if_icmple
                           │  ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │  ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │  ││ │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.07%    0.04%           │  ││ │││││  0x00007f6969267909: mov    0x34(%rsp),%r10d
  0.32%    0.37%           │  ││ │││││  0x00007f696926790e: add    $0xffffff9f,%r10d
  0.39%    0.38%           │  ││ │││││  0x00007f6969267912: cmp    $0x1a,%r10d
                           │  ││ │││││  0x00007f6969267916: jae    0x00007f69692679c9  ;*iconst_1
                           │  ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │  ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │  ││ │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.03%    0.02%           │  ││ ↘││││  0x00007f696926791c: mov    $0x1,%r11d         ;*ireturn
                           │  ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │  ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.17%           │  ││  ││││  0x00007f6969267922: cmp    %r11d,%ebp
                           │  ││  ╰│││  0x00007f6969267925: je     0x00007f69692675a0  ;*if_icmpeq
                           │  ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                           │  ││   │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.06%    0.06%           │  ││   │││  0x00007f696926792b: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                           │  ││   │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%                    │  ││   ╰││  0x00007f696926792f: jmpq   0x00007f69692675a4
           0.01%           │  ↘│    ││  0x00007f6969267934: mov    $0x5,%r9d
                           │   │    ╰│  0x00007f696926793a: jmpq   0x00007f69692678b5
                           │   ↘     │  0x00007f696926793f: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │         │                                                ; - com.google.re2j.Machine::match@330 (line 247)
           0.00%           │         ╰  0x00007f6969267943: jmp    0x00007f69692678c9
           0.00%           ↘            0x00007f6969267945: test   %ebp,%ebp
                                        0x00007f6969267947: jne    0x00007f69692688b9  ;*ifeq
                                                                                      ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@451 (line 269)
  0.01%    0.01%                        0x00007f696926794d: mov    0x50(%rsp),%r10
  0.00%                                 0x00007f6969267952: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f6969268bbd
  0.00%                                 0x00007f6969267957: test   %r11d,%r11d
                                        0x00007f696926795a: jne    0x00007f6969267975  ;*ifeq
                                                                                      ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@451 (line 269)
                                        0x00007f696926795c: mov    0x1c(%r10),%ebp    ;*getfield pcs
                                                                                      ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@451 (line 269)
....................................................................................................
 58.75%   60.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 561 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f6969248e40: mov    0x8(%rsi),%r10d
                     0x00007f6969248e44: shl    $0x3,%r10
                     0x00007f6969248e48: cmp    %r10,%rax
                     0x00007f6969248e4b: jne    0x00007f6969045e20  ;   {runtime_call}
                     0x00007f6969248e51: data16 xchg %ax,%ax
                     0x00007f6969248e54: nopl   0x0(%rax,%rax,1)
                     0x00007f6969248e5c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.67%    0.18%     0x00007f6969248e60: mov    %eax,-0x14000(%rsp)
  0.02%    0.01%     0x00007f6969248e67: push   %rbp
  0.24%    0.07%     0x00007f6969248e68: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.47%    0.12%     0x00007f6969248e6c: vmovq  %r8,%xmm5
  0.02%    0.02%     0x00007f6969248e71: vmovq  %rsi,%xmm4
  0.25%    0.11%     0x00007f6969248e76: mov    %ecx,%r14d
  0.40%    0.22%     0x00007f6969248e79: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.00%              0x00007f6969248e7c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f6969249799
  0.01%              0x00007f6969248e80: cmp    $0x40,%ecx
                     0x00007f6969248e83: jg     0x00007f6969249341  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.28%    0.12%     0x00007f6969248e89: mov    $0x1,%esi
  0.50%    0.62%     0x00007f6969248e8e: mov    $0x1,%r8d
  0.01%    0.00%     0x00007f6969248e94: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.84%    0.85%     0x00007f6969248e97: mov    %r11,%r10
           0.01%     0x00007f6969248e9a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.00%     0x00007f6969248e9d: xor    %r13d,%r13d
  0.31%    0.27%     0x00007f6969248ea0: test   %r10,%r10
                     0x00007f6969248ea3: jne    0x00007f6969249375  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.50%    0.26%     0x00007f6969248ea9: cmp    $0x40,%ecx
                     0x00007f6969248eac: jge    0x00007f69692493b5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.00%     0x00007f6969248eb2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.03%     0x00007f6969248eb6: vmovq  %xmm4,%r10
  0.28%    0.27%     0x00007f6969248ebb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.50%    0.46%     0x00007f6969248ebf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.01%     0x00007f6969248ec2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.00%     0x00007f6969248ec6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f69692497ad
  0.26%    0.20%     0x00007f6969248ecb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f6969248ed2: jne    0x00007f6969249225
  0.44%    0.51%     0x00007f6969248ed8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.00%     0x00007f6969248edc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.00%     0x00007f6969248ee0: cmp    $0x40,%ecx
                     0x00007f6969248ee3: jg     0x00007f69692493e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.29%     0x00007f6969248ee9: mov    $0x1,%r10d
  0.52%    0.45%     0x00007f6969248eef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.29%     0x00007f6969248ef2: mov    %r8,%rbx
  0.35%    0.43%     0x00007f6969248ef5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.00%     0x00007f6969248ef8: test   %rbx,%rbx
                     0x00007f6969248efb: jne    0x00007f6969249425  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f6969248f01: cmp    $0x40,%ecx
                     0x00007f6969248f04: jge    0x00007f696924946d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.24%     0x00007f6969248f0a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.48%    0.43%     0x00007f6969248f0d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007f6969248f11: mov    0x88(%rsp),%ecx
  0.03%    0.01%     0x00007f6969248f18: test   %ecx,%ecx
                     0x00007f6969248f1a: jne    0x00007f69692494a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.27%    0.31%     0x00007f6969248f20: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.43%    0.54%     0x00007f6969248f23: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.01%     0x00007f6969248f26: mov    %edi,%r10d
  0.02%    0.01%     0x00007f6969248f29: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.24%     0x00007f6969248f2c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.46%    0.46%     0x00007f6969248f30: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f69692497d5
  0.01%    0.01%     0x00007f6969248f35: cmp    %ebx,%edi
                  ╭  0x00007f6969248f37: jae    0x00007f69692491a8
  0.02%    0.02%  │  0x00007f6969248f3d: vmovd  %r10d,%xmm2
  0.24%    0.33%  │  0x00007f6969248f42: vmovd  %eax,%xmm0
  0.41%    0.68%  │  0x00007f6969248f46: mov    %edi,%eax
  0.00%    0.01%  │  0x00007f6969248f48: vmovd  %xmm0,%r10d
           0.03%  │  0x00007f6969248f4d: mov    0x8(%r12,%r10,8),%r10d
  0.22%    0.39%  │  0x00007f6969248f52: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f6969248f59: jne    0x00007f6969249255  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.36%    0.60%  │  0x00007f6969248f5f: vmovq  %xmm4,%r10
  0.01%    0.02%  │  0x00007f6969248f64: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.02%    0.01%  │  0x00007f6969248f68: mov    %r11,%rcx
  0.28%    0.19%  │  0x00007f6969248f6b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.38%    0.40%  │  0x00007f6969248f6f: vmovd  %xmm0,%r10d
           0.00%  │  0x00007f6969248f74: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  │  0x00007f6969248f78: lea    0x10(%r11,%rdi,4),%r10
  0.30%    0.26%  │  0x00007f6969248f7d: mov    %ecx,(%r10)
  0.61%    0.57%  │  0x00007f6969248f80: shr    $0x9,%r10
  0.00%    0.00%  │  0x00007f6969248f84: movabs $0x7f697a3f9000,%rdi
  0.02%    0.02%  │  0x00007f6969248f8e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.33%    0.25%  │  0x00007f6969248f92: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f69692497f1
  0.38%    0.30%  │  0x00007f6969248f97: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f6969248f9e: jne    0x00007f6969249295
  0.01%    0.01%  │  0x00007f6969248fa4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.02%  │  0x00007f6969248fa8: vmovq  %r10,%xmm1
  0.34%    0.19%  │  0x00007f6969248fad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.45%    0.38%  │  0x00007f6969248fb1: vmovd  %ecx,%xmm3
           0.00%  │  0x00007f6969248fb5: cmp    $0x40,%ecx
                  │  0x00007f6969248fb8: jg     0x00007f69692494e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.01%  │  0x00007f6969248fbe: mov    $0x1,%r10d
  0.36%    0.23%  │  0x00007f6969248fc4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.47%    0.35%  │  0x00007f6969248fc7: mov    %r8,%rcx
  0.28%    0.36%  │  0x00007f6969248fca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.53%    0.50%  │  0x00007f6969248fcd: test   %rcx,%rcx
                  │  0x00007f6969248fd0: jne    0x00007f6969249521  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.01%  │  0x00007f6969248fd6: vmovd  %xmm3,%ecx
  0.01%    0.01%  │  0x00007f6969248fda: cmp    $0x40,%ecx
                  │  0x00007f6969248fdd: jge    0x00007f6969249565  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.28%    0.25%  │  0x00007f6969248fe3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.36%    0.21%  │  0x00007f6969248fe6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.01%  │  0x00007f6969248fea: mov    %eax,%ecx
  0.00%    0.01%  │  0x00007f6969248fec: add    $0x2,%ecx
  0.24%    0.25%  │  0x00007f6969248fef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.48%    0.45%  │  0x00007f6969248ff2: mov    %eax,%r10d
  0.01%           │  0x00007f6969248ff5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.00%    0.01%  │  0x00007f6969248ff9: cmp    %ebx,%r10d
                  │  0x00007f6969248ffc: jae    0x00007f69692491e5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.34%    0.37%  │  0x00007f6969249002: vmovd  %r9d,%xmm3
  0.45%    0.59%  │  0x00007f6969249007: vmovq  %xmm4,%r9
  0.01%    0.00%  │  0x00007f696924900c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.01%    0.00%  │  0x00007f6969249010: vmovq  %xmm1,%r9
  0.33%    0.34%  │  0x00007f6969249015: mov    %r9,%rcx
  0.45%    0.41%  │  0x00007f6969249018: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
           0.00%  │  0x00007f696924901c: movslq %eax,%r9
  0.03%    0.01%  │  0x00007f696924901f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.23%    0.38%  │  0x00007f6969249023: mov    %r9,%rbx
  0.36%    0.68%  │  0x00007f6969249026: add    $0x14,%rbx
           0.01%  │  0x00007f696924902a: mov    %ecx,(%rbx)
  0.03%    0.01%  │  0x00007f696924902c: mov    %rbx,%rcx
  0.25%    0.24%  │  0x00007f696924902f: shr    $0x9,%rcx
  0.49%    0.21%  │  0x00007f6969249033: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%           │  0x00007f6969249037: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f6969249815
  0.02%    0.00%  │  0x00007f696924903c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f6969249042: jne    0x00007f69692492c1
  0.43%    0.38%  │  0x00007f6969249048: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.42%    0.59%  │  0x00007f696924904c: vmovq  %rcx,%xmm0
           0.01%  │  0x00007f6969249051: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.01%  │  0x00007f6969249054: vmovd  %ecx,%xmm2
  0.30%    0.40%  │  0x00007f6969249058: cmp    $0x40,%ecx
                  │  0x00007f696924905b: jg     0x00007f69692495a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.44%    0.52%  │  0x00007f6969249061: mov    $0x1,%ebx
  0.01%    0.00%  │  0x00007f6969249066: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.81%    0.76%  │  0x00007f6969249069: mov    %r8,%rcx
           0.01%  │  0x00007f696924906c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.00%    0.01%  │  0x00007f696924906f: test   %rcx,%rcx
                  │  0x00007f6969249072: jne    0x00007f69692495dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.36%    0.43%  │  0x00007f6969249078: vmovd  %xmm2,%ecx
  0.37%    0.51%  │  0x00007f696924907c: cmp    $0x40,%ecx
                  │  0x00007f696924907f: jge    0x00007f6969249625  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.02%  │  0x00007f6969249085: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.02%  │  0x00007f6969249088: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.32%    0.28%  │  0x00007f696924908c: vmovq  %xmm4,%rcx
  0.46%    0.41%  │  0x00007f6969249091: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.02%    0.01%  │  0x00007f6969249094: mov    %r9,%rbx
  0.01%    0.02%  │  0x00007f6969249097: add    $0x18,%rbx
  0.32%    0.39%  │  0x00007f696924909b: vmovq  %xmm0,%rcx
  0.44%    0.44%  │  0x00007f69692490a0: shr    $0x3,%rcx
  0.02%           │  0x00007f69692490a4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.01%  │  0x00007f69692490a6: mov    %eax,%ecx
  0.31%    0.30%  │  0x00007f69692490a8: add    $0x3,%ecx
  0.48%    0.41%  │  0x00007f69692490ab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.01%  │  0x00007f69692490ae: shr    $0x9,%rbx
  0.02%    0.02%  │  0x00007f69692490b2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.30%    0.27%  │  0x00007f69692490b6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f696924983d
  0.41%    0.39%  │  0x00007f69692490bb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f69692490c1: jne    0x00007f69692492ed
  0.00%    0.01%  │  0x00007f69692490c7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.00%    0.01%  │  0x00007f69692490cb: vmovq  %rcx,%xmm0
  0.31%    0.43%  │  0x00007f69692490d0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.44%    0.60%  │  0x00007f69692490d3: vmovd  %ecx,%xmm1
  0.01%    0.01%  │  0x00007f69692490d7: cmp    $0x40,%ecx
                  │  0x00007f69692490da: jg     0x00007f6969249661  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.01%  │  0x00007f69692490e0: mov    $0x1,%ebx
  0.31%    0.41%  │  0x00007f69692490e5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.43%    0.55%  │  0x00007f69692490e8: mov    %r8,%rcx
  0.31%    0.15%  │  0x00007f69692490eb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.45%    0.16%  │  0x00007f69692490ee: test   %rcx,%rcx
                  │  0x00007f69692490f1: jne    0x00007f696924969d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.03%  │  0x00007f69692490f7: vmovd  %xmm1,%ecx
  0.01%    0.04%  │  0x00007f69692490fb: cmp    $0x40,%ecx
                  │  0x00007f69692490fe: jge    0x00007f69692496e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.34%    0.44%  │  0x00007f6969249104: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.39%    0.62%  │  0x00007f6969249108: vmovq  %xmm4,%r10
  0.03%    0.02%  │  0x00007f696924910d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.02%    0.01%  │  0x00007f6969249111: mov    %r9,%rcx
  0.27%    0.37%  │  0x00007f6969249114: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.48%    0.42%  │  0x00007f6969249118: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.02%  │  0x00007f696924911b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.03%  │  0x00007f696924911f: vmovq  %xmm0,%r10
  0.38%    0.34%  │  0x00007f6969249124: shr    $0x3,%r10
  0.50%    0.44%  │  0x00007f6969249128: mov    %r10d,(%rcx)
  0.02%    0.01%  │  0x00007f696924912b: mov    %rcx,%r10
  0.01%    0.01%  │  0x00007f696924912e: shr    $0x9,%r10
  0.28%    0.42%  │  0x00007f6969249132: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.43%    0.49%  │  0x00007f6969249136: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f6969249865
  0.02%    0.02%  │  0x00007f696924913b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f6969249142: jne    0x00007f6969249319
  0.02%    0.01%  │  0x00007f6969249148: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.36%    0.30%  │  0x00007f696924914c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.45%    0.29%  │  0x00007f6969249150: cmp    $0x40,%ecx
                  │  0x00007f6969249153: jg     0x00007f6969249721  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.01%  │  0x00007f6969249159: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.76%    0.73%  │  0x00007f696924915c: mov    %r8,%rbx
  0.01%    0.01%  │  0x00007f696924915f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.01%  │  0x00007f6969249162: test   %rbx,%rbx
                  │  0x00007f6969249165: jne    0x00007f6969249745  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.35%    0.29%  │  0x00007f696924916b: cmp    $0x40,%ecx
                  │  0x00007f696924916e: jge    0x00007f6969249775  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.37%    0.47%  │  0x00007f6969249174: or     %rsi,%r8
  0.00%    0.01%  │  0x00007f6969249177: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.00%    0.01%  │  0x00007f696924917b: add    $0x20,%r9
  0.31%    0.39%  │  0x00007f696924917f: mov    %r10,%r11
  0.38%    0.37%  │  0x00007f6969249182: shr    $0x3,%r11
  0.01%    0.00%  │  0x00007f6969249186: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.02%  │  0x00007f6969249189: mov    %r9,%r10
  0.28%    0.26%  │  0x00007f696924918c: add    $0x5,%eax
  0.35%    0.26%  │  0x00007f696924918f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.01%  │  0x00007f6969249192: shr    $0x9,%r10
  0.02%    0.01%  │  0x00007f6969249196: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.30%    0.28%  │  0x00007f696924919a: xor    %eax,%eax
  0.39%    0.46%  │  0x00007f696924919c: add    $0x70,%rsp
  0.01%    0.00%  │  0x00007f69692491a0: pop    %rbp
  0.01%    0.04%  │  0x00007f69692491a1: test   %eax,0x187a7e59(%rip)        # 0x00007f69819f1000
                  │                                                ;   {poll_return}
  0.34%    0.48%  │  0x00007f69692491a7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f69692491a8: mov    $0xffffffe4,%esi
                     0x00007f69692491ad: vmovq  %xmm4,%rbp
                     0x00007f69692491b2: mov    %rdx,(%rsp)
                     0x00007f69692491b6: mov    %r14d,0x88(%rsp)
                     0x00007f69692491be: vmovsd %xmm5,0x8(%rsp)
                     0x00007f69692491c4: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.87%   36.32%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.75%   60.65%         C2, level 4  com.google.re2j.Machine::match, version 600 (1191 bytes) 
 36.87%   36.32%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 561 (839 bytes) 
  0.53%    0.53%         C2, level 4  com.google.re2j.Machine::match, version 600 (187 bytes) 
  0.46%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 604 (367 bytes) 
  0.34%    0.33%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.20%    0.14%         C2, level 4  com.google.re2j.Machine::match, version 600 (472 bytes) 
  0.16%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 604 (0 bytes) 
  0.13%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 604 (33 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.11%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 604 (0 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.08%    0.06%         C2, level 4  java.util.Collections::shuffle, version 612 (27 bytes) 
  0.08%    0.01%         C2, level 4  java.util.Collections::shuffle, version 612 (126 bytes) 
  0.07%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 604 (8 bytes) 
  0.07%    0.00%              [vdso]  [unknown] (8 bytes) 
  0.06%                  C2, level 4  com.google.re2j.RE2::match, version 604 (105 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 604 (42 bytes) 
  0.04%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 604 (164 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (59 bytes) 
  0.03%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 645 (38 bytes) 
  1.70%    1.48%  <...other 362 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.50%   61.33%         C2, level 4  com.google.re2j.Machine::match, version 600 
 36.87%   36.32%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 561 
  1.24%    0.91%   [kernel.kallsyms]  [unknown] 
  1.18%    0.43%         C2, level 4  com.google.re2j.RE2::match, version 604 
  0.26%    0.09%         C2, level 4  java.util.Collections::shuffle, version 612 
  0.12%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 645 
  0.07%    0.00%              [vdso]  [unknown] 
  0.04%                 libc-2.26.so  _IO_fflush 
  0.04%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.02%              [vdso]  __vdso_clock_gettime 
  0.03%    0.02%           libjvm.so  xmlTextStream::write 
  0.03%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 610 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.06%        libc-2.26.so  _IO_fwrite 
  0.02%    0.09%        libc-2.26.so  vfprintf 
  0.01%    0.00%  libpthread-2.26.so  __pthread_getspecific 
  0.01%    0.02%           libjvm.so  fileStream::write 
  0.43%    0.31%  <...other 67 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.95%   98.20%         C2, level 4
  1.24%    0.91%   [kernel.kallsyms]
  0.43%    0.48%           libjvm.so
  0.17%    0.30%        libc-2.26.so
  0.11%    0.02%              [vdso]
  0.04%    0.02%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.01%    0.04%      hsdis-amd64.so
  0.01%    0.00%        runtime stub
  0.01%                  C1, level 3
  0.00%                perf-7780.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  26894.908 ± 352.781  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
