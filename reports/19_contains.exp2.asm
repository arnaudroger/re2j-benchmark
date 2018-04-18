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
# Warmup Iteration   1: 11439.774 ops/s
# Warmup Iteration   2: 21977.411 ops/s
# Warmup Iteration   3: 22001.254 ops/s
# Warmup Iteration   4: 21857.468 ops/s
# Warmup Iteration   5: 22007.815 ops/s
# Warmup Iteration   6: 21769.233 ops/s
# Warmup Iteration   7: 21938.292 ops/s
# Warmup Iteration   8: 21942.171 ops/s
# Warmup Iteration   9: 21986.888 ops/s
# Warmup Iteration  10: 21994.430 ops/s
# Warmup Iteration  11: 22005.172 ops/s
# Warmup Iteration  12: 22007.846 ops/s
# Warmup Iteration  13: 21982.786 ops/s
# Warmup Iteration  14: 21979.293 ops/s
# Warmup Iteration  15: 21995.431 ops/s
# Warmup Iteration  16: 22003.669 ops/s
# Warmup Iteration  17: 21970.372 ops/s
# Warmup Iteration  18: 21942.767 ops/s
# Warmup Iteration  19: 22029.485 ops/s
# Warmup Iteration  20: 22011.221 ops/s
Iteration   1: 21998.805 ops/s
Iteration   2: 21912.987 ops/s
Iteration   3: 21771.255 ops/s
Iteration   4: 21369.698 ops/s
Iteration   5: 21926.328 ops/s
Iteration   6: 22032.406 ops/s
Iteration   7: 21957.818 ops/s
Iteration   8: 21875.758 ops/s
Iteration   9: 22015.126 ops/s
Iteration  10: 20856.952 ops/s
Iteration  11: 22118.922 ops/s
Iteration  12: 22119.294 ops/s
Iteration  13: 22116.239 ops/s
Iteration  14: 22122.496 ops/s
Iteration  15: 22122.685 ops/s
Iteration  16: 19678.880 ops/s
Iteration  17: 22120.292 ops/s
Iteration  18: 21990.237 ops/s
Iteration  19: 22036.426 ops/s
Iteration  20: 22018.126 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  21808.037 ±(99.9%) 508.931 ops/s [Average]
  (min, avg, max) = (19678.880, 21808.037, 22122.685), stdev = 586.085
  CI (99.9%): [21299.106, 22316.967] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193598 total address lines.
Perf output processed (skipped 23.276 seconds):
 Column 1: cycles (20418 events)
 Column 2: instructions (20401 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 543 (1597 bytes) 

                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@105 (line 220)
                                                        0x00007fd7e9234814: cmp    %ecx,%r8d
                                                        0x00007fd7e9234817: jae    0x00007fd7e92359b9
                                                        0x00007fd7e923481d: movzwl 0x10(%r9,%r8,2),%ecx  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@105 (line 220)
  0.01%                                                 0x00007fd7e9234823: cmp    $0xd800,%ecx
                                                        0x00007fd7e9234829: jge    0x00007fd7e9235cf9  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@105 (line 220)
                                                        0x00007fd7e923482f: shl    $0x3,%ecx          ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@105 (line 220)
                                                        0x00007fd7e9234832: mov    %ecx,%r11d
  0.01%                                                 0x00007fd7e9234835: and    $0x7,%r11d
           0.00%                                        0x00007fd7e9234839: or     $0x1,%ecx
                                                        0x00007fd7e923483c: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@105 (line 220)
                                                        0x00007fd7e9234840: sar    $0x3,%ecx          ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@120 (line 222)
                                                        0x00007fd7e9234843: vmovd  %xmm0,%r8d
  0.01%                                                 0x00007fd7e9234848: test   %r8d,%r8d
                                                        0x00007fd7e923484b: jne    0x00007fd7e9235af1  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::match@124 (line 225)
                                                        0x00007fd7e9234851: vmovd  %xmm2,%r8d
  0.00%    0.00%                                        0x00007fd7e9234856: test   %r8d,%r8d
                                                        0x00007fd7e9234859: jl     0x00007fd7e9234e92  ;*ifge
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                      ; - com.google.re2j.Machine::match@130 (line 226)
                                                        0x00007fd7e923485f: mov    $0x5,%r9d          ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@130 (line 226)
  0.00%                                                 0x00007fd7e9234865: cmp    $0xa,%r8d
                                                        0x00007fd7e9234869: je     0x00007fd7e9234eaa  ;*iload_0
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@130 (line 226)
                                                        0x00007fd7e923486f: mov    %r11d,0x28(%rsp)
           0.00%                                        0x00007fd7e9234874: mov    %ecx,0x34(%rsp)
           0.00%                                        0x00007fd7e9234878: mov    %r8d,%r10d
                                                        0x00007fd7e923487b: add    $0xffffffbf,%r10d
                                                        0x00007fd7e923487f: cmp    $0x1a,%r10d
                  ╭                                     0x00007fd7e9234883: jb     0x00007fd7e9234896  ;*if_icmple
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@130 (line 226)
                  │                                     0x00007fd7e9234885: mov    %r8d,%r11d
                  │                                     0x00007fd7e9234888: add    $0xffffff9f,%r11d
  0.00%           │                                     0x00007fd7e923488c: cmp    $0x1a,%r11d
                  │                                     0x00007fd7e9234890: jae    0x00007fd7e9234eb3  ;*iconst_1
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@130 (line 226)
           0.00%  ↘                                     0x00007fd7e9234896: or     $0x10,%r9d         ;*iload_2
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@130 (line 226)
                                                        0x00007fd7e923489a: test   %ebx,%ebx
                                                        0x00007fd7e923489c: jne    0x00007fd7e9235a6d
                                                        0x00007fd7e92348a2: mov    %r8d,0x24(%rsp)
  0.01%    0.00%                                        0x00007fd7e92348a7: mov    %ebx,0x38(%rsp)
                                                        0x00007fd7e92348ab: mov    0x30(%rsp),%r11d
                                                        0x00007fd7e92348b0: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fd7e9235a6d
  0.01%    0.00%                                        0x00007fd7e92348b5: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                                                        0x00007fd7e92348bc: jne    0x00007fd7e9235a6d  ;*aload
                                                                                                      ; - com.google.re2j.Machine::match@145 (line 232)
  0.00%                                                 0x00007fd7e92348c2: lea    (%r12,%r11,8),%r10  ;*invokevirtual add
                                                                                                      ; - com.google.re2j.Machine::match@322 (line 264)
                                                        0x00007fd7e92348c6: mov    %r10,0x78(%rsp)
                                                        0x00007fd7e92348cb: mov    0x68(%rsp),%r10d
           0.00%                                        0x00007fd7e92348d0: and    $0x4,%r10d         ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@156 (line 233)
                                                        0x00007fd7e92348d4: mov    %r10d,0x3c(%rsp)
                                                        0x00007fd7e92348d9: mov    %rdi,%r10
                                                        0x00007fd7e92348dc: shl    $0x3,%r10          ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@62 (line 213)
                                                        0x00007fd7e92348e0: mov    %r10,0x50(%rsp)
  0.01%    0.01%                                        0x00007fd7e92348e5: xor    %eax,%eax
                                                        0x00007fd7e92348e7: xor    %r10d,%r10d
                                                        0x00007fd7e92348ea: mov    %r10d,0x40(%rsp)
  0.00%            ╭                                    0x00007fd7e92348ef: jmpq   0x00007fd7e9234c6d
  0.02%    0.00%   │                ↗                   0x00007fd7e92348f4: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │                │                                                                 ; - com.google.re2j.Machine::match@330 (line 266)
                   │╭               │                   0x00007fd7e92348f8: jmpq   0x00007fd7e9234d26
  0.01%            ││             ↗ │                   0x00007fd7e92348fd: mov    $0x5,%r9d
                   ││╭            │ │                   0x00007fd7e9234903: jmpq   0x00007fd7e9234d0f
  0.27%    0.27%   │││   ↗↗↗      │ │                   0x00007fd7e9234908: mov    0x2c(%r12,%r8,8),%ebp  ;*getfield outInst
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@199 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.22%    0.28%   │││   │││      │ │                   0x00007fd7e923490d: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fd7e9235ee1
  0.24%    0.17%   │││   │││      │ │                   0x00007fd7e9234912: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │││   │││      │ │                   0x00007fd7e9234919: jne    0x00007fd7e92356bd
  0.14%    0.13%   │││   │││      │ │                   0x00007fd7e923491f: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.00%    0.01%   │││   │││      │ │                   0x00007fd7e9234923: vmovq  %r8,%xmm1
  0.03%    0.03%   │││   │││      │ │                   0x00007fd7e9234928: mov    0x18(%r8),%r8d     ;*getfield pc
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.01%    0.05%   │││   │││      │ │                   0x00007fd7e923492c: vmovd  %r8d,%xmm4
  0.14%    0.12%   │││   │││      │ │                   0x00007fd7e9234931: mov    0x50(%rsp),%r8
  0.03%    0.03%   │││   │││      │ │                   0x00007fd7e9234936: mov    0x10(%r8),%rdi     ;*getfield pcsl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
                   │││   │││      │ │                                                                 ; implicit exception: dispatches to 0x00007fd7e9235efd
  0.02%    0.03%   │││   │││      │ │                   0x00007fd7e923493a: vmovd  %xmm4,%r8d
  0.10%    0.10%   │││   │││      │ │                   0x00007fd7e923493f: cmp    $0x40,%r8d
                   │││   │││      │ │                   0x00007fd7e9234943: jge    0x00007fd7e9235865  ;*if_icmpge
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.10%    0.11%   │││   │││      │ │                   0x00007fd7e9234949: mov    $0x1,%r8d
  0.01%    0.01%   │││   │││      │ │                   0x00007fd7e923494f: vmovd  %xmm4,%ecx
  0.13%    0.10%   │││   │││      │ │                   0x00007fd7e9234953: shl    %cl,%r8            ;*lshl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.26%    0.35%   │││   │││      │ │                   0x00007fd7e9234956: vmovq  %r8,%xmm3
  0.01%    0.02%   │││   │││      │ │                   0x00007fd7e923495b: and    %rdi,%r8           ;*land
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.03%    0.06%   │││   │││      │ │                   0x00007fd7e923495e: test   %r8,%r8
                   │││   │││      │ │                   0x00007fd7e9234961: jne    0x00007fd7e92357d5  ;*ifne
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.13%    0.16%   │││   │││      │ │                   0x00007fd7e9234967: mov    0x50(%rsp),%r8
  0.00%    0.01%   │││   │││      │ │                   0x00007fd7e923496c: mov    %r12b,0x18(%r8)    ;*putfield empty
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.01%    0.02%   │││   │││      │ │                   0x00007fd7e9234970: mov    0x20(%r8),%r8d     ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.08%    0.01%   │││   │││      │ │                   0x00007fd7e9234974: vmovd  %r8d,%xmm4
  0.18%    0.18%   │││   │││      │ │                   0x00007fd7e9234979: mov    0x50(%rsp),%r8
  0.00%            │││   │││      │ │                   0x00007fd7e923497e: mov    0xc(%r8),%r8d      ;*getfield size
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
           0.01%   │││   │││      │ │                   0x00007fd7e9234982: vmovd  %r8d,%xmm6
  0.01%    0.00%   │││   │││      │ │                   0x00007fd7e9234987: vmovq  %xmm3,%r8
  0.11%    0.17%   │││   │││      │ │                   0x00007fd7e923498c: or     %rdi,%r8
  0.01%    0.00%   │││   │││      │ │                   0x00007fd7e923498f: mov    0x50(%rsp),%rcx
  0.01%    0.01%   │││   │││      │ │                   0x00007fd7e9234994: mov    %r8,0x10(%rcx)     ;*putfield pcsl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.07%    0.07%   │││   │││      │ │                   0x00007fd7e9234998: vmovd  %xmm6,%r8d
  0.09%    0.11%   │││   │││      │ │                   0x00007fd7e923499d: inc    %r8d
                   │││   │││      │ │                   0x00007fd7e92349a0: mov    %r8d,0xc(%rcx)     ;*putfield size
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.01%    0.01%   │││   │││      │ │                   0x00007fd7e92349a4: vmovd  %xmm4,%r8d
  0.07%    0.10%   │││   │││      │ │                   0x00007fd7e92349a9: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007fd7e9235f11
  0.25%    0.17%   │││   │││      │ │                   0x00007fd7e92349ae: vmovd  %xmm6,%r8d
                   │││   │││      │ │                   0x00007fd7e92349b3: cmp    %ecx,%r8d
                   │││   │││      │ │                   0x00007fd7e92349b6: jae    0x00007fd7e9235615
  0.15%    0.13%   │││   │││      │ │                   0x00007fd7e92349bc: vmovd  %xmm4,%r8d
  0.03%    0.02%   │││   │││      │ │                   0x00007fd7e92349c1: mov    0x8(%r12,%r8,8),%ecx
  0.07%    0.14%   │││   │││      │ │                   0x00007fd7e92349c6: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │││   │││      │ │                   0x00007fd7e92349cc: jne    0x00007fd7e923572d  ;*aastore
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.12%    0.16%   │││   │││      │ │                   0x00007fd7e92349d2: lea    (%r12,%r8,8),%rcx  ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.01%            │││   │││      │ │                   0x00007fd7e92349d6: vmovd  %xmm6,%r8d
  0.05%    0.02%   │││   │││      │ │                   0x00007fd7e92349db: lea    0x10(%rcx,%r8,4),%rcx
  0.03%    0.02%   │││   │││      │ │                   0x00007fd7e92349e0: vmovq  %xmm1,%r8
  0.10%    0.13%   │││   │││      │ │                   0x00007fd7e92349e5: shr    $0x3,%r8
  0.00%    0.01%   │││   │││      │ │                   0x00007fd7e92349e9: mov    %r8d,(%rcx)
  0.61%    0.62%   │││   │││      │ │                   0x00007fd7e92349ec: mov    %rcx,%r8
  0.00%    0.00%   │││   │││      │ │                   0x00007fd7e92349ef: shr    $0x9,%r8
                   │││   │││      │ │                   0x00007fd7e92349f3: movabs $0x7fd7f90f6000,%rcx
                   │││   │││      │ │                   0x00007fd7e92349fd: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@214 (line 338)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@363 (line 267)
  0.32%    0.27%   │││╭  │││      │ │                   0x00007fd7e9234a01: jmpq   0x00007fd7e9234b1b
  0.33%    0.27%   ││││  │││      │ │     ↗             0x00007fd7e9234a06: or     $0x20,%r9d         ;*iload_2
                   ││││  │││      │ │     │                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││││  │││      │ │     │                                                           ; - com.google.re2j.Machine::match@330 (line 266)
  0.08%    0.10%   ││││  │││      │ │     │↗            0x00007fd7e9234a0a: mov    0x60(%rsp),%r10
  0.23%    0.17%   ││││  │││      │ │     ││            0x00007fd7e9234a0f: mov    0x14(%r10),%r10d   ;*getfield re2
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@1 (line 301)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.29%    0.21%   ││││  │││      │ │     ││            0x00007fd7e9234a13: movzbl 0x18(%r12,%r10,8),%eax  ;*getfield longest
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@4 (line 301)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
                   ││││  │││      │ │     ││                                                          ; implicit exception: dispatches to 0x00007fd7e9235e7d
  0.49%    0.38%   ││││  │││      │ │     ││            0x00007fd7e9234a19: mov    0x2c(%rsp),%r10d
  0.08%    0.07%   ││││  │││      │ │     ││            0x00007fd7e9234a1e: mov    0xc(%r12,%r10,8),%r14d  ;*getfield size
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@10 (line 302)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.16%    0.17%   ││││  │││      │ │     ││            0x00007fd7e9234a23: mov    0x40(%rsp),%r11d
  0.20%    0.21%   ││││  │││      │ │     ││            0x00007fd7e9234a28: add    0x20(%rsp),%r11d   ;*iadd
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@344 (line 267)
  0.39%    0.37%   ││││  │││      │ │     ││            0x00007fd7e9234a2d: test   %r14d,%r14d
                   ││││╭ │││      │ │     ││            0x00007fd7e9234a30: jle    0x00007fd7e9234b23  ;*if_icmpge
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@40 (line 307)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.10%    0.13%   │││││ │││      │ │     ││            0x00007fd7e9234a36: mov    0x24(%r12,%r10,8),%r13d  ;*getfield denseThreadsCapture
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@28 (line 305)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.16%    0.26%   │││││ │││      │ │     ││            0x00007fd7e9234a3b: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@22 (line 304)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.16%    0.17%   │││││ │││      │ │     ││            0x00007fd7e9234a40: vmovd  %r10d,%xmm0
  0.26%    0.28%   │││││ │││      │ │     ││            0x00007fd7e9234a45: mov    0x60(%rsp),%r10
  0.08%    0.13%   │││││ │││      │ │     ││            0x00007fd7e9234a4a: movzbl 0x11(%r10),%ecx    ;*getfield captures
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@16 (line 303)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.19%    0.18%   │││││ │││      │ │     ││            0x00007fd7e9234a4f: mov    0x70(%rsp),%r10
  0.18%    0.24%   │││││ │││      │ │     ││            0x00007fd7e9234a54: mov    0x10(%r10),%r8d
  0.36%    0.33%   │││││ │││      │ │     ││            0x00007fd7e9234a58: mov    0x40(%rsp),%ebx
  0.07%    0.13%   │││││ │││      │ │     ││            0x00007fd7e9234a5c: mov    $0x1,%r10d
  0.22%    0.18%   │││││ │││      │ │     ││            0x00007fd7e9234a62: xor    %esi,%esi
  0.16%    0.13%   │││││ │││      │ │     ││            0x00007fd7e9234a64: cmp    %r8d,%ebx
  0.29%    0.45%   │││││ │││      │ │     ││            0x00007fd7e9234a67: cmovne %esi,%r10d         ;*invokespecial step
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.27%    0.25%   │││││ │││      │ │     ││            0x00007fd7e9234a6b: vmovd  %r10d,%xmm2
  0.22%    0.28%   │││││ │││      │ │     ││            0x00007fd7e9234a70: test   %ecx,%ecx
                   │││││ │││      │ │     ││            0x00007fd7e9234a72: jne    0x00007fd7e9235229  ;*iload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@43 (line 310)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.25%    0.25%   │││││ │││      │ │     ││            0x00007fd7e9234a78: vmovd  %xmm0,%r8d
  0.07%    0.11%   │││││ │││      │ │     ││            0x00007fd7e9234a7d: mov    0xc(%r12,%r8,8),%r8d  ;*aaload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@99 (line 320)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
                   │││││ │││      │ │     ││                                                          ; implicit exception: dispatches to 0x00007fd7e9235229
  0.14%    0.19%   │││││ │││      │ │     ││            0x00007fd7e9234a82: test   %r8d,%r8d
                   │││││ │││      │ │     ││            0x00007fd7e9234a85: jbe    0x00007fd7e9235229
  0.27%    0.22%   │││││ │││      │ │     ││            0x00007fd7e9234a8b: mov    %r14d,%ebx
  0.28%    0.22%   │││││ │││      │ │     ││            0x00007fd7e9234a8e: dec    %ebx
  0.08%    0.07%   │││││ │││      │ │     ││            0x00007fd7e9234a90: cmp    %r8d,%ebx
                   │││││ │││      │ │     ││            0x00007fd7e9234a93: jae    0x00007fd7e9235229
  0.18%    0.10%   │││││ │││      │ │     ││            0x00007fd7e9234a99: vmovd  %xmm0,%r10d
  0.21%    0.22%   │││││ │││      │ │     ││            0x00007fd7e9234a9e: lea    (%r12,%r10,8),%rbx
  0.37%    0.26%   │││││ │││      │ │     ││            0x00007fd7e9234aa2: xor    %r10d,%r10d
  0.12%    0.10%   │││││ │││      │ │     ││            0x00007fd7e9234aa5: data16 data16 nopw 0x0(%rax,%rax,1)
                   │││││ │││      │ │     ││                                                          ;*iload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@43 (line 310)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.51%    1.62%   │││││ │││↗     │ │     ││            0x00007fd7e9234ab0: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@99 (line 320)
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.63%    0.69%   │││││ ││││     │ │     ││            0x00007fd7e9234ab5: mov    0xc(%r12,%r8,8),%ecx  ;*getfield op
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@104 (line 322)
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
                   │││││ ││││     │ │     ││                                                          ; implicit exception: dispatches to 0x00007fd7e9235e5d
  1.42%    1.46%   │││││ ││││     │ │     ││            0x00007fd7e9234aba: cmp    $0x6,%ecx
                   │││││╭││││     │ │     ││            0x00007fd7e9234abd: je     0x00007fd7e9234e49  ;*if_icmpne
                   ││││││││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@109 (line 322)
                   ││││││││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.23%    1.37%   ││││││││││     │ │     ││            0x00007fd7e9234ac3: cmp    $0xa,%ecx
                   ││││││╰│││     │ │     ││            0x00007fd7e9234ac6: je     0x00007fd7e9234908  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.39%    1.47%   ││││││ │││     │ │     ││            0x00007fd7e9234acc: cmp    $0xb,%ecx
                   ││││││ │││     │ │     ││            0x00007fd7e9234acf: je     0x00007fd7e9234f6d  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.08%    0.98%   ││││││ │││     │ │     ││            0x00007fd7e9234ad5: cmp    $0x9,%ecx
                   ││││││ │││     │ │     ││            0x00007fd7e9234ad8: je     0x00007fd7e9235001  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.12%    1.30%   ││││││ │││     │ │     ││            0x00007fd7e9234ade: cmp    $0xc,%ecx
                   ││││││ │││     │ │     ││            0x00007fd7e9234ae1: jne    0x00007fd7e9234ed7  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.51%    1.43%   ││││││ │││     │ │     ││            0x00007fd7e9234ae7: mov    0x1c(%r12,%r8,8),%ecx  ;*getfield f0
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.11%    1.19%   ││││││ │││     │ │     ││            0x00007fd7e9234aec: cmp    %edx,%ecx
                   ││││││ ╰││     │ │     ││            0x00007fd7e9234aee: je     0x00007fd7e9234908  ;*if_icmpeq
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.39%    1.73%   ││││││  ││     │ │     ││            0x00007fd7e9234af4: mov    0x20(%r12,%r8,8),%ecx  ;*getfield f1
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.73%    0.87%   ││││││  ││     │ │     ││            0x00007fd7e9234af9: cmp    %edx,%ecx
                   ││││││  ╰│     │ │     ││            0x00007fd7e9234afb: je     0x00007fd7e9234908  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.36%    1.19%   ││││││   │     │ │     ││            0x00007fd7e9234b01: mov    0x24(%r12,%r8,8),%ecx  ;*getfield f2
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.06%    1.33%   ││││││   │     │ │     ││            0x00007fd7e9234b06: cmp    %edx,%ecx
                   ││││││   │     │ │     ││            0x00007fd7e9234b08: je     0x00007fd7e9235095  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  1.45%    1.81%   ││││││   │     │ │     ││            0x00007fd7e9234b0e: mov    0x28(%r12,%r8,8),%ecx  ;*getfield f3
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@191 (line 337)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.56%    0.67%   ││││││   │     │ │     ││            0x00007fd7e9234b13: cmp    %edx,%ecx
                   ││││││   │     │ │     ││            0x00007fd7e9234b15: je     0x00007fd7e9235115  ;*aload
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@219 (line 341)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@363 (line 267)
  0.95%    1.12%   │││↘││   │     │ │     ││         ↗  0x00007fd7e9234b1b: inc    %r10d              ;*iinc
                   │││ ││   │     │ │     ││         │                                                ; - com.google.re2j.Machine::step@230 (line 307)
                   │││ ││   │     │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.98%    1.06%   │││ ││   │     │ │     ││         │  0x00007fd7e9234b1e: cmp    %r14d,%r10d
                   │││ ││   ╰     │ │     ││         │  0x00007fd7e9234b21: jl     0x00007fd7e9234ab0  ;*if_icmpge
                   │││ ││         │ │     ││         │                                                ; - com.google.re2j.Machine::step@40 (line 307)
                   │││ ││         │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.35%    0.35%   │││ ↘│         │ │     ││         │  0x00007fd7e9234b23: mov    0x2c(%rsp),%r8d
  0.21%    0.28%   │││  │         │ │     ││         │  0x00007fd7e9234b28: movzbl 0x18(%r12,%r8,8),%r8d
  0.18%    0.18%   │││  │         │ │     ││         │  0x00007fd7e9234b2e: test   %r8d,%r8d
                   │││  │    ╭    │ │     ││         │  0x00007fd7e9234b31: jne    0x00007fd7e9234b55  ;*ifeq
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 88)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.21%    0.33%   │││  │    │    │ │     ││         │  0x00007fd7e9234b33: mov    0x2c(%rsp),%r10d
  0.18%    0.23%   │││  │    │    │ │     ││         │  0x00007fd7e9234b38: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@24 (line 92)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.24%    0.27%   │││  │    │    │ │     ││         │  0x00007fd7e9234b3d: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 90)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.57%    0.67%   │││  │    │    │ │     ││         │  0x00007fd7e9234b43: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@20 (line 91)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.81%    1.37%   │││  │    │    │ │     ││         │  0x00007fd7e9234b48: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 89)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.46%    0.67%   │││  │    │    │ │     ││         │  0x00007fd7e9234b4d: test   %ebp,%ebp
                   │││  │    │    │ │     ││         │  0x00007fd7e9234b4f: jne    0x00007fd7e92353f1  ;*invokevirtual clear
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@237 (line 345)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@363 (line 267)
  0.10%    0.04%   │││  │    ↘    │ │     ││         │  0x00007fd7e9234b55: mov    0x60(%rsp),%r10
  0.13%    0.15%   │││  │         │ │     ││         │  0x00007fd7e9234b5a: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││  │         │ │     ││         │                                                ; - com.google.re2j.Machine::match@382 (line 271)
  0.31%    0.52%   │││  │         │ │     ││         │  0x00007fd7e9234b5f: mov    0x60(%rsp),%r10
  0.30%    0.31%   │││  │         │ │     ││         │  0x00007fd7e9234b64: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │││  │         │ │     ││         │                                                ; - com.google.re2j.Machine::match@375 (line 271)
  0.05%    0.06%   │││  │         │ │     ││         │  0x00007fd7e9234b69: mov    0x20(%rsp),%r10d
  0.10%    0.15%   │││  │         │ │     ││         │  0x00007fd7e9234b6e: test   %r10d,%r10d
                   │││  │     ╭   │ │     ││         │  0x00007fd7e9234b71: je     0x00007fd7e9234d9f  ;*ifne
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@368 (line 268)
  0.31%    0.44%   │││  │     │   │ │     ││         │  0x00007fd7e9234b77: test   %ebp,%ebp
                   │││  │     │   │ │     ││         │  0x00007fd7e9234b79: jne    0x00007fd7e9235309  ;*ifne
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@378 (line 271)
  0.30%    0.27%   │││  │     │   │ │     ││         │  0x00007fd7e9234b7f: test   %eax,%eax
                   │││  │     │   │ │     ││         │  0x00007fd7e9234b81: jne    0x00007fd7e923542d  ;*ifeq
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@385 (line 271)
  0.07%    0.10%   │││  │     │   │ │     ││         │  0x00007fd7e9234b87: mov    0x34(%rsp),%r8d
  0.13%    0.15%   │││  │     │   │ │     ││         │  0x00007fd7e9234b8c: cmp    $0xffffffff,%r8d
                   │││  │     │╭  │ │     ││         │  0x00007fd7e9234b90: je     0x00007fd7e9234d91  ;*if_icmpeq
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@407 (line 279)
  0.34%    0.49%   │││  │     ││  │ │     ││         │  0x00007fd7e9234b96: mov    0x70(%rsp),%r10
  0.20%    0.29%   │││  │     ││  │ │     ││         │  0x00007fd7e9234b9b: mov    0x10(%r10),%r10d   ;*getfield end
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.11%    0.07%   │││  │     ││  │ │     ││         │  0x00007fd7e9234b9f: mov    0x28(%rsp),%r8d
  0.10%    0.17%   │││  │     ││  │ │     ││         │  0x00007fd7e9234ba4: add    %r11d,%r8d
  0.33%    0.47%   │││  │     ││  │ │     ││         │  0x00007fd7e9234ba7: mov    0x70(%rsp),%rcx
  0.26%    0.38%   │││  │     ││  │ │     ││         │  0x00007fd7e9234bac: add    0xc(%rcx),%r8d     ;*iadd
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.27%    0.45%   │││  │     ││  │ │     ││         │  0x00007fd7e9234bb0: cmp    %r10d,%r8d
                   │││  │     ││╭ │ │     ││         │  0x00007fd7e9234bb3: jge    0x00007fd7e9234dde  ;*if_icmpge
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.38%    0.50%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bb9: mov    0x14(%rcx),%ebp    ;*getfield str
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.32%    0.33%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bbc: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fd7e9235e8d
  2.26%    3.15%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bc1: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││  │     │││ │ │     ││         │  0x00007fd7e9234bc8: jne    0x00007fd7e92351e5
  0.76%    0.85%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bce: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.03%    0.04%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bd2: test   %r8d,%r8d
                   │││  │     │││ │ │     ││         │  0x00007fd7e9234bd5: jl     0x00007fd7e9235351  ;*iflt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@1 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.08%    0.04%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bdb: mov    0xc(%rbx),%ecx     ;*getfield value
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@6 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.16%    0.25%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bde: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@9 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
                   │││  │     │││ │ │     ││         │                                                ; implicit exception: dispatches to 0x00007fd7e9235ea1
  3.09%    3.50%   │││  │     │││ │ │     ││         │  0x00007fd7e9234be3: cmp    %ebp,%r8d
                   │││  │     │││ │ │     ││         │  0x00007fd7e9234be6: jge    0x00007fd7e9235471  ;*if_icmplt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@10 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.62%    0.48%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bec: cmp    %ebp,%r8d
                   │││  │     │││ │ │     ││         │  0x00007fd7e9234bef: jae    0x00007fd7e9235191
  0.06%    0.03%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bf5: lea    (%r12,%rcx,8),%r10
  0.01%    0.00%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bf9: movzwl 0x10(%r10,%r8,2),%ecx  ;*caload
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@27 (line 660)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.12%    0.09%   │││  │     │││ │ │     ││         │  0x00007fd7e9234bff: cmp    $0xd800,%ecx
                   │││  │     │││ │ │     ││         │  0x00007fd7e9234c05: jge    0x00007fd7e92354cd  ;*if_icmplt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.67%    0.52%   │││  │     │││ │ │     ││         │  0x00007fd7e9234c0b: shl    $0x3,%ecx          ;*ishl
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.03%    0.07%   │││  │     │││ │ │     ││         │  0x00007fd7e9234c0e: mov    %ecx,%edi
  0.01%            │││  │     │││ │ │     ││         │  0x00007fd7e9234c10: and    $0x7,%edi
  0.62%    0.51%   │││  │     │││ │ │     ││         │  0x00007fd7e9234c13: or     $0x1,%ecx
  0.19%    0.12%   │││  │     │││ │ │     ││         │  0x00007fd7e9234c16: or     $0x1,%edi          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.43%    0.43%   │││  │     │││ │ │     ││         │  0x00007fd7e9234c19: sar    $0x3,%ecx          ; OopMap{[16]=Oop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1436}
                   │││  │     │││ │ │     ││         │                                                ;*goto
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@445 (line 287)
  0.01%    0.01%   │││  │     │││ │ │     ││↗ ↗      │  0x00007fd7e9234c1c: test   %eax,0x174b93de(%rip)        # 0x00007fd8006ee000
                   │││  │     │││ │ │     │││ │      │                                                ;*goto
                   │││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@445 (line 287)
                   │││  │     │││ │ │     │││ │      │                                                ;   {poll}
  0.09%    0.04%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c22: mov    0x60(%rsp),%r10
  0.13%    0.15%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c27: mov    0x14(%r10),%r14d   ;*getfield re2
                   │││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@178 (line 241)
  0.46%    0.55%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c2b: mov    0x28(%r10),%r10d   ;*getfield matchcap
                   │││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@311 (line 264)
  0.01%    0.02%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c2f: mov    0x50(%rsp),%r8
  0.06%    0.09%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c34: shr    $0x3,%r8
  0.19%    0.13%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c38: mov    %r8d,0x2c(%rsp)
  0.48%    0.43%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c3d: mov    0x28(%rsp),%r8d
  0.01%    0.01%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c42: mov    %r8d,0x20(%rsp)
  0.06%    0.09%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c47: mov    %r11d,0x40(%rsp)
  0.15%    0.09%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c4c: mov    %edi,0x28(%rsp)
  0.46%    0.42%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c50: mov    0x34(%rsp),%r8d
  0.01%    0.02%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c55: mov    %r8d,0x24(%rsp)
  0.13%    0.04%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c5a: mov    %ecx,0x34(%rsp)
  0.19%    0.11%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c5e: mov    0x10(%rsp),%r11
  0.55%    0.39%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c63: mov    %r11,0x50(%rsp)
  0.02%    0.01%   │││  │     │││ │ │     │││ │      │  0x00007fd7e9234c68: vmovd  %r10d,%xmm4        ;*aload
                   │││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@145 (line 232)
  0.06%    0.06%   ↘││  │     │││ │ │     │││ │      │  0x00007fd7e9234c6d: mov    0x2c(%rsp),%r11d
  0.18%    0.17%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234c72: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fd7e9235e6d
  0.55%    0.33%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234c78: test   %r11d,%r11d
                    ││  │     │││╭│ │     │││ │      │  0x00007fd7e9234c7b: je     0x00007fd7e9234caa  ;*ifeq
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@150 (line 232)
  0.04%    0.01%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c7d: mov    0x3c(%rsp),%r11d
  0.09%    0.03%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c82: test   %r11d,%r11d
                    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c85: jne    0x00007fd7e9235569  ;*ifeq
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@157 (line 233)
  0.10%    0.12%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c8b: test   %eax,%eax
                    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c8d: jne    0x00007fd7e92355bd  ;*ifeq
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@171 (line 237)
  0.43%    0.14%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c93: mov    0x24(%r12,%r14,8),%r11d  ;*getfield prefix
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@181 (line 241)
                    ││  │     │││││ │     │││ │      │                                                ; implicit exception: dispatches to 0x00007fd7e9235eb1
  0.03%    0.00%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c98: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    ││  │     │││││ │     │││ │      │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@184 (line 241)
                    ││  │     │││││ │     │││ │      │                                                ; implicit exception: dispatches to 0x00007fd7e9235ec1
  0.07%    0.02%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234c9d: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││  │     │││││ │     │││ │      │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@184 (line 241)
                    ││  │     │││││ │     │││ │      │                                                ; implicit exception: dispatches to 0x00007fd7e9235ed1
  0.34%    0.22%    ││  │     │││││ │     │││ │      │  0x00007fd7e9234ca2: test   %ebp,%ebp
                    ││  │     │││││ │     │││ │      │  0x00007fd7e9234ca4: jne    0x00007fd7e9235521  ;*iload_3
                    ││  │     │││││ │     │││ │      │                                                ; - com.google.re2j.Machine::match@276 (line 258)
  0.47%    0.27%    ││  │     │││↘│ │     │││ │      │  0x00007fd7e9234caa: test   %eax,%eax
                    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cac: jne    0x00007fd7e92352b9  ;*ifne
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@288 (line 258)
  0.02%    0.01%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cb2: mov    0x60(%rsp),%r10
  0.03%    0.06%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cb7: movzbl 0x11(%r10),%ebx    ;*getfield captures
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@292 (line 261)
  0.27%    0.19%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cbc: test   %ebx,%ebx
                    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cbe: jne    0x00007fd7e92353a1  ;*ifeq
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@295 (line 261)
  0.41%    0.25%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cc4: vmovd  %xmm4,%r10d
  0.01%    0.02%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cc9: mov    %r10,%r8
  0.07%    0.04%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234ccc: shl    $0x3,%r8           ;*getfield matchcap
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@311 (line 264)
  0.24%    0.16%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cd0: mov    0x2c(%rsp),%r11d
  0.46%    0.21%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cd5: lea    (%r12,%r11,8),%r10  ;*aload
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@145 (line 232)
  0.02%    0.01%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cd9: mov    %r10,0x10(%rsp)
  0.09%    0.02%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cde: mov    0x78(%rsp),%rsi
  0.26%    0.13%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234ce3: mov    %r10,%rdx
  0.42%    0.12%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234ce6: mov    0x40(%rsp),%ecx
  0.02%    0.02%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cea: xor    %edi,%edi
  0.08%    0.02%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cec: mov    0x60(%rsp),%r10
  0.18%    0.16%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cf1: mov    %r10,(%rsp)
  0.33%    0.09%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cf5: mov    %ebx,0x8(%rsp)
  0.03%    0.00%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cf9: xchg   %ax,%ax
  0.07%    0.01%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234cfb: callq  0x00007fd7e9046020  ; OopMap{[16]=Oop [44]=NarrowOop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1664}
                    ││  │     │││ │ │     │││ │      │                                                ;*invokevirtual add
                    ││  │     │││ │ │     │││ │      │                                                ; - com.google.re2j.Machine::match@322 (line 264)
                    ││  │     │││ │ │     │││ │      │                                                ;   {optimized virtual_call}
  0.03%    0.02%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234d00: mov    0x24(%rsp),%edx
  0.44%    0.57%    ││  │     │││ │ │     │││ │      │  0x00007fd7e9234d04: test   %edx,%edx
                    ││  │     │││ ╰ │     │││ │      │  0x00007fd7e9234d06: jl     0x00007fd7e92348fd  ;*ifge
                    ││  │     │││   │     │││ │      │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││  │     │││   │     │││ │      │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.44%    0.32%    ││  │     │││   │     │││ │      │  0x00007fd7e9234d0c: xor    %r9d,%r9d          ;*iload_0
                    ││  │     │││   │     │││ │      │                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││  │     │││   │     │││ │      │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.05%    0.03%    │↘  │     │││   │     │││ │      │  0x00007fd7e9234d0f: cmp    $0xa,%edx
                    │   │     │││  ╭│     │││ │      │  0x00007fd7e9234d12: je     0x00007fd7e9234dea  ;*iload_1
                    │   │     │││  ││     │││ │      │                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │     │││  ││     │││ │      │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.19%    0.17%    │   │     │││  ││     │││ │↗     │  0x00007fd7e9234d18: mov    0x34(%rsp),%r11d
  0.20%    0.21%    │   │     │││  ││     │││ ││     │  0x00007fd7e9234d1d: test   %r11d,%r11d
                    │   │     │││  │╰     │││ ││     │  0x00007fd7e9234d20: jl     0x00007fd7e92348f4  ;*iload_1
                    │   │     │││  │      │││ ││     │                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │   │     │││  │      │││ ││     │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.24%    0.35%    ↘   │     │││  │      │││ ││     │  0x00007fd7e9234d26: cmp    $0xa,%r11d
                        │     │││  │ ╭    │││ ││     │  0x00007fd7e9234d2a: je     0x00007fd7e9234df3  ;*iload_0
                        │     │││  │ │    │││ ││     │                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                        │     │││  │ │    │││ ││     │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.04%    0.02%        │     │││  │ │    │││ ││↗    │  0x00007fd7e9234d30: mov    0x24(%rsp),%r10d
  0.21%    0.19%        │     │││  │ │    │││ │││    │  0x00007fd7e9234d35: add    $0xffffffbf,%r10d
  0.27%    0.21%        │     │││  │ │    │││ │││    │  0x00007fd7e9234d39: cmp    $0x1a,%r10d
                        │     │││  │ │╭   │││ │││    │  0x00007fd7e9234d3d: jb     0x00007fd7e9234d52  ;*if_icmple
                        │     │││  │ ││   │││ │││    │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ ││   │││ │││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ ││   │││ │││    │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.33%    0.29%        │     │││  │ ││   │││ │││    │  0x00007fd7e9234d3f: mov    0x24(%rsp),%r11d
  0.03%    0.02%        │     │││  │ ││   │││ │││    │  0x00007fd7e9234d44: add    $0xffffff9f,%r11d
  0.22%    0.22%        │     │││  │ ││   │││ │││    │  0x00007fd7e9234d48: cmp    $0x1a,%r11d
                        │     │││  │ ││╭  │││ │││    │  0x00007fd7e9234d4c: jae    0x00007fd7e9234dfc  ;*iconst_1
                        │     │││  │ │││  │││ │││    │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │││  │││ │││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │││  │││ │││    │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.23%    0.22%        │     │││  │ │↘│  │││ │││↗   │  0x00007fd7e9234d52: mov    $0x1,%ebp          ;*ireturn
                        │     │││  │ │ │  │││ ││││   │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │  │││ ││││   │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │ │  │││ ││││   │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.22%    0.23%        │     │││  │ │ │  │││ ││││↗  │  0x00007fd7e9234d57: mov    0x34(%rsp),%r10d
  0.09%    0.08%        │     │││  │ │ │  │││ │││││  │  0x00007fd7e9234d5c: add    $0xffffffbf,%r10d
  0.20%    0.26%        │     │││  │ │ │  │││ │││││  │  0x00007fd7e9234d60: cmp    $0x1a,%r10d
                        │     │││  │ │ │╭ │││ │││││  │  0x00007fd7e9234d64: jb     0x00007fd7e9234d79  ;*if_icmple
                        │     │││  │ │ ││ │││ │││││  │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ │ ││ │││ │││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││ │││ │││││  │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.25%    0.31%        │     │││  │ │ ││ │││ │││││  │  0x00007fd7e9234d66: mov    0x34(%rsp),%r11d
  0.26%    0.30%        │     │││  │ │ ││ │││ │││││  │  0x00007fd7e9234d6b: add    $0xffffff9f,%r11d
  0.04%    0.06%        │     │││  │ │ ││ │││ │││││  │  0x00007fd7e9234d6f: cmp    $0x1a,%r11d
                        │     │││  │ │ ││╭│││ │││││  │  0x00007fd7e9234d73: jae    0x00007fd7e9234e1f  ;*iconst_1
                        │     │││  │ │ ││││││ │││││  │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │ ││││││ │││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││││││ │││││  │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.20%    0.16%        │     │││  │ │ │↘││││ │││││↗ │  0x00007fd7e9234d79: mov    $0x1,%r10d         ;*ireturn
                        │     │││  │ │ │ ││││ ││││││ │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │ ││││ ││││││ │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │ ││││ ││││││ │                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.21%    0.28%        │     │││  │ │ │ ││││ ││││││↗│  0x00007fd7e9234d7f: cmp    %r10d,%ebp
                        │     │││  │ │ │ │╰││ ││││││││  0x00007fd7e9234d82: je     0x00007fd7e9234a06  ;*if_icmpeq
                        │     │││  │ │ │ │ ││ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │     │││  │ │ │ │ ││ ││││││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.02%    0.04%        │     │││  │ │ │ │ ││ ││││││││  0x00007fd7e9234d88: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │     │││  │ │ │ │ ││ ││││││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.06%    0.06%        │     │││  │ │ │ │ ╰│ ││││││││  0x00007fd7e9234d8c: jmpq   0x00007fd7e9234a0a
  0.01%    0.00%        │     │↘│  │ │ │ │  │ ││││││││  0x00007fd7e9234d91: mov    0x28(%rsp),%edi
  0.00%                 │     │ │  │ │ │ │  │ ││││││││  0x00007fd7e9234d95: mov    $0xffffffff,%ecx
                        │     │ │  │ │ │ │  ╰ ││││││││  0x00007fd7e9234d9a: jmpq   0x00007fd7e9234c1c
  0.01%    0.01%        │     ↘ │  │ │ │ │    ││││││││  0x00007fd7e9234d9f: test   %ebp,%ebp
                        │       │  │ │ │ │    ││││││││  0x00007fd7e9234da1: jne    0x00007fd7e9235c9d  ;*ifeq
                        │       │  │ │ │ │    ││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 169)
                        │       │  │ │ │ │    ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │    ││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
  0.00%    0.00%        │       │  │ │ │ │    ││││││││  0x00007fd7e9234da7: mov    0x50(%rsp),%r10
  0.00%                 │       │  │ │ │ │    ││││││││  0x00007fd7e9234dac: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007fd7e9235f95
  0.01%    0.00%        │       │  │ │ │ │    ││││││││  0x00007fd7e9234db1: test   %r11d,%r11d
                        │       │  │ │ │ │   ╭││││││││  0x00007fd7e9234db4: jne    0x00007fd7e9234dcf  ;*ifeq
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 88)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234db6: mov    0x1c(%r10),%ebp    ;*getfield pcs
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@24 (line 92)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234dba: movb   $0x1,0x18(%r10)    ;*putfield empty
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 90)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234dbf: mov    %r12,0x10(%r10)    ;*putfield pcsl
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@20 (line 91)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234dc3: mov    %r12d,0xc(%r10)    ;*putfield size
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 89)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234dc7: test   %ebp,%ebp
                        │       │  │ │ │ │   │││││││││  0x00007fd7e9234dc9: jne    0x00007fd7e9235d39  ;*if_icmpne
                        │       │  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@12 (line 202)
  0.01%                 │       │  │ │ │ │   ↘││││││││  0x00007fd7e9234dcf: add    $0xc0,%rsp
  0.00%                 │       │  │ │ │ │    ││││││││  0x00007fd7e9234dd6: pop    %rbp
  0.00%    0.01%        │       │  │ │ │ │    ││││││││  0x00007fd7e9234dd7: test   %eax,0x174b9223(%rip)        # 0x00007fd8006ee000
                        │       │  │ │ │ │    ││││││││                                                ;   {poll_return}
           0.00%        │       │  │ │ │ │    ││││││││  0x00007fd7e9234ddd: retq   
                        │       ↘  │ │ │ │    ││││││││  0x00007fd7e9234dde: mov    $0xffffffff,%ecx
                        │          │ │ │ │    ││││││││  0x00007fd7e9234de3: xor    %edi,%edi
                        │          │ │ │ │    ╰│││││││  0x00007fd7e9234de5: jmpq   0x00007fd7e9234c1c
  0.01%                 │          ↘ │ │ │     │││││││  0x00007fd7e9234dea: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                        │            │ │ │     │││││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
                        │            │ │ │     ╰││││││  0x00007fd7e9234dee: jmpq   0x00007fd7e9234d18
           0.00%        │            ↘ │ │      ││││││  0x00007fd7e9234df3: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                        │              │ │      ││││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
                        │              │ │      ╰│││││  0x00007fd7e9234df7: jmpq   0x00007fd7e9234d30
  0.00%    0.01%        │              ↘ │       │││││  0x00007fd7e9234dfc: mov    0x24(%rsp),%r10d
  0.05%    0.06%        │                │       │││││  0x00007fd7e9234e01: add    $0xffffffd0,%r10d
  0.00%                 │                │       │││││  0x00007fd7e9234e05: cmp    $0xa,%r10d
                        │                │       ╰││││  0x00007fd7e9234e09: jb     0x00007fd7e9234d52  ;*if_icmple
                        │                │        ││││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                │        ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        ││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.04%    0.04%        │                │        ││││  0x00007fd7e9234e0f: cmp    $0x5f,%edx
                        │                │        ││││  0x00007fd7e9234e12: je     0x00007fd7e9235d49  ;*if_icmpne
                        │                │        ││││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                │        ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        ││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.05%    0.04%        │                │        ││││  0x00007fd7e9234e18: xor    %ebp,%ebp
  0.07%    0.04%        │                │        ╰│││  0x00007fd7e9234e1a: jmpq   0x00007fd7e9234d57
  0.08%    0.04%        │                ↘         │││  0x00007fd7e9234e1f: mov    0x34(%rsp),%r10d
  0.09%    0.10%        │                          │││  0x00007fd7e9234e24: add    $0xffffffd0,%r10d
  0.04%    0.06%        │                          │││  0x00007fd7e9234e28: cmp    $0xa,%r10d
                        │                          ╰││  0x00007fd7e9234e2c: jb     0x00007fd7e9234d79  ;*if_icmple
                        │                           ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                           ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.01%    0.01%        │                           ││  0x00007fd7e9234e32: mov    0x34(%rsp),%r11d
  0.02%    0.01%        │                           ││  0x00007fd7e9234e37: cmp    $0x5f,%r11d
                        │                           ││  0x00007fd7e9234e3b: je     0x00007fd7e9235d8d  ;*if_icmpne
                        │                           ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                           ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.07%    0.05%        │                           ││  0x00007fd7e9234e41: xor    %r10d,%r10d
  0.03%    0.03%        │                           ╰│  0x00007fd7e9234e44: jmpq   0x00007fd7e9234d7f
                        ↘                            │  0x00007fd7e9234e49: mov    0x60(%rsp),%r8
                                                     │  0x00007fd7e9234e4e: movb   $0x1,0x10(%r8)     ;*putfield matched
                                                     │                                                ; - com.google.re2j.Machine::step@171 (line 330)
                                                     │                                                ; - com.google.re2j.Machine::match@363 (line 267)
                                                     │  0x00007fd7e9234e53: test   %eax,%eax
                                                     ╰  0x00007fd7e9234e55: jne    0x00007fd7e9234b1b  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::step@176 (line 331)
                                                                                                      ; - com.google.re2j.Machine::match@363 (line 267)
                                                        0x00007fd7e9234e5b: mov    0x2c(%rsp),%r10d
  0.00%                                                 0x00007fd7e9234e60: movzbl 0x18(%r12,%r10,8),%r8d
                                                        0x00007fd7e9234e66: test   %r8d,%r8d
                                                        0x00007fd7e9234e69: jne    0x00007fd7e9234e88  ;*ifeq
                                                                                                      ; - com.google.re2j.Machine$Queue::clear@4 (line 88)
                                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                                                                                                      ; - com.google.re2j.Machine::step@183 (line 333)
                                                                                                      ; - com.google.re2j.Machine::match@363 (line 267)
                                                        0x00007fd7e9234e6b: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                                                                                                      ; - com.google.re2j.Machine$Queue::clear@20 (line 91)
                                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                                                                                                      ; - com.google.re2j.Machine::step@183 (line 333)
....................................................................................................
 60.90%   63.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 513 (757 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007fd7e921d8a0: mov    0x8(%rsi),%r10d
                     0x00007fd7e921d8a4: shl    $0x3,%r10
                     0x00007fd7e921d8a8: cmp    %r10,%rax
                     0x00007fd7e921d8ab: jne    0x00007fd7e9045e20  ;   {runtime_call}
                     0x00007fd7e921d8b1: data16 xchg %ax,%ax
                     0x00007fd7e921d8b4: nopl   0x0(%rax,%rax,1)
                     0x00007fd7e921d8bc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.69%    0.24%     0x00007fd7e921d8c0: mov    %eax,-0x14000(%rsp)
  0.12%    0.01%     0x00007fd7e921d8c7: push   %rbp
  0.29%    0.08%     0x00007fd7e921d8c8: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 256)
  0.49%    0.08%     0x00007fd7e921d8cc: vmovd  %r9d,%xmm5
  0.10%    0.04%     0x00007fd7e921d8d1: vmovq  %r8,%xmm3
  0.28%    0.05%     0x00007fd7e921d8d6: vmovq  %rsi,%xmm2
  0.44%    0.18%     0x00007fd7e921d8db: mov    %ecx,%eax
  0.02%    0.01%     0x00007fd7e921d8dd: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 256)
  0.05%    0.09%     0x00007fd7e921d8e0: mov    0x10(%rdx),%r9     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
                                                                   ; implicit exception: dispatches to 0x00007fd7e921e099
  0.23%    0.05%     0x00007fd7e921d8e4: cmp    $0x40,%ecx
                     0x00007fd7e921d8e7: jge    0x00007fd7e921df15  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.47%    0.60%     0x00007fd7e921d8ed: mov    $0x1,%r10d
  0.02%    0.01%     0x00007fd7e921d8f3: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.83%    0.80%     0x00007fd7e921d8f6: mov    %r10,%r11
  0.04%    0.02%     0x00007fd7e921d8f9: and    %r9,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.11%    0.08%     0x00007fd7e921d8fc: xor    %r8d,%r8d
  0.24%    0.31%     0x00007fd7e921d8ff: test   %r11,%r11
                     0x00007fd7e921d902: jne    0x00007fd7e921dd55  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.41%    0.25%     0x00007fd7e921d908: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.02%    0.06%     0x00007fd7e921d90c: mov    0x2c(%rsi),%r11d   ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@15 (line 260)
  0.08%    0.08%     0x00007fd7e921d910: or     %r9,%r10           ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.25%    0.26%     0x00007fd7e921d913: mov    %r10,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.51%    0.48%     0x00007fd7e921d917: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fd7e921e0ad
  0.02%    0.05%     0x00007fd7e921d91c: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fd7e921d923: jne    0x00007fd7e921dc31
  0.04%    0.07%     0x00007fd7e921d929: lea    (%r12,%r11,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.22%    0.18%     0x00007fd7e921d92d: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.45%    0.37%     0x00007fd7e921d931: cmp    $0x40,%ecx
                     0x00007fd7e921d934: jge    0x00007fd7e921df49  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.03%    0.02%     0x00007fd7e921d93a: mov    $0x1,%r11d
  0.07%    0.10%     0x00007fd7e921d940: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.64%    0.75%     0x00007fd7e921d943: mov    %r10,%rcx
  0.07%    0.07%     0x00007fd7e921d946: and    %r11,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.18%    0.21%     0x00007fd7e921d949: test   %rcx,%rcx
                     0x00007fd7e921d94c: jne    0x00007fd7e921dd9d  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.44%    0.31%     0x00007fd7e921d952: or     %r11,%r10          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.04%    0.04%     0x00007fd7e921d955: mov    %r10,0x10(%rdx)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.10%    0.07%     0x00007fd7e921d959: mov    0x88(%rsp),%r11d
  0.27%    0.24%     0x00007fd7e921d961: test   %r11d,%r11d
                     0x00007fd7e921d964: jne    0x00007fd7e921df85  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@16 (line 148)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.45%    0.40%     0x00007fd7e921d96a: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.02%    0.02%     0x00007fd7e921d96d: mov    0x20(%rdx),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.05%    0.12%     0x00007fd7e921d970: mov    %ecx,%esi
  0.23%    0.23%     0x00007fd7e921d972: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.43%    0.38%     0x00007fd7e921d974: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.01%    0.02%     0x00007fd7e921d977: mov    0xc(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007fd7e921e0d5
  0.07%    0.11%     0x00007fd7e921d97c: cmp    %ebx,%ecx
                  ╭  0x00007fd7e921d97e: jae    0x00007fd7e921dbb6
  0.25%    0.31%  │  0x00007fd7e921d984: vmovd  %esi,%xmm0
  0.38%    0.48%  │  0x00007fd7e921d988: mov    %edi,%r13d
  0.03%    0.05%  │  0x00007fd7e921d98b: mov    %ecx,%r14d
  0.07%    0.11%  │  0x00007fd7e921d98e: mov    %r9,%rcx
  0.21%    0.33%  │  0x00007fd7e921d991: mov    0x8(%r12,%rdi,8),%r9d
  0.45%    0.65%  │  0x00007fd7e921d996: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fd7e921d99d: jne    0x00007fd7e921dc65  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.03%    0.05%  │  0x00007fd7e921d9a3: vmovq  %xmm2,%r11
  0.07%    0.09%  │  0x00007fd7e921d9a8: mov    0x34(%r11),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 261)
  0.23%    0.25%  │  0x00007fd7e921d9ac: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.40%    0.53%  │  0x00007fd7e921d9b0: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.01%    0.02%  │  0x00007fd7e921d9b4: lea    0x10(%r9,%r14,4),%r11
  0.07%    0.05%  │  0x00007fd7e921d9b9: mov    %ecx,(%r11)
  0.25%    0.27%  │  0x00007fd7e921d9bc: shr    $0x9,%r11
  0.40%    0.39%  │  0x00007fd7e921d9c0: movabs $0x7fd7f90f6000,%rdi
  0.02%    0.03%  │  0x00007fd7e921d9ca: mov    %r12b,(%rdi,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.09%    0.10%  │  0x00007fd7e921d9ce: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd7e921e0f1
  0.17%    0.25%  │  0x00007fd7e921d9d3: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fd7e921d9da: jne    0x00007fd7e921dca5
  0.36%    0.43%  │  0x00007fd7e921d9e0: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.03%    0.02%  │  0x00007fd7e921d9e4: vmovq  %r11,%xmm1
  0.06%    0.08%  │  0x00007fd7e921d9e9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.74%    0.65%  │  0x00007fd7e921d9ed: cmp    $0x40,%ecx
                  │  0x00007fd7e921d9f0: jge    0x00007fd7e921dfc1  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.41%    0.31%  │  0x00007fd7e921d9f6: mov    $0x1,%r11d
  0.02%    0.02%  │  0x00007fd7e921d9fc: shl    %cl,%r11           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.83%    0.62%  │  0x00007fd7e921d9ff: mov    %r10,%rcx
  0.02%    0.01%  │  0x00007fd7e921da02: and    %r11,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.10%    0.07%  │  0x00007fd7e921da05: test   %rcx,%rcx
                  │  0x00007fd7e921da08: jne    0x00007fd7e921dded  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.36%    0.26%  │  0x00007fd7e921da0e: or     %r11,%r10          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.34%    0.22%  │  0x00007fd7e921da11: mov    %r10,%rsi
  0.06%    0.02%  │  0x00007fd7e921da14: mov    %r10,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.17%    0.17%  │  0x00007fd7e921da18: mov    %r14d,%r11d
  0.21%    0.23%  │  0x00007fd7e921da1b: add    $0x2,%r11d
  0.29%    0.36%  │  0x00007fd7e921da1f: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.04%    0.02%  │  0x00007fd7e921da23: mov    %r14d,%r10d
  0.17%    0.19%  │  0x00007fd7e921da26: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.29%    0.26%  │  0x00007fd7e921da2a: cmp    %ebx,%r10d
                  │  0x00007fd7e921da2d: jae    0x00007fd7e921dbf5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.37%    0.25%  │  0x00007fd7e921da33: vmovq  %xmm2,%r11
  0.04%    0.02%  │  0x00007fd7e921da38: mov    0x38(%r11),%ebp    ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@55 (line 262)
  0.18%    0.18%  │  0x00007fd7e921da3c: vmovq  %xmm1,%r11
  0.21%    0.15%  │  0x00007fd7e921da41: shr    $0x3,%r11
  0.33%    0.33%  │  0x00007fd7e921da45: movslq %r14d,%rcx
  0.02%    0.02%  │  0x00007fd7e921da48: lea    (%r9,%rcx,4),%rbx  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.20%    0.26%  │  0x00007fd7e921da4c: mov    %rbx,%rcx
  0.27%    0.25%  │  0x00007fd7e921da4f: add    $0x14,%rcx
  0.25%    0.37%  │  0x00007fd7e921da53: mov    %r11d,(%rcx)
  0.05%    0.04%  │  0x00007fd7e921da56: mov    %rcx,%r11
  0.25%    0.17%  │  0x00007fd7e921da59: shr    $0x9,%r11
  0.21%    0.26%  │  0x00007fd7e921da5d: mov    %r12b,(%rdi,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.30%    0.39%  │  0x00007fd7e921da61: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fd7e921e115
  0.04%    0.01%  │  0x00007fd7e921da66: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fd7e921da6d: jne    0x00007fd7e921dcd1
  0.15%    0.26%  │  0x00007fd7e921da73: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.18%    0.22%  │  0x00007fd7e921da77: mov    0x18(%r13),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.33%    0.29%  │  0x00007fd7e921da7b: cmp    $0x40,%ecx
                  │  0x00007fd7e921da7e: jge    0x00007fd7e921dffd  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.01%    0.02%  │  0x00007fd7e921da84: mov    $0x1,%r11d
  0.23%    0.18%  │  0x00007fd7e921da8a: shl    %cl,%r11           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.65%    0.43%  │  0x00007fd7e921da8d: mov    %rsi,%rcx
  0.15%    0.21%  │  0x00007fd7e921da90: and    %r11,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.22%    0.31%  │  0x00007fd7e921da93: test   %rcx,%rcx
                  │  0x00007fd7e921da96: jne    0x00007fd7e921de3d  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.33%    0.34%  │  0x00007fd7e921da9c: or     %r11,%rsi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.03%    0.04%  │  0x00007fd7e921da9f: mov    %rsi,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.16%    0.20%  │  0x00007fd7e921daa3: vmovq  %xmm2,%r11
  0.20%    0.29%  │  0x00007fd7e921daa8: mov    0x3c(%r11),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@75 (line 263)
  0.28%    0.42%  │  0x00007fd7e921daac: mov    %rbx,%r11
  0.04%    0.01%  │  0x00007fd7e921daaf: add    $0x18,%r11
  0.22%    0.15%  │  0x00007fd7e921dab3: mov    %r13,%rcx
  0.22%    0.18%  │  0x00007fd7e921dab6: shr    $0x3,%rcx
  0.32%    0.41%  │  0x00007fd7e921daba: mov    %ecx,(%r11)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.02%    0.05%  │  0x00007fd7e921dabd: mov    %r11,%rcx
  0.18%    0.16%  │  0x00007fd7e921dac0: mov    %r14d,%r11d
  0.22%    0.26%  │  0x00007fd7e921dac3: add    $0x3,%r11d
  0.29%    0.31%  │  0x00007fd7e921dac7: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.03%    0.03%  │  0x00007fd7e921dacb: shr    $0x9,%rcx
  0.22%    0.16%  │  0x00007fd7e921dacf: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.25%    0.27%  │  0x00007fd7e921dad3: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fd7e921e139
  0.29%    0.29%  │  0x00007fd7e921dad8: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fd7e921dade: jne    0x00007fd7e921dcfd
  0.03%    0.03%  │  0x00007fd7e921dae4: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.17%    0.10%  │  0x00007fd7e921dae8: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.24%    0.26%  │  0x00007fd7e921daec: cmp    $0x40,%ecx
                  │  0x00007fd7e921daef: jge    0x00007fd7e921e039  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.36%    0.43%  │  0x00007fd7e921daf5: mov    $0x1,%ebp
  0.02%    0.02%  │  0x00007fd7e921dafa: shl    %cl,%rbp           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.74%    0.72%  │  0x00007fd7e921dafd: mov    %rbp,%rcx
  0.03%    0.04%  │  0x00007fd7e921db00: mov    %rsi,%rbp
  0.23%    0.23%  │  0x00007fd7e921db03: and    %rcx,%rbp          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.21%    0.30%  │  0x00007fd7e921db06: test   %rbp,%rbp
                  │  0x00007fd7e921db09: jne    0x00007fd7e921de8d  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.29%    0.36%  │  0x00007fd7e921db0f: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.04%    0.03%  │  0x00007fd7e921db13: vmovq  %xmm2,%r10
  0.21%    0.09%  │  0x00007fd7e921db18: mov    0x40(%r10),%r10d   ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 264)
  0.26%    0.25%  │  0x00007fd7e921db1c: vmovd  %r10d,%xmm0
  0.26%    0.23%  │  0x00007fd7e921db21: mov    %rbx,%r10
  0.04%    0.01%  │  0x00007fd7e921db24: add    $0x1c,%r10         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.20%    0.13%  │  0x00007fd7e921db28: or     %rcx,%rsi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.27%    0.18%  │  0x00007fd7e921db2b: mov    %rsi,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.35%    0.38%  │  0x00007fd7e921db2f: shr    $0x3,%r11
  0.05%    0.02%  │  0x00007fd7e921db33: mov    %r11d,(%r10)
  0.22%    0.15%  │  0x00007fd7e921db36: shr    $0x9,%r10
  0.25%    0.27%  │  0x00007fd7e921db3a: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.29%    0.30%  │  0x00007fd7e921db3e: vmovd  %xmm0,%r10d
  0.02%    0.02%  │  0x00007fd7e921db43: mov    0x8(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007fd7e921e15d
  0.22%    0.19%  │  0x00007fd7e921db48: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fd7e921db4f: jne    0x00007fd7e921dd29
  0.22%    0.20%  │  0x00007fd7e921db55: vmovd  %xmm0,%r10d
  0.31%    0.28%  │  0x00007fd7e921db5a: shl    $0x3,%r10          ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.02%    0.02%  │  0x00007fd7e921db5e: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.20%    0.26%  │  0x00007fd7e921db62: cmp    $0x40,%ecx
                  │  0x00007fd7e921db65: jge    0x00007fd7e921e075  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.25%    0.28%  │  0x00007fd7e921db6b: mov    $0x1,%r11d
  0.31%    0.39%  │  0x00007fd7e921db71: shl    %cl,%r11           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.38%    0.39%  │  0x00007fd7e921db74: mov    %rsi,%rcx
  0.32%    0.34%  │  0x00007fd7e921db77: and    %r11,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.02%    0.02%  │  0x00007fd7e921db7a: test   %rcx,%rcx
                  │  0x00007fd7e921db7d: jne    0x00007fd7e921dedd  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.21%    0.22%  │  0x00007fd7e921db83: or     %r11,%rsi
  0.23%    0.22%  │  0x00007fd7e921db86: mov    %rsi,0x10(%rdx)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.27%    0.34%  │  0x00007fd7e921db8a: add    $0x20,%rbx
  0.02%    0.01%  │  0x00007fd7e921db8e: shr    $0x3,%r10
  0.21%    0.22%  │  0x00007fd7e921db92: mov    %r10d,(%rbx)       ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.27%    0.32%  │  0x00007fd7e921db95: mov    %rbx,%r10
  0.29%    0.38%  │  0x00007fd7e921db98: add    $0x5,%r14d
  0.02%    0.02%  │  0x00007fd7e921db9c: mov    %r14d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.24%    0.31%  │  0x00007fd7e921dba0: shr    $0x9,%r10
  0.20%    0.32%  │  0x00007fd7e921dba4: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.28%    0.28%  │  0x00007fd7e921dba8: xor    %eax,%eax
  0.02%    0.01%  │  0x00007fd7e921dbaa: add    $0x70,%rsp
  0.21%    0.15%  │  0x00007fd7e921dbae: pop    %rbp
  0.23%    0.10%  │  0x00007fd7e921dbaf: test   %eax,0x174d044b(%rip)        # 0x00007fd8006ee000
                  │                                                ;   {poll_return}
  0.35%    0.25%  │  0x00007fd7e921dbb5: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
                  ↘  0x00007fd7e921dbb6: mov    $0xffffffe4,%esi
                     0x00007fd7e921dbbb: vmovq  %xmm2,%rbp
                     0x00007fd7e921dbc0: mov    %rdx,(%rsp)
                     0x00007fd7e921dbc4: mov    %eax,0x88(%rsp)
                     0x00007fd7e921dbcb: vmovsd %xmm3,0x8(%rsp)
                     0x00007fd7e921dbd1: vmovss %xmm5,0x10(%rsp)
....................................................................................................
 35.24%   33.82%  <total for region 2>

....[Hottest Regions]...............................................................................
 60.90%   63.18%         C2, level 4  com.google.re2j.Machine::match, version 543 (1597 bytes) 
 35.24%   33.82%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 513 (757 bytes) 
  0.58%    0.57%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.17%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 561 (217 bytes) 
  0.13%    0.14%         C2, level 4  com.google.re2j.Pattern::find, version 561 (28 bytes) 
  0.11%    0.07%         C2, level 4  java.util.Collections::shuffle, version 569 (91 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Pattern::find, version 561 (210 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 561 (28 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.10%    0.04%              [vdso]  [unknown] (16 bytes) 
  0.09%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 561 (0 bytes) 
  0.09%    0.10%         C2, level 4  com.google.re2j.Machine::match, version 543 (265 bytes) 
  0.08%    0.01%         C2, level 4  java.util.Collections::shuffle, version 569 (147 bytes) 
  0.06%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 561 (8 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (24 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 561 (62 bytes) 
  0.04%                       [vdso]  [unknown] (44 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  1.84%    1.76%  <...other 378 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 61.01%   63.28%         C2, level 4  com.google.re2j.Machine::match, version 543 
 35.24%   33.82%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 513 
  1.66%    1.51%   [kernel.kallsyms]  [unknown] 
  0.82%    0.38%         C2, level 4  com.google.re2j.Pattern::find, version 561 
  0.25%    0.10%         C2, level 4  java.util.Collections::shuffle, version 569 
  0.16%    0.04%              [vdso]  [unknown] 
  0.12%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 604 
  0.07%    0.06%      hsdis-amd64.so  [unknown] 
  0.04%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.04%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%        libc-2.26.so  __strchrnul_avx2 
  0.02%    0.00%        libc-2.26.so  __clock_gettime 
  0.02%    0.00%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.00%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.01%    0.01%           libjvm.so  _ZN12stringStream5writeEPKcm 
  0.01%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.36%    0.20%  <...other 58 warm methods...>
....................................................................................................
 99.99%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.46%   97.61%         C2, level 4
  1.66%    1.51%   [kernel.kallsyms]
  0.34%    0.44%           libjvm.so
  0.22%    0.26%        libc-2.26.so
  0.16%    0.04%              [vdso]
  0.07%    0.06%      hsdis-amd64.so
  0.05%    0.04%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%    0.01%        runtime stub
  0.00%             Unknown, level 0
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  21808.037 ± 508.931  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
