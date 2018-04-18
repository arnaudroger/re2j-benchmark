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
# Warmup Iteration   1: 11412.457 ops/s
# Warmup Iteration   2: 20351.206 ops/s
# Warmup Iteration   3: 20430.353 ops/s
# Warmup Iteration   4: 19159.560 ops/s
# Warmup Iteration   5: 19988.072 ops/s
# Warmup Iteration   6: 20287.519 ops/s
# Warmup Iteration   7: 20444.957 ops/s
# Warmup Iteration   8: 20568.130 ops/s
# Warmup Iteration   9: 20541.333 ops/s
# Warmup Iteration  10: 20589.943 ops/s
# Warmup Iteration  11: 20569.915 ops/s
# Warmup Iteration  12: 20592.315 ops/s
# Warmup Iteration  13: 20577.659 ops/s
# Warmup Iteration  14: 20589.165 ops/s
# Warmup Iteration  15: 20600.117 ops/s
# Warmup Iteration  16: 20129.462 ops/s
# Warmup Iteration  17: 20609.646 ops/s
# Warmup Iteration  18: 20616.283 ops/s
# Warmup Iteration  19: 20613.165 ops/s
# Warmup Iteration  20: 20619.449 ops/s
Iteration   1: 20620.722 ops/s
Iteration   2: 20628.031 ops/s
Iteration   3: 20624.923 ops/s
Iteration   4: 20743.556 ops/s
Iteration   5: 20819.285 ops/s
Iteration   6: 20871.948 ops/s
Iteration   7: 20871.105 ops/s
Iteration   8: 20861.889 ops/s
Iteration   9: 20871.057 ops/s
Iteration  10: 20866.813 ops/s
Iteration  11: 20860.650 ops/s
Iteration  12: 20802.034 ops/s
Iteration  13: 20847.306 ops/s
Iteration  14: 20854.178 ops/s
Iteration  15: 20857.875 ops/s
Iteration  16: 20826.086 ops/s
Iteration  17: 20848.165 ops/s
Iteration  18: 20861.456 ops/s
Iteration  19: 20855.531 ops/s
Iteration  20: 20753.734 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20807.317 ±(99.9%) 75.237 ops/s [Average]
  (min, avg, max) = (20620.722, 20807.317, 20871.948), stdev = 86.644
  CI (99.9%): [20732.080, 20882.555] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193325 total address lines.
Perf output processed (skipped 23.408 seconds):
 Column 1: cycles (20377 events)
 Column 2: instructions (20362 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 545 (1267 bytes) 

                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                        0x00007f7f843ab68d: mov    $0x5,%r10d         ;*iload_1
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                        0x00007f7f843ab693: cmp    $0xa,%r8d
                                        0x00007f7f843ab697: je     0x00007f7f843abca8  ;*iload_0
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                        0x00007f7f843ab69d: mov    %r8d,%ebx
  0.00%    0.01%                        0x00007f7f843ab6a0: add    $0xffffffbf,%ebx
                                        0x00007f7f843ab6a3: cmp    $0x1a,%ebx
                  ╭                     0x00007f7f843ab6a6: jb     0x00007f7f843ab6b9  ;*if_icmple
                  │                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  │                     0x00007f7f843ab6a8: mov    %r8d,%r9d
           0.01%  │                     0x00007f7f843ab6ab: add    $0xffffff9f,%r9d
           0.01%  │                     0x00007f7f843ab6af: cmp    $0x1a,%r9d
                  │                     0x00007f7f843ab6b3: jae    0x00007f7f843abcb1  ;*iconst_1
                  │                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                     0x00007f7f843ab6b9: or     $0x10,%r10d        ;*iload_2
                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%                        0x00007f7f843ab6bd: mov    %r11d,0x30(%rsp)
  0.01%    0.00%                        0x00007f7f843ab6c2: mov    %ecx,0x28(%rsp)
  0.01%                                 0x00007f7f843ab6c6: mov    %r8d,0x24(%rsp)
                                        0x00007f7f843ab6cb: mov    0x6c(%rsp),%r11d
                                        0x00007f7f843ab6d0: and    $0x4,%r11d         ;*iand
                                                                                      ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%                                 0x00007f7f843ab6d4: mov    %r11d,0x34(%rsp)
                                        0x00007f7f843ab6d9: mov    %r13,%r11
                                        0x00007f7f843ab6dc: shl    $0x3,%r11          ;*getfield q1
                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                        0x00007f7f843ab6e0: mov    %r11,0x50(%rsp)
                                        0x00007f7f843ab6e5: xor    %eax,%eax
           0.01%                        0x00007f7f843ab6e7: xor    %r11d,%r11d
                                        0x00007f7f843ab6ea: mov    %r11d,0x38(%rsp)
                   ╭                    0x00007f7f843ab6ef: jmpq   0x00007f7f843aba25
  0.00%    0.00%   │             ↗      0x00007f7f843ab6f4: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │             │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
                   │╭            │      0x00007f7f843ab6f8: jmpq   0x00007f7f843abb16
  0.00%    0.01%   ││           ↗│      0x00007f7f843ab6fd: mov    $0x5,%r10d
                   ││╭          ││      0x00007f7f843ab703: jmpq   0x00007f7f843abaff
  0.37%    0.40%   │││  ↗↗↗     ││      0x00007f7f843ab708: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@191 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.30%    0.41%   │││  │││     ││      0x00007f7f843ab70d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7f843acc2d
  0.27%    0.16%   │││  │││     ││      0x00007f7f843ab712: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │││  │││     ││      0x00007f7f843ab718: jne    0x00007f7f843ac441
  0.13%    0.12%   │││  │││     ││      0x00007f7f843ab71e: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%   │││  │││     ││      0x00007f7f843ab722: vmovq  %r9,%xmm1
  0.02%    0.01%   │││  │││     ││      0x00007f7f843ab727: mov    0x18(%r9),%ecx     ;*getfield pc
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.01%   │││  │││     ││      0x00007f7f843ab72b: vmovd  %ecx,%xmm2
  0.13%    0.11%   │││  │││     ││      0x00007f7f843ab72f: mov    0x50(%rsp),%r9
  0.01%    0.01%   │││  │││     ││      0x00007f7f843ab734: mov    0x10(%r9),%r9      ;*getfield pcsl
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
                   │││  │││     ││                                                    ; implicit exception: dispatches to 0x00007f7f843acc49
  0.01%    0.03%   │││  │││     ││      0x00007f7f843ab738: cmp    $0x40,%ecx
                   │││  │││     ││      0x00007f7f843ab73b: jg     0x00007f7f843ac501  ;*if_icmpgt
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%    0.04%   │││  │││     ││      0x00007f7f843ab741: mov    $0x1,%edi
  0.11%    0.10%   │││  │││     ││      0x00007f7f843ab746: shl    %cl,%rdi           ;*lshl
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.20%   │││  │││     ││      0x00007f7f843ab749: mov    %r9,%rcx
  0.01%            │││  │││     ││      0x00007f7f843ab74c: and    %rdi,%rcx          ;*land
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.04%   │││  │││     ││      0x00007f7f843ab74f: test   %rcx,%rcx
                   │││  │││     ││      0x00007f7f843ab752: jne    0x00007f7f843ac56d  ;*ifeq
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.10%   │││  │││     ││      0x00007f7f843ab758: vmovd  %xmm2,%ecx
  0.07%    0.02%   │││  │││     ││      0x00007f7f843ab75c: cmp    $0x40,%ecx
                   │││  │││     ││      0x00007f7f843ab75f: jge    0x00007f7f843ac5d5  ;*if_icmpge
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.13%    0.08%   │││  │││     ││      0x00007f7f843ab765: mov    0x50(%rsp),%rcx
           0.01%   │││  │││     ││      0x00007f7f843ab76a: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.08%   │││  │││     ││      0x00007f7f843ab76e: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.01%   │││  │││     ││      0x00007f7f843ab771: vmovd  %ecx,%xmm3
  0.14%    0.08%   │││  │││     ││      0x00007f7f843ab775: mov    0x50(%rsp),%rcx
  0.01%    0.02%   │││  │││     ││      0x00007f7f843ab77a: mov    0xc(%rcx),%ebp     ;*getfield size
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.02%   │││  │││     ││      0x00007f7f843ab77d: or     %r9,%rdi
  0.03%    0.02%   │││  │││     ││      0x00007f7f843ab780: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.14%    0.09%   │││  │││     ││      0x00007f7f843ab784: mov    %ebp,%r9d
  0.01%    0.00%   │││  │││     ││      0x00007f7f843ab787: inc    %r9d
  0.07%    0.06%   │││  │││     ││      0x00007f7f843ab78a: mov    %r9d,0xc(%rcx)     ;*putfield size
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.01%   │││  │││     ││      0x00007f7f843ab78e: vmovd  %xmm3,%r9d
  0.12%    0.05%   │││  │││     ││      0x00007f7f843ab793: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f7f843acc5d
  0.27%    0.12%   │││  │││     ││      0x00007f7f843ab798: cmp    %ecx,%ebp
                   │││  │││     ││      0x00007f7f843ab79a: jae    0x00007f7f843ac3d5
  0.23%    0.24%   │││  │││     ││      0x00007f7f843ab7a0: mov    0x8(%r12,%r9,8),%r9d
           0.00%   │││  │││     ││      0x00007f7f843ab7a5: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │││  │││     ││      0x00007f7f843ab7ac: jne    0x00007f7f843ac495  ;*aastore
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.02%   │││  │││     ││      0x00007f7f843ab7b2: vmovd  %xmm3,%r9d
           0.00%   │││  │││     ││      0x00007f7f843ab7b7: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.13%   │││  │││     ││      0x00007f7f843ab7bb: lea    0x10(%r9,%rbp,4),%r9
  0.01%            │││  │││     ││      0x00007f7f843ab7c0: vmovq  %xmm1,%rcx
  0.03%    0.03%   │││  │││     ││      0x00007f7f843ab7c5: shr    $0x3,%rcx
                   │││  │││     ││      0x00007f7f843ab7c9: mov    %ecx,(%r9)
  0.41%    0.44%   │││  │││     ││      0x00007f7f843ab7cc: shr    $0x9,%r9
                   │││  │││     ││      0x00007f7f843ab7d0: movabs $0x7f7f7fb98000,%rcx
  0.04%    0.03%   │││  │││     ││      0x00007f7f843ab7da: mov    %r12b,(%rcx,%r9,1)  ;*aastore
                   │││  │││     ││                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││  │││     ││                                                    ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::step@206 (line 314)
                   │││  │││     ││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.31%    0.18%   │││╭ │││     ││      0x00007f7f843ab7de: jmpq   0x00007f7f843ab8dc
  0.20%    0.13%   ││││ │││     ││  ↗   0x00007f7f843ab7e3: or     $0x20,%r10d        ;*iload_2
                   ││││ │││     ││  │                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││││ │││     ││  │                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.32%    0.29%   ││││ │││     ││  │↗  0x00007f7f843ab7e7: mov    0x60(%rsp),%r11
  0.12%    0.06%   ││││ │││     ││  ││  0x00007f7f843ab7ec: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::step@1 (line 280)
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.20%   ││││ │││     ││  ││  0x00007f7f843ab7f0: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::step@4 (line 280)
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││ │││     ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acbc9
  0.39%    0.29%   ││││ │││     ││  ││  0x00007f7f843ab7f6: mov    0x2c(%rsp),%r8d
  0.37%    0.51%   ││││ │││     ││  ││  0x00007f7f843ab7fb: mov    0xc(%r12,%r8,8),%eax  ;*getfield size
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::step@10 (line 281)
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.03%   ││││ │││     ││  ││  0x00007f7f843ab800: mov    0x38(%rsp),%r8d
  0.10%    0.11%   ││││ │││     ││  ││  0x00007f7f843ab805: add    0x20(%rsp),%r8d    ;*iadd
                   ││││ │││     ││  ││                                                ; - com.google.re2j.Machine::match@340 (line 246)
  0.18%    0.27%   ││││ │││     ││  ││  0x00007f7f843ab80a: test   %eax,%eax
                   ││││╭│││     ││  ││  0x00007f7f843ab80c: jle    0x00007f7f843ab8e4  ;*if_icmpge
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@28 (line 283)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.30%    0.33%   ││││││││     ││  ││  0x00007f7f843ab812: mov    0x70(%rsp),%r11
  0.04%    0.04%   ││││││││     ││  ││  0x00007f7f843ab817: mov    0x10(%r11),%ecx
  0.13%    0.07%   ││││││││     ││  ││  0x00007f7f843ab81b: mov    0x60(%rsp),%r11
  0.26%    0.22%   ││││││││     ││  ││  0x00007f7f843ab820: movzbl 0x11(%r11),%r9d    ;*getfield captures
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@16 (line 282)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.34%    0.30%   ││││││││     ││  ││  0x00007f7f843ab825: mov    0x38(%rsp),%r11d
  0.06%    0.05%   ││││││││     ││  ││  0x00007f7f843ab82a: mov    $0x1,%edi
  0.10%    0.09%   ││││││││     ││  ││  0x00007f7f843ab82f: xor    %ebx,%ebx
  0.21%    0.28%   ││││││││     ││  ││  0x00007f7f843ab831: cmp    %ecx,%r11d
  0.34%    0.33%   ││││││││     ││  ││  0x00007f7f843ab834: cmovne %ebx,%edi          ;*invokespecial step
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.17%   ││││││││     ││  ││  0x00007f7f843ab837: vmovd  %edi,%xmm0
  0.23%    0.25%   ││││││││     ││  ││  0x00007f7f843ab83b: test   %r9d,%r9d
                   ││││││││     ││  ││  0x00007f7f843ab83e: jne    0x00007f7f843abfe1  ;*iload
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@31 (line 286)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.43%   ││││││││     ││  ││  0x00007f7f843ab844: mov    0x2c(%rsp),%r11d
  0.02%    0.03%   ││││││││     ││  ││  0x00007f7f843ab849: mov    0x20(%r12,%r11,8),%ecx  ;*getfield denseThreadsInstructions
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@86 (line 296)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.14%   ││││││││     ││  ││  0x00007f7f843ab84e: mov    0xc(%r12,%rcx,8),%r11d  ;*aaload
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@91 (line 296)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││││││     ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843abfe1
  0.39%    0.35%   ││││││││     ││  ││  0x00007f7f843ab853: test   %r11d,%r11d
                   ││││││││     ││  ││  0x00007f7f843ab856: jbe    0x00007f7f843abfe1
  0.38%    0.30%   ││││││││     ││  ││  0x00007f7f843ab85c: mov    %eax,%ebx
  0.04%    0.02%   ││││││││     ││  ││  0x00007f7f843ab85e: dec    %ebx
  0.07%    0.08%   ││││││││     ││  ││  0x00007f7f843ab860: cmp    %r11d,%ebx
                   ││││││││     ││  ││  0x00007f7f843ab863: jae    0x00007f7f843abfe1
  0.25%    0.20%   ││││││││     ││  ││  0x00007f7f843ab869: lea    (%r12,%rcx,8),%rbx
  0.35%    0.51%   ││││││││     ││  ││  0x00007f7f843ab86d: xor    %r11d,%r11d        ;*iload
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::step@31 (line 286)
                   ││││││││     ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.90%    1.77%   ││││││││↗    ││  ││  0x00007f7f843ab870: mov    0x10(%rbx,%r11,4),%ecx  ;*aaload
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.22%   │││││││││    ││  ││  0x00007f7f843ab875: mov    0xc(%r12,%rcx,8),%edi  ;*getfield op
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@96 (line 298)
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││││││    ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acb79
  2.09%    1.98%   │││││││││    ││  ││  0x00007f7f843ab87a: cmp    $0x6,%edi
                   │││││││││    ││  ││  0x00007f7f843ab87d: je     0x00007f7f843abc41  ;*if_icmpne
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::step@101 (line 298)
                   │││││││││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.75%    1.30%   │││││││││    ││  ││  0x00007f7f843ab883: cmp    $0xa,%edi
                   │││││╰│││    ││  ││  0x00007f7f843ab886: je     0x00007f7f843ab708  ;*if_icmpne
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.86%    1.87%   │││││ │││    ││  ││  0x00007f7f843ab88c: cmp    $0xb,%edi
                   │││││ │││    ││  ││  0x00007f7f843ab88f: je     0x00007f7f843abd41  ;*if_icmpne
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.02%    0.96%   │││││ │││    ││  ││  0x00007f7f843ab895: cmp    $0x9,%edi
                   │││││ │││    ││  ││  0x00007f7f843ab898: je     0x00007f7f843abdad  ;*if_icmpne
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.61%    0.67%   │││││ │││    ││  ││  0x00007f7f843ab89e: cmp    $0xc,%edi
                   │││││ │││    ││  ││  0x00007f7f843ab8a1: jne    0x00007f7f843abcd3  ;*if_icmpne
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.90%    2.29%   │││││ │││    ││  ││  0x00007f7f843ab8a7: mov    0x1c(%r12,%rcx,8),%edi  ;*getfield f0
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││ │││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.18%    1.23%   │││││ │││    ││  ││  0x00007f7f843ab8ac: cmp    %edx,%edi
                   │││││ ╰││    ││  ││  0x00007f7f843ab8ae: je     0x00007f7f843ab708  ;*if_icmpeq
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.90%    1.85%   │││││  ││    ││  ││  0x00007f7f843ab8b4: mov    0x20(%r12,%rcx,8),%edi  ;*getfield f1
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││  ││    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.26%    0.36%   │││││  ││    ││  ││  0x00007f7f843ab8b9: cmp    %edx,%edi
                   │││││  ╰│    ││  ││  0x00007f7f843ab8bb: je     0x00007f7f843ab708  ;*if_icmpeq
                   │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.10%    1.08%   │││││   │    ││  ││  0x00007f7f843ab8c1: mov    0x24(%r12,%rcx,8),%r9d  ;*getfield f2
                   │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.39%    1.24%   │││││   │    ││  ││  0x00007f7f843ab8c6: cmp    %edx,%r9d
                   │││││   │    ││  ││  0x00007f7f843ab8c9: je     0x00007f7f843abe1d  ;*if_icmpeq
                   │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  1.97%    2.06%   │││││   │    ││  ││  0x00007f7f843ab8cf: mov    0x28(%r12,%rcx,8),%edi  ;*getfield f3
                   │││││   │    ││  ││                                                ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@183 (line 313)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.32%   │││││   │    ││  ││  0x00007f7f843ab8d4: cmp    %edx,%edi
                   │││││   │    ││  ││  0x00007f7f843ab8d6: je     0x00007f7f843abe8d  ;*aload
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::step@211 (line 316)
                   │││││   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.84%    0.81%   │││↘│   │    ││  ││  0x00007f7f843ab8dc: inc    %r11d              ;*iinc
                   │││ │   │    ││  ││                                                ; - com.google.re2j.Machine::step@222 (line 283)
                   │││ │   │    ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.89%    1.14%   │││ │   │    ││  ││  0x00007f7f843ab8df: cmp    %eax,%r11d
                   │││ │   ╰    ││  ││  0x00007f7f843ab8e2: jl     0x00007f7f843ab870  ;*if_icmpge
                   │││ │        ││  ││                                                ; - com.google.re2j.Machine::step@28 (line 283)
                   │││ │        ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.24%   │││ ↘        ││  ││  0x00007f7f843ab8e4: mov    0x2c(%rsp),%r9d
  0.08%    0.14%   │││          ││  ││  0x00007f7f843ab8e9: movzbl 0x18(%r12,%r9,8),%r11d
  0.22%    0.19%   │││          ││  ││  0x00007f7f843ab8ef: test   %r11d,%r11d
                   │││      ╭   ││  ││  0x00007f7f843ab8f2: jne    0x00007f7f843ab911  ;*ifeq
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.41%    0.55%   │││      │   ││  ││  0x00007f7f843ab8f4: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield pcs
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.06%   │││      │   ││  ││  0x00007f7f843ab8f9: movb   $0x1,0x18(%r12,%r9,8)  ;*putfield empty
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.36%    0.55%   │││      │   ││  ││  0x00007f7f843ab8ff: mov    %r12,0x10(%r12,%r9,8)  ;*putfield pcsl
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.24%   │││      │   ││  ││  0x00007f7f843ab904: mov    %r12d,0xc(%r12,%r9,8)  ;*putfield size
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.37%    0.52%   │││      │   ││  ││  0x00007f7f843ab909: test   %ebp,%ebp
                   │││      │   ││  ││  0x00007f7f843ab90b: jne    0x00007f7f843ac225  ;*invokevirtual clear
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::step@229 (line 320)
                   │││      │   ││  ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.06%   │││      ↘   ││  ││  0x00007f7f843ab911: mov    0x60(%rsp),%r11
  0.21%    0.25%   │││          ││  ││  0x00007f7f843ab916: movzbl 0x10(%r11),%eax    ;*getfield matched
                   │││          ││  ││                                                ; - com.google.re2j.Machine::match@378 (line 250)
  0.16%    0.22%   │││          ││  ││  0x00007f7f843ab91b: mov    0x60(%rsp),%r11
  0.36%    0.38%   │││          ││  ││  0x00007f7f843ab920: movzbl 0x11(%r11),%ebp    ;*getfield captures
                   │││          ││  ││                                                ; - com.google.re2j.Machine::match@371 (line 250)
  0.13%    0.12%   │││          ││  ││  0x00007f7f843ab925: mov    0x20(%rsp),%r11d
  0.18%    0.25%   │││          ││  ││  0x00007f7f843ab92a: test   %r11d,%r11d
                   │││       ╭  ││  ││  0x00007f7f843ab92d: je     0x00007f7f843abb81  ;*ifne
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@364 (line 247)
  0.14%    0.14%   │││       │  ││  ││  0x00007f7f843ab933: test   %ebp,%ebp
                   │││       │  ││  ││  0x00007f7f843ab935: jne    0x00007f7f843ac105  ;*ifne
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.36%    0.45%   │││       │  ││  ││  0x00007f7f843ab93b: test   %eax,%eax
                   │││       │  ││  ││  0x00007f7f843ab93d: jne    0x00007f7f843ac1e5  ;*ifeq
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@381 (line 250)
  0.04%    0.06%   │││       │  ││  ││  0x00007f7f843ab943: cmp    $0xffffffff,%r13d
                   │││       │  ││  ││  0x00007f7f843ab947: je     0x00007f7f843abbc0  ;*if_icmpeq
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@403 (line 258)
  0.23%    0.28%   │││       │  ││  ││  0x00007f7f843ab94d: mov    %r13d,0x24(%rsp)
  0.10%    0.13%   │││       │  ││  ││  0x00007f7f843ab952: mov    0x70(%rsp),%r11
  0.39%    0.56%   │││       │  ││  ││  0x00007f7f843ab957: mov    0x10(%r11),%ecx    ;*getfield end
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.05%   │││       │  ││  ││  0x00007f7f843ab95b: mov    0x30(%rsp),%r9d
  0.20%    0.26%   │││       │  ││  ││  0x00007f7f843ab960: add    %r8d,%r9d
  0.05%    0.14%   │││       │  ││  ││  0x00007f7f843ab963: add    0xc(%r11),%r9d     ;*iadd
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.50%    0.64%   │││       │  ││  ││  0x00007f7f843ab967: cmp    %ecx,%r9d
                   │││       │  ││  ││  0x00007f7f843ab96a: jge    0x00007f7f843abbd4  ;*if_icmpge
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.17%    0.22%   │││       │  ││  ││  0x00007f7f843ab970: mov    0x14(%r11),%ebp    ;*getfield str
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.19%    0.31%   │││       │  ││  ││  0x00007f7f843ab974: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7f843acbd9
  0.48%    0.60%   │││       │  ││  ││  0x00007f7f843ab979: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││       │  ││  ││  0x00007f7f843ab97f: jne    0x00007f7f843abfa5
  0.54%    0.67%   │││       │  ││  ││  0x00007f7f843ab985: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.02%   │││       │  ││  ││  0x00007f7f843ab989: test   %r9d,%r9d
                   │││       │  ││  ││  0x00007f7f843ab98c: jl     0x00007f7f843ac149  ;*iflt
                   │││       │  ││  ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.09%    0.17%   │││       │  ││  ││  0x00007f7f843ab992: mov    0xc(%rcx),%edi     ;*getfield value
                   │││       │  ││  ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.09%    0.11%   │││       │  ││  ││  0x00007f7f843ab995: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││       │  ││  ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
                   │││       │  ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acbed
  2.35%    3.65%   │││       │  ││  ││  0x00007f7f843ab99a: cmp    %ebp,%r9d
                   │││       │  ││  ││  0x00007f7f843ab99d: jge    0x00007f7f843ac25d  ;*if_icmplt
                   │││       │  ││  ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.72%    0.86%   │││       │  ││  ││  0x00007f7f843ab9a3: cmp    %ebp,%r9d
                   │││       │  ││  ││  0x00007f7f843ab9a6: jae    0x00007f7f843abf55
  0.11%    0.07%   │││       │  ││  ││  0x00007f7f843ab9ac: lea    (%r12,%rdi,8),%r11
  0.00%    0.00%   │││       │  ││  ││  0x00007f7f843ab9b0: movzwl 0x10(%r11,%r9,2),%r11d  ;*caload
                   │││       │  ││  ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.06%   │││       │  ││  ││  0x00007f7f843ab9b6: cmp    $0xd800,%r11d
                   │││       │  ││  ││  0x00007f7f843ab9bd: jge    0x00007f7f843ac2a9  ;*if_icmplt
                   │││       │  ││  ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││       │  ││  ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.73%    0.96%   │││       │  ││  ││  0x00007f7f843ab9c3: shl    $0x3,%r11d         ;*ishl
                   │││       │  ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.02%   │││       │  ││  ││  0x00007f7f843ab9c7: mov    %r11d,%ecx
           0.00%   │││       │  ││  ││  0x00007f7f843ab9ca: and    $0x7,%ecx
  0.62%    0.85%   │││       │  ││  ││  0x00007f7f843ab9cd: or     $0x1,%r11d
  0.14%    0.13%   │││       │  ││  ││  0x00007f7f843ab9d1: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.54%    0.66%   │││       │  ││  ││  0x00007f7f843ab9d4: sar    $0x3,%r11d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1304}
                   │││       │  ││  ││                                                ;*goto
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@441 (line 266)
  0.00%    0.01%   │││       │  ││  ││  0x00007f7f843ab9d8: test   %eax,0x15f86622(%rip)        # 0x00007f7f9a332000
                   │││       │  ││  ││                                                ;*goto
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@441 (line 266)
                   │││       │  ││  ││                                                ;   {poll}
  0.07%    0.01%   │││       │  ││  ││  0x00007f7f843ab9de: mov    0x60(%rsp),%r9
  0.12%    0.11%   │││       │  ││  ││  0x00007f7f843ab9e3: mov    0x14(%r9),%ebx     ;*getfield re2
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.55%    0.62%   │││       │  ││  ││  0x00007f7f843ab9e7: vmovd  %ebx,%xmm4
  0.00%    0.01%   │││       │  ││  ││  0x00007f7f843ab9eb: mov    0x28(%r9),%edi     ;*getfield matchcap
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.03%    0.04%   │││       │  ││  ││  0x00007f7f843ab9ef: mov    0x50(%rsp),%r9
  0.09%    0.09%   │││       │  ││  ││  0x00007f7f843ab9f4: mov    %r9,%rbx
  0.58%    0.55%   │││       │  ││  ││  0x00007f7f843ab9f7: shr    $0x3,%rbx
  0.01%    0.01%   │││       │  ││  ││  0x00007f7f843ab9fb: mov    %ebx,0x2c(%rsp)
  0.02%    0.03%   │││       │  ││  ││  0x00007f7f843ab9ff: mov    0x30(%rsp),%r9d
  0.10%    0.12%   │││       │  ││  ││  0x00007f7f843aba04: mov    %r9d,0x20(%rsp)
  0.64%    0.61%   │││       │  ││  ││  0x00007f7f843aba09: mov    %r8d,0x38(%rsp)
  0.00%    0.01%   │││       │  ││  ││  0x00007f7f843aba0e: mov    %ecx,0x30(%rsp)
  0.04%    0.03%   │││       │  ││  ││  0x00007f7f843aba12: mov    %r11d,0x28(%rsp)
  0.09%    0.14%   │││       │  ││  ││  0x00007f7f843aba17: mov    0x10(%rsp),%r11
  0.51%    0.55%   │││       │  ││  ││  0x00007f7f843aba1c: mov    %r11,0x50(%rsp)
  0.03%    0.02%   │││       │  ││  ││  0x00007f7f843aba21: vmovd  %edi,%xmm1         ;*aload
                   │││       │  ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.04%    0.06%   ↘││       │  ││  ││  0x00007f7f843aba25: mov    0x2c(%rsp),%r11d
  0.15%    0.15%    ││       │  ││  ││  0x00007f7f843aba2a: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f7f843acb89
  0.63%    0.58%    ││       │  ││  ││  0x00007f7f843aba30: test   %r8d,%r8d
                    ││       │╭ ││  ││  0x00007f7f843aba33: je     0x00007f7f843aba67  ;*ifeq
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.02%             ││       ││ ││  ││  0x00007f7f843aba35: mov    0x34(%rsp),%r8d
  0.03%    0.04%    ││       ││ ││  ││  0x00007f7f843aba3a: test   %r8d,%r8d
                    ││       ││ ││  ││  0x00007f7f843aba3d: jne    0x00007f7f843ac341  ;*ifeq
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.05%    0.05%    ││       ││ ││  ││  0x00007f7f843aba43: test   %eax,%eax
                    ││       ││ ││  ││  0x00007f7f843aba45: jne    0x00007f7f843ac389  ;*ifeq
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.51%    0.47%    ││       ││ ││  ││  0x00007f7f843aba4b: vmovd  %xmm4,%r11d
  0.00%    0.02%    ││       ││ ││  ││  0x00007f7f843aba50: mov    0x24(%r12,%r11,8),%r11d  ;*getfield prefix
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                    ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acbfd
  0.01%    0.01%    ││       ││ ││  ││  0x00007f7f843aba55: mov    0xc(%r12,%r11,8),%r8d  ;*getfield value
                    ││       ││ ││  ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acc0d
  0.09%    0.09%    ││       ││ ││  ││  0x00007f7f843aba5a: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                    ││       ││ ││  ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││       ││ ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acc1d
  1.33%    1.53%    ││       ││ ││  ││  0x00007f7f843aba5f: test   %ebp,%ebp
                    ││       ││ ││  ││  0x00007f7f843aba61: jne    0x00007f7f843ac2f9  ;*aload_0
                    ││       ││ ││  ││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.60%    0.43%    ││       │↘ ││  ││  0x00007f7f843aba67: test   %eax,%eax
                    ││       │  ││  ││  0x00007f7f843aba69: jne    0x00007f7f843ac061  ;*ifne
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.03%    0.04%    ││       │  ││  ││  0x00007f7f843aba6f: mov    0x38(%rsp),%r8d
  0.15%    0.14%    ││       │  ││  ││  0x00007f7f843aba74: test   %r8d,%r8d
                    ││       │ ╭││  ││  0x00007f7f843aba77: je     0x00007f7f843aba87  ;*ifeq
                    ││       │ │││  ││                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.14%    0.09%    ││       │ │││  ││  0x00007f7f843aba79: mov    0x68(%rsp),%r11d
  0.56%    0.09%    ││       │ │││  ││  0x00007f7f843aba7e: test   %r11d,%r11d
                    ││       │ │││  ││  0x00007f7f843aba81: jne    0x00007f7f843ac0b1  ;*aload_0
                    ││       │ │││  ││                                                ; - com.google.re2j.Machine::match@282 (line 240)
  0.06%    0.06%    ││       │ ↘││  ││  0x00007f7f843aba87: mov    0x60(%rsp),%r11
  0.09%    0.07%    ││       │  ││  ││  0x00007f7f843aba8c: movzbl 0x11(%r11),%r9d    ;*getfield captures
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@283 (line 240)
  0.10%    0.13%    ││       │  ││  ││  0x00007f7f843aba91: test   %r9d,%r9d
                    ││       │  ││  ││  0x00007f7f843aba94: jne    0x00007f7f843ac195  ;*ifeq
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.51%    0.08%    ││       │  ││  ││  0x00007f7f843aba9a: mov    0x18(%r11),%r8d    ;*getfield prog
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.04%    0.05%    ││       │  ││  ││  0x00007f7f843aba9e: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││       │  ││  ││                                                ; implicit exception: dispatches to 0x00007f7f843acb99
  0.07%    0.10%    ││       │  ││  ││  0x00007f7f843abaa3: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7f843acba9
  0.28%    0.28%    ││       │  ││  ││  0x00007f7f843abaa8: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││       │  ││  ││  0x00007f7f843abaaf: jne    0x00007f7f843abef9  ;*ifeq
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.73%    0.33%    ││       │  ││  ││  0x00007f7f843abab5: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.05%    ││       │  ││  ││  0x00007f7f843abab9: mov    0x2c(%rsp),%r8d
  0.01%    0.02%    ││       │  ││  ││  0x00007f7f843ababe: lea    (%r12,%r8,8),%r11  ;*aload
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.01%    ││       │  ││  ││  0x00007f7f843abac2: mov    %r11,0x10(%rsp)
  0.66%    0.28%    ││       │  ││  ││  0x00007f7f843abac7: vmovd  %xmm1,%r8d
  0.04%    0.03%    ││       │  ││  ││  0x00007f7f843abacc: shl    $0x3,%r8           ;*getfield matchcap
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.01%    ││       │  ││  ││  0x00007f7f843abad0: mov    %r11,%rdx
  0.02%    0.02%    ││       │  ││  ││  0x00007f7f843abad3: mov    0x38(%rsp),%ecx
  0.64%    0.45%    ││       │  ││  ││  0x00007f7f843abad7: xor    %edi,%edi
  0.03%    0.03%    ││       │  ││  ││  0x00007f7f843abad9: mov    0x60(%rsp),%r11
  0.01%    0.02%    ││       │  ││  ││  0x00007f7f843abade: mov    %r11,(%rsp)
  0.03%    0.02%    ││       │  ││  ││  0x00007f7f843abae2: mov    %r9d,0x8(%rsp)
  0.70%    0.65%    ││       │  ││  ││  0x00007f7f843abae7: mov    %r10d,%r9d
  0.04%    0.03%    ││       │  ││  ││  0x00007f7f843abaea: nop
  0.02%    0.02%    ││       │  ││  ││  0x00007f7f843abaeb: callq  0x00007f7f841b0020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1584}
                    ││       │  ││  ││                                                ;*invokevirtual add
                    ││       │  ││  ││                                                ; - com.google.re2j.Machine::match@318 (line 243)
                    ││       │  ││  ││                                                ;   {optimized virtual_call}
  0.38%    0.50%    ││       │  ││  ││  0x00007f7f843abaf0: mov    0x24(%rsp),%edx
  0.10%    0.14%    ││       │  ││  ││  0x00007f7f843abaf4: test   %edx,%edx
                    ││       │  ╰│  ││  0x00007f7f843abaf6: jl     0x00007f7f843ab6fd  ;*ifge
                    ││       │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││       │   │  ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.25%    ││       │   │  ││  0x00007f7f843abafc: xor    %r10d,%r10d        ;*iload_0
                    ││       │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││       │   │  ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.38%    0.42%    │↘       │   │  ││  0x00007f7f843abaff: cmp    $0xa,%edx
                    │        │   │  ││  0x00007f7f843abb02: je     0x00007f7f843abbe1  ;*iload_1
                    │        │   │  ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │        │   │  ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.06%    │        │   │  ││  0x00007f7f843abb08: mov    0x28(%rsp),%r13d
  0.02%    0.01%    │        │   │  ││  0x00007f7f843abb0d: test   %r13d,%r13d
                    │        │   ╰  ││  0x00007f7f843abb10: jl     0x00007f7f843ab6f4  ;*iload_1
                    │        │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │        │      ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.27%    ↘        │      ││  0x00007f7f843abb16: cmp    $0xa,%r13d
                             │      ││  0x00007f7f843abb1a: je     0x00007f7f843abbea  ;*iload_0
                             │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                             │      ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.29%             │      ││  0x00007f7f843abb20: mov    0x24(%rsp),%r11d
  0.06%    0.06%             │      ││  0x00007f7f843abb25: add    $0xffffffbf,%r11d
  0.06%    0.05%             │      ││  0x00007f7f843abb29: cmp    $0x1a,%r11d
                             │    ╭ ││  0x00007f7f843abb2d: jb     0x00007f7f843abb42  ;*if_icmple
                             │    │ ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                             │    │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │    │ ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.24%             │    │ ││  0x00007f7f843abb2f: mov    0x24(%rsp),%r8d
  0.30%    0.38%             │    │ ││  0x00007f7f843abb34: add    $0xffffff9f,%r8d
  0.03%    0.05%             │    │ ││  0x00007f7f843abb38: cmp    $0x1a,%r8d
                             │    │ ││  0x00007f7f843abb3c: jae    0x00007f7f843abbf3  ;*iconst_1
                             │    │ ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                             │    │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │    │ ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.03%             │    ↘ ││  0x00007f7f843abb42: mov    $0x1,%ebp          ;*ireturn
                             │      ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                             │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │      ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.24%             │      ││  0x00007f7f843abb47: mov    0x28(%rsp),%r11d
  0.41%    0.43%             │      ││  0x00007f7f843abb4c: add    $0xffffffbf,%r11d
  0.14%    0.06%             │      ││  0x00007f7f843abb50: cmp    $0x1a,%r11d
                             │     ╭││  0x00007f7f843abb54: jb     0x00007f7f843abb69  ;*if_icmple
                             │     │││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                             │     │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                             │     │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.02%             │     │││  0x00007f7f843abb56: mov    0x28(%rsp),%r8d
  0.18%    0.20%             │     │││  0x00007f7f843abb5b: add    $0xffffff9f,%r8d
  0.32%    0.44%             │     │││  0x00007f7f843abb5f: cmp    $0x1a,%r8d
                             │     │││  0x00007f7f843abb63: jae    0x00007f7f843abc1c  ;*iconst_1
                             │     │││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                             │     │││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                             │     │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.13%             │     ↘││  0x00007f7f843abb69: mov    $0x1,%r11d         ;*ireturn
                             │      ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                             │      ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                             │      ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.15%             │      ││  0x00007f7f843abb6f: cmp    %r11d,%ebp
                             │      ╰│  0x00007f7f843abb72: je     0x00007f7f843ab7e3  ;*if_icmpeq
                             │       │                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                             │       │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.11%             │       │  0x00007f7f843abb78: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                             │       │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.04%             │       ╰  0x00007f7f843abb7c: jmpq   0x00007f7f843ab7e7
  0.01%    0.01%             ↘          0x00007f7f843abb81: test   %ebp,%ebp
                                        0x00007f7f843abb83: jne    0x00007f7f843ac95d  ;*ifeq
                                                                                      ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@447 (line 267)
  0.01%                                 0x00007f7f843abb89: mov    0x50(%rsp),%r11
                                        0x00007f7f843abb8e: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f7f843acccd
  0.00%                                 0x00007f7f843abb93: test   %r10d,%r10d
                                        0x00007f7f843abb96: jne    0x00007f7f843abbb1  ;*ifeq
                                                                                      ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@447 (line 267)
                                        0x00007f7f843abb98: mov    0x1c(%r11),%ebp    ;*getfield pcs
                                                                                      ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                      ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                      ; - com.google.re2j.Machine::match@447 (line 267)
....................................................................................................
 58.89%   60.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 509 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f7f84388f40: mov    0x8(%rsi),%r10d
                     0x00007f7f84388f44: shl    $0x3,%r10
                     0x00007f7f84388f48: cmp    %r10,%rax
                     0x00007f7f84388f4b: jne    0x00007f7f841afe20  ;   {runtime_call}
                     0x00007f7f84388f51: data16 xchg %ax,%ax
                     0x00007f7f84388f54: nopl   0x0(%rax,%rax,1)
                     0x00007f7f84388f5c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.66%    0.58%     0x00007f7f84388f60: mov    %eax,-0x14000(%rsp)
  0.02%    0.05%     0x00007f7f84388f67: push   %rbp
  0.06%    0.03%     0x00007f7f84388f68: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.78%    0.63%     0x00007f7f84388f6c: vmovq  %r8,%xmm5
  0.01%    0.01%     0x00007f7f84388f71: vmovq  %rsi,%xmm4
  0.03%    0.03%     0x00007f7f84388f76: mov    %ecx,%r14d
  0.65%    0.53%     0x00007f7f84388f79: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.03%    0.03%     0x00007f7f84388f7c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f7f84389899
  0.01%    0.02%     0x00007f7f84388f80: cmp    $0x40,%ecx
                     0x00007f7f84388f83: jg     0x00007f7f84389441  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.06%    0.02%     0x00007f7f84388f89: mov    $0x1,%esi
  0.54%    0.68%     0x00007f7f84388f8e: mov    $0x1,%r8d
  0.02%    0.03%     0x00007f7f84388f94: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.67%    0.72%     0x00007f7f84388f97: mov    %r11,%r10
  0.03%    0.04%     0x00007f7f84388f9a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%     0x00007f7f84388f9d: xor    %r13d,%r13d
  0.04%    0.01%     0x00007f7f84388fa0: test   %r10,%r10
                     0x00007f7f84388fa3: jne    0x00007f7f84389475  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.64%    0.61%     0x00007f7f84388fa9: cmp    $0x40,%ecx
                     0x00007f7f84388fac: jge    0x00007f7f843894b5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.02%     0x00007f7f84388fb2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.03%     0x00007f7f84388fb6: vmovq  %xmm4,%r10
  0.02%    0.03%     0x00007f7f84388fbb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.75%    0.59%     0x00007f7f84388fbf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.04%    0.01%     0x00007f7f84388fc2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.02%     0x00007f7f84388fc6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f843898ad
  0.03%    0.03%     0x00007f7f84388fcb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f7f84388fd2: jne    0x00007f7f84389325
  0.61%    0.67%     0x00007f7f84388fd8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.03%     0x00007f7f84388fdc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.03%     0x00007f7f84388fe0: cmp    $0x40,%ecx
                     0x00007f7f84388fe3: jg     0x00007f7f843894e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%     0x00007f7f84388fe9: mov    $0x1,%r10d
  0.57%    0.49%     0x00007f7f84388fef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.12%    0.13%     0x00007f7f84388ff2: mov    %r8,%rbx
  0.51%    0.26%     0x00007f7f84388ff5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f7f84388ff8: test   %rbx,%rbx
                     0x00007f7f84388ffb: jne    0x00007f7f84389525  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.03%     0x00007f7f84389001: cmp    $0x40,%ecx
                     0x00007f7f84389004: jge    0x00007f7f8438956d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.04%     0x00007f7f8438900a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.52%    0.31%     0x00007f7f8438900d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.05%     0x00007f7f84389011: mov    0x88(%rsp),%ecx
  0.02%    0.05%     0x00007f7f84389018: test   %ecx,%ecx
                     0x00007f7f8438901a: jne    0x00007f7f843895a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%     0x00007f7f84389020: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.56%    0.91%     0x00007f7f84389023: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.04%     0x00007f7f84389026: mov    %edi,%r10d
  0.03%    0.03%     0x00007f7f84389029: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.06%     0x00007f7f8438902c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.55%    0.68%     0x00007f7f84389030: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f7f843898d5
  0.03%    0.05%     0x00007f7f84389035: cmp    %ebx,%edi
                  ╭  0x00007f7f84389037: jae    0x00007f7f843892a8
  0.05%    0.03%  │  0x00007f7f8438903d: vmovd  %r10d,%xmm2
  0.05%    0.04%  │  0x00007f7f84389042: vmovd  %eax,%xmm0
  0.59%    0.55%  │  0x00007f7f84389046: mov    %edi,%eax
  0.04%    0.05%  │  0x00007f7f84389048: vmovd  %xmm0,%r10d
  0.04%    0.03%  │  0x00007f7f8438904d: mov    0x8(%r12,%r10,8),%r10d
  0.07%    0.07%  │  0x00007f7f84389052: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f7f84389059: jne    0x00007f7f84389355  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.67%    0.74%  │  0x00007f7f8438905f: vmovq  %xmm4,%r10
  0.08%    0.03%  │  0x00007f7f84389064: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.04%    0.05%  │  0x00007f7f84389068: mov    %r11,%rcx
  0.03%    0.04%  │  0x00007f7f8438906b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.57%    0.63%  │  0x00007f7f8438906f: vmovd  %xmm0,%r10d
  0.02%    0.03%  │  0x00007f7f84389074: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.06%  │  0x00007f7f84389078: lea    0x10(%r11,%rdi,4),%r10
  0.03%    0.04%  │  0x00007f7f8438907d: mov    %ecx,(%r10)
  0.94%    0.99%  │  0x00007f7f84389080: shr    $0x9,%r10
  0.05%    0.04%  │  0x00007f7f84389084: movabs $0x7f7f7fb98000,%rdi
  0.03%    0.07%  │  0x00007f7f8438908e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.42%    0.24%  │  0x00007f7f84389092: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f843898f1
  0.45%    0.33%  │  0x00007f7f84389097: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7f8438909e: jne    0x00007f7f84389395
  0.04%    0.02%  │  0x00007f7f843890a4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.02%  │  0x00007f7f843890a8: vmovq  %r10,%xmm1
  0.21%    0.21%  │  0x00007f7f843890ad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.66%    0.59%  │  0x00007f7f843890b1: vmovd  %ecx,%xmm3
  0.09%    0.05%  │  0x00007f7f843890b5: cmp    $0x40,%ecx
                  │  0x00007f7f843890b8: jg     0x00007f7f843895e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │  0x00007f7f843890be: mov    $0x1,%r10d
  0.16%    0.20%  │  0x00007f7f843890c4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.58%    0.46%  │  0x00007f7f843890c7: mov    %r8,%rcx
  0.23%    0.18%  │  0x00007f7f843890ca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.40%    0.41%  │  0x00007f7f843890cd: test   %rcx,%rcx
                  │  0x00007f7f843890d0: jne    0x00007f7f84389621  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.09%  │  0x00007f7f843890d6: vmovd  %xmm3,%ecx
  0.06%    0.02%  │  0x00007f7f843890da: cmp    $0x40,%ecx
                  │  0x00007f7f843890dd: jge    0x00007f7f84389665  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.28%    0.19%  │  0x00007f7f843890e3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.34%    0.17%  │  0x00007f7f843890e6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.05%  │  0x00007f7f843890ea: mov    %eax,%ecx
  0.02%    0.04%  │  0x00007f7f843890ec: add    $0x2,%ecx
  0.28%    0.26%  │  0x00007f7f843890ef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.37%    0.37%  │  0x00007f7f843890f2: mov    %eax,%r10d
  0.03%    0.02%  │  0x00007f7f843890f5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.07%  │  0x00007f7f843890f9: cmp    %ebx,%r10d
                  │  0x00007f7f843890fc: jae    0x00007f7f843892e5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.19%    0.28%  │  0x00007f7f84389102: vmovd  %r9d,%xmm3
  0.42%    0.52%  │  0x00007f7f84389107: vmovq  %xmm4,%r9
  0.04%    0.07%  │  0x00007f7f8438910c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.03%    0.02%  │  0x00007f7f84389110: vmovq  %xmm1,%r9
  0.18%    0.31%  │  0x00007f7f84389115: mov    %r9,%rcx
  0.41%    0.43%  │  0x00007f7f84389118: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.08%  │  0x00007f7f8438911c: movslq %eax,%r9
  0.04%    0.04%  │  0x00007f7f8438911f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.20%    0.27%  │  0x00007f7f84389123: mov    %r9,%rbx
  0.41%    0.58%  │  0x00007f7f84389126: add    $0x14,%rbx
  0.08%    0.05%  │  0x00007f7f8438912a: mov    %ecx,(%rbx)
  0.04%    0.04%  │  0x00007f7f8438912c: mov    %rbx,%rcx
  0.29%    0.21%  │  0x00007f7f8438912f: shr    $0x9,%rcx
  0.43%    0.29%  │  0x00007f7f84389133: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.01%  │  0x00007f7f84389137: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7f84389915
  0.06%    0.02%  │  0x00007f7f8438913c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7f84389142: jne    0x00007f7f843893c1
  0.28%    0.29%  │  0x00007f7f84389148: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.35%    0.55%  │  0x00007f7f8438914c: vmovq  %rcx,%xmm0
  0.03%    0.06%  │  0x00007f7f84389151: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.04%  │  0x00007f7f84389154: vmovd  %ecx,%xmm2
  0.25%    0.28%  │  0x00007f7f84389158: cmp    $0x40,%ecx
                  │  0x00007f7f8438915b: jg     0x00007f7f843896a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.45%    0.54%  │  0x00007f7f84389161: mov    $0x1,%ebx
  0.07%    0.06%  │  0x00007f7f84389166: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.71%    0.65%  │  0x00007f7f84389169: mov    %r8,%rcx
  0.02%    0.04%  │  0x00007f7f8438916c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.03%  │  0x00007f7f8438916f: test   %rcx,%rcx
                  │  0x00007f7f84389172: jne    0x00007f7f843896dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.29%    0.29%  │  0x00007f7f84389178: vmovd  %xmm2,%ecx
  0.33%    0.43%  │  0x00007f7f8438917c: cmp    $0x40,%ecx
                  │  0x00007f7f8438917f: jge    0x00007f7f84389725  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.07%  │  0x00007f7f84389185: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.04%  │  0x00007f7f84389188: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.26%    0.22%  │  0x00007f7f8438918c: vmovq  %xmm4,%rcx
  0.40%    0.30%  │  0x00007f7f84389191: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.05%    0.07%  │  0x00007f7f84389194: mov    %r9,%rbx
  0.04%    0.06%  │  0x00007f7f84389197: add    $0x18,%rbx
  0.24%    0.19%  │  0x00007f7f8438919b: vmovq  %xmm0,%rcx
  0.47%    0.38%  │  0x00007f7f843891a0: shr    $0x3,%rcx
  0.08%    0.06%  │  0x00007f7f843891a4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.02%  │  0x00007f7f843891a6: mov    %eax,%ecx
  0.24%    0.11%  │  0x00007f7f843891a8: add    $0x3,%ecx
  0.41%    0.32%  │  0x00007f7f843891ab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.05%  │  0x00007f7f843891ae: shr    $0x9,%rbx
  0.04%    0.02%  │  0x00007f7f843891b2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.28%    0.18%  │  0x00007f7f843891b6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7f8438993d
  0.43%    0.46%  │  0x00007f7f843891bb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7f843891c1: jne    0x00007f7f843893ed
  0.07%    0.02%  │  0x00007f7f843891c7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.04%  │  0x00007f7f843891cb: vmovq  %rcx,%xmm0
  0.27%    0.24%  │  0x00007f7f843891d0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.46%    0.49%  │  0x00007f7f843891d3: vmovd  %ecx,%xmm1
  0.04%    0.05%  │  0x00007f7f843891d7: cmp    $0x40,%ecx
                  │  0x00007f7f843891da: jg     0x00007f7f84389761  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f7f843891e0: mov    $0x1,%ebx
  0.27%    0.28%  │  0x00007f7f843891e5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.51%    0.64%  │  0x00007f7f843891e8: mov    %r8,%rcx
  0.19%    0.12%  │  0x00007f7f843891eb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.41%    0.16%  │  0x00007f7f843891ee: test   %rcx,%rcx
                  │  0x00007f7f843891f1: jne    0x00007f7f8438979d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.06%  │  0x00007f7f843891f7: vmovd  %xmm1,%ecx
  0.02%    0.03%  │  0x00007f7f843891fb: cmp    $0x40,%ecx
                  │  0x00007f7f843891fe: jge    0x00007f7f843897e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.25%    0.22%  │  0x00007f7f84389204: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.44%    0.56%  │  0x00007f7f84389208: vmovq  %xmm4,%r10
  0.04%    0.07%  │  0x00007f7f8438920d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.04%    0.05%  │  0x00007f7f84389211: mov    %r9,%rcx
  0.20%    0.31%  │  0x00007f7f84389214: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.37%    0.38%  │  0x00007f7f84389218: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.07%  │  0x00007f7f8438921b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  │  0x00007f7f8438921f: vmovq  %xmm0,%r10
  0.24%    0.24%  │  0x00007f7f84389224: shr    $0x3,%r10
  0.34%    0.44%  │  0x00007f7f84389228: mov    %r10d,(%rcx)
  0.09%    0.09%  │  0x00007f7f8438922b: mov    %rcx,%r10
  0.03%    0.01%  │  0x00007f7f8438922e: shr    $0x9,%r10
  0.22%    0.25%  │  0x00007f7f84389232: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.42%    0.40%  │  0x00007f7f84389236: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7f84389965
  0.04%    0.08%  │  0x00007f7f8438923b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f7f84389242: jne    0x00007f7f84389419
  0.02%    0.05%  │  0x00007f7f84389248: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.27%    0.26%  │  0x00007f7f8438924c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.42%    0.38%  │  0x00007f7f84389250: cmp    $0x40,%ecx
                  │  0x00007f7f84389253: jg     0x00007f7f84389821  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.09%  │  0x00007f7f84389259: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.61%    0.72%  │  0x00007f7f8438925c: mov    %r8,%rbx
  0.04%    0.06%  │  0x00007f7f8438925f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.06%  │  0x00007f7f84389262: test   %rbx,%rbx
                  │  0x00007f7f84389265: jne    0x00007f7f84389845  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.27%    0.30%  │  0x00007f7f8438926b: cmp    $0x40,%ecx
                  │  0x00007f7f8438926e: jge    0x00007f7f84389875  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.39%    0.54%  │  0x00007f7f84389274: or     %rsi,%r8
  0.05%    0.04%  │  0x00007f7f84389277: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.02%  │  0x00007f7f8438927b: add    $0x20,%r9
  0.24%    0.30%  │  0x00007f7f8438927f: mov    %r10,%r11
  0.38%    0.39%  │  0x00007f7f84389282: shr    $0x3,%r11
  0.06%    0.05%  │  0x00007f7f84389286: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.07%  │  0x00007f7f84389289: mov    %r9,%r10
  0.25%    0.24%  │  0x00007f7f8438928c: add    $0x5,%eax
  0.49%    0.32%  │  0x00007f7f8438928f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.03%  │  0x00007f7f84389292: shr    $0x9,%r10
  0.02%    0.02%  │  0x00007f7f84389296: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.26%    0.15%  │  0x00007f7f8438929a: xor    %eax,%eax
  0.41%    0.48%  │  0x00007f7f8438929c: add    $0x70,%rsp
  0.08%    0.06%  │  0x00007f7f843892a0: pop    %rbp
  0.03%    0.04%  │  0x00007f7f843892a1: test   %eax,0x15fa8d59(%rip)        # 0x00007f7f9a332000
                  │                                                ;   {poll_return}
  0.23%    0.26%  │  0x00007f7f843892a7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f7f843892a8: mov    $0xffffffe4,%esi
                     0x00007f7f843892ad: vmovq  %xmm4,%rbp
                     0x00007f7f843892b2: mov    %rdx,(%rsp)
                     0x00007f7f843892b6: mov    %r14d,0x88(%rsp)
                     0x00007f7f843892be: vmovsd %xmm5,0x8(%rsp)
                     0x00007f7f843892c4: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.28%   35.75%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.89%   60.79%         C2, level 4  com.google.re2j.Machine::match, version 545 (1267 bytes) 
 36.28%   35.75%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 509 (839 bytes) 
  0.83%    0.76%         C2, level 4  com.google.re2j.Machine::match, version 545 (170 bytes) 
  0.36%    0.35%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.28%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 554 (108 bytes) 
  0.20%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 554 (20 bytes) 
  0.15%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 554 (33 bytes) 
  0.13%    0.04%         C2, level 4  java.util.Collections::shuffle, version 561 (133 bytes) 
  0.12%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 554 (8 bytes) 
  0.11%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 554 (69 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 554 (92 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 554 (0 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (21 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 554 (42 bytes) 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 561 (48 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Machine::match, version 545 (25 bytes) 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 561 (78 bytes) 
  2.04%    1.91%  <...other 385 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.87%   61.69%         C2, level 4  com.google.re2j.Machine::match, version 545 
 36.28%   35.75%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 509 
  1.39%    1.10%   [kernel.kallsyms]  [unknown] 
  1.24%    0.33%         C2, level 4  com.google.re2j.RE2::match, version 554 
  0.25%    0.09%         C2, level 4  java.util.Collections::shuffle, version 561 
  0.11%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 593 
  0.10%    0.03%                      <unknown> 
  0.07%    0.03%              [vdso]  [unknown] 
  0.05%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.03%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.04%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.01%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.02%    0.01%        libc-2.26.so  _IO_vsnprintf 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.01%                    libjvm.so  _ZN9StealTask5do_itEP13GCTaskManagerj 
  0.01%    0.00%        libc-2.26.so  _IO_default_xsputn 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.39%    0.30%  <...other 54 warm methods...>
....................................................................................................
100.00%   99.72%  <totals>

....[Distribution by Source]........................................................................
 97.76%   97.89%         C2, level 4
  1.39%    1.10%   [kernel.kallsyms]
  0.43%    0.55%           libjvm.so
  0.17%    0.34%        libc-2.26.so
  0.10%    0.03%                    
  0.07%    0.03%              [vdso]
  0.04%    0.02%  libpthread-2.26.so
  0.03%    0.01%         interpreter
  0.00%               perf-15245.map
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  20807.317 ± 75.237  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
