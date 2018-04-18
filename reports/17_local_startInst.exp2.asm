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
# Warmup Iteration   1: 13409.311 ops/s
# Warmup Iteration   2: 21425.608 ops/s
# Warmup Iteration   3: 21419.410 ops/s
# Warmup Iteration   4: 21421.652 ops/s
# Warmup Iteration   5: 21471.265 ops/s
# Warmup Iteration   6: 21459.609 ops/s
# Warmup Iteration   7: 21392.139 ops/s
# Warmup Iteration   8: 21398.189 ops/s
# Warmup Iteration   9: 21232.030 ops/s
# Warmup Iteration  10: 21248.571 ops/s
# Warmup Iteration  11: 20987.775 ops/s
# Warmup Iteration  12: 21434.406 ops/s
# Warmup Iteration  13: 21456.103 ops/s
# Warmup Iteration  14: 21441.615 ops/s
# Warmup Iteration  15: 21400.990 ops/s
# Warmup Iteration  16: 21447.245 ops/s
# Warmup Iteration  17: 21451.642 ops/s
# Warmup Iteration  18: 21455.422 ops/s
# Warmup Iteration  19: 21414.762 ops/s
# Warmup Iteration  20: 21441.868 ops/s
Iteration   1: 21450.562 ops/s
Iteration   2: 21420.429 ops/s
Iteration   3: 21439.847 ops/s
Iteration   4: 21520.212 ops/s
Iteration   5: 21532.228 ops/s
Iteration   6: 21550.867 ops/s
Iteration   7: 21515.631 ops/s
Iteration   8: 21531.806 ops/s
Iteration   9: 21544.352 ops/s
Iteration  10: 21549.427 ops/s
Iteration  11: 20929.359 ops/s
Iteration  12: 20910.566 ops/s
Iteration  13: 20918.997 ops/s
Iteration  14: 20917.989 ops/s
Iteration  15: 20924.731 ops/s
Iteration  16: 20918.683 ops/s
Iteration  17: 20909.670 ops/s
Iteration  18: 20924.515 ops/s
Iteration  19: 21373.198 ops/s
Iteration  20: 21408.354 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  21259.571 ±(99.9%) 251.070 ops/s [Average]
  (min, avg, max) = (20909.670, 21259.571, 21550.867), stdev = 289.132
  CI (99.9%): [21008.501, 21510.641] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 191614 total address lines.
Perf output processed (skipped 23.300 seconds):
 Column 1: cycles (20468 events)
 Column 2: instructions (20451 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 536 (1444 bytes) 

                                                                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                                    ; - com.google.re2j.Machine::match@130 (line 207)
                                                      0x00007f7ea923a90b: mov    %r8d,%r11d
                                                      0x00007f7ea923a90e: add    $0xffffff9f,%r11d
                                                      0x00007f7ea923a912: cmp    $0x1a,%r11d
                                                      0x00007f7ea923a916: jae    0x00007f7ea923af14  ;*iconst_1
                                                                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                                    ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%                                               0x00007f7ea923a91c: or     $0x10,%r9d         ;*iload_2
                                                                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                    ; - com.google.re2j.Machine::match@130 (line 207)
  0.01%    0.01%                                      0x00007f7ea923a920: test   %ecx,%ecx
                                                      0x00007f7ea923a922: jne    0x00007f7ea923bb25
                                                      0x00007f7ea923a928: mov    %r8d,0x24(%rsp)
  0.01%                                               0x00007f7ea923a92d: mov    %ecx,0x38(%rsp)
                                                      0x00007f7ea923a931: mov    0x30(%rsp),%r11d
           0.01%                                      0x00007f7ea923a936: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f7ea923bb25
  0.01%                                               0x00007f7ea923a93b: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                                                      0x00007f7ea923a942: jne    0x00007f7ea923bb25  ;*aload
                                                                                                    ; - com.google.re2j.Machine::match@145 (line 213)
  0.00%                                               0x00007f7ea923a948: lea    (%r12,%r11,8),%r10  ;*invokevirtual add
                                                                                                    ; - com.google.re2j.Machine::match@322 (line 245)
                                                      0x00007f7ea923a94c: mov    %r10,0x78(%rsp)
                                                      0x00007f7ea923a951: mov    0x68(%rsp),%r10d
                                                      0x00007f7ea923a956: and    $0x4,%r10d         ;*iand
                                                                                                    ; - com.google.re2j.Machine::match@156 (line 214)
  0.00%                                               0x00007f7ea923a95a: mov    %r10d,0x3c(%rsp)
                                                      0x00007f7ea923a95f: mov    %rbx,%r10
                                                      0x00007f7ea923a962: shl    $0x3,%r10          ;*getfield q1
                                                                                                    ; - com.google.re2j.Machine::match@62 (line 194)
                                                      0x00007f7ea923a966: mov    %r10,0x50(%rsp)
           0.00%                                      0x00007f7ea923a96b: xor    %eax,%eax
                                                      0x00007f7ea923a96d: xor    %r10d,%r10d
                                                      0x00007f7ea923a970: mov    %r10d,0x40(%rsp)
                  ╭                                   0x00007f7ea923a975: jmpq   0x00007f7ea923acbf
  0.25%    0.34%  │   ↗↗↗                             0x00007f7ea923a97a: mov    0x2c(%r12,%r8,8),%ebp  ;*getfield outInst
                  │   │││                                                                           ; - com.google.re2j.Machine::step@199 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.22%    0.22%  │   │││                             0x00007f7ea923a97f: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7ea923c039
  0.13%    0.05%  │   │││                             0x00007f7ea923a984: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │││                             0x00007f7ea923a98a: jne    0x00007f7ea923b6fd
  0.12%    0.14%  │   │││                             0x00007f7ea923a990: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%    0.01%  │   │││                             0x00007f7ea923a994: vmovq  %r8,%xmm1
  0.01%    0.03%  │   │││                             0x00007f7ea923a999: mov    0x18(%r8),%r8d     ;*getfield pc
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%    0.00%  │   │││                             0x00007f7ea923a99d: vmovd  %r8d,%xmm4
  0.10%    0.12%  │   │││                             0x00007f7ea923a9a2: mov    0x50(%rsp),%r8
  0.02%    0.04%  │   │││                             0x00007f7ea923a9a7: mov    0x10(%r8),%rdi     ;*getfield pcsl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                  │   │││                                                                           ; implicit exception: dispatches to 0x00007f7ea923c055
  0.00%    0.01%  │   │││                             0x00007f7ea923a9ab: vmovd  %xmm4,%r8d
  0.09%    0.12%  │   │││                             0x00007f7ea923a9b0: cmp    $0x40,%r8d
                  │   │││                             0x00007f7ea923a9b4: jg     0x00007f7ea923b7fd  ;*if_icmpgt
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.12%    0.18%  │   │││                             0x00007f7ea923a9ba: mov    $0x1,%r8d
           0.00%  │   │││                             0x00007f7ea923a9c0: vmovd  %xmm4,%ecx
  0.09%    0.11%  │   │││                             0x00007f7ea923a9c4: shl    %cl,%r8            ;*lshl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.25%    0.26%  │   │││                             0x00007f7ea923a9c7: mov    %rdi,%rcx
           0.00%  │   │││                             0x00007f7ea923a9ca: and    %r8,%rcx           ;*land
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.02%    0.05%  │   │││                             0x00007f7ea923a9cd: test   %rcx,%rcx
                  │   │││                             0x00007f7ea923a9d0: jne    0x00007f7ea923b895  ;*ifeq
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.14%    0.15%  │   │││                             0x00007f7ea923a9d6: vmovd  %xmm4,%ecx
           0.01%  │   │││                             0x00007f7ea923a9da: cmp    $0x40,%ecx
                  │   │││                             0x00007f7ea923a9dd: jge    0x00007f7ea923b91d  ;*if_icmpge
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.08%    0.07%  │   │││                             0x00007f7ea923a9e3: mov    0x50(%rsp),%rcx
  0.00%    0.01%  │   │││                             0x00007f7ea923a9e8: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.15%    0.11%  │   │││                             0x00007f7ea923a9ec: or     %rdi,%r8
  0.00%           │   │││                             0x00007f7ea923a9ef: mov    %r8,0x10(%rcx)     ;*putfield pcsl
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.05%  │   │││                             0x00007f7ea923a9f3: mov    0x20(%rcx),%r8d    ;*getfield denseThreadsInstructions
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%           │   │││                             0x00007f7ea923a9f7: mov    %r8d,%edi
  0.06%    0.12%  │   │││                             0x00007f7ea923a9fa: mov    0xc(%rcx),%ebp     ;*getfield size
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%           │   │││                             0x00007f7ea923a9fd: mov    %ebp,%r8d
  0.07%    0.08%  │   │││                             0x00007f7ea923aa00: inc    %r8d
  0.02%    0.01%  │   │││                             0x00007f7ea923aa03: mov    %r8d,0xc(%rcx)     ;*putfield size
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.08%    0.09%  │   │││                             0x00007f7ea923aa07: mov    %edi,%r8d
           0.01%  │   │││                             0x00007f7ea923aa0a: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f7ea923c069
  0.09%    0.05%  │   │││                             0x00007f7ea923aa0f: cmp    %ecx,%ebp
                  │   │││                             0x00007f7ea923aa11: jae    0x00007f7ea923b669
  0.03%    0.06%  │   │││                             0x00007f7ea923aa17: mov    0x8(%r12,%r8,8),%r8d
  0.08%    0.07%  │   │││                             0x00007f7ea923aa1c: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │   │││                             0x00007f7ea923aa23: jne    0x00007f7ea923b76d  ;*aastore
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
           0.01%  │   │││                             0x00007f7ea923aa29: mov    %edi,%r8d
  0.04%    0.04%  │   │││                             0x00007f7ea923aa2c: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.03%  │   │││                             0x00007f7ea923aa30: lea    0x10(%r8,%rbp,4),%r8
  0.10%    0.07%  │   │││                             0x00007f7ea923aa35: vmovq  %xmm1,%rcx
  0.00%    0.01%  │   │││                             0x00007f7ea923aa3a: shr    $0x3,%rcx
  0.06%    0.05%  │   │││                             0x00007f7ea923aa3e: mov    %ecx,(%r8)
  0.22%    0.26%  │   │││                             0x00007f7ea923aa41: shr    $0x9,%r8
  0.05%    0.09%  │   │││                             0x00007f7ea923aa45: movabs $0x7f7ea4dee000,%rcx
           0.00%  │   │││                             0x00007f7ea923aa4f: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                  │   │││                                                                           ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                           ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │   │││                                                                           ; - com.google.re2j.Machine::step@214 (line 319)
                  │   │││                                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.12%    0.17%  │╭  │││                             0x00007f7ea923aa53: jmpq   0x00007f7ea923ab6b
  0.30%    0.19%  ││  │││              ↗              0x00007f7ea923aa58: or     $0x20,%r9d         ;*iload_2
                  ││  │││              │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││  │││              │                                                            ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.24%  ││  │││              │↗             0x00007f7ea923aa5c: mov    0x60(%rsp),%r10
  0.11%    0.10%  ││  │││              ││             0x00007f7ea923aa61: mov    0x14(%r10),%r11d   ;*getfield re2
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@1 (line 282)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.16%    0.14%  ││  │││              ││             0x00007f7ea923aa65: movzbl 0x18(%r12,%r11,8),%r13d  ;*getfield longest
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@4 (line 282)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                  ││  │││              ││                                                           ; implicit exception: dispatches to 0x00007f7ea923bfd5
  0.51%    0.42%  ││  │││              ││             0x00007f7ea923aa6b: mov    0x2c(%rsp),%r10d
  0.27%    0.32%  ││  │││              ││             0x00007f7ea923aa70: mov    0xc(%r12,%r10,8),%eax  ;*getfield size
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::step@10 (line 283)
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.10%  ││  │││              ││             0x00007f7ea923aa75: mov    0x40(%rsp),%r11d
  0.06%    0.06%  ││  │││              ││             0x00007f7ea923aa7a: add    0x20(%rsp),%r11d   ;*iadd
                  ││  │││              ││                                                           ; - com.google.re2j.Machine::match@344 (line 248)
  0.31%    0.28%  ││  │││              ││             0x00007f7ea923aa7f: test   %eax,%eax
                  ││╭ │││              ││             0x00007f7ea923aa81: jle    0x00007f7ea923ab73  ;*if_icmpge
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@40 (line 288)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.35%    0.31%  │││ │││              ││             0x00007f7ea923aa87: mov    0x24(%r12,%r10,8),%r14d  ;*getfield denseThreadsCapture
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@28 (line 286)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.06%  │││ │││              ││             0x00007f7ea923aa8c: mov    0x20(%r12,%r10,8),%r8d  ;*getfield denseThreadsInstructions
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@22 (line 285)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.07%    0.05%  │││ │││              ││             0x00007f7ea923aa91: vmovd  %r8d,%xmm0
  0.25%    0.31%  │││ │││              ││             0x00007f7ea923aa96: mov    0x60(%rsp),%r10
  0.33%    0.37%  │││ │││              ││             0x00007f7ea923aa9b: movzbl 0x11(%r10),%ecx    ;*getfield captures
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@16 (line 284)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.09%    0.09%  │││ │││              ││             0x00007f7ea923aaa0: mov    0x70(%rsp),%r10
  0.08%    0.07%  │││ │││              ││             0x00007f7ea923aaa5: mov    0x10(%r10),%r10d
  0.31%    0.27%  │││ │││              ││             0x00007f7ea923aaa9: mov    0x40(%rsp),%ebx
  0.33%    0.29%  │││ │││              ││             0x00007f7ea923aaad: mov    $0x1,%r8d
  0.11%    0.10%  │││ │││              ││             0x00007f7ea923aab3: xor    %esi,%esi
  0.08%    0.06%  │││ │││              ││             0x00007f7ea923aab5: cmp    %r10d,%ebx
  0.33%    0.26%  │││ │││              ││             0x00007f7ea923aab8: cmovne %esi,%r8d          ;*invokespecial step
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.49%    0.42%  │││ │││              ││             0x00007f7ea923aabc: vmovd  %r8d,%xmm2
  0.12%    0.11%  │││ │││              ││             0x00007f7ea923aac1: test   %ecx,%ecx
                  │││ │││              ││             0x00007f7ea923aac3: jne    0x00007f7ea923b285  ;*iload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@43 (line 291)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.32%    0.22%  │││ │││              ││             0x00007f7ea923aac9: vmovd  %xmm0,%r8d
  0.25%    0.25%  │││ │││              ││             0x00007f7ea923aace: mov    0xc(%r12,%r8,8),%r10d  ;*aaload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@99 (line 301)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                  │││ │││              ││                                                           ; implicit exception: dispatches to 0x00007f7ea923b285
  0.10%    0.12%  │││ │││              ││             0x00007f7ea923aad3: test   %r10d,%r10d
                  │││ │││              ││             0x00007f7ea923aad6: jbe    0x00007f7ea923b285
  0.12%    0.08%  │││ │││              ││             0x00007f7ea923aadc: mov    %eax,%r8d
  0.25%    0.20%  │││ │││              ││             0x00007f7ea923aadf: dec    %r8d
  0.36%    0.27%  │││ │││              ││             0x00007f7ea923aae2: cmp    %r10d,%r8d
                  │││ │││              ││             0x00007f7ea923aae5: jae    0x00007f7ea923b285
  0.09%    0.09%  │││ │││              ││             0x00007f7ea923aaeb: vmovd  %xmm0,%r10d
  0.11%    0.12%  │││ │││              ││             0x00007f7ea923aaf0: lea    (%r12,%r10,8),%rbx
  0.32%    0.31%  │││ │││              ││             0x00007f7ea923aaf4: xor    %r10d,%r10d
  0.29%    0.29%  │││ │││              ││             0x00007f7ea923aaf7: nopw   0x0(%rax,%rax,1)   ;*iload
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::step@43 (line 291)
                  │││ │││              ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.36%    1.31%  │││ │││↗             ││             0x00007f7ea923ab00: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@99 (line 301)
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.48%    0.64%  │││ ││││             ││             0x00007f7ea923ab05: mov    0xc(%r12,%r8,8),%edi  ;*getfield op
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::step@104 (line 303)
                  │││ ││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
                  │││ ││││             ││                                                           ; implicit exception: dispatches to 0x00007f7ea923bfb5
  1.32%    1.39%  │││ ││││             ││             0x00007f7ea923ab0a: cmp    $0x6,%edi
                  │││╭││││             ││             0x00007f7ea923ab0d: je     0x00007f7ea923aea8  ;*if_icmpne
                  ││││││││             ││                                                           ; - com.google.re2j.Machine::step@109 (line 303)
                  ││││││││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.25%    1.25%  ││││││││             ││             0x00007f7ea923ab13: cmp    $0xa,%edi
                  ││││╰│││             ││             0x00007f7ea923ab16: je     0x00007f7ea923a97a  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.29%    1.36%  ││││ │││             ││             0x00007f7ea923ab1c: cmp    $0xb,%edi
                  ││││ │││             ││             0x00007f7ea923ab1f: je     0x00007f7ea923afcd  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.15%    0.96%  ││││ │││             ││             0x00007f7ea923ab25: cmp    $0x9,%edi
                  ││││ │││             ││             0x00007f7ea923ab28: je     0x00007f7ea923b061  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.13%    1.18%  ││││ │││             ││             0x00007f7ea923ab2e: cmp    $0xc,%edi
                  ││││ │││             ││             0x00007f7ea923ab31: jne    0x00007f7ea923af38  ;*if_icmpne
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.68%    1.75%  ││││ │││             ││             0x00007f7ea923ab37: mov    0x1c(%r12,%r8,8),%edi  ;*getfield f0
                  ││││ │││             ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││ │││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.95%    1.12%  ││││ │││             ││             0x00007f7ea923ab3c: cmp    %edx,%edi
                  ││││ ╰││             ││             0x00007f7ea923ab3e: je     0x00007f7ea923a97a  ;*if_icmpeq
                  ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.43%    1.78%  ││││  ││             ││             0x00007f7ea923ab44: mov    0x20(%r12,%r8,8),%edi  ;*getfield f1
                  ││││  ││             ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││  ││             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.90%    0.83%  ││││  ││             ││             0x00007f7ea923ab49: cmp    %edx,%edi
                  ││││  ╰│             ││             0x00007f7ea923ab4b: je     0x00007f7ea923a97a  ;*if_icmpeq
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.49%    1.68%  ││││   │             ││             0x00007f7ea923ab51: mov    0x24(%r12,%r8,8),%edi  ;*getfield f2
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.19%    1.24%  ││││   │             ││             0x00007f7ea923ab56: cmp    %edx,%edi
                  ││││   │             ││             0x00007f7ea923ab58: je     0x00007f7ea923b0f5  ;*if_icmpeq
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.44%    1.69%  ││││   │             ││             0x00007f7ea923ab5e: mov    0x28(%r12,%r8,8),%edi  ;*getfield f3
                  ││││   │             ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@191 (line 318)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.61%    0.66%  ││││   │             ││             0x00007f7ea923ab63: cmp    %edx,%edi
                  ││││   │             ││             0x00007f7ea923ab65: je     0x00007f7ea923b175  ;*aload
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::step@219 (line 322)
                  ││││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  1.00%    1.27%  │↘││   │             ││             0x00007f7ea923ab6b: inc    %r10d              ;*iinc
                  │ ││   │             ││                                                           ; - com.google.re2j.Machine::step@230 (line 288)
                  │ ││   │             ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.74%    0.82%  │ ││   │             ││             0x00007f7ea923ab6e: cmp    %eax,%r10d
                  │ ││   ╰             ││             0x00007f7ea923ab71: jl     0x00007f7ea923ab00  ;*if_icmpge
                  │ ││                 ││                                                           ; - com.google.re2j.Machine::step@40 (line 288)
                  │ ││                 ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.25%    0.31%  │ ↘│                 ││             0x00007f7ea923ab73: mov    0x2c(%rsp),%r8d
  0.21%    0.26%  │  │                 ││             0x00007f7ea923ab78: movzbl 0x18(%r12,%r8,8),%r8d
  0.17%    0.16%  │  │                 ││             0x00007f7ea923ab7e: test   %r8d,%r8d
                  │  │    ╭            ││             0x00007f7ea923ab81: jne    0x00007f7ea923aba5  ;*ifeq
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.24%    0.28%  │  │    │            ││             0x00007f7ea923ab83: mov    0x2c(%rsp),%r10d
  0.18%    0.28%  │  │    │            ││             0x00007f7ea923ab88: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.31%    0.30%  │  │    │            ││             0x00007f7ea923ab8d: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.43%    0.66%  │  │    │            ││             0x00007f7ea923ab93: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.98%    1.22%  │  │    │            ││             0x00007f7ea923ab98: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                  │  │    │            ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.44%    0.66%  │  │    │            ││             0x00007f7ea923ab9d: test   %ebp,%ebp
                  │  │    │            ││             0x00007f7ea923ab9f: jne    0x00007f7ea923b48d  ;*invokevirtual clear
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::step@237 (line 326)
                  │  │    │            ││                                                           ; - com.google.re2j.Machine::match@363 (line 248)
  0.11%    0.08%  │  │    ↘            ││             0x00007f7ea923aba5: mov    0x60(%rsp),%r10
  0.14%    0.18%  │  │                 ││             0x00007f7ea923abaa: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │  │                 ││                                                           ; - com.google.re2j.Machine::match@382 (line 252)
  0.30%    0.49%  │  │                 ││             0x00007f7ea923abaf: mov    0x60(%rsp),%r10
  0.20%    0.34%  │  │                 ││             0x00007f7ea923abb4: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │  │                 ││                                                           ; - com.google.re2j.Machine::match@375 (line 252)
  0.06%    0.08%  │  │                 ││             0x00007f7ea923abb9: mov    0x20(%rsp),%r10d
  0.11%    0.17%  │  │                 ││             0x00007f7ea923abbe: test   %r10d,%r10d
                  │  │     ╭           ││             0x00007f7ea923abc1: je     0x00007f7ea923adee  ;*ifne
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@368 (line 249)
  0.41%    0.33%  │  │     │           ││             0x00007f7ea923abc7: test   %ebp,%ebp
                  │  │     │           ││             0x00007f7ea923abc9: jne    0x00007f7ea923b365  ;*ifne
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@378 (line 252)
  0.21%    0.29%  │  │     │           ││             0x00007f7ea923abcf: test   %eax,%eax
                  │  │     │           ││             0x00007f7ea923abd1: jne    0x00007f7ea923b449  ;*ifeq
                  │  │     │           ││                                                           ; - com.google.re2j.Machine::match@385 (line 252)
  0.07%    0.04%  │  │     │           ││             0x00007f7ea923abd7: mov    0x34(%rsp),%r8d
  0.10%    0.13%  │  │     │           ││             0x00007f7ea923abdc: cmp    $0xffffffff,%r8d
                  │  │     │╭          ││             0x00007f7ea923abe0: je     0x00007f7ea923ae2d  ;*if_icmpeq
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 260)
  0.28%    0.44%  │  │     ││          ││             0x00007f7ea923abe6: mov    0x70(%rsp),%r10
  0.19%    0.37%  │  │     ││          ││             0x00007f7ea923abeb: mov    0x10(%r10),%r10d   ;*getfield end
                  │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.07%    0.11%  │  │     ││          ││             0x00007f7ea923abef: mov    0x28(%rsp),%ecx
  0.12%    0.19%  │  │     ││          ││             0x00007f7ea923abf3: add    %r11d,%ecx
  0.29%    0.48%  │  │     ││          ││             0x00007f7ea923abf6: mov    0x70(%rsp),%r8
  0.19%    0.31%  │  │     ││          ││             0x00007f7ea923abfb: add    0xc(%r8),%ecx      ;*iadd
                  │  │     ││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │  │     ││          ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.36%    0.34%  │  │     ││          ││             0x00007f7ea923abff: cmp    %r10d,%ecx
                  │  │     ││╭         ││             0x00007f7ea923ac02: jge    0x00007f7ea923ae3c  ;*if_icmpge
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.37%    0.41%  │  │     │││         ││             0x00007f7ea923ac08: mov    0x14(%r8),%ebp     ;*getfield str
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.23%    0.37%  │  │     │││         ││             0x00007f7ea923ac0c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7ea923bfe5
  1.23%    1.81%  │  │     │││         ││             0x00007f7ea923ac11: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │  │     │││         ││             0x00007f7ea923ac18: jne    0x00007f7ea923b245
  0.52%    0.80%  │  │     │││         ││             0x00007f7ea923ac1e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.04%  │  │     │││         ││             0x00007f7ea923ac22: test   %ecx,%ecx
                  │  │     │││         ││             0x00007f7ea923ac24: jl     0x00007f7ea923b3ad  ;*iflt
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@1 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.12%    0.20%  │  │     │││         ││             0x00007f7ea923ac2a: mov    0xc(%rbx),%r8d     ;*getfield value
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@6 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.22%    0.27%  │  │     │││         ││             0x00007f7ea923ac2e: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@9 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
                  │  │     │││         ││                                                           ; implicit exception: dispatches to 0x00007f7ea923bff9
  3.44%    4.40%  │  │     │││         ││             0x00007f7ea923ac33: cmp    %ebp,%ecx
                  │  │     │││         ││             0x00007f7ea923ac35: jge    0x00007f7ea923b4c9  ;*if_icmplt
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@10 (line 657)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.72%    0.67%  │  │     │││         ││             0x00007f7ea923ac3b: cmp    %ebp,%ecx
                  │  │     │││         ││             0x00007f7ea923ac3d: jae    0x00007f7ea923b1f1
  0.07%    0.02%  │  │     │││         ││             0x00007f7ea923ac43: lea    (%r12,%r8,8),%r10
  0.00%    0.01%  │  │     │││         ││             0x00007f7ea923ac47: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                  │  │     │││         ││                                                           ; - java.lang.String::charAt@27 (line 660)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.01%    0.01%  │  │     │││         ││             0x00007f7ea923ac4d: cmp    $0xd800,%r8d
                  │  │     │││         ││             0x00007f7ea923ac54: jge    0x00007f7ea923b521  ;*if_icmplt
                  │  │     │││         ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │  │     │││         ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.61%    0.58%  │  │     │││         ││             0x00007f7ea923ac5a: shl    $0x3,%r8d          ;*ishl
                  │  │     │││         ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.06%    0.04%  │  │     │││         ││             0x00007f7ea923ac5e: mov    %r8d,%ebx
  0.00%    0.00%  │  │     │││         ││             0x00007f7ea923ac61: and    $0x7,%ebx
  0.52%    0.51%  │  │     │││         ││             0x00007f7ea923ac64: or     $0x1,%r8d
  0.25%    0.13%  │  │     │││         ││             0x00007f7ea923ac68: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@415 (line 261)
  0.46%    0.58%  │  │     │││         ││             0x00007f7ea923ac6b: sar    $0x3,%r8d          ; OopMap{[16]=Oop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1391}
                  │  │     │││         ││                                                           ;*goto
                  │  │     │││         ││                                                           ; - com.google.re2j.Machine::match@445 (line 268)
  0.02%           │  │     │││         ││   ↗↗        0x00007f7ea923ac6f: test   %eax,0x163e038b(%rip)        # 0x00007f7ebf61b000
                  │  │     │││         ││   ││                                                      ;*goto
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@445 (line 268)
                  │  │     │││         ││   ││                                                      ;   {poll}
  0.02%           │  │     │││         ││   ││        0x00007f7ea923ac75: mov    0x60(%rsp),%r10
  0.21%    0.13%  │  │     │││         ││   ││        0x00007f7ea923ac7a: mov    0x14(%r10),%esi    ;*getfield re2
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@178 (line 222)
  0.51%    0.44%  │  │     │││         ││   ││        0x00007f7ea923ac7e: mov    0x28(%r10),%r10d   ;*getfield matchcap
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@311 (line 245)
  0.01%    0.01%  │  │     │││         ││   ││        0x00007f7ea923ac82: mov    0x50(%rsp),%rcx
                  │  │     │││         ││   ││        0x00007f7ea923ac87: mov    %rcx,%rdi
  0.23%    0.09%  │  │     │││         ││   ││        0x00007f7ea923ac8a: shr    $0x3,%rdi
  0.58%    0.49%  │  │     │││         ││   ││        0x00007f7ea923ac8e: mov    %edi,0x2c(%rsp)
  0.00%    0.02%  │  │     │││         ││   ││        0x00007f7ea923ac92: mov    0x28(%rsp),%ecx
                  │  │     │││         ││   ││        0x00007f7ea923ac96: mov    %ecx,0x20(%rsp)
  0.18%    0.23%  │  │     │││         ││   ││        0x00007f7ea923ac9a: mov    %r11d,0x40(%rsp)
  0.56%    0.45%  │  │     │││         ││   ││        0x00007f7ea923ac9f: mov    %ebx,0x28(%rsp)
  0.00%           │  │     │││         ││   ││        0x00007f7ea923aca3: mov    0x34(%rsp),%ecx
                  │  │     │││         ││   ││        0x00007f7ea923aca7: mov    %ecx,0x24(%rsp)
  0.24%    0.17%  │  │     │││         ││   ││        0x00007f7ea923acab: mov    %r8d,0x34(%rsp)
  0.43%    0.44%  │  │     │││         ││   ││        0x00007f7ea923acb0: mov    0x10(%rsp),%r11
  0.02%    0.01%  │  │     │││         ││   ││        0x00007f7ea923acb5: mov    %r11,0x50(%rsp)
           0.01%  │  │     │││         ││   ││        0x00007f7ea923acba: vmovd  %r10d,%xmm3        ;*aload
                  │  │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@145 (line 213)
  0.17%    0.22%  ↘  │     │││         ││   ││        0x00007f7ea923acbf: mov    0x2c(%rsp),%r11d
  0.53%    0.43%     │     │││         ││   ││        0x00007f7ea923acc4: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f7ea923bfc5
  0.05%    0.06%     │     │││         ││   ││        0x00007f7ea923acca: test   %r11d,%r11d
                     │     │││╭        ││   ││        0x00007f7ea923accd: je     0x00007f7ea923acfc  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@150 (line 213)
           0.01%     │     ││││        ││   ││        0x00007f7ea923accf: mov    0x3c(%rsp),%r11d
  0.17%    0.15%     │     ││││        ││   ││        0x00007f7ea923acd4: test   %r11d,%r11d
                     │     ││││        ││   ││        0x00007f7ea923acd7: jne    0x00007f7ea923b5bd  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@157 (line 214)
  0.43%    0.22%     │     ││││        ││   ││        0x00007f7ea923acdd: test   %eax,%eax
                     │     ││││        ││   ││        0x00007f7ea923acdf: jne    0x00007f7ea923b611  ;*ifeq
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@171 (line 218)
           0.00%     │     ││││        ││   ││        0x00007f7ea923ace5: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@181 (line 222)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007f7ea923c009
  0.01%    0.00%     │     ││││        ││   ││        0x00007f7ea923acea: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                     │     ││││        ││   ││                                                      ; - java.lang.String::isEmpty@1 (line 635)
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@184 (line 222)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007f7ea923c019
  0.18%    0.18%     │     ││││        ││   ││        0x00007f7ea923acef: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                     │     ││││        ││   ││                                                      ; - java.lang.String::isEmpty@4 (line 635)
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@184 (line 222)
                     │     ││││        ││   ││                                                      ; implicit exception: dispatches to 0x00007f7ea923c029
  0.43%    0.24%     │     ││││        ││   ││        0x00007f7ea923acf4: test   %ebp,%ebp
                     │     ││││        ││   ││        0x00007f7ea923acf6: jne    0x00007f7ea923b575  ;*iload_3
                     │     ││││        ││   ││                                                      ; - com.google.re2j.Machine::match@276 (line 239)
  0.03%    0.04%     │     │││↘        ││   ││        0x00007f7ea923acfc: test   %eax,%eax
                     │     │││         ││   ││        0x00007f7ea923acfe: jne    0x00007f7ea923b315  ;*ifne
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@288 (line 239)
  0.01%    0.01%     │     │││         ││   ││        0x00007f7ea923ad04: mov    0x60(%rsp),%r10
  0.23%    0.25%     │     │││         ││   ││        0x00007f7ea923ad09: movzbl 0x11(%r10),%r10d   ;*getfield captures
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@292 (line 242)
  0.35%    0.32%     │     │││         ││   ││        0x00007f7ea923ad0e: test   %r10d,%r10d
                     │     │││         ││   ││        0x00007f7ea923ad11: jne    0x00007f7ea923b3f9  ;*ifeq
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@295 (line 242)
  0.09%    0.04%     │     │││         ││   ││        0x00007f7ea923ad17: vmovd  %xmm3,%r8d
  0.02%    0.01%     │     │││         ││   ││        0x00007f7ea923ad1c: shl    $0x3,%r8           ;*getfield matchcap
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@311 (line 245)
  0.22%    0.17%     │     │││         ││   ││        0x00007f7ea923ad20: mov    0x2c(%rsp),%ecx
  0.36%    0.25%     │     │││         ││   ││        0x00007f7ea923ad24: lea    (%r12,%rcx,8),%r11  ;*aload
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@145 (line 213)
  0.06%    0.03%     │     │││         ││   ││        0x00007f7ea923ad28: mov    %r11,0x10(%rsp)
  0.00%    0.02%     │     │││         ││   ││        0x00007f7ea923ad2d: mov    0x78(%rsp),%rsi
  0.23%    0.18%     │     │││         ││   ││        0x00007f7ea923ad32: mov    %r11,%rdx
  0.38%    0.08%     │     │││         ││   ││        0x00007f7ea923ad35: mov    0x40(%rsp),%ecx
  0.04%    0.01%     │     │││         ││   ││        0x00007f7ea923ad39: xor    %edi,%edi
  0.01%    0.00%     │     │││         ││   ││        0x00007f7ea923ad3b: mov    0x60(%rsp),%r11
  0.21%    0.15%     │     │││         ││   ││        0x00007f7ea923ad40: mov    %r11,(%rsp)
  0.35%    0.08%     │     │││         ││   ││        0x00007f7ea923ad44: mov    %r10d,0x8(%rsp)
  0.06%    0.04%     │     │││         ││   ││        0x00007f7ea923ad49: xchg   %ax,%ax
  0.01%    0.00%     │     │││         ││   ││        0x00007f7ea923ad4b: callq  0x00007f7ea9046020  ; OopMap{[16]=Oop [44]=NarrowOop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1616}
                     │     │││         ││   ││                                                      ;*invokevirtual add
                     │     │││         ││   ││                                                      ; - com.google.re2j.Machine::match@322 (line 245)
                     │     │││         ││   ││                                                      ;   {optimized virtual_call}
  0.31%    0.34%     │     │││         ││   ││        0x00007f7ea923ad50: mov    0x24(%rsp),%edx
  0.10%    0.13%     │     │││         ││   ││        0x00007f7ea923ad54: test   %edx,%edx
                     │     │││ ╭       ││   ││        0x00007f7ea923ad56: jl     0x00007f7ea923addd  ;*ifge
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Machine::match@330 (line 247)
  0.32%    0.26%     │     │││ │       ││   ││        0x00007f7ea923ad5c: xor    %r9d,%r9d          ;*iload_0
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │     │││ │       ││   ││                                                      ; - com.google.re2j.Machine::match@330 (line 247)
  0.30%    0.30%     │     │││ │       ││↗  ││        0x00007f7ea923ad5f: cmp    $0xa,%edx
                     │     │││ │╭      │││  ││        0x00007f7ea923ad62: je     0x00007f7ea923ae49  ;*iload_1
                     │     │││ ││      │││  ││                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │     │││ ││      │││  ││                                                      ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.06%     │     │││ ││      │││  ││↗       0x00007f7ea923ad68: mov    0x34(%rsp),%r11d
  0.03%    0.03%     │     │││ ││      │││  │││       0x00007f7ea923ad6d: test   %r11d,%r11d
                     │     │││ ││╭     │││  │││       0x00007f7ea923ad70: jl     0x00007f7ea923ade8  ;*iload_1
                     │     │││ │││     │││  │││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │     │││ │││     │││  │││                                                     ; - com.google.re2j.Machine::match@330 (line 247)
  0.34%    0.44%     │     │││ │││     │││↗ │││       0x00007f7ea923ad72: cmp    $0xa,%r11d
                     │     │││ │││╭    ││││ │││       0x00007f7ea923ad76: je     0x00007f7ea923ae52  ;*iload_0
                     │     │││ ││││    ││││ │││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │     │││ ││││    ││││ │││                                                     ; - com.google.re2j.Machine::match@330 (line 247)
  0.31%    0.25%     │     │││ ││││    ││││ │││↗      0x00007f7ea923ad7c: mov    0x24(%rsp),%r11d
  0.07%    0.06%     │     │││ ││││    ││││ ││││      0x00007f7ea923ad81: add    $0xffffffbf,%r11d
  0.03%    0.01%     │     │││ ││││    ││││ ││││      0x00007f7ea923ad85: cmp    $0x1a,%r11d
                     │     │││ ││││╭   ││││ ││││      0x00007f7ea923ad89: jb     0x00007f7ea923ad9e  ;*if_icmple
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ │││││   ││││ ││││                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.39%    0.40%     │     │││ │││││   ││││ ││││      0x00007f7ea923ad8b: mov    0x24(%rsp),%r10d
  0.30%    0.39%     │     │││ │││││   ││││ ││││      0x00007f7ea923ad90: add    $0xffffff9f,%r10d
  0.06%    0.04%     │     │││ │││││   ││││ ││││      0x00007f7ea923ad94: cmp    $0x1a,%r10d
                     │     │││ │││││╭  ││││ ││││      0x00007f7ea923ad98: jae    0x00007f7ea923ae5b  ;*iconst_1
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ ││││││  ││││ ││││                                                    ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.04%     │     │││ ││││↘│  ││││ ││││↗     0x00007f7ea923ad9e: mov    $0x1,%ebp          ;*ireturn
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││ ││││ │  ││││ │││││                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.37%    0.42%     │     │││ ││││ │  ││││ │││││↗    0x00007f7ea923ada3: mov    0x34(%rsp),%r11d
  0.28%    0.29%     │     │││ ││││ │  ││││ ││││││    0x00007f7ea923ada8: add    $0xffffffbf,%r11d
  0.06%    0.03%     │     │││ ││││ │  ││││ ││││││    0x00007f7ea923adac: cmp    $0x1a,%r11d
                     │     │││ ││││ │╭ ││││ ││││││    0x00007f7ea923adb0: jb     0x00007f7ea923adc5  ;*if_icmple
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ ││ ││││ ││││││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.05%     │     │││ ││││ ││ ││││ ││││││    0x00007f7ea923adb2: mov    0x34(%rsp),%r10d
  0.32%    0.44%     │     │││ ││││ ││ ││││ ││││││    0x00007f7ea923adb7: add    $0xffffff9f,%r10d
  0.31%    0.29%     │     │││ ││││ ││ ││││ ││││││    0x00007f7ea923adbb: cmp    $0x1a,%r10d
                     │     │││ ││││ ││╭││││ ││││││    0x00007f7ea923adbf: jae    0x00007f7ea923ae7e  ;*iconst_1
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ │││││││ ││││││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.08%    0.06%     │     │││ ││││ │↘│││││ ││││││↗   0x00007f7ea923adc5: mov    $0x1,%r11d         ;*ireturn
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││ ││││ │ │││││ │││││││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.16%    0.18%     │     │││ ││││ │ │││││ │││││││↗  0x00007f7ea923adcb: cmp    %r11d,%ebp
                     │     │││ ││││ │ │╰│││ ││││││││  0x00007f7ea923adce: je     0x00007f7ea923aa58  ;*if_icmpeq
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.09%     │     │││ ││││ │ │ │││ ││││││││  0x00007f7ea923add4: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │     │││ ││││ │ │ │││ ││││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.02%     │     │││ ││││ │ │ ╰││ ││││││││  0x00007f7ea923add8: jmpq   0x00007f7ea923aa5c
  0.00%              │     │││ ↘│││ │ │  ││ ││││││││  0x00007f7ea923addd: mov    $0x5,%r9d
                     │     │││  │││ │ │  ╰│ ││││││││  0x00007f7ea923ade3: jmpq   0x00007f7ea923ad5f
  0.00%    0.00%     │     │││  │↘│ │ │   │ ││││││││  0x00007f7ea923ade8: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │     │││  │ │ │ │   │ ││││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%              │     │││  │ │ │ │   ╰ ││││││││  0x00007f7ea923adec: jmp    0x00007f7ea923ad72
  0.00%    0.00%     │     ↘││  │ │ │ │     ││││││││  0x00007f7ea923adee: test   %ebp,%ebp
                     │      ││  │ │ │ │     ││││││││  0x00007f7ea923adf0: jne    0x00007f7ea923bd51  ;*ifeq
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
           0.00%     │      ││  │ │ │ │     ││││││││  0x00007f7ea923adf6: mov    0x50(%rsp),%r10
           0.01%     │      ││  │ │ │ │     ││││││││  0x00007f7ea923adfb: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f7ea923c0e9
  0.00%    0.01%     │      ││  │ │ │ │     ││││││││  0x00007f7ea923ae00: test   %r11d,%r11d
                     │      ││  │ │ │ │    ╭││││││││  0x00007f7ea923ae03: jne    0x00007f7ea923ae1e  ;*ifeq
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae05: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae09: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae0e: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae12: mov    %r12d,0xc(%r10)    ;*putfield size
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 269)
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae16: test   %ebp,%ebp
                     │      ││  │ │ │ │    │││││││││  0x00007f7ea923ae18: jne    0x00007f7ea923bdf9  ;*if_icmpne
                     │      ││  │ │ │ │    │││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.00%    0.00%     │      ││  │ │ │ │    ↘││││││││  0x00007f7ea923ae1e: add    $0xc0,%rsp
  0.01%              │      ││  │ │ │ │     ││││││││  0x00007f7ea923ae25: pop    %rbp
  0.02%    0.00%     │      ││  │ │ │ │     ││││││││  0x00007f7ea923ae26: test   %eax,0x163e01d4(%rip)        # 0x00007f7ebf61b000
                     │      ││  │ │ │ │     ││││││││                                                ;   {poll_return}
           0.01%     │      ││  │ │ │ │     ││││││││  0x00007f7ea923ae2c: retq   
  0.01%    0.00%     │      ↘│  │ │ │ │     ││││││││  0x00007f7ea923ae2d: mov    0x28(%rsp),%ebx
  0.01%    0.02%     │       │  │ │ │ │     ││││││││  0x00007f7ea923ae31: mov    $0xffffffff,%r8d
                     │       │  │ │ │ │     ╰│││││││  0x00007f7ea923ae37: jmpq   0x00007f7ea923ac6f
  0.02%    0.02%     │       ↘  │ │ │ │      │││││││  0x00007f7ea923ae3c: mov    $0xffffffff,%r8d
  0.02%    0.01%     │          │ │ │ │      │││││││  0x00007f7ea923ae42: xor    %ebx,%ebx
                     │          │ │ │ │      ╰││││││  0x00007f7ea923ae44: jmpq   0x00007f7ea923ac6f
                     │          ↘ │ │ │       ││││││  0x00007f7ea923ae49: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                     │            │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
                     │            │ │ │       ╰│││││  0x00007f7ea923ae4d: jmpq   0x00007f7ea923ad68
  0.00%    0.00%     │            ↘ │ │        │││││  0x00007f7ea923ae52: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                     │              │ │        │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%    0.00%     │              │ │        ╰││││  0x00007f7ea923ae56: jmpq   0x00007f7ea923ad7c
  0.01%    0.00%     │              ↘ │         ││││  0x00007f7ea923ae5b: mov    0x24(%rsp),%r11d
  0.05%    0.06%     │                │         ││││  0x00007f7ea923ae60: add    $0xffffffd0,%r11d
  0.08%    0.09%     │                │         ││││  0x00007f7ea923ae64: cmp    $0xa,%r11d
                     │                │         ╰│││  0x00007f7ea923ae68: jb     0x00007f7ea923ad9e  ;*if_icmple
                     │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                │          │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.01%     │                │          │││  0x00007f7ea923ae6e: cmp    $0x5f,%edx
                     │                │          │││  0x00007f7ea923ae71: je     0x00007f7ea923bf1d  ;*if_icmpne
                     │                │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                │          │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.00%     │                │          │││  0x00007f7ea923ae77: xor    %ebp,%ebp
  0.04%    0.07%     │                │          ╰││  0x00007f7ea923ae79: jmpq   0x00007f7ea923ada3
  0.03%    0.03%     │                ↘           ││  0x00007f7ea923ae7e: mov    0x34(%rsp),%r11d
  0.09%    0.13%     │                            ││  0x00007f7ea923ae83: add    $0xffffffd0,%r11d
  0.03%    0.06%     │                            ││  0x00007f7ea923ae87: cmp    $0xa,%r11d
                     │                            ╰│  0x00007f7ea923ae8b: jb     0x00007f7ea923adc5  ;*if_icmple
                     │                             │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                             │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.03%    0.03%     │                             │  0x00007f7ea923ae91: mov    0x34(%rsp),%r11d
  0.00%    0.01%     │                             │  0x00007f7ea923ae96: cmp    $0x5f,%r11d
                     │                             │  0x00007f7ea923ae9a: je     0x00007f7ea923bed9  ;*if_icmpne
                     │                             │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                             │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                             │                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.01%    0.02%     │                             │  0x00007f7ea923aea0: xor    %r11d,%r11d
  0.04%    0.09%     │                             ╰  0x00007f7ea923aea3: jmpq   0x00007f7ea923adcb
                     ↘                                0x00007f7ea923aea8: mov    0x60(%rsp),%r8
                                                      0x00007f7ea923aead: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                                                                    ; - com.google.re2j.Machine::step@171 (line 311)
                                                                                                    ; - com.google.re2j.Machine::match@363 (line 248)
                                                      0x00007f7ea923aeb2: test   %r13d,%r13d
                                                      0x00007f7ea923aeb5: jne    0x00007f7ea923be09  ;*ifne
                                                                                                    ; - com.google.re2j.Machine::step@176 (line 312)
                                                                                                    ; - com.google.re2j.Machine::match@363 (line 248)
                                                      0x00007f7ea923aebb: mov    0x2c(%rsp),%r10d
           0.00%                                      0x00007f7ea923aec0: movzbl 0x18(%r12,%r10,8),%r8d
                                                      0x00007f7ea923aec6: test   %r8d,%r8d
                                                      0x00007f7ea923aec9: jne    0x00007f7ea923aee8  ;*ifeq
                                                                                                    ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                                    ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                    ; - com.google.re2j.Machine::step@183 (line 314)
                                                                                                    ; - com.google.re2j.Machine::match@363 (line 248)
                                                      0x00007f7ea923aecb: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                                                                                                    ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                                                                                                    ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                    ; - com.google.re2j.Machine::step@183 (line 314)
....................................................................................................
 57.88%   61.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 503 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f7ea921e840: mov    0x8(%rsi),%r10d
                     0x00007f7ea921e844: shl    $0x3,%r10
                     0x00007f7ea921e848: cmp    %r10,%rax
                     0x00007f7ea921e84b: jne    0x00007f7ea9045e20  ;   {runtime_call}
                     0x00007f7ea921e851: data16 xchg %ax,%ax
                     0x00007f7ea921e854: nopl   0x0(%rax,%rax,1)
                     0x00007f7ea921e85c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.51%    0.17%     0x00007f7ea921e860: mov    %eax,-0x14000(%rsp)
  0.12%    0.04%     0x00007f7ea921e867: push   %rbp
  0.29%    0.03%     0x00007f7ea921e868: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.43%    0.06%     0x00007f7ea921e86c: vmovq  %r8,%xmm5
  0.02%    0.00%     0x00007f7ea921e871: vmovq  %rsi,%xmm4
  0.23%    0.02%     0x00007f7ea921e876: mov    %ecx,%r14d
  0.36%    0.10%     0x00007f7ea921e879: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.08%    0.08%     0x00007f7ea921e87c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f7ea921f199
  0.01%    0.01%     0x00007f7ea921e880: cmp    $0x40,%ecx
                     0x00007f7ea921e883: jg     0x00007f7ea921ed41  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.34%    0.08%     0x00007f7ea921e889: mov    $0x1,%esi
  0.41%    0.55%     0x00007f7ea921e88e: mov    $0x1,%r8d
  0.07%    0.05%     0x00007f7ea921e894: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.80%    0.72%     0x00007f7ea921e897: mov    %r11,%r10
  0.05%    0.05%     0x00007f7ea921e89a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.01%     0x00007f7ea921e89d: xor    %r13d,%r13d
  0.34%    0.28%     0x00007f7ea921e8a0: test   %r10,%r10
                     0x00007f7ea921e8a3: jne    0x00007f7ea921ed75  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.39%    0.14%     0x00007f7ea921e8a9: cmp    $0x40,%ecx
                     0x00007f7ea921e8ac: jge    0x00007f7ea921edb5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.04%    0.06%     0x00007f7ea921e8b2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.04%     0x00007f7ea921e8b6: vmovq  %xmm4,%r10
  0.31%    0.26%     0x00007f7ea921e8bb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.31%    0.29%     0x00007f7ea921e8bf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.08%    0.05%     0x00007f7ea921e8c2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.02%     0x00007f7ea921e8c6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7ea921f1ad
  0.47%    0.47%     0x00007f7ea921e8cb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f7ea921e8d2: jne    0x00007f7ea921ec25
  0.42%    0.43%     0x00007f7ea921e8d8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.10%     0x00007f7ea921e8dc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f7ea921e8e0: cmp    $0x40,%ecx
                     0x00007f7ea921e8e3: jg     0x00007f7ea921ede9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.21%     0x00007f7ea921e8e9: mov    $0x1,%r10d
  0.46%    0.49%     0x00007f7ea921e8ef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.37%    0.25%     0x00007f7ea921e8f2: mov    %r8,%rbx
  0.45%    0.42%     0x00007f7ea921e8f5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.02%     0x00007f7ea921e8f8: test   %rbx,%rbx
                     0x00007f7ea921e8fb: jne    0x00007f7ea921ee25  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f7ea921e901: cmp    $0x40,%ecx
                     0x00007f7ea921e904: jge    0x00007f7ea921ee6d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.20%     0x00007f7ea921e90a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.45%    0.47%     0x00007f7ea921e90d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%     0x00007f7ea921e911: mov    0x88(%rsp),%ecx
  0.01%    0.00%     0x00007f7ea921e918: test   %ecx,%ecx
                     0x00007f7ea921e91a: jne    0x00007f7ea921eea9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.27%    0.22%     0x00007f7ea921e920: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.42%    0.55%     0x00007f7ea921e923: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.01%     0x00007f7ea921e926: mov    %edi,%r10d
  0.03%    0.02%     0x00007f7ea921e929: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.31%     0x00007f7ea921e92c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.49%    0.53%     0x00007f7ea921e930: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f7ea921f1d5
  0.05%    0.03%     0x00007f7ea921e935: cmp    %ebx,%edi
                  ╭  0x00007f7ea921e937: jae    0x00007f7ea921eba8
  0.01%    0.01%  │  0x00007f7ea921e93d: vmovd  %r10d,%xmm2
  0.29%    0.33%  │  0x00007f7ea921e942: vmovd  %eax,%xmm0
  0.42%    0.63%  │  0x00007f7ea921e946: mov    %edi,%eax
  0.06%    0.09%  │  0x00007f7ea921e948: vmovd  %xmm0,%r10d
  0.02%    0.02%  │  0x00007f7ea921e94d: mov    0x8(%r12,%r10,8),%r10d
  0.23%    0.28%  │  0x00007f7ea921e952: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f7ea921e959: jne    0x00007f7ea921ec55  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.43%    0.50%  │  0x00007f7ea921e95f: vmovq  %xmm4,%r10
  0.09%    0.06%  │  0x00007f7ea921e964: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.01%    0.02%  │  0x00007f7ea921e968: mov    %r11,%rcx
  0.20%    0.31%  │  0x00007f7ea921e96b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.41%    0.36%  │  0x00007f7ea921e96f: vmovd  %xmm0,%r10d
  0.04%    0.06%  │  0x00007f7ea921e974: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.01%  │  0x00007f7ea921e978: lea    0x10(%r11,%rdi,4),%r10
  0.16%    0.15%  │  0x00007f7ea921e97d: mov    %ecx,(%r10)
  0.65%    0.47%  │  0x00007f7ea921e980: shr    $0x9,%r10
  0.02%    0.04%  │  0x00007f7ea921e984: movabs $0x7f7ea4dee000,%rdi
  0.00%    0.01%  │  0x00007f7ea921e98e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.38%    0.24%  │  0x00007f7ea921e992: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7ea921f1f1
  0.33%    0.24%  │  0x00007f7ea921e997: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7ea921e99e: jne    0x00007f7ea921ec95
  0.06%    0.03%  │  0x00007f7ea921e9a4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.00%  │  0x00007f7ea921e9a8: vmovq  %r10,%xmm1
  0.30%    0.23%  │  0x00007f7ea921e9ad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  1.05%    0.82%  │  0x00007f7ea921e9b1: vmovd  %ecx,%xmm3
  0.19%    0.18%  │  0x00007f7ea921e9b5: cmp    $0x40,%ecx
                  │  0x00007f7ea921e9b8: jg     0x00007f7ea921eee5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%           │  0x00007f7ea921e9be: mov    $0x1,%r10d
  0.22%    0.15%  │  0x00007f7ea921e9c4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.69%    0.68%  │  0x00007f7ea921e9c7: mov    %r8,%rcx
  0.24%    0.24%  │  0x00007f7ea921e9ca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.36%    0.42%  │  0x00007f7ea921e9cd: test   %rcx,%rcx
                  │  0x00007f7ea921e9d0: jne    0x00007f7ea921ef21  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.15%    0.23%  │  0x00007f7ea921e9d6: vmovd  %xmm3,%ecx
  0.05%    0.03%  │  0x00007f7ea921e9da: cmp    $0x40,%ecx
                  │  0x00007f7ea921e9dd: jge    0x00007f7ea921ef65  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.37%    0.31%  │  0x00007f7ea921e9e3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.32%    0.24%  │  0x00007f7ea921e9e6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.08%  │  0x00007f7ea921e9ea: mov    %eax,%ecx
  0.03%    0.03%  │  0x00007f7ea921e9ec: add    $0x2,%ecx
  0.36%    0.40%  │  0x00007f7ea921e9ef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.24%    0.27%  │  0x00007f7ea921e9f2: mov    %eax,%r10d
  0.05%    0.07%  │  0x00007f7ea921e9f5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f7ea921e9f9: cmp    %ebx,%r10d
                  │  0x00007f7ea921e9fc: jae    0x00007f7ea921ebe5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.43%    0.51%  │  0x00007f7ea921ea02: vmovd  %r9d,%xmm3
  0.27%    0.35%  │  0x00007f7ea921ea07: vmovq  %xmm4,%r9
  0.03%    0.04%  │  0x00007f7ea921ea0c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.05%    0.04%  │  0x00007f7ea921ea10: vmovq  %xmm1,%r9
  0.41%    0.45%  │  0x00007f7ea921ea15: mov    %r9,%rcx
  0.29%    0.25%  │  0x00007f7ea921ea18: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.09%  │  0x00007f7ea921ea1c: movslq %eax,%r9
  0.03%    0.02%  │  0x00007f7ea921ea1f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.35%    0.45%  │  0x00007f7ea921ea23: mov    %r9,%rbx
  0.31%    0.41%  │  0x00007f7ea921ea26: add    $0x14,%rbx
  0.04%    0.05%  │  0x00007f7ea921ea2a: mov    %ecx,(%rbx)
  0.04%    0.03%  │  0x00007f7ea921ea2c: mov    %rbx,%rcx
  0.39%    0.28%  │  0x00007f7ea921ea2f: shr    $0x9,%rcx
  0.27%    0.13%  │  0x00007f7ea921ea33: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.04%  │  0x00007f7ea921ea37: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7ea921f215
  0.04%    0.02%  │  0x00007f7ea921ea3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7ea921ea42: jne    0x00007f7ea921ecc1
  0.35%    0.39%  │  0x00007f7ea921ea48: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.30%    0.43%  │  0x00007f7ea921ea4c: vmovq  %rcx,%xmm0
  0.05%    0.07%  │  0x00007f7ea921ea51: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.03%  │  0x00007f7ea921ea54: vmovd  %ecx,%xmm2
  0.33%    0.37%  │  0x00007f7ea921ea58: cmp    $0x40,%ecx
                  │  0x00007f7ea921ea5b: jg     0x00007f7ea921efa1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.29%    0.42%  │  0x00007f7ea921ea61: mov    $0x1,%ebx
  0.06%    0.06%  │  0x00007f7ea921ea66: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.64%    0.66%  │  0x00007f7ea921ea69: mov    %r8,%rcx
  0.06%    0.03%  │  0x00007f7ea921ea6c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.03%  │  0x00007f7ea921ea6f: test   %rcx,%rcx
                  │  0x00007f7ea921ea72: jne    0x00007f7ea921efdd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.40%    0.39%  │  0x00007f7ea921ea78: vmovd  %xmm2,%ecx
  0.24%    0.34%  │  0x00007f7ea921ea7c: cmp    $0x40,%ecx
                  │  0x00007f7ea921ea7f: jge    0x00007f7ea921f025  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.05%  │  0x00007f7ea921ea85: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.02%  │  0x00007f7ea921ea88: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.40%    0.30%  │  0x00007f7ea921ea8c: vmovq  %xmm4,%rcx
  0.28%    0.21%  │  0x00007f7ea921ea91: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.05%    0.05%  │  0x00007f7ea921ea94: mov    %r9,%rbx
  0.04%    0.01%  │  0x00007f7ea921ea97: add    $0x18,%rbx
  0.37%    0.34%  │  0x00007f7ea921ea9b: vmovq  %xmm0,%rcx
  0.29%    0.37%  │  0x00007f7ea921eaa0: shr    $0x3,%rcx
  0.08%    0.01%  │  0x00007f7ea921eaa4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.01%  │  0x00007f7ea921eaa6: mov    %eax,%ecx
  0.31%    0.19%  │  0x00007f7ea921eaa8: add    $0x3,%ecx
  0.30%    0.21%  │  0x00007f7ea921eaab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.05%  │  0x00007f7ea921eaae: shr    $0x9,%rbx
  0.03%    0.01%  │  0x00007f7ea921eab2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.33%    0.21%  │  0x00007f7ea921eab6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7ea921f23d
  0.28%    0.30%  │  0x00007f7ea921eabb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7ea921eac1: jne    0x00007f7ea921eced
  0.02%    0.08%  │  0x00007f7ea921eac7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.04%  │  0x00007f7ea921eacb: vmovq  %rcx,%xmm0
  0.35%    0.42%  │  0x00007f7ea921ead0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.30%    0.33%  │  0x00007f7ea921ead3: vmovd  %ecx,%xmm1
  0.09%    0.06%  │  0x00007f7ea921ead7: cmp    $0x40,%ecx
                  │  0x00007f7ea921eada: jg     0x00007f7ea921f061  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.01%  │  0x00007f7ea921eae0: mov    $0x1,%ebx
  0.32%    0.26%  │  0x00007f7ea921eae5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.38%    0.39%  │  0x00007f7ea921eae8: mov    %r8,%rcx
  0.35%    0.25%  │  0x00007f7ea921eaeb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.27%    0.15%  │  0x00007f7ea921eaee: test   %rcx,%rcx
                  │  0x00007f7ea921eaf1: jne    0x00007f7ea921f09d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.04%  │  0x00007f7ea921eaf7: vmovd  %xmm1,%ecx
  0.04%    0.02%  │  0x00007f7ea921eafb: cmp    $0x40,%ecx
                  │  0x00007f7ea921eafe: jge    0x00007f7ea921f0e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.34%    0.39%  │  0x00007f7ea921eb04: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.24%    0.47%  │  0x00007f7ea921eb08: vmovq  %xmm4,%r10
  0.07%    0.11%  │  0x00007f7ea921eb0d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.03%    0.05%  │  0x00007f7ea921eb11: mov    %r9,%rcx
  0.38%    0.39%  │  0x00007f7ea921eb14: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.33%    0.29%  │  0x00007f7ea921eb18: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.06%  │  0x00007f7ea921eb1b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.02%  │  0x00007f7ea921eb1f: vmovq  %xmm0,%r10
  0.34%    0.31%  │  0x00007f7ea921eb24: shr    $0x3,%r10
  0.34%    0.33%  │  0x00007f7ea921eb28: mov    %r10d,(%rcx)
  0.10%    0.08%  │  0x00007f7ea921eb2b: mov    %rcx,%r10
  0.03%    0.03%  │  0x00007f7ea921eb2e: shr    $0x9,%r10
  0.27%    0.42%  │  0x00007f7ea921eb32: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.32%  │  0x00007f7ea921eb36: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7ea921f265
  0.09%    0.06%  │  0x00007f7ea921eb3b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7ea921eb42: jne    0x00007f7ea921ed19
  0.02%    0.01%  │  0x00007f7ea921eb48: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.30%    0.34%  │  0x00007f7ea921eb4c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.35%    0.30%  │  0x00007f7ea921eb50: cmp    $0x40,%ecx
                  │  0x00007f7ea921eb53: jg     0x00007f7ea921f121  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.07%  │  0x00007f7ea921eb59: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.72%    0.70%  │  0x00007f7ea921eb5c: mov    %r8,%rbx
  0.04%    0.02%  │  0x00007f7ea921eb5f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.04%  │  0x00007f7ea921eb62: test   %rbx,%rbx
                  │  0x00007f7ea921eb65: jne    0x00007f7ea921f145  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.35%    0.45%  │  0x00007f7ea921eb6b: cmp    $0x40,%ecx
                  │  0x00007f7ea921eb6e: jge    0x00007f7ea921f175  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.32%    0.42%  │  0x00007f7ea921eb74: or     %rsi,%r8
  0.05%    0.08%  │  0x00007f7ea921eb77: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.03%  │  0x00007f7ea921eb7b: add    $0x20,%r9
  0.31%    0.35%  │  0x00007f7ea921eb7f: mov    %r10,%r11
  0.31%    0.26%  │  0x00007f7ea921eb82: shr    $0x3,%r11
  0.07%    0.07%  │  0x00007f7ea921eb86: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.04%  │  0x00007f7ea921eb89: mov    %r9,%r10
  0.36%    0.36%  │  0x00007f7ea921eb8c: add    $0x5,%eax
  0.36%    0.23%  │  0x00007f7ea921eb8f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.03%  │  0x00007f7ea921eb92: shr    $0x9,%r10
  0.05%    0.03%  │  0x00007f7ea921eb96: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.36%    0.21%  │  0x00007f7ea921eb9a: xor    %eax,%eax
  0.21%    0.37%  │  0x00007f7ea921eb9c: add    $0x70,%rsp
  0.12%    0.06%  │  0x00007f7ea921eba0: pop    %rbp
  0.04%    0.07%  │  0x00007f7ea921eba1: test   %eax,0x163fc459(%rip)        # 0x00007f7ebf61b000
                  │                                                ;   {poll_return}
  0.30%    0.44%  │  0x00007f7ea921eba7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f7ea921eba8: mov    $0xffffffe4,%esi
                     0x00007f7ea921ebad: vmovq  %xmm4,%rbp
                     0x00007f7ea921ebb2: mov    %rdx,(%rsp)
                     0x00007f7ea921ebb6: mov    %r14d,0x88(%rsp)
                     0x00007f7ea921ebbe: vmovsd %xmm5,0x8(%rsp)
                     0x00007f7ea921ebc4: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.68%   35.50%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.88%   61.35%         C2, level 4  com.google.re2j.Machine::match, version 536 (1444 bytes) 
 37.68%   35.50%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 503 (839 bytes) 
  0.79%    0.79%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.44%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 548 (412 bytes) 
  0.17%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 548 (12 bytes) 
  0.15%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 536 (268 bytes) 
  0.13%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 548 (33 bytes) 
  0.11%    0.04%         C2, level 4  java.util.Collections::shuffle, version 556 (83 bytes) 
  0.10%    0.05%   [kernel.kallsyms]  [unknown] (71 bytes) 
  0.09%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 548 (5 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 548 (0 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Machine::match, version 536 (26 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 548 (80 bytes) 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 556 (120 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 548 (0 bytes) 
  0.04%                  C2, level 4  java.util.Collections::shuffle, version 556 (68 bytes) 
  0.04%                  C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 590 (58 bytes) 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 590 (51 bytes) 
  1.87%    1.70%  <...other 397 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.13%   61.45%         C2, level 4  com.google.re2j.Machine::match, version 536 
 37.68%   35.50%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 503 
  1.89%    1.59%   [kernel.kallsyms]  [unknown] 
  1.10%    0.45%         C2, level 4  com.google.re2j.RE2::match, version 548 
  0.24%    0.06%         C2, level 4  java.util.Collections::shuffle, version 556 
  0.13%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 590 
  0.08%    0.01%              [vdso]  [unknown] 
  0.07%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.04%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.02%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 549 
  0.02%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%                 libc-2.26.so  __GI___printf_fp_l 
  0.01%    0.00%           libjvm.so  _ZN12stringStream5writeEPKcm 
  0.01%                 libc-2.26.so  __clock_gettime 
  0.40%    0.27%  <...other 59 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.30%   97.49%         C2, level 4
  1.89%    1.59%   [kernel.kallsyms]
  0.41%    0.52%           libjvm.so
  0.15%    0.28%        libc-2.26.so
  0.08%    0.01%              [vdso]
  0.07%    0.05%      hsdis-amd64.so
  0.05%    0.02%  libpthread-2.26.so
  0.03%    0.03%         interpreter
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  21259.571 ± 251.070  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
