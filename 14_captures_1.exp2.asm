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
# Warmup Iteration   1: 11113.920 ops/s
# Warmup Iteration   2: 25422.662 ops/s
# Warmup Iteration   3: 24698.264 ops/s
# Warmup Iteration   4: 25524.796 ops/s
# Warmup Iteration   5: 25806.573 ops/s
# Warmup Iteration   6: 25422.409 ops/s
# Warmup Iteration   7: 24326.197 ops/s
# Warmup Iteration   8: 24830.432 ops/s
# Warmup Iteration   9: 24547.999 ops/s
# Warmup Iteration  10: 25673.324 ops/s
# Warmup Iteration  11: 25290.417 ops/s
# Warmup Iteration  12: 25340.997 ops/s
# Warmup Iteration  13: 24606.204 ops/s
# Warmup Iteration  14: 24003.019 ops/s
# Warmup Iteration  15: 22901.918 ops/s
# Warmup Iteration  16: 23970.709 ops/s
# Warmup Iteration  17: 25036.857 ops/s
# Warmup Iteration  18: 25317.310 ops/s
# Warmup Iteration  19: 25502.076 ops/s
# Warmup Iteration  20: 26141.961 ops/s
Iteration   1: 25455.306 ops/s
Iteration   2: 25844.685 ops/s
Iteration   3: 26108.949 ops/s
Iteration   4: 26201.471 ops/s
Iteration   5: 26264.469 ops/s
Iteration   6: 24962.138 ops/s
Iteration   7: 21348.409 ops/s
Iteration   8: 26307.489 ops/s
Iteration   9: 25101.303 ops/s
Iteration  10: 26205.597 ops/s
Iteration  11: 24905.960 ops/s
Iteration  12: 24857.328 ops/s
Iteration  13: 24723.847 ops/s
Iteration  14: 25130.413 ops/s
Iteration  15: 25107.539 ops/s
Iteration  16: 24740.879 ops/s
Iteration  17: 24720.969 ops/s
Iteration  18: 25693.139 ops/s
Iteration  19: 21452.321 ops/s
Iteration  20: 25040.280 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  25008.625 ±(99.9%) 1179.367 ops/s [Average]
  (min, avg, max) = (21348.409, 25008.625, 26307.489), stdev = 1358.161
  CI (99.9%): [23829.257, 26187.992] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 206541 total address lines.
Perf output processed (skipped 23.697 seconds):
 Column 1: cycles (20403 events)
 Column 2: instructions (20438 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 581 (1561 bytes) 

                                                        0x00007f10252611fb: mov    %r9d,0x20(%rsp)
                                                        0x00007f1025261200: sar    $0x3,%r10d         ;*ishr
                                                                                                      ; - com.google.re2j.Machine::match@68 (line 194)
                                                        0x00007f1025261204: vmovd  %r10d,%xmm2
                                                        0x00007f1025261209: mov    %ecx,%r10d
                                                        0x00007f102526120c: cmp    $0xfffffff8,%r10d
                                                        0x00007f1025261210: je     0x00007f1025262250  ;*if_icmpeq
                                                                                                      ; - com.google.re2j.Machine::match@88 (line 198)
                                                        0x00007f1025261216: vmovd  %xmm0,%r9d
                                                        0x00007f102526121b: add    0x20(%rsp),%r9d
  0.00%    0.02%                                        0x00007f1025261220: add    %esi,%r9d          ;*iadd
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.02%    0.00%                                        0x00007f1025261223: cmp    %r14d,%r9d
                                                        0x00007f1025261226: jge    0x00007f1025261898  ;*if_icmpge
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%                                        0x00007f102526122c: test   %r9d,%r9d
                                                        0x00007f102526122f: jl     0x00007f1025262401  ;*iflt
                                                                                                      ; - java.lang.String::charAt@1 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f1025261235: cmp    0x14(%rsp),%r9d
                                                        0x00007f102526123a: jge    0x00007f1025262575  ;*if_icmplt
                                                                                                      ; - java.lang.String::charAt@10 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007f1025261240: cmp    0x14(%rsp),%r9d
                                                        0x00007f1025261245: jae    0x00007f10252622e1
                                                        0x00007f102526124b: movzwl 0x10(%r11,%r9,2),%ecx  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007f1025261251: cmp    $0xd800,%ecx
                                                        0x00007f1025261257: jge    0x00007f10252625b1  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007f102526125d: shl    $0x3,%ecx          ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f1025261260: mov    %ecx,%r11d
                                                        0x00007f1025261263: and    $0x7,%r11d
           0.01%                                        0x00007f1025261267: or     $0x1,%ecx
                                                        0x00007f102526126a: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%                                        0x00007f102526126e: sar    $0x3,%ecx          ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@111 (line 201)
                                                        0x00007f1025261271: vmovd  %xmm0,%r8d
                                                        0x00007f1025261276: test   %r8d,%r8d
                                                        0x00007f1025261279: jne    0x00007f10252623cd  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::match@115 (line 204)
                                                        0x00007f102526127f: vmovd  %xmm2,%r8d
  0.00%    0.01%                                        0x00007f1025261284: test   %r8d,%r8d
                                                        0x00007f1025261287: jl     0x00007f102526188d  ;*ifge
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f102526128d: mov    $0x5,%r10d         ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f1025261293: cmp    $0xa,%r8d
                                                        0x00007f1025261297: je     0x00007f10252618a5  ;*iload_0
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f102526129d: mov    %r8d,%ebx
  0.00%    0.00%                                        0x00007f10252612a0: add    $0xffffffbf,%ebx
                                                        0x00007f10252612a3: cmp    $0x1a,%ebx
                  ╭                                     0x00007f10252612a6: jb     0x00007f10252612b9  ;*if_icmple
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                     0x00007f10252612a8: mov    %r8d,%r9d
                  │                                     0x00007f10252612ab: add    $0xffffff9f,%r9d
  0.01%           │                                     0x00007f10252612af: cmp    $0x1a,%r9d
                  │                                     0x00007f10252612b3: jae    0x00007f10252618ae  ;*iconst_1
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                                     0x00007f10252612b9: or     $0x10,%r10d        ;*iload_2
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.01%                                        0x00007f10252612bd: mov    %r11d,0x30(%rsp)
  0.00%    0.00%                                        0x00007f10252612c2: mov    %ecx,0x28(%rsp)
  0.02%    0.02%                                        0x00007f10252612c6: mov    %r8d,0x24(%rsp)
  0.00%                                                 0x00007f10252612cb: mov    0x6c(%rsp),%r11d
                                                        0x00007f10252612d0: and    $0x4,%r11d         ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@147 (line 212)
                                                        0x00007f10252612d4: mov    %r11d,0x34(%rsp)
  0.01%    0.00%                                        0x00007f10252612d9: mov    %r13,%r11
                                                        0x00007f10252612dc: shl    $0x3,%r11          ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                                        0x00007f10252612e0: mov    %r11,0x50(%rsp)
                                                        0x00007f10252612e5: xor    %eax,%eax
           0.00%                                        0x00007f10252612e7: xor    %r11d,%r11d
                                                        0x00007f10252612ea: mov    %r11d,0x38(%rsp)
                   ╭                                    0x00007f10252612ef: jmpq   0x00007f1025261615
  0.44%    0.64%   │   ↗↗↗                              0x00007f10252612f4: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │   │││                                                                            ; - com.google.re2j.Machine::step@191 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.45%    0.33%   │   │││                              0x00007f10252612f9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1025262829
  0.20%    0.11%   │   │││                              0x00007f10252612fe: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │   │││                              0x00007f1025261304: jne    0x00007f102526203d
  0.13%    0.08%   │   │││                              0x00007f102526130a: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%   │   │││                              0x00007f102526130e: vmovq  %r9,%xmm1
           0.01%   │   │││                              0x00007f1025261313: mov    0x18(%r9),%ecx     ;*getfield pc
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.00%   │   │││                              0x00007f1025261317: vmovd  %ecx,%xmm2
  0.12%    0.12%   │   │││                              0x00007f102526131b: mov    0x50(%rsp),%r9
  0.00%    0.00%   │   │││                              0x00007f1025261320: mov    0x10(%r9),%r9      ;*getfield pcsl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
                   │   │││                                                                            ; implicit exception: dispatches to 0x00007f1025262845
  0.01%    0.01%   │   │││                              0x00007f1025261324: cmp    $0x40,%ecx
                   │   │││                              0x00007f1025261327: jg     0x00007f10252620fd  ;*if_icmpgt
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.00%   │   │││                              0x00007f102526132d: mov    $0x1,%edi
  0.15%    0.09%   │   │││                              0x00007f1025261332: shl    %cl,%rdi           ;*lshl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.14%   │   │││                              0x00007f1025261335: mov    %r9,%rcx
  0.03%    0.01%   │   │││                              0x00007f1025261338: and    %rdi,%rcx          ;*land
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.06%   │   │││                              0x00007f102526133b: test   %rcx,%rcx
                   │   │││                              0x00007f102526133e: jne    0x00007f1025262169  ;*ifeq
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.10%   │   │││                              0x00007f1025261344: vmovd  %xmm2,%ecx
  0.02%    0.02%   │   │││                              0x00007f1025261348: cmp    $0x40,%ecx
                   │   │││                              0x00007f102526134b: jge    0x00007f10252621d1  ;*if_icmpge
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.09%   │   │││                              0x00007f1025261351: mov    0x50(%rsp),%rcx
  0.00%    0.01%   │   │││                              0x00007f1025261356: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.02%   │   │││                              0x00007f102526135a: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.02%   │   │││                              0x00007f102526135d: vmovd  %ecx,%xmm3
  0.08%    0.09%   │   │││                              0x00007f1025261361: mov    0x50(%rsp),%rcx
  0.00%    0.01%   │   │││                              0x00007f1025261366: mov    0xc(%rcx),%ebp     ;*getfield size
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.04%   │   │││                              0x00007f1025261369: or     %r9,%rdi
  0.00%    0.02%   │   │││                              0x00007f102526136c: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.08%   │   │││                              0x00007f1025261370: mov    %ebp,%r9d
  0.01%    0.02%   │   │││                              0x00007f1025261373: inc    %r9d
  0.03%    0.04%   │   │││                              0x00007f1025261376: mov    %r9d,0xc(%rcx)     ;*putfield size
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.02%   │   │││                              0x00007f102526137a: vmovd  %xmm3,%r9d
  0.09%    0.09%   │   │││                              0x00007f102526137f: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f1025262859
  0.32%    0.23%   │   │││                              0x00007f1025261384: cmp    %ecx,%ebp
                   │   │││                              0x00007f1025261386: jae    0x00007f1025261fd1
  0.22%    0.22%   │   │││                              0x00007f102526138c: mov    0x8(%r12,%r9,8),%r9d
           0.00%   │   │││                              0x00007f1025261391: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │   │││                              0x00007f1025261398: jne    0x00007f1025262091  ;*aastore
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.02%   │   │││                              0x00007f102526139e: vmovd  %xmm3,%r9d
           0.00%   │   │││                              0x00007f10252613a3: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.16%   │   │││                              0x00007f10252613a7: lea    0x10(%r9,%rbp,4),%r9
  0.01%            │   │││                              0x00007f10252613ac: vmovq  %xmm1,%rcx
  0.04%    0.01%   │   │││                              0x00007f10252613b1: shr    $0x3,%rcx
                   │   │││                              0x00007f10252613b5: mov    %ecx,(%r9)
  0.44%    0.44%   │   │││                              0x00007f10252613b8: shr    $0x9,%r9
                   │   │││                              0x00007f10252613bc: movabs $0x7f10364a1000,%rcx
  0.07%    0.02%   │   │││                              0x00007f10252613c6: mov    %r12b,(%rcx,%r9,1)  ;*aastore
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@206 (line 314)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.28%    0.24%   │╭  │││                              0x00007f10252613ca: jmpq   0x00007f10252614cc
  0.07%    0.09%   ││  │││               ↗              0x00007f10252613cf: or     $0x20,%r10d        ;*iload_2
                   ││  │││               │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││  │││               │                                                            ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.11%   ││  │││               │↗             0x00007f10252613d3: mov    0x60(%rsp),%r11
  0.26%    0.26%   ││  │││               ││             0x00007f10252613d8: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@1 (line 280)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.48%    0.49%   ││  │││               ││             0x00007f10252613dc: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                   ││  │││               ││                                                           ; implicit exception: dispatches to 0x00007f10252627c5
  0.51%    0.46%   ││  │││               ││             0x00007f10252613e2: mov    0x2c(%rsp),%r8d
  0.10%    0.10%   ││  │││               ││             0x00007f10252613e7: mov    0xc(%r12,%r8,8),%eax  ;*getfield size
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.14%   ││  │││               ││             0x00007f10252613ec: mov    0x38(%rsp),%r8d
  0.25%    0.22%   ││  │││               ││             0x00007f10252613f1: add    0x20(%rsp),%r8d    ;*iadd
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@340 (line 246)
  0.14%    0.15%   ││  │││               ││             0x00007f10252613f6: test   %eax,%eax
                   ││╭ │││               ││             0x00007f10252613f8: jle    0x00007f10252614d4  ;*if_icmpge
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@28 (line 283)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.11%   │││ │││               ││             0x00007f10252613fe: mov    0x70(%rsp),%r11
  0.11%    0.15%   │││ │││               ││             0x00007f1025261403: mov    0x10(%r11),%ecx
  0.33%    0.30%   │││ │││               ││             0x00007f1025261407: mov    0x60(%rsp),%r11
  0.13%    0.12%   │││ │││               ││             0x00007f102526140c: movzbl 0x11(%r11),%r9d    ;*getfield captures
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@16 (line 282)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.09%   │││ │││               ││             0x00007f1025261411: mov    0x38(%rsp),%r11d
  0.12%    0.11%   │││ │││               ││             0x00007f1025261416: mov    $0x1,%edi
  0.24%    0.28%   │││ │││               ││             0x00007f102526141b: xor    %ebx,%ebx
  0.15%    0.17%   │││ │││               ││             0x00007f102526141d: cmp    %ecx,%r11d
  0.07%    0.06%   │││ │││               ││             0x00007f1025261420: cmovne %ebx,%edi          ;*invokespecial step
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.36%    0.49%   │││ │││               ││             0x00007f1025261423: vmovd  %edi,%xmm0
  0.23%    0.24%   │││ │││               ││             0x00007f1025261427: test   %r9d,%r9d
                   │││ │││               ││             0x00007f102526142a: jne    0x00007f1025261bdd  ;*iload
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@31 (line 286)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.13%   │││ │││               ││             0x00007f1025261430: mov    0x2c(%rsp),%r11d
  0.11%    0.13%   │││ │││               ││             0x00007f1025261435: mov    0x20(%r12,%r11,8),%ecx  ;*getfield denseThreadsInstructions
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@86 (line 296)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.35%    0.30%   │││ │││               ││             0x00007f102526143a: mov    0xc(%r12,%rcx,8),%r11d  ;*aaload
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@91 (line 296)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                   │││ │││               ││                                                           ; implicit exception: dispatches to 0x00007f1025261bdd
  0.43%    0.46%   │││ │││               ││             0x00007f102526143f: test   %r11d,%r11d
                   │││ │││               ││             0x00007f1025261442: jbe    0x00007f1025261bdd
  0.14%    0.13%   │││ │││               ││             0x00007f1025261448: mov    %eax,%ebx
  0.13%    0.09%   │││ │││               ││             0x00007f102526144a: dec    %ebx
  0.26%    0.40%   │││ │││               ││             0x00007f102526144c: cmp    %r11d,%ebx
                   │││ │││               ││             0x00007f102526144f: jae    0x00007f1025261bdd
  0.21%    0.16%   │││ │││               ││             0x00007f1025261455: lea    (%r12,%rcx,8),%rbx
  0.09%    0.13%   │││ │││               ││             0x00007f1025261459: xor    %r11d,%r11d
  0.15%    0.20%   │││ │││               ││             0x00007f102526145c: nopl   0x0(%rax)          ;*iload
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@31 (line 286)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.33%    1.45%   │││ │││↗              ││             0x00007f1025261460: mov    0x10(%rbx,%r11,4),%ecx  ;*aaload
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@91 (line 296)
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.73%    0.59%   │││ ││││              ││             0x00007f1025261465: mov    0xc(%r12,%rcx,8),%edi  ;*getfield op
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@96 (line 298)
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
                   │││ ││││              ││                                                           ; implicit exception: dispatches to 0x00007f1025262775
  2.25%    2.30%   │││ ││││              ││             0x00007f102526146a: cmp    $0x6,%edi
                   │││╭││││              ││             0x00007f102526146d: je     0x00007f102526183e  ;*if_icmpne
                   ││││││││              ││                                                           ; - com.google.re2j.Machine::step@101 (line 298)
                   ││││││││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.36%    1.27%   ││││││││              ││             0x00007f1025261473: cmp    $0xa,%edi
                   ││││╰│││              ││             0x00007f1025261476: je     0x00007f10252612f4  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.12%    1.09%   ││││ │││              ││             0x00007f102526147c: cmp    $0xb,%edi
                   ││││ │││              ││             0x00007f102526147f: je     0x00007f102526193d  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.25%    1.29%   ││││ │││              ││             0x00007f1025261485: cmp    $0x9,%edi
                   ││││ │││              ││             0x00007f1025261488: je     0x00007f10252619a9  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.30%    1.11%   ││││ │││              ││             0x00007f102526148e: cmp    $0xc,%edi
                   ││││ │││              ││             0x00007f1025261491: jne    0x00007f10252618d0  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.53%    1.62%   ││││ │││              ││             0x00007f1025261497: mov    0x1c(%r12,%rcx,8),%edi  ;*getfield f0
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.75%    0.73%   ││││ │││              ││             0x00007f102526149c: cmp    %edx,%edi
                   ││││ ╰││              ││             0x00007f102526149e: je     0x00007f10252612f4  ;*if_icmpeq
                   ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.60%    1.80%   ││││  ││              ││             0x00007f10252614a4: mov    0x20(%r12,%rcx,8),%edi  ;*getfield f1
                   ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.69%    0.56%   ││││  ││              ││             0x00007f10252614a9: cmp    %edx,%edi
                   ││││  ╰│              ││             0x00007f10252614ab: je     0x00007f10252612f4  ;*if_icmpeq
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.92%    1.61%   ││││   │              ││             0x00007f10252614b1: mov    0x24(%r12,%rcx,8),%r9d  ;*getfield f2
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.67%   ││││   │              ││             0x00007f10252614b6: cmp    %edx,%r9d
                   ││││   │              ││             0x00007f10252614b9: je     0x00007f1025261a19  ;*if_icmpeq
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.47%    1.60%   ││││   │              ││             0x00007f10252614bf: mov    0x28(%r12,%rcx,8),%edi  ;*getfield f3
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.50%    0.62%   ││││   │              ││             0x00007f10252614c4: cmp    %edx,%edi
                   ││││   │              ││             0x00007f10252614c6: je     0x00007f1025261a89  ;*aload
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@211 (line 316)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  1.45%    1.66%   │↘││   │              ││             0x00007f10252614cc: inc    %r11d              ;*iinc
                   │ ││   │              ││                                                           ; - com.google.re2j.Machine::step@222 (line 283)
                   │ ││   │              ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.56%    0.63%   │ ││   │              ││             0x00007f10252614cf: cmp    %eax,%r11d
                   │ ││   ╰              ││             0x00007f10252614d2: jl     0x00007f1025261460  ;*if_icmpge
                   │ ││                  ││                                                           ; - com.google.re2j.Machine::step@28 (line 283)
                   │ ││                  ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.20%   │ ↘│                  ││             0x00007f10252614d4: mov    0x2c(%rsp),%r9d
  0.14%    0.14%   │  │                  ││             0x00007f10252614d9: movzbl 0x18(%r12,%r9,8),%r11d
  0.32%    0.46%   │  │                  ││             0x00007f10252614df: test   %r11d,%r11d
                   │  │    ╭             ││             0x00007f10252614e2: jne    0x00007f1025261501  ;*ifeq
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.25%   │  │    │             ││             0x00007f10252614e4: mov    0x1c(%r12,%r9,8),%ebp  ;*getfield pcs
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.13%    0.19%   │  │    │             ││             0x00007f10252614e9: movb   $0x1,0x18(%r12,%r9,8)  ;*putfield empty
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.40%    0.43%   │  │    │             ││             0x00007f10252614ef: mov    %r12,0x10(%r12,%r9,8)  ;*putfield pcsl
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.50%    0.45%   │  │    │             ││             0x00007f10252614f4: mov    %r12d,0xc(%r12,%r9,8)  ;*putfield size
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.26%   │  │    │             ││             0x00007f10252614f9: test   %ebp,%ebp
                   │  │    │             ││             0x00007f10252614fb: jne    0x00007f1025261e21  ;*invokevirtual clear
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@229 (line 320)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.06%   │  │    ↘             ││             0x00007f1025261501: mov    0x60(%rsp),%r11
  0.21%    0.17%   │  │                  ││             0x00007f1025261506: movzbl 0x10(%r11),%eax    ;*getfield matched
                   │  │                  ││                                                           ; - com.google.re2j.Machine::match@378 (line 250)
  0.37%    0.42%   │  │                  ││             0x00007f102526150b: mov    0x60(%rsp),%r11
  0.16%    0.17%   │  │                  ││             0x00007f1025261510: movzbl 0x11(%r11),%ebp    ;*getfield captures
                   │  │                  ││                                                           ; - com.google.re2j.Machine::match@371 (line 250)
  0.09%    0.17%   │  │                  ││             0x00007f1025261515: mov    0x20(%rsp),%r11d
  0.13%    0.19%   │  │                  ││             0x00007f102526151a: test   %r11d,%r11d
                   │  │     ╭            ││             0x00007f102526151d: je     0x00007f102526178b  ;*ifne
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@364 (line 247)
  0.20%    0.28%   │  │     │            ││             0x00007f1025261523: test   %ebp,%ebp
                   │  │     │            ││             0x00007f1025261525: jne    0x00007f1025261d01  ;*ifne
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@374 (line 250)
  0.22%    0.33%   │  │     │            ││             0x00007f102526152b: test   %eax,%eax
                   │  │     │            ││             0x00007f102526152d: jne    0x00007f1025261de1  ;*ifeq
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@381 (line 250)
  0.05%    0.06%   │  │     │            ││             0x00007f1025261533: cmp    $0xffffffff,%r13d
                   │  │     │╭           ││             0x00007f1025261537: je     0x00007f10252617ca  ;*if_icmpeq
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@403 (line 258)
  0.13%    0.22%   │  │     ││           ││             0x00007f102526153d: mov    %r13d,0x24(%rsp)
  0.25%    0.45%   │  │     ││           ││             0x00007f1025261542: mov    0x70(%rsp),%r11
  0.34%    0.29%   │  │     ││           ││             0x00007f1025261547: mov    0x10(%r11),%ecx    ;*getfield end
                   │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.10%   │  │     ││           ││             0x00007f102526154b: mov    0x30(%rsp),%r9d
  0.15%    0.21%   │  │     ││           ││             0x00007f1025261550: add    %r8d,%r9d
  0.25%    0.35%   │  │     ││           ││             0x00007f1025261553: add    0xc(%r11),%r9d     ;*iadd
                   │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.32%    0.51%   │  │     ││           ││             0x00007f1025261557: cmp    %ecx,%r9d
                   │  │     ││╭          ││             0x00007f102526155a: jge    0x00007f102526177e  ;*if_icmpge
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.20%    0.22%   │  │     │││          ││             0x00007f1025261560: mov    0x14(%r11),%ebp    ;*getfield str
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.13%    0.19%   │  │     │││          ││             0x00007f1025261564: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f10252627d5
  0.54%    0.73%   │  │     │││          ││             0x00007f1025261569: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │  │     │││          ││             0x00007f102526156f: jne    0x00007f1025261ba1
  0.50%    0.72%   │  │     │││          ││             0x00007f1025261575: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.02%   │  │     │││          ││             0x00007f1025261579: test   %r9d,%r9d
                   │  │     │││          ││             0x00007f102526157c: jl     0x00007f1025261d45  ;*iflt
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@1 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.11%    0.08%   │  │     │││          ││             0x00007f1025261582: mov    0xc(%rcx),%edi     ;*getfield value
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@6 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.14%    0.14%   │  │     │││          ││             0x00007f1025261585: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@9 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
                   │  │     │││          ││                                                           ; implicit exception: dispatches to 0x00007f10252627e9
  2.52%    3.61%   │  │     │││          ││             0x00007f102526158a: cmp    %ebp,%r9d
                   │  │     │││          ││             0x00007f102526158d: jge    0x00007f1025261e59  ;*if_icmplt
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@10 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.63%    0.78%   │  │     │││          ││             0x00007f1025261593: cmp    %ebp,%r9d
                   │  │     │││          ││             0x00007f1025261596: jae    0x00007f1025261b51
  0.06%    0.06%   │  │     │││          ││             0x00007f102526159c: lea    (%r12,%rdi,8),%r11
                   │  │     │││          ││             0x00007f10252615a0: movzwl 0x10(%r11,%r9,2),%r11d  ;*caload
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@27 (line 660)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.10%    0.10%   │  │     │││          ││             0x00007f10252615a6: cmp    $0xd800,%r11d
                   │  │     │││          ││             0x00007f10252615ad: jge    0x00007f1025261ea5  ;*if_icmplt
                   │  │     │││          ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.55%    0.85%   │  │     │││          ││             0x00007f10252615b3: shl    $0x3,%r11d         ;*ishl
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.02%   │  │     │││          ││             0x00007f10252615b7: mov    %r11d,%ecx
                   │  │     │││          ││             0x00007f10252615ba: and    $0x7,%ecx
  0.58%    0.70%   │  │     │││          ││             0x00007f10252615bd: or     $0x1,%r11d
  0.05%    0.06%   │  │     │││          ││             0x00007f10252615c1: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@411 (line 259)
  0.53%    0.76%   │  │     │││          ││             0x00007f10252615c4: sar    $0x3,%r11d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1288}
                   │  │     │││          ││                                                           ;*goto
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@441 (line 266)
  0.00%    0.01%   │  │     │││          ││  ↗ ↗        0x00007f10252615c8: test   %eax,0x18837a32(%rip)        # 0x00007f103da99000
                   │  │     │││          ││  │ │                                                      ;*goto
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@441 (line 266)
                   │  │     │││          ││  │ │                                                      ;   {poll}
  0.05%    0.03%   │  │     │││          ││  │ │        0x00007f10252615ce: mov    0x60(%rsp),%r9
  0.08%    0.09%   │  │     │││          ││  │ │        0x00007f10252615d3: mov    0x14(%r9),%ebx     ;*getfield re2
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.66%    0.68%   │  │     │││          ││  │ │        0x00007f10252615d7: vmovd  %ebx,%xmm4
  0.00%            │  │     │││          ││  │ │        0x00007f10252615db: mov    0x28(%r9),%edi     ;*getfield matchcap
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.07%    0.03%   │  │     │││          ││  │ │        0x00007f10252615df: mov    0x50(%rsp),%r9
  0.04%    0.10%   │  │     │││          ││  │ │        0x00007f10252615e4: mov    %r9,%rbx
  0.73%    0.69%   │  │     │││          ││  │ │        0x00007f10252615e7: shr    $0x3,%rbx
  0.01%            │  │     │││          ││  │ │        0x00007f10252615eb: mov    %ebx,0x2c(%rsp)
  0.06%    0.06%   │  │     │││          ││  │ │        0x00007f10252615ef: mov    0x30(%rsp),%r9d
  0.07%    0.07%   │  │     │││          ││  │ │        0x00007f10252615f4: mov    %r9d,0x20(%rsp)
  0.56%    0.67%   │  │     │││          ││  │ │        0x00007f10252615f9: mov    %r8d,0x38(%rsp)
  0.01%    0.00%   │  │     │││          ││  │ │        0x00007f10252615fe: mov    %ecx,0x30(%rsp)
  0.03%    0.08%   │  │     │││          ││  │ │        0x00007f1025261602: mov    %r11d,0x28(%rsp)
  0.09%    0.08%   │  │     │││          ││  │ │        0x00007f1025261607: mov    0x10(%rsp),%r11
  0.53%    0.58%   │  │     │││          ││  │ │        0x00007f102526160c: mov    %r11,0x50(%rsp)
  0.01%            │  │     │││          ││  │ │        0x00007f1025261611: vmovd  %edi,%xmm1         ;*aload
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.07%    0.05%   ↘  │     │││          ││  │ │        0x00007f1025261615: mov    0x2c(%rsp),%r11d
  0.06%    0.09%      │     │││          ││  │ │        0x00007f102526161a: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f1025262785
  0.53%    0.72%      │     │││          ││  │ │        0x00007f1025261620: test   %r8d,%r8d
                      │     │││╭         ││  │ │        0x00007f1025261623: je     0x00007f1025261657  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.03%    0.00%      │     ││││         ││  │ │        0x00007f1025261625: mov    0x34(%rsp),%r8d
  0.02%    0.02%      │     ││││         ││  │ │        0x00007f102526162a: test   %r8d,%r8d
                      │     ││││         ││  │ │        0x00007f102526162d: jne    0x00007f1025261f3d  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@148 (line 212)
  0.03%    0.03%      │     ││││         ││  │ │        0x00007f1025261633: test   %eax,%eax
                      │     ││││         ││  │ │        0x00007f1025261635: jne    0x00007f1025261f85  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.49%    0.50%      │     ││││         ││  │ │        0x00007f102526163b: vmovd  %xmm4,%r11d
  0.01%    0.01%      │     ││││         ││  │ │        0x00007f1025261640: mov    0x24(%r12,%r11,8),%r11d  ;*getfield prefix
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f10252627f9
  0.04%    0.02%      │     ││││         ││  │ │        0x00007f1025261645: mov    0xc(%r12,%r11,8),%r8d  ;*getfield value
                      │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@1 (line 635)
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f1025262809
  0.10%    0.09%      │     ││││         ││  │ │        0x00007f102526164a: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                      │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@4 (line 635)
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f1025262819
  1.35%    1.27%      │     ││││         ││  │ │        0x00007f102526164f: test   %ebp,%ebp
                      │     ││││         ││  │ │        0x00007f1025261651: jne    0x00007f1025261ef5  ;*aload_0
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.50%    0.30%      │     │││↘         ││  │ │        0x00007f1025261657: test   %eax,%eax
                      │     │││          ││  │ │        0x00007f1025261659: jne    0x00007f1025261c5d  ;*ifne
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@271 (line 237)
  0.04%    0.05%      │     │││          ││  │ │        0x00007f102526165f: mov    0x38(%rsp),%r8d
  0.04%    0.05%      │     │││          ││  │ │        0x00007f1025261664: test   %r8d,%r8d
                      │     │││ ╭        ││  │ │        0x00007f1025261667: je     0x00007f1025261677  ;*ifeq
                      │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@275 (line 237)
  0.12%    0.06%      │     │││ │        ││  │ │        0x00007f1025261669: mov    0x68(%rsp),%r11d
  0.45%    0.13%      │     │││ │        ││  │ │        0x00007f102526166e: test   %r11d,%r11d
                      │     │││ │        ││  │ │        0x00007f1025261671: jne    0x00007f1025261cad  ;*aload_0
                      │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@282 (line 240)
  0.03%    0.06%      │     │││ ↘        ││  │ │        0x00007f1025261677: mov    0x60(%rsp),%r11
  0.05%    0.04%      │     │││          ││  │ │        0x00007f102526167c: movzbl 0x11(%r11),%r9d    ;*getfield captures
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.14%    0.17%      │     │││          ││  │ │        0x00007f1025261681: test   %r9d,%r9d
                      │     │││          ││  │ │        0x00007f1025261684: jne    0x00007f1025261d91  ;*ifeq
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.56%    0.07%      │     │││          ││  │ │        0x00007f102526168a: mov    0x18(%r11),%r8d    ;*getfield prog
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@297 (line 243)
  0.04%    0.05%      │     │││          ││  │ │        0x00007f102526168e: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                      │     │││          ││  │ │                                                      ; implicit exception: dispatches to 0x00007f1025262795
  0.11%    0.05%      │     │││          ││  │ │        0x00007f1025261693: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f10252627a5
  0.46%    0.30%      │     │││          ││  │ │        0x00007f1025261698: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                      │     │││          ││  │ │        0x00007f102526169f: jne    0x00007f1025261af5  ;*ifeq
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.55%    0.26%      │     │││          ││  │ │        0x00007f10252616a5: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.05%      │     │││          ││  │ │        0x00007f10252616a9: mov    0x2c(%rsp),%r8d
  0.02%    0.01%      │     │││          ││  │ │        0x00007f10252616ae: lea    (%r12,%r8,8),%r11  ;*aload
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.04%    0.05%      │     │││          ││  │ │        0x00007f10252616b2: mov    %r11,0x10(%rsp)
  0.58%    0.27%      │     │││          ││  │ │        0x00007f10252616b7: vmovd  %xmm1,%r8d
  0.02%    0.04%      │     │││          ││  │ │        0x00007f10252616bc: shl    $0x3,%r8           ;*getfield matchcap
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.00%      │     │││          ││  │ │        0x00007f10252616c0: mov    %r11,%rdx
  0.10%    0.06%      │     │││          ││  │ │        0x00007f10252616c3: mov    0x38(%rsp),%ecx
  0.59%    0.40%      │     │││          ││  │ │        0x00007f10252616c7: xor    %edi,%edi
  0.03%    0.02%      │     │││          ││  │ │        0x00007f10252616c9: mov    0x60(%rsp),%r11
  0.01%               │     │││          ││  │ │        0x00007f10252616ce: mov    %r11,(%rsp)
  0.07%    0.04%      │     │││          ││  │ │        0x00007f10252616d2: mov    %r9d,0x8(%rsp)
  0.57%    0.51%      │     │││          ││  │ │        0x00007f10252616d7: mov    %r10d,%r9d
  0.03%    0.02%      │     │││          ││  │ │        0x00007f10252616da: nop
  0.00%    0.02%      │     │││          ││  │ │        0x00007f10252616db: callq  0x00007f1025046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1568}
                      │     │││          ││  │ │                                                      ;*invokevirtual add
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                      │     │││          ││  │ │                                                      ;   {optimized virtual_call}
  0.43%    0.49%      │     │││          ││  │ │        0x00007f10252616e0: mov    0x24(%rsp),%edx
  0.11%    0.12%      │     │││          ││  │ │        0x00007f10252616e4: test   %edx,%edx
                      │     │││  ╭       ││  │ │        0x00007f10252616e6: jl     0x00007f102526176d  ;*ifge
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.20%      │     │││  │       ││  │ │        0x00007f10252616ec: xor    %r10d,%r10d        ;*iload_0
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.44%      │     │││  │       ││↗ │ │        0x00007f10252616ef: cmp    $0xa,%edx
                      │     │││  │╭      │││ │ │        0x00007f10252616f2: je     0x00007f10252617de  ;*iload_1
                      │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                      │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.07%      │     │││  ││      │││ │ │↗       0x00007f10252616f8: mov    0x28(%rsp),%r13d
  0.03%    0.03%      │     │││  ││      │││ │ ││       0x00007f10252616fd: test   %r13d,%r13d
  0.25%    0.21%      │     │││  ││╭     │││ │ ││       0x00007f1025261700: jl     0x00007f1025261778  ;*iload_1
                      │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.40%    0.44%      │     │││  │││     │││↗│ ││       0x00007f1025261702: cmp    $0xa,%r13d
                      │     │││  │││╭    │││││ ││       0x00007f1025261706: je     0x00007f10252617e7  ;*iload_0
                      │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.09%      │     │││  ││││    │││││ ││↗      0x00007f102526170c: mov    0x24(%rsp),%r11d
  0.02%    0.01%      │     │││  ││││    │││││ │││      0x00007f1025261711: add    $0xffffffbf,%r11d
  0.26%    0.20%      │     │││  ││││    │││││ │││      0x00007f1025261715: cmp    $0x1a,%r11d
                      │     │││  ││││╭   │││││ │││      0x00007f1025261719: jb     0x00007f102526172e  ;*if_icmple
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.33%    0.40%      │     │││  │││││   │││││ │││      0x00007f102526171b: mov    0x24(%rsp),%r8d
  0.08%    0.03%      │     │││  │││││   │││││ │││      0x00007f1025261720: add    $0xffffff9f,%r8d
  0.05%    0.02%      │     │││  │││││   │││││ │││      0x00007f1025261724: cmp    $0x1a,%r8d
                      │     │││  │││││╭  │││││ │││      0x00007f1025261728: jae    0x00007f10252617f0  ;*iconst_1
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.18%      │     │││  ││││↘│  │││││ │││↗     0x00007f102526172e: mov    $0x1,%ebp          ;*ireturn
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.31%    0.44%      │     │││  ││││ │  │││││ ││││↗    0x00007f1025261733: mov    0x28(%rsp),%r11d
  0.13%    0.09%      │     │││  ││││ │  │││││ │││││    0x00007f1025261738: add    $0xffffffbf,%r11d
  0.15%    0.05%      │     │││  ││││ │  │││││ │││││    0x00007f102526173c: cmp    $0x1a,%r11d
  0.27%    0.32%      │     │││  ││││ │╭ │││││ │││││    0x00007f1025261740: jb     0x00007f1025261755  ;*if_icmple
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.33%    0.39%      │     │││  ││││ ││ │││││ │││││    0x00007f1025261742: mov    0x28(%rsp),%r8d
  0.10%    0.06%      │     │││  ││││ ││ │││││ │││││    0x00007f1025261747: add    $0xffffff9f,%r8d
  0.08%    0.09%      │     │││  ││││ ││ │││││ │││││    0x00007f102526174b: cmp    $0x1a,%r8d
                      │     │││  ││││ ││╭│││││ │││││    0x00007f102526174f: jae    0x00007f1025261819  ;*iconst_1
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.14%      │     │││  ││││ │↘││││││ │││││↗   0x00007f1025261755: mov    $0x1,%r11d         ;*ireturn
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.31%    0.27%      │     │││  ││││ │ ││││││ ││││││↗  0x00007f102526175b: cmp    %r11d,%ebp
                      │     │││  ││││ │ │╰││││ │││││││  0x00007f102526175e: je     0x00007f10252613cf  ;*if_icmpeq
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.06%      │     │││  ││││ │ │ ││││ │││││││  0x00007f1025261764: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.08%    0.06%      │     │││  ││││ │ │ ╰│││ │││││││  0x00007f1025261768: jmpq   0x00007f10252613d3
           0.01%      │     │││  ↘│││ │ │  │││ │││││││  0x00007f102526176d: mov    $0x5,%r10d
                      │     │││   │││ │ │  ╰││ │││││││  0x00007f1025261773: jmpq   0x00007f10252616ef
  0.02%    0.01%      │     │││   │↘│ │ │   ││ │││││││  0x00007f1025261778: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                      │     │││   │ │ │ │   ││ │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                      │     │││   │ │ │ │   ╰│ │││││││  0x00007f102526177c: jmp    0x00007f1025261702
           0.00%      │     ││↘   │ │ │ │    │ │││││││  0x00007f102526177e: mov    $0xffffffff,%r11d
                      │     ││    │ │ │ │    │ │││││││  0x00007f1025261784: xor    %ecx,%ecx
                      │     ││    │ │ │ │    ╰ │││││││  0x00007f1025261786: jmpq   0x00007f10252615c8
           0.00%      │     ↘│    │ │ │ │      │││││││  0x00007f102526178b: test   %ebp,%ebp
                      │      │    │ │ │ │      │││││││  0x00007f102526178d: jne    0x00007f1025262559  ;*ifeq
                      │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                      │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%      │      │    │ │ │ │      │││││││  0x00007f1025261793: mov    0x50(%rsp),%r11
  0.00%    0.01%      │      │    │ │ │ │      │││││││  0x00007f1025261798: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f10252628c9
           0.00%      │      │    │ │ │ │      │││││││  0x00007f102526179d: test   %r10d,%r10d
                      │      │    │ │ │ │     ╭│││││││  0x00007f10252617a0: jne    0x00007f10252617bb  ;*ifeq
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │      │    │ │ │ │     ││││││││  0x00007f10252617a2: mov    0x1c(%r11),%ebp    ;*getfield pcs
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │      │    │ │ │ │     ││││││││  0x00007f10252617a6: movb   $0x1,0x18(%r11)    ;*putfield empty
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │      │    │ │ │ │     ││││││││  0x00007f10252617ab: mov    %r12,0x10(%r11)    ;*putfield pcsl
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │      │    │ │ │ │     ││││││││  0x00007f10252617af: mov    %r12d,0xc(%r11)    ;*putfield size
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                      │      │    │ │ │ │     ││││││││  0x00007f10252617b3: test   %ebp,%ebp
                      │      │    │ │ │ │     ││││││││  0x00007f10252617b5: jne    0x00007f10252625f1  ;*if_icmpne
                      │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.02%    0.01%      │      │    │ │ │ │     ↘│││││││  0x00007f10252617bb: add    $0xb0,%rsp
  0.00%    0.00%      │      │    │ │ │ │      │││││││  0x00007f10252617c2: pop    %rbp
  0.01%               │      │    │ │ │ │      │││││││  0x00007f10252617c3: test   %eax,0x18837837(%rip)        # 0x00007f103da99000
                      │      │    │ │ │ │      │││││││                                                ;   {poll_return}
                      │      │    │ │ │ │      │││││││  0x00007f10252617c9: retq   
  0.01%    0.01%      │      ↘    │ │ │ │      │││││││  0x00007f10252617ca: mov    %r13d,0x24(%rsp)
  0.01%    0.01%      │           │ │ │ │      │││││││  0x00007f10252617cf: mov    0x30(%rsp),%ecx
  0.01%               │           │ │ │ │      │││││││  0x00007f10252617d3: mov    $0xffffffff,%r11d
                      │           │ │ │ │      ╰││││││  0x00007f10252617d9: jmpq   0x00007f10252615c8
                      │           ↘ │ │ │       ││││││  0x00007f10252617de: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                      │             │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                      │             │ │ │       ╰│││││  0x00007f10252617e2: jmpq   0x00007f10252616f8
  0.01%               │             ↘ │ │        │││││  0x00007f10252617e7: or     $0x2,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                      │               │ │        │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                      │               │ │        ╰││││  0x00007f10252617eb: jmpq   0x00007f102526170c
  0.02%    0.03%      │               ↘ │         ││││  0x00007f10252617f0: mov    0x24(%rsp),%r11d
  0.07%    0.09%      │                 │         ││││  0x00007f10252617f5: add    $0xffffffd0,%r11d
  0.01%    0.04%      │                 │         ││││  0x00007f10252617f9: cmp    $0xa,%r11d
                      │                 │         ╰│││  0x00007f10252617fd: jb     0x00007f102526172e  ;*if_icmple
                      │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                 │          │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.01%      │                 │          │││  0x00007f1025261803: mov    0x24(%rsp),%r11d
  0.03%    0.02%      │                 │          │││  0x00007f1025261808: cmp    $0x5f,%r11d
                      │                 │          │││  0x00007f102526180c: je     0x00007f10252626a5  ;*if_icmpne
                      │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                 │          │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.08%      │                 │          │││  0x00007f1025261812: xor    %ebp,%ebp
  0.01%    0.04%      │                 │          ╰││  0x00007f1025261814: jmpq   0x00007f1025261733
  0.12%    0.09%      │                 ↘           ││  0x00007f1025261819: mov    0x28(%rsp),%r11d
  0.23%    0.17%      │                             ││  0x00007f102526181e: add    $0xffffffd0,%r11d
  0.04%    0.04%      │                             ││  0x00007f1025261822: cmp    $0xa,%r11d
                      │                             ╰│  0x00007f1025261826: jb     0x00007f1025261755  ;*if_icmple
                      │                              │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                              │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.06%      │                              │  0x00007f102526182c: cmp    $0x5f,%r13d
                      │                              │  0x00007f1025261830: je     0x00007f10252626e1  ;*if_icmpne
                      │                              │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                              │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.02%      │                              │  0x00007f1025261836: xor    %r11d,%r11d
  0.06%    0.05%      │                              ╰  0x00007f1025261839: jmpq   0x00007f102526175b
                      ↘                                 0x00007f102526183e: mov    0x60(%rsp),%r9
                                                        0x00007f1025261843: movb   $0x1,0x10(%r9)     ;*putfield matched
                                                                                                      ; - com.google.re2j.Machine::step@163 (line 306)
                                                                                                      ; - com.google.re2j.Machine::match@359 (line 246)
                                                        0x00007f1025261848: test   %r14d,%r14d
                                                        0x00007f102526184b: jne    0x00007f1025262601  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::step@168 (line 307)
                                                                                                      ; - com.google.re2j.Machine::match@359 (line 246)
                                                        0x00007f1025261851: mov    0x2c(%rsp),%r11d
                                                        0x00007f1025261856: movzbl 0x18(%r12,%r11,8),%r11d
....................................................................................................
 59.61%   60.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 537 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f1025242900: mov    0x8(%rsi),%r10d
                     0x00007f1025242904: shl    $0x3,%r10
                     0x00007f1025242908: cmp    %r10,%rax
                     0x00007f102524290b: jne    0x00007f1025045e20  ;   {runtime_call}
                     0x00007f1025242911: data16 xchg %ax,%ax
                     0x00007f1025242914: nopl   0x0(%rax,%rax,1)
                     0x00007f102524291c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.67%    0.69%     0x00007f1025242920: mov    %eax,-0x14000(%rsp)
  0.04%    0.07%     0x00007f1025242927: push   %rbp
  0.09%    0.06%     0x00007f1025242928: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.60%    0.56%     0x00007f102524292c: vmovq  %r8,%xmm5
  0.00%    0.01%     0x00007f1025242931: vmovq  %rsi,%xmm4
  0.08%    0.06%     0x00007f1025242936: mov    %ecx,%r14d
  0.53%    0.54%     0x00007f1025242939: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.02%    0.06%     0x00007f102524293c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f1025243259
  0.01%    0.01%     0x00007f1025242940: cmp    $0x40,%ecx
                     0x00007f1025242943: jg     0x00007f1025242e01  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.09%    0.07%     0x00007f1025242949: mov    $0x1,%esi
  0.58%    0.62%     0x00007f102524294e: mov    $0x1,%r8d
  0.03%    0.06%     0x00007f1025242954: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.70%    0.53%     0x00007f1025242957: mov    %r11,%r10
  0.03%    0.05%     0x00007f102524295a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.02%     0x00007f102524295d: xor    %r13d,%r13d
  0.07%    0.06%     0x00007f1025242960: test   %r10,%r10
                     0x00007f1025242963: jne    0x00007f1025242e35  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.54%    0.59%     0x00007f1025242969: cmp    $0x40,%ecx
                     0x00007f102524296c: jge    0x00007f1025242e75  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.05%     0x00007f1025242972: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007f1025242976: vmovq  %xmm4,%r10
  0.04%    0.08%     0x00007f102524297b: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.57%    0.49%     0x00007f102524297f: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.02%     0x00007f1025242982: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.02%     0x00007f1025242986: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f102524326d
  0.11%    0.07%     0x00007f102524298b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f1025242992: jne    0x00007f1025242ce5
  0.67%    0.68%     0x00007f1025242998: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f102524299c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.02%     0x00007f10252429a0: cmp    $0x40,%ecx
                     0x00007f10252429a3: jg     0x00007f1025242ea9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.10%     0x00007f10252429a9: mov    $0x1,%r10d
  0.60%    0.42%     0x00007f10252429af: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.17%    0.17%     0x00007f10252429b2: mov    %r8,%rbx
  0.52%    0.25%     0x00007f10252429b5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.02%     0x00007f10252429b8: test   %rbx,%rbx
                     0x00007f10252429bb: jne    0x00007f1025242ee5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.05%     0x00007f10252429c1: cmp    $0x40,%ecx
                     0x00007f10252429c4: jge    0x00007f1025242f2d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.07%     0x00007f10252429ca: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.48%    0.27%     0x00007f10252429cd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f10252429d1: mov    0x88(%rsp),%ecx
  0.06%    0.03%     0x00007f10252429d8: test   %ecx,%ecx
                     0x00007f10252429da: jne    0x00007f1025242f69  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.11%     0x00007f10252429e0: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.60%    0.87%     0x00007f10252429e3: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.06%     0x00007f10252429e6: mov    %edi,%r10d
  0.08%    0.03%     0x00007f10252429e9: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.07%     0x00007f10252429ec: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.62%    0.61%     0x00007f10252429f0: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f1025243295
  0.06%    0.05%     0x00007f10252429f5: cmp    %ebx,%edi
                  ╭  0x00007f10252429f7: jae    0x00007f1025242c68
  0.08%    0.10%  │  0x00007f10252429fd: vmovd  %r10d,%xmm2
  0.07%    0.05%  │  0x00007f1025242a02: vmovd  %eax,%xmm0
  0.50%    0.61%  │  0x00007f1025242a06: mov    %edi,%eax
  0.08%    0.01%  │  0x00007f1025242a08: vmovd  %xmm0,%r10d
  0.08%    0.06%  │  0x00007f1025242a0d: mov    0x8(%r12,%r10,8),%r10d
  0.05%    0.07%  │  0x00007f1025242a12: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f1025242a19: jne    0x00007f1025242d15  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.59%    0.64%  │  0x00007f1025242a1f: vmovq  %xmm4,%r10
  0.07%    0.05%  │  0x00007f1025242a24: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.08%    0.06%  │  0x00007f1025242a28: mov    %r11,%rcx
  0.04%    0.04%  │  0x00007f1025242a2b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.62%    0.58%  │  0x00007f1025242a2f: vmovd  %xmm0,%r10d
  0.03%    0.04%  │  0x00007f1025242a34: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.06%  │  0x00007f1025242a38: lea    0x10(%r11,%rdi,4),%r10
  0.03%    0.05%  │  0x00007f1025242a3d: mov    %ecx,(%r10)
  1.17%    1.16%  │  0x00007f1025242a40: shr    $0x9,%r10
  0.02%    0.01%  │  0x00007f1025242a44: movabs $0x7f10364a1000,%rdi
  0.01%    0.04%  │  0x00007f1025242a4e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.26%  │  0x00007f1025242a52: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f10252432b1
  0.46%    0.28%  │  0x00007f1025242a57: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f1025242a5e: jne    0x00007f1025242d55
  0.03%    0.02%  │  0x00007f1025242a64: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.02%  │  0x00007f1025242a68: vmovq  %r10,%xmm1
  0.21%    0.16%  │  0x00007f1025242a6d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.46%    0.32%  │  0x00007f1025242a71: vmovd  %ecx,%xmm3
  0.03%    0.04%  │  0x00007f1025242a75: cmp    $0x40,%ecx
                  │  0x00007f1025242a78: jg     0x00007f1025242fa5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.01%  │  0x00007f1025242a7e: mov    $0x1,%r10d
  0.17%    0.19%  │  0x00007f1025242a84: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.54%    0.41%  │  0x00007f1025242a87: mov    %r8,%rcx
  0.22%    0.20%  │  0x00007f1025242a8a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.36%    0.50%  │  0x00007f1025242a8d: test   %rcx,%rcx
                  │  0x00007f1025242a90: jne    0x00007f1025242fe1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.04%  │  0x00007f1025242a96: vmovd  %xmm3,%ecx
  0.03%    0.02%  │  0x00007f1025242a9a: cmp    $0x40,%ecx
                  │  0x00007f1025242a9d: jge    0x00007f1025243025  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.19%  │  0x00007f1025242aa3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.41%    0.25%  │  0x00007f1025242aa6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │  0x00007f1025242aaa: mov    %eax,%ecx
  0.04%    0.03%  │  0x00007f1025242aac: add    $0x2,%ecx
  0.19%    0.21%  │  0x00007f1025242aaf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.49%    0.48%  │  0x00007f1025242ab2: mov    %eax,%r10d
  0.05%    0.10%  │  0x00007f1025242ab5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  │  0x00007f1025242ab9: cmp    %ebx,%r10d
                  │  0x00007f1025242abc: jae    0x00007f1025242ca5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.30%  │  0x00007f1025242ac2: vmovd  %r9d,%xmm3
  0.44%    0.64%  │  0x00007f1025242ac7: vmovq  %xmm4,%r9
  0.05%    0.05%  │  0x00007f1025242acc: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.07%    0.08%  │  0x00007f1025242ad0: vmovq  %xmm1,%r9
  0.14%    0.19%  │  0x00007f1025242ad5: mov    %r9,%rcx
  0.42%    0.46%  │  0x00007f1025242ad8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.07%  │  0x00007f1025242adc: movslq %eax,%r9
  0.01%    0.03%  │  0x00007f1025242adf: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.22%    0.23%  │  0x00007f1025242ae3: mov    %r9,%rbx
  0.39%    0.70%  │  0x00007f1025242ae6: add    $0x14,%rbx
  0.04%    0.04%  │  0x00007f1025242aea: mov    %ecx,(%rbx)
  0.13%    0.08%  │  0x00007f1025242aec: mov    %rbx,%rcx
  0.14%    0.17%  │  0x00007f1025242aef: shr    $0x9,%rcx
  0.49%    0.28%  │  0x00007f1025242af3: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.01%  │  0x00007f1025242af7: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f10252432d5
  0.05%    0.05%  │  0x00007f1025242afc: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f1025242b02: jne    0x00007f1025242d81
  0.22%    0.21%  │  0x00007f1025242b08: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.35%    0.55%  │  0x00007f1025242b0c: vmovq  %rcx,%xmm0
  0.06%    0.07%  │  0x00007f1025242b11: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.08%  │  0x00007f1025242b14: vmovd  %ecx,%xmm2
  0.20%    0.16%  │  0x00007f1025242b18: cmp    $0x40,%ecx
                  │  0x00007f1025242b1b: jg     0x00007f1025243061  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.34%    0.46%  │  0x00007f1025242b21: mov    $0x1,%ebx
  0.07%    0.02%  │  0x00007f1025242b26: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.79%    0.73%  │  0x00007f1025242b29: mov    %r8,%rcx
  0.04%    0.03%  │  0x00007f1025242b2c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.08%  │  0x00007f1025242b2f: test   %rcx,%rcx
                  │  0x00007f1025242b32: jne    0x00007f102524309d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.22%    0.16%  │  0x00007f1025242b38: vmovd  %xmm2,%ecx
  0.48%    0.54%  │  0x00007f1025242b3c: cmp    $0x40,%ecx
                  │  0x00007f1025242b3f: jge    0x00007f10252430e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.12%  │  0x00007f1025242b45: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.03%  │  0x00007f1025242b48: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.25%  │  0x00007f1025242b4c: vmovq  %xmm4,%rcx
  0.46%    0.39%  │  0x00007f1025242b51: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.14%    0.12%  │  0x00007f1025242b54: mov    %r9,%rbx
  0.03%    0.03%  │  0x00007f1025242b57: add    $0x18,%rbx
  0.15%    0.14%  │  0x00007f1025242b5b: vmovq  %xmm0,%rcx
  0.49%    0.42%  │  0x00007f1025242b60: shr    $0x3,%rcx
  0.08%    0.04%  │  0x00007f1025242b64: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.04%  │  0x00007f1025242b66: mov    %eax,%ecx
  0.17%    0.08%  │  0x00007f1025242b68: add    $0x3,%ecx
  0.49%    0.36%  │  0x00007f1025242b6b: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.09%  │  0x00007f1025242b6e: shr    $0x9,%rbx
  0.04%    0.04%  │  0x00007f1025242b72: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.16%  │  0x00007f1025242b76: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f10252432fd
  0.43%    0.46%  │  0x00007f1025242b7b: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f1025242b81: jne    0x00007f1025242dad
  0.07%    0.09%  │  0x00007f1025242b87: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f1025242b8b: vmovq  %rcx,%xmm0
  0.17%    0.23%  │  0x00007f1025242b90: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.45%    0.50%  │  0x00007f1025242b93: vmovd  %ecx,%xmm1
  0.10%    0.10%  │  0x00007f1025242b97: cmp    $0x40,%ecx
                  │  0x00007f1025242b9a: jg     0x00007f1025243121  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  │  0x00007f1025242ba0: mov    $0x1,%ebx
  0.20%    0.28%  │  0x00007f1025242ba5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.56%    0.68%  │  0x00007f1025242ba8: mov    %r8,%rcx
  0.17%    0.07%  │  0x00007f1025242bab: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.45%    0.20%  │  0x00007f1025242bae: test   %rcx,%rcx
                  │  0x00007f1025242bb1: jne    0x00007f102524315d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.03%  │  0x00007f1025242bb7: vmovd  %xmm1,%ecx
  0.04%    0.08%  │  0x00007f1025242bbb: cmp    $0x40,%ecx
                  │  0x00007f1025242bbe: jge    0x00007f10252431a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.22%    0.27%  │  0x00007f1025242bc4: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.40%    0.61%  │  0x00007f1025242bc8: vmovq  %xmm4,%r10
  0.06%    0.08%  │  0x00007f1025242bcd: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.07%    0.09%  │  0x00007f1025242bd1: mov    %r9,%rcx
  0.12%    0.20%  │  0x00007f1025242bd4: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.43%    0.40%  │  0x00007f1025242bd8: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.11%  │  0x00007f1025242bdb: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.10%  │  0x00007f1025242bdf: vmovq  %xmm0,%r10
  0.21%    0.20%  │  0x00007f1025242be4: shr    $0x3,%r10
  0.41%    0.46%  │  0x00007f1025242be8: mov    %r10d,(%rcx)
  0.08%    0.05%  │  0x00007f1025242beb: mov    %rcx,%r10
  0.05%    0.03%  │  0x00007f1025242bee: shr    $0x9,%r10
  0.22%    0.25%  │  0x00007f1025242bf2: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.58%    0.42%  │  0x00007f1025242bf6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1025243325
  0.07%    0.04%  │  0x00007f1025242bfb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f1025242c02: jne    0x00007f1025242dd9
  0.04%    0.05%  │  0x00007f1025242c08: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.16%  │  0x00007f1025242c0c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.46%    0.44%  │  0x00007f1025242c10: cmp    $0x40,%ecx
                  │  0x00007f1025242c13: jg     0x00007f10252431e1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.08%  │  0x00007f1025242c19: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.74%    0.72%  │  0x00007f1025242c1c: mov    %r8,%rbx
  0.09%    0.07%  │  0x00007f1025242c1f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.03%  │  0x00007f1025242c22: test   %rbx,%rbx
                  │  0x00007f1025242c25: jne    0x00007f1025243205  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.21%    0.20%  │  0x00007f1025242c2b: cmp    $0x40,%ecx
                  │  0x00007f1025242c2e: jge    0x00007f1025243235  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.48%    0.56%  │  0x00007f1025242c34: or     %rsi,%r8
  0.06%    0.05%  │  0x00007f1025242c37: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.04%  │  0x00007f1025242c3b: add    $0x20,%r9
  0.22%    0.19%  │  0x00007f1025242c3f: mov    %r10,%r11
  0.47%    0.43%  │  0x00007f1025242c42: shr    $0x3,%r11
  0.05%    0.05%  │  0x00007f1025242c46: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.07%  │  0x00007f1025242c49: mov    %r9,%r10
  0.17%    0.16%  │  0x00007f1025242c4c: add    $0x5,%eax
  0.37%    0.30%  │  0x00007f1025242c4f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.07%  │  0x00007f1025242c52: shr    $0x9,%r10
  0.06%    0.02%  │  0x00007f1025242c56: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.24%    0.22%  │  0x00007f1025242c5a: xor    %eax,%eax
  0.37%    0.46%  │  0x00007f1025242c5c: add    $0x70,%rsp
  0.05%    0.06%  │  0x00007f1025242c60: pop    %rbp
  0.06%    0.05%  │  0x00007f1025242c61: test   %eax,0x18856399(%rip)        # 0x00007f103da99000
                  │                                                ;   {poll_return}
  0.29%    0.36%  │  0x00007f1025242c67: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f1025242c68: mov    $0xffffffe4,%esi
                     0x00007f1025242c6d: vmovq  %xmm4,%rbp
                     0x00007f1025242c72: mov    %rdx,(%rsp)
                     0x00007f1025242c76: mov    %r14d,0x88(%rsp)
                     0x00007f1025242c7e: vmovsd %xmm5,0x8(%rsp)
                     0x00007f1025242c84: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.22%   36.00%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.61%   60.88%         C2, level 4  com.google.re2j.Machine::match, version 581 (1561 bytes) 
 36.22%   36.00%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 537 (839 bytes) 
  0.71%    0.70%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.37%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 582 (290 bytes) 
  0.15%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 582 (33 bytes) 
  0.15%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 581 (272 bytes) 
  0.12%    0.10%         C2, level 4  java.util.Collections::shuffle, version 588 (136 bytes) 
  0.12%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 582 (20 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 582 (8 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (2 bytes) 
  0.10%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 582 (0 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 582 (89 bytes) 
  0.06%    0.02%              [vdso]  [unknown] (9 bytes) 
  0.05%    0.01%         C2, level 4  java.util.Collections::shuffle, version 588 (71 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (32 bytes) 
  0.04%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 582 (63 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 582 (65 bytes) 
  0.03%    0.08%           libjvm.so  RelocIterator::initialize (102 bytes) 
  1.75%    1.70%  <...other 393 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.78%   60.93%         C2, level 4  com.google.re2j.Machine::match, version 581 
 36.22%   36.00%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 537 
  1.71%    1.54%   [kernel.kallsyms]  [unknown] 
  1.08%    0.46%         C2, level 4  com.google.re2j.RE2::match, version 582 
  0.23%    0.13%         C2, level 4  java.util.Collections::shuffle, version 588 
  0.09%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 621 
  0.06%    0.03%      hsdis-amd64.so  decode_instructions 
  0.06%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.02%              [vdso]  [unknown] 
  0.04%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.03%    0.01%              [vdso]  __vdso_clock_gettime 
  0.03%    0.09%           libjvm.so  RelocIterator::initialize 
  0.03%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.01%           libjvm.so  fileStream::write 
  0.02%                    libjvm.so  defaultStream::write 
  0.02%    0.05%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.00%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.40%    0.27%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.41%   97.55%         C2, level 4
  1.71%    1.54%   [kernel.kallsyms]
  0.45%    0.56%           libjvm.so
  0.15%    0.23%        libc-2.26.so
  0.09%    0.03%              [vdso]
  0.07%    0.02%  libpthread-2.26.so
  0.07%    0.03%      hsdis-amd64.so
  0.02%    0.01%         interpreter
  0.01%    0.01%        runtime stub
  0.00%                             
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score      Error  Units
Re2jRegex.testExp2       thrpt   20  25008.625 ± 1179.367  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN               ---
