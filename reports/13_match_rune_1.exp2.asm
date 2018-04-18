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
# Warmup Iteration   1: 11249.275 ops/s
# Warmup Iteration   2: 19596.389 ops/s
# Warmup Iteration   3: 19617.075 ops/s
# Warmup Iteration   4: 19637.310 ops/s
# Warmup Iteration   5: 20275.234 ops/s
# Warmup Iteration   6: 20264.121 ops/s
# Warmup Iteration   7: 19909.049 ops/s
# Warmup Iteration   8: 20315.373 ops/s
# Warmup Iteration   9: 20364.933 ops/s
# Warmup Iteration  10: 20389.639 ops/s
# Warmup Iteration  11: 20396.943 ops/s
# Warmup Iteration  12: 20393.335 ops/s
# Warmup Iteration  13: 20404.713 ops/s
# Warmup Iteration  14: 20398.141 ops/s
# Warmup Iteration  15: 20397.310 ops/s
# Warmup Iteration  16: 20318.640 ops/s
# Warmup Iteration  17: 20323.004 ops/s
# Warmup Iteration  18: 20355.298 ops/s
# Warmup Iteration  19: 20368.852 ops/s
# Warmup Iteration  20: 19848.402 ops/s
Iteration   1: 20355.416 ops/s
Iteration   2: 20356.513 ops/s
Iteration   3: 20365.586 ops/s
Iteration   4: 20277.697 ops/s
Iteration   5: 20276.384 ops/s
Iteration   6: 20273.188 ops/s
Iteration   7: 20265.640 ops/s
Iteration   8: 20276.658 ops/s
Iteration   9: 20284.219 ops/s
Iteration  10: 20282.591 ops/s
Iteration  11: 20281.064 ops/s
Iteration  12: 19954.629 ops/s
Iteration  13: 20369.964 ops/s
Iteration  14: 20360.867 ops/s
Iteration  15: 20367.114 ops/s
Iteration  16: 20356.710 ops/s
Iteration  17: 20353.373 ops/s
Iteration  18: 20366.015 ops/s
Iteration  19: 20357.672 ops/s
Iteration  20: 20367.805 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20307.455 ±(99.9%) 80.822 ops/s [Average]
  (min, avg, max) = (19954.629, 20307.455, 20369.964), stdev = 93.075
  CI (99.9%): [20226.633, 20388.277] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194055 total address lines.
Perf output processed (skipped 23.406 seconds):
 Column 1: cycles (20246 events)
 Column 2: instructions (20396 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 543 (1802 bytes) 

                                                        0x00007f000d23d46a: mov    0x28(%rsi),%edx    ;*getfield matchcap
                                                                                                      ; - com.google.re2j.Machine::match@39 (line 191)
                                                        0x00007f000d23d46d: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                                                                                                      ; - java.util.Arrays::fill@3 (line 2881)
                                                                                                      ; - com.google.re2j.Machine::match@43 (line 191)
                                                                                                      ; implicit exception: dispatches to 0x00007f000d23eaa1
                                                        0x00007f000d23d472: test   %ebp,%ebp
                                                        0x00007f000d23d474: jg     0x00007f000d23e6ed  ;*if_icmpge
                                                                                                      ; - java.util.Arrays::fill@7 (line 2881)
                                                                                                      ; - com.google.re2j.Machine::match@43 (line 191)
  0.01%                                                 0x00007f000d23d47a: mov    0x8(%r8),%ebx      ; implicit exception: dispatches to 0x00007f000d23eab1
                                                        0x00007f000d23d47e: mov    0x20(%rsi),%r13d   ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                                        0x00007f000d23d482: mov    0x1c(%rsi),%ecx    ;*getfield q0
                                                                                                      ; - com.google.re2j.Machine::match@47 (line 192)
                                                        0x00007f000d23d485: cmp    $0xf8019b8e,%ebx   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                                        0x00007f000d23d48b: jne    0x00007f000d23e559
  0.00%                                                 0x00007f000d23d491: mov    %r8,%rdi           ;*invokevirtual step
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d494: mov    0xc(%rdi),%r14d    ;*getfield start
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d498: mov    0x10(%rdi),%esi    ;*getfield end
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                                 0x00007f000d23d49b: vmovd  %xmm0,%r8d
  0.00%                                                 0x00007f000d23d4a0: add    %r14d,%r8d         ;*iadd
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d4a3: cmp    %esi,%r8d
                                                        0x00007f000d23d4a6: jge    0x00007f000d23e475  ;*if_icmpge
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d4ac: mov    0x14(%rdi),%ebp    ;*getfield str
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                                 0x00007f000d23d4af: mov    0x8(%r12,%rbp,8),%eax  ; implicit exception: dispatches to 0x00007f000d23eac5
                                                        0x00007f000d23d4b4: cmp    $0xf80002da,%eax   ;   {metadata(&apos;java/lang/String&apos;)}
                                                        0x00007f000d23d4ba: jne    0x00007f000d23e589
  0.00%                                                 0x00007f000d23d4c0: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d4c4: test   %r8d,%r8d
                                                        0x00007f000d23d4c7: jl     0x00007f000d23e5c5  ;*iflt
                                                                                                      ; - java.lang.String::charAt@1 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d4cd: vmovd  %edx,%xmm3
                                                        0x00007f000d23d4d1: mov    0xc(%rbx),%edx     ;*getfield value
                                                                                                      ; - java.lang.String::charAt@6 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                                 0x00007f000d23d4d4: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                                                      ; - java.lang.String::charAt@9 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                                                                      ; implicit exception: dispatches to 0x00007f000d23ead9
  0.01%    0.01%                                        0x00007f000d23d4d9: cmp    %eax,%r8d
                                                        0x00007f000d23d4dc: jge    0x00007f000d23e71d  ;*if_icmplt
                                                                                                      ; - java.lang.String::charAt@10 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.02%                                                 0x00007f000d23d4e2: cmp    %eax,%r8d
                                                        0x00007f000d23d4e5: jae    0x00007f000d23e4d5
                                                        0x00007f000d23d4eb: mov    %rdi,0x70(%rsp)
                                                        0x00007f000d23d4f0: mov    %ecx,0x28(%rsp)
                                                        0x00007f000d23d4f4: mov    %r9d,0x68(%rsp)
                                                        0x00007f000d23d4f9: mov    %r11d,0x5c(%rsp)
  0.00%                                                 0x00007f000d23d4fe: mov    %r10,0x60(%rsp)
                                                        0x00007f000d23d503: lea    (%r12,%rdx,8),%r11
                                                        0x00007f000d23d507: movzwl 0x10(%r11,%r8,2),%r10d  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d50d: cmp    $0xd800,%r10d
                                                        0x00007f000d23d514: jge    0x00007f000d23e761  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                                                 0x00007f000d23d51a: shl    $0x3,%r10d         ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d51e: mov    %r10d,%r8d
                                                        0x00007f000d23d521: and    $0x7,%r8d
  0.00%                                                 0x00007f000d23d525: or     $0x1,%r10d
           0.00%                                        0x00007f000d23d529: vmovd  %r10d,%xmm1
                                                        0x00007f000d23d52e: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007f000d23d532: mov    %r8d,0x1c(%rsp)
                                                        0x00007f000d23d537: sar    $0x3,%r10d         ;*ishr
                                                                                                      ; - com.google.re2j.Machine::match@68 (line 194)
  0.01%    0.01%                                        0x00007f000d23d53b: vmovd  %r10d,%xmm2
                                                        0x00007f000d23d540: vmovd  %xmm1,%r10d
                                                        0x00007f000d23d545: cmp    $0xfffffff8,%r10d
                                                        0x00007f000d23d549: je     0x00007f000d23e484  ;*if_icmpeq
                                                                                                      ; - com.google.re2j.Machine::match@88 (line 198)
  0.00%                                                 0x00007f000d23d54f: vmovd  %xmm0,%r8d
                                                        0x00007f000d23d554: add    0x1c(%rsp),%r8d
  0.01%    0.01%                                        0x00007f000d23d559: add    %r14d,%r8d         ;*iadd
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007f000d23d55c: cmp    %esi,%r8d
                                                        0x00007f000d23d55f: jge    0x00007f000d23dbc6  ;*if_icmpge
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%                                        0x00007f000d23d565: test   %r8d,%r8d
                                                        0x00007f000d23d568: jl     0x00007f000d23e639  ;*iflt
                                                                                                      ; - java.lang.String::charAt@1 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f000d23d56e: cmp    %eax,%r8d
                                                        0x00007f000d23d571: jge    0x00007f000d23e7b5  ;*if_icmplt
                                                                                                      ; - java.lang.String::charAt@10 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                                                 0x00007f000d23d577: cmp    %eax,%r8d
                                                        0x00007f000d23d57a: jae    0x00007f000d23e519
  0.01%                                                 0x00007f000d23d580: movzwl 0x10(%r11,%r8,2),%r11d  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f000d23d586: cmp    $0xd800,%r11d
                                                        0x00007f000d23d58d: jge    0x00007f000d23e7f5  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007f000d23d593: shl    $0x3,%r11d         ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f000d23d597: mov    %r11d,%r8d
                                                        0x00007f000d23d59a: and    $0x7,%r8d
  0.00%                                                 0x00007f000d23d59e: or     $0x1,%r11d
                                                        0x00007f000d23d5a2: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007f000d23d5a6: sar    $0x3,%r11d         ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@111 (line 201)
                                                        0x00007f000d23d5aa: vmovd  %xmm0,%r9d
                                                        0x00007f000d23d5af: test   %r9d,%r9d
                                                        0x00007f000d23d5b2: jne    0x00007f000d23e605  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::match@115 (line 204)
                                                        0x00007f000d23d5b8: vmovd  %xmm2,%r10d
  0.00%                                                 0x00007f000d23d5bd: test   %r10d,%r10d
                                                        0x00007f000d23d5c0: jl     0x00007f000d23dbbb  ;*ifge
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f000d23d5c6: mov    $0x5,%r9d          ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007f000d23d5cc: cmp    $0xa,%r10d
                                                        0x00007f000d23d5d0: je     0x00007f000d23dbd4  ;*iload_0
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                                        0x00007f000d23d5d6: mov    %r10d,%ecx
           0.00%                                        0x00007f000d23d5d9: add    $0xffffffbf,%ecx
                                                        0x00007f000d23d5dc: cmp    $0x1a,%ecx
                  ╭                                     0x00007f000d23d5df: jb     0x00007f000d23d5f0  ;*if_icmple
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  │                                     0x00007f000d23d5e1: mov    %r10d,%ebx
                  │                                     0x00007f000d23d5e4: add    $0xffffff9f,%ebx
  0.00%           │                                     0x00007f000d23d5e7: cmp    $0x1a,%ebx
                  │                                     0x00007f000d23d5ea: jae    0x00007f000d23dbdd  ;*iconst_1
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                                     0x00007f000d23d5f0: or     $0x10,%r9d         ;*iload_2
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.02%                                        0x00007f000d23d5f4: mov    %r8d,0x24(%rsp)
  0.00%                                                 0x00007f000d23d5f9: mov    %r11d,0x20(%rsp)
  0.00%    0.01%                                        0x00007f000d23d5fe: mov    %r10d,0x18(%rsp)
                                                        0x00007f000d23d603: mov    0x68(%rsp),%r11d
                                                        0x00007f000d23d608: and    $0x4,%r11d         ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@147 (line 212)
                                                        0x00007f000d23d60c: mov    %r11d,0x2c(%rsp)
                                                        0x00007f000d23d611: mov    %r13,%r10
                                                        0x00007f000d23d614: shl    $0x3,%r10          ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                                        0x00007f000d23d618: mov    %r10,0x10(%rsp)
  0.00%    0.00%                                        0x00007f000d23d61d: xor    %eax,%eax
  0.00%                                                 0x00007f000d23d61f: xor    %r11d,%r11d
                                                        0x00007f000d23d622: mov    %r11d,0x38(%rsp)
                   ╭                                    0x00007f000d23d627: jmpq   0x00007f000d23d94e
  0.42%    0.46%   │   ↗↗↗                              0x00007f000d23d62c: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │   │││                                                                            ; - com.google.re2j.Machine::step@189 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.32%    0.33%   │   │││                              0x00007f000d23d631: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f000d23ea45
  0.29%    0.15%   │   │││                              0x00007f000d23d636: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │   │││                              0x00007f000d23d63c: jne    0x00007f000d23e269
  0.10%    0.11%   │   │││                              0x00007f000d23d642: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.01%   │   │││                              0x00007f000d23d646: vmovq  %rcx,%xmm0
  0.01%    0.02%   │   │││                              0x00007f000d23d64b: mov    0x18(%rcx),%ebx    ;*getfield pc
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.01%   │   │││                              0x00007f000d23d64e: vmovd  %ebx,%xmm3
  0.14%    0.08%   │   │││                              0x00007f000d23d652: mov    0x10(%rsp),%rcx
  0.00%    0.00%   │   │││                              0x00007f000d23d657: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
                   │   │││                                                                            ; implicit exception: dispatches to 0x00007f000d23ea65
  0.01%    0.01%   │   │││                              0x00007f000d23d65b: vmovd  %xmm3,%ecx
  0.14%    0.10%   │   │││                              0x00007f000d23d65f: cmp    $0x40,%ecx
                   │   │││                              0x00007f000d23d662: jg     0x00007f000d23e32d  ;*if_icmpgt
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.15%    0.09%   │   │││                              0x00007f000d23d668: mov    $0x1,%edx
  0.00%    0.01%   │   │││                              0x00007f000d23d66d: shl    %cl,%rdx           ;*lshl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.31%    0.31%   │   │││                              0x00007f000d23d670: mov    %rbx,%rcx
                   │   │││                              0x00007f000d23d673: and    %rdx,%rcx          ;*land
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.01%   │   │││                              0x00007f000d23d676: test   %rcx,%rcx
                   │   │││                              0x00007f000d23d679: jne    0x00007f000d23e395  ;*ifeq
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.14%    0.14%   │   │││                              0x00007f000d23d67f: vmovd  %xmm3,%ecx
  0.01%    0.03%   │   │││                              0x00007f000d23d683: cmp    $0x40,%ecx
                   │   │││                              0x00007f000d23d686: jge    0x00007f000d23e40d  ;*if_icmpge
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.06%   │   │││                              0x00007f000d23d68c: mov    0x10(%rsp),%rcx
  0.00%    0.00%   │   │││                              0x00007f000d23d691: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.03%   │   │││                              0x00007f000d23d695: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.05%    0.01%   │   │││                              0x00007f000d23d698: vmovd  %ecx,%xmm2
  0.08%    0.06%   │   │││                              0x00007f000d23d69c: mov    0x10(%rsp),%rcx
  0.00%            │   │││                              0x00007f000d23d6a1: mov    0xc(%rcx),%ebp     ;*getfield size
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.04%   │   │││                              0x00007f000d23d6a4: or     %rbx,%rdx
  0.00%    0.02%   │   │││                              0x00007f000d23d6a7: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.15%    0.06%   │   │││                              0x00007f000d23d6ab: mov    %ebp,%ebx
  0.00%            │   │││                              0x00007f000d23d6ad: inc    %ebx
  0.03%    0.01%   │   │││                              0x00007f000d23d6af: mov    %ebx,0xc(%rcx)     ;*putfield size
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.01%   │   │││                              0x00007f000d23d6b2: vmovd  %xmm2,%ecx
  0.14%    0.06%   │   │││                              0x00007f000d23d6b6: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f000d23ea79
  0.25%    0.09%   │   │││                              0x00007f000d23d6bb: cmp    %ecx,%ebp
                   │   │││                              0x00007f000d23d6bd: jae    0x00007f000d23e201
  0.19%    0.21%   │   │││                              0x00007f000d23d6c3: vmovd  %xmm2,%ecx
                   │   │││                              0x00007f000d23d6c7: mov    0x8(%r12,%rcx,8),%ebx
  0.03%    0.01%   │   │││                              0x00007f000d23d6cc: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │   │││                              0x00007f000d23d6d2: jne    0x00007f000d23e2c5  ;*aastore
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.08%   │   │││                              0x00007f000d23d6d8: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.04%   │   │││                              0x00007f000d23d6dc: lea    0x10(%rcx,%rbp,4),%rcx
           0.00%   │   │││                              0x00007f000d23d6e1: vmovq  %xmm0,%rbx
  0.04%    0.03%   │   │││                              0x00007f000d23d6e6: mov    %rbx,%rdx
  0.06%    0.06%   │   │││                              0x00007f000d23d6e9: shr    $0x3,%rdx
  0.04%    0.05%   │   │││                              0x00007f000d23d6ed: mov    %edx,(%rcx)
  0.28%    0.26%   │   │││                              0x00007f000d23d6ef: shr    $0x9,%rcx
  0.04%    0.03%   │   │││                              0x00007f000d23d6f3: movabs $0x7f001e6f3000,%rbx
           0.00%   │   │││                              0x00007f000d23d6fd: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                   │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                   │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                   │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.24%    0.21%   │╭  │││                              0x00007f000d23d701: jmpq   0x00007f000d23d7fc
  0.34%    0.29%   ││  │││               ↗              0x00007f000d23d706: or     $0x20,%r9d         ;*iload_2
                   ││  │││               │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││  │││               │                                                            ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.10%   ││  │││               │↗             0x00007f000d23d70a: mov    0x60(%rsp),%r10
  0.13%    0.10%   ││  │││               ││             0x00007f000d23d70f: mov    0x14(%r10),%r10d   ;*getfield re2
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@1 (line 280)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.24%    0.20%   ││  │││               ││             0x00007f000d23d713: movzbl 0x18(%r12,%r10,8),%r14d  ;*getfield longest
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                   ││  │││               ││                                                           ; implicit exception: dispatches to 0x00007f000d23e9e1
  0.64%    0.65%   ││  │││               ││             0x00007f000d23d719: mov    0x28(%rsp),%r11d
  0.04%    0.06%   ││  │││               ││             0x00007f000d23d71e: mov    0xc(%r12,%r11,8),%r11d  ;*getfield size
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.12%    0.09%   ││  │││               ││             0x00007f000d23d723: mov    0x38(%rsp),%r8d
  0.11%    0.12%   ││  │││               ││             0x00007f000d23d728: add    0x1c(%rsp),%r8d    ;*iadd
                   ││  │││               ││                                                           ; - com.google.re2j.Machine::match@336 (line 246)
  0.46%    0.41%   ││  │││               ││             0x00007f000d23d72d: test   %r11d,%r11d
                   ││╭ │││               ││             0x00007f000d23d730: jle    0x00007f000d23d804  ;*if_icmpge
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@22 (line 282)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.06%   │││ │││               ││             0x00007f000d23d736: mov    0x70(%rsp),%r10
  0.07%    0.09%   │││ │││               ││             0x00007f000d23d73b: mov    0x10(%r10),%ecx
  0.09%    0.09%   │││ │││               ││             0x00007f000d23d73f: mov    0x60(%rsp),%r10
  0.44%    0.39%   │││ │││               ││             0x00007f000d23d744: movzbl 0x11(%r10),%r10d
  0.39%    0.43%   │││ │││               ││             0x00007f000d23d749: mov    0x38(%rsp),%ebx
  0.07%    0.05%   │││ │││               ││             0x00007f000d23d74d: mov    $0x1,%edx
  0.10%    0.05%   │││ │││               ││             0x00007f000d23d752: xor    %edi,%edi
  0.39%    0.37%   │││ │││               ││             0x00007f000d23d754: cmp    %ecx,%ebx
  0.17%    0.13%   │││ │││               ││             0x00007f000d23d756: cmovne %edi,%edx          ;*invokespecial step
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.16%    0.16%   │││ │││               ││             0x00007f000d23d759: vmovd  %edx,%xmm1
  0.40%    0.43%   │││ │││               ││             0x00007f000d23d75d: test   %r10d,%r10d
                   │││ │││               ││             0x00007f000d23d760: jne    0x00007f000d23de99  ;*aload_0
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@25 (line 285)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.19%    0.17%   │││ │││               ││             0x00007f000d23d766: mov    0x28(%rsp),%r10d
  0.04%    0.08%   │││ │││               ││             0x00007f000d23d76b: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@82 (line 295)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.10%    0.12%   │││ │││               ││             0x00007f000d23d770: mov    0xc(%r12,%r10,8),%ebx  ;*aaload
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@87 (line 295)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                   │││ │││               ││                                                           ; implicit exception: dispatches to 0x00007f000d23de99
  0.64%    0.49%   │││ │││               ││             0x00007f000d23d775: test   %ebx,%ebx
                   │││ │││               ││             0x00007f000d23d777: jbe    0x00007f000d23de99
  0.32%    0.27%   │││ │││               ││             0x00007f000d23d77d: mov    %r11d,%edi
  0.02%    0.01%   │││ │││               ││             0x00007f000d23d780: dec    %edi
  0.05%    0.02%   │││ │││               ││             0x00007f000d23d782: cmp    %ebx,%edi
                   │││ │││               ││             0x00007f000d23d784: jae    0x00007f000d23de99
  0.31%    0.32%   │││ │││               ││             0x00007f000d23d78a: lea    (%r12,%r10,8),%rdi
  0.28%    0.27%   │││ │││               ││             0x00007f000d23d78e: xor    %r10d,%r10d        ;*aload_0
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::step@25 (line 285)
                   │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.51%    1.51%   │││ │││↗              ││             0x00007f000d23d791: mov    0x10(%rdi,%r10,4),%ecx  ;*aaload
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@87 (line 295)
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.42%    0.33%   │││ ││││              ││             0x00007f000d23d796: mov    0xc(%r12,%rcx,8),%edx  ;*getfield op
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@92 (line 297)
                   │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                   │││ ││││              ││                                                           ; implicit exception: dispatches to 0x00007f000d23e995
  2.42%    2.20%   │││ ││││              ││             0x00007f000d23d79b: cmp    $0x6,%edx
                   │││╭││││              ││             0x00007f000d23d79e: je     0x00007f000d23db72  ;*if_icmpne
                   ││││││││              ││                                                           ; - com.google.re2j.Machine::step@97 (line 297)
                   ││││││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.25%    1.23%   ││││││││              ││             0x00007f000d23d7a4: cmp    $0xa,%edx
                   ││││╰│││              ││             0x00007f000d23d7a7: je     0x00007f000d23d62c  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.56%    1.54%   ││││ │││              ││             0x00007f000d23d7ad: cmp    $0xb,%edx
                   ││││ │││              ││             0x00007f000d23d7b0: je     0x00007f000d23dc5d  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.06%    1.22%   ││││ │││              ││             0x00007f000d23d7b6: cmp    $0x9,%edx
                   ││││ │││              ││             0x00007f000d23d7b9: je     0x00007f000d23dcbd  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.13%    0.90%   ││││ │││              ││             0x00007f000d23d7bf: cmp    $0xc,%edx
                   ││││ │││              ││             0x00007f000d23d7c2: jne    0x00007f000d23dbff  ;*if_icmpne
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.71%    1.81%   ││││ │││              ││             0x00007f000d23d7c8: mov    0x1c(%r12,%rcx,8),%ebx  ;*getfield f0
                   ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.82%    0.84%   ││││ │││              ││             0x00007f000d23d7cd: cmp    %eax,%ebx
                   ││││ ╰││              ││             0x00007f000d23d7cf: je     0x00007f000d23d62c  ;*if_icmpeq
                   ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.97%    1.78%   ││││  ││              ││             0x00007f000d23d7d5: mov    0x20(%r12,%rcx,8),%ebx  ;*getfield f1
                   ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.45%    0.52%   ││││  ││              ││             0x00007f000d23d7da: cmp    %eax,%ebx
                   ││││  ╰│              ││             0x00007f000d23d7dc: je     0x00007f000d23d62c  ;*if_icmpeq
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.36%    1.37%   ││││   │              ││             0x00007f000d23d7e2: mov    0x24(%r12,%rcx,8),%ebx  ;*getfield f2
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.87%    0.91%   ││││   │              ││             0x00007f000d23d7e7: cmp    %eax,%ebx
                   ││││   │              ││             0x00007f000d23d7e9: je     0x00007f000d23dd1d  ;*if_icmpeq
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.81%    1.89%   ││││   │              ││             0x00007f000d23d7ef: mov    0x28(%r12,%rcx,8),%ebx  ;*getfield f3
                   ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.41%    0.44%   ││││   │              ││             0x00007f000d23d7f4: cmp    %eax,%ebx
                   ││││   │              ││             0x00007f000d23d7f6: je     0x00007f000d23dd85  ;*aload
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::step@207 (line 315)
                   ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.18%    1.17%   │↘││   │              ││             0x00007f000d23d7fc: inc    %r10d              ;*iinc
                   │ ││   │              ││                                                           ; - com.google.re2j.Machine::step@218 (line 282)
                   │ ││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.64%    0.79%   │ ││   │              ││             0x00007f000d23d7ff: cmp    %r11d,%r10d
                   │ ││   ╰              ││             0x00007f000d23d802: jl     0x00007f000d23d791  ;*if_icmpge
                   │ ││                  ││                                                           ; - com.google.re2j.Machine::step@22 (line 282)
                   │ ││                  ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.19%    0.25%   │ ↘│                  ││             0x00007f000d23d804: mov    0x28(%rsp),%r11d
  0.18%    0.22%   │  │                  ││             0x00007f000d23d809: movzbl 0x18(%r12,%r11,8),%r11d
  0.21%    0.39%   │  │                  ││             0x00007f000d23d80f: test   %r11d,%r11d
                   │  │    ╭             ││             0x00007f000d23d812: jne    0x00007f000d23d836  ;*ifeq
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.18%    0.38%   │  │    │             ││             0x00007f000d23d814: mov    0x28(%rsp),%r10d
  0.07%    0.14%   │  │    │             ││             0x00007f000d23d819: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.12%    0.18%   │  │    │             ││             0x00007f000d23d81e: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.49%    0.61%   │  │    │             ││             0x00007f000d23d824: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.83%    1.25%   │  │    │             ││             0x00007f000d23d829: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                   │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.37%    0.58%   │  │    │             ││             0x00007f000d23d82e: test   %ebp,%ebp
                   │  │    │             ││             0x00007f000d23d830: jne    0x00007f000d23e08d  ;*invokevirtual clear
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                   │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.06%   │  │    ↘             ││             0x00007f000d23d836: mov    0x60(%rsp),%r10
  0.15%    0.15%   │  │                  ││             0x00007f000d23d83b: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │  │                  ││                                                           ; - com.google.re2j.Machine::match@374 (line 250)
  0.38%    0.42%   │  │                  ││             0x00007f000d23d840: mov    0x60(%rsp),%r10
  0.23%    0.26%   │  │                  ││             0x00007f000d23d845: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │  │                  ││                                                           ; - com.google.re2j.Machine::match@367 (line 250)
  0.07%    0.05%   │  │                  ││             0x00007f000d23d84a: mov    0x1c(%rsp),%r10d
  0.11%    0.17%   │  │                  ││             0x00007f000d23d84f: test   %r10d,%r10d
                   │  │     ╭            ││             0x00007f000d23d852: je     0x00007f000d23dac6  ;*ifne
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@360 (line 247)
  0.34%    0.41%   │  │     │            ││             0x00007f000d23d858: test   %ebp,%ebp
                   │  │     │            ││             0x00007f000d23d85a: jne    0x00007f000d23dfa5  ;*ifne
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@370 (line 250)
  0.21%    0.28%   │  │     │            ││             0x00007f000d23d860: test   %eax,%eax
                   │  │     │            ││             0x00007f000d23d862: jne    0x00007f000d23e04d  ;*ifeq
                   │  │     │            ││                                                           ; - com.google.re2j.Machine::match@377 (line 250)
  0.09%    0.07%   │  │     │            ││             0x00007f000d23d868: cmp    $0xffffffff,%r13d
                   │  │     │╭           ││             0x00007f000d23d86c: je     0x00007f000d23dab2  ;*if_icmpeq
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@399 (line 258)
  0.14%    0.17%   │  │     ││           ││             0x00007f000d23d872: mov    %r13d,0x18(%rsp)
  0.34%    0.40%   │  │     ││           ││             0x00007f000d23d877: mov    0x70(%rsp),%r10
  0.16%    0.32%   │  │     ││           ││             0x00007f000d23d87c: mov    0x10(%r10),%r10d   ;*getfield end
                   │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.15%    0.09%   │  │     ││           ││             0x00007f000d23d880: mov    0x24(%rsp),%ecx
  0.09%    0.19%   │  │     ││           ││             0x00007f000d23d884: add    %r8d,%ecx
  0.31%    0.48%   │  │     ││           ││             0x00007f000d23d887: mov    0x70(%rsp),%r11
  0.23%    0.27%   │  │     ││           ││             0x00007f000d23d88c: add    0xc(%r11),%ecx     ;*iadd
                   │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.14%    0.20%   │  │     ││           ││             0x00007f000d23d890: cmp    %r10d,%ecx
                   │  │     ││╭          ││             0x00007f000d23d893: jge    0x00007f000d23db05  ;*if_icmpge
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.19%    0.31%   │  │     │││          ││             0x00007f000d23d899: mov    0x14(%r11),%ebp    ;*getfield str
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.23%    0.37%   │  │     │││          ││             0x00007f000d23d89d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f000d23e9f1
  0.39%    0.64%   │  │     │││          ││             0x00007f000d23d8a2: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │  │     │││          ││             0x00007f000d23d8a9: jne    0x00007f000d23de61
  0.27%    0.30%   │  │     │││          ││             0x00007f000d23d8af: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.11%    0.10%   │  │     │││          ││             0x00007f000d23d8b3: test   %ecx,%ecx
                   │  │     │││          ││             0x00007f000d23d8b5: jl     0x00007f000d23dfe9  ;*iflt
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@1 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.19%    0.29%   │  │     │││          ││             0x00007f000d23d8bb: mov    0xc(%rbx),%edx     ;*getfield value
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@6 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.16%    0.20%   │  │     │││          ││             0x00007f000d23d8be: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@9 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
                   │  │     │││          ││                                                           ; implicit exception: dispatches to 0x00007f000d23ea05
  2.39%    3.30%   │  │     │││          ││             0x00007f000d23d8c3: cmp    %ebp,%ecx
                   │  │     │││          ││             0x00007f000d23d8c5: jge    0x00007f000d23e0c5  ;*if_icmplt
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@10 (line 657)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.59%    0.81%   │  │     │││          ││             0x00007f000d23d8cb: cmp    %ebp,%ecx
                   │  │     │││          ││             0x00007f000d23d8cd: jae    0x00007f000d23de1d
  0.05%    0.03%   │  │     │││          ││             0x00007f000d23d8d3: lea    (%r12,%rdx,8),%r10
  0.00%            │  │     │││          ││             0x00007f000d23d8d7: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                   │  │     │││          ││                                                           ; - java.lang.String::charAt@27 (line 660)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.13%    0.18%   │  │     │││          ││             0x00007f000d23d8dd: cmp    $0xd800,%r10d
                   │  │     │││          ││             0x00007f000d23d8e4: jge    0x00007f000d23e101  ;*if_icmplt
                   │  │     │││          ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.62%    0.94%   │  │     │││          ││             0x00007f000d23d8ea: shl    $0x3,%r10d         ;*ishl
                   │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.11%    0.13%   │  │     │││          ││             0x00007f000d23d8ee: mov    %r10d,%ecx
  0.01%    0.01%   │  │     │││          ││             0x00007f000d23d8f1: and    $0x7,%ecx
  0.45%    0.65%   │  │     │││          ││             0x00007f000d23d8f4: or     $0x1,%r10d
  0.10%    0.13%   │  │     │││          ││             0x00007f000d23d8f8: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.50%    0.70%   │  │     │││          ││             0x00007f000d23d8fb: sar    $0x3,%r10d         ; OopMap{[8]=Oop [16]=Oop [96]=Oop [112]=Oop off=1279}
                   │  │     │││          ││                                                           ;*goto
                   │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@437 (line 266)
  0.04%    0.01%   │  │     │││          ││  ↗ ↗        0x00007f000d23d8ff: test   %eax,0x18aad6fb(%rip)        # 0x00007f0025ceb000
                   │  │     │││          ││  │ │                                                      ;*goto
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@437 (line 266)
                   │  │     │││          ││  │ │                                                      ;   {poll}
  0.08%    0.08%   │  │     │││          ││  │ │        0x00007f000d23d905: mov    0x60(%rsp),%r11
  0.09%    0.09%   │  │     │││          ││  │ │        0x00007f000d23d90a: mov    0x14(%r11),%r11d   ;*getfield re2
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.67%    0.64%   │  │     │││          ││  │ │        0x00007f000d23d90e: vmovd  %r11d,%xmm5
  0.01%    0.01%   │  │     │││          ││  │ │        0x00007f000d23d913: mov    0x60(%rsp),%r11
  0.09%    0.01%   │  │     │││          ││  │ │        0x00007f000d23d918: mov    0x28(%r11),%edx    ;*getfield matchcap
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.12%    0.06%   │  │     │││          ││  │ │        0x00007f000d23d91c: mov    0x10(%rsp),%r11
  0.56%    0.52%   │  │     │││          ││  │ │        0x00007f000d23d921: shr    $0x3,%r11
  0.03%    0.02%   │  │     │││          ││  │ │        0x00007f000d23d925: mov    %r11d,0x28(%rsp)
  0.04%    0.03%   │  │     │││          ││  │ │        0x00007f000d23d92a: mov    0x24(%rsp),%ebx
  0.09%    0.11%   │  │     │││          ││  │ │        0x00007f000d23d92e: mov    %ebx,0x1c(%rsp)
  0.62%    0.49%   │  │     │││          ││  │ │        0x00007f000d23d932: mov    %r8d,0x38(%rsp)
  0.01%    0.02%   │  │     │││          ││  │ │        0x00007f000d23d937: mov    %ecx,0x24(%rsp)
  0.10%    0.04%   │  │     │││          ││  │ │        0x00007f000d23d93b: mov    %r10d,0x20(%rsp)
  0.11%    0.09%   │  │     │││          ││  │ │        0x00007f000d23d940: mov    0x8(%rsp),%r10
  0.46%    0.42%   │  │     │││          ││  │ │        0x00007f000d23d945: mov    %r10,0x10(%rsp)
  0.02%    0.02%   │  │     │││          ││  │ │        0x00007f000d23d94a: vmovd  %edx,%xmm3         ;*aload
                   │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.06%    0.07%   ↘  │     │││          ││  │ │        0x00007f000d23d94e: mov    0x28(%rsp),%r11d
  0.10%    0.12%      │     │││          ││  │ │        0x00007f000d23d953: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f000d23e9a5
  0.63%    0.51%      │     │││          ││  │ │        0x00007f000d23d959: test   %r10d,%r10d
                      │     │││╭         ││  │ │        0x00007f000d23d95c: je     0x00007f000d23d990  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.02%               │     ││││         ││  │ │        0x00007f000d23d95e: mov    0x2c(%rsp),%r10d
  0.07%    0.07%      │     ││││         ││  │ │        0x00007f000d23d963: test   %r10d,%r10d
                      │     ││││         ││  │ │        0x00007f000d23d966: jne    0x00007f000d23e16d  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@148 (line 212)
  0.06%    0.06%      │     ││││         ││  │ │        0x00007f000d23d96c: test   %eax,%eax
                      │     ││││         ││  │ │        0x00007f000d23d96e: jne    0x00007f000d23e1b5  ;*ifeq
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.49%    0.46%      │     ││││         ││  │ │        0x00007f000d23d974: vmovd  %xmm5,%r10d
  0.01%    0.00%      │     ││││         ││  │ │        0x00007f000d23d979: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f000d23ea15
  0.03%    0.05%      │     ││││         ││  │ │        0x00007f000d23d97e: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                      │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@1 (line 635)
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f000d23ea25
  0.08%    0.03%      │     ││││         ││  │ │        0x00007f000d23d983: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                      │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@4 (line 635)
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                      │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f000d23ea35
  0.94%    1.06%      │     ││││         ││  │ │        0x00007f000d23d988: test   %ebp,%ebp
                      │     ││││         ││  │ │        0x00007f000d23d98a: jne    0x00007f000d23e145  ;*aload_0
                      │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.50%    0.40%      │     │││↘         ││  │ │        0x00007f000d23d990: test   %eax,%eax
                      │     │││          ││  │ │        0x00007f000d23d992: jne    0x00007f000d23df01  ;*ifne
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@271 (line 237)
  0.01%    0.01%      │     │││          ││  │ │        0x00007f000d23d998: mov    0x38(%rsp),%r11d
  0.09%    0.06%      │     │││          ││  │ │        0x00007f000d23d99d: test   %r11d,%r11d
                      │     │││ ╭        ││  │ │        0x00007f000d23d9a0: je     0x00007f000d23d9b0  ;*ifeq
                      │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@275 (line 237)
  0.11%    0.22%      │     │││ │        ││  │ │        0x00007f000d23d9a2: mov    0x5c(%rsp),%r10d
  0.49%    0.36%      │     │││ │        ││  │ │        0x00007f000d23d9a7: test   %r10d,%r10d
                      │     │││ │        ││  │ │        0x00007f000d23d9aa: jne    0x00007f000d23df51  ;*aload_0
                      │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@282 (line 240)
           0.01%      │     │││ ↘        ││  │ │        0x00007f000d23d9b0: mov    0x60(%rsp),%r10
  0.03%    0.03%      │     │││          ││  │ │        0x00007f000d23d9b5: movzbl 0x11(%r10),%ebp    ;*getfield captures
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.20%    0.15%      │     │││          ││  │ │        0x00007f000d23d9ba: test   %ebp,%ebp
                      │     │││          ││  │ │        0x00007f000d23d9bc: jne    0x00007f000d23e029  ;*ifeq
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.48%    0.21%      │     │││          ││  │ │        0x00007f000d23d9c2: mov    0x18(%r10),%r11d   ;*getfield prog
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@297 (line 243)
  0.02%    0.01%      │     │││          ││  │ │        0x00007f000d23d9c6: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                      │     │││          ││  │ │                                                      ; implicit exception: dispatches to 0x00007f000d23e9b5
  0.08%    0.02%      │     │││          ││  │ │        0x00007f000d23d9cb: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f000d23e9c5
  0.80%    0.34%      │     │││          ││  │ │        0x00007f000d23d9d0: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                      │     │││          ││  │ │        0x00007f000d23d9d7: jne    0x00007f000d23dded  ;*ifeq
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.63%    0.26%      │     │││          ││  │ │        0x00007f000d23d9dd: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@314 (line 243)
  0.00%    0.00%      │     │││          ││  │ │        0x00007f000d23d9e1: mov    0x28(%rsp),%r11d
  0.02%    0.02%      │     │││          ││  │ │        0x00007f000d23d9e6: lea    (%r12,%r11,8),%r10  ;*aload
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.10%    0.10%      │     │││          ││  │ │        0x00007f000d23d9ea: mov    %r10,0x8(%rsp)
  0.65%    0.34%      │     │││          ││  │ │        0x00007f000d23d9ef: vmovd  %xmm3,%r11d
  0.00%    0.00%      │     │││          ││  │ │        0x00007f000d23d9f4: mov    %r11,%r8
  0.02%    0.01%      │     │││          ││  │ │        0x00007f000d23d9f7: shl    $0x3,%r8           ;*getfield matchcap
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.10%    0.07%      │     │││          ││  │ │        0x00007f000d23d9fb: mov    %r10,%rdx
  0.52%    0.45%      │     │││          ││  │ │        0x00007f000d23d9fe: mov    0x38(%rsp),%ecx
  0.01%               │     │││          ││  │ │        0x00007f000d23da02: xor    %edi,%edi
  0.04%               │     │││          ││  │ │        0x00007f000d23da04: mov    0x60(%rsp),%r10
  0.08%    0.05%      │     │││          ││  │ │        0x00007f000d23da09: mov    %r10,(%rsp)
  0.54%    0.41%      │     │││          ││  │ │        0x00007f000d23da0d: xchg   %ax,%ax
           0.00%      │     │││          ││  │ │        0x00007f000d23da0f: callq  0x00007f000d046020  ; OopMap{[8]=Oop [16]=Oop [40]=NarrowOop [96]=Oop [112]=Oop off=1556}
                      │     │││          ││  │ │                                                      ;*invokevirtual add
                      │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@314 (line 243)
                      │     │││          ││  │ │                                                      ;   {optimized virtual_call}
  0.00%               │     │││          ││  │ │        0x00007f000d23da14: mov    0x18(%rsp),%eax
  0.20%    0.18%      │     │││          ││  │ │        0x00007f000d23da18: test   %eax,%eax
                      │     │││  ╭       ││  │ │        0x00007f000d23da1a: jl     0x00007f000d23daa1  ;*ifge
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.49%    0.59%      │     │││  │       ││  │ │        0x00007f000d23da20: xor    %r9d,%r9d          ;*iload_0
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                      │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%      │     │││  │       ││↗ │ │        0x00007f000d23da23: cmp    $0xa,%eax
                      │     │││  │╭      │││ │ │        0x00007f000d23da26: je     0x00007f000d23db12  ;*iload_1
                      │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                      │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.11%      │     │││  ││      │││ │ │↗       0x00007f000d23da2c: mov    0x20(%rsp),%r13d
  0.07%    0.08%      │     │││  ││      │││ │ ││       0x00007f000d23da31: test   %r13d,%r13d
                      │     │││  ││╭     │││ │ ││       0x00007f000d23da34: jl     0x00007f000d23daac  ;*iload_1
                      │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                      │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.54%    0.53%      │     │││  │││     │││↗│ ││       0x00007f000d23da36: cmp    $0xa,%r13d
                      │     │││  │││╭    │││││ ││       0x00007f000d23da3a: je     0x00007f000d23db1b  ;*iload_0
                      │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                      │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.02%      │     │││  ││││    │││││ ││↗      0x00007f000d23da40: mov    0x18(%rsp),%r10d
  0.10%    0.15%      │     │││  ││││    │││││ │││      0x00007f000d23da45: add    $0xffffffbf,%r10d
  0.10%    0.05%      │     │││  ││││    │││││ │││      0x00007f000d23da49: cmp    $0x1a,%r10d
                      │     │││  ││││╭   │││││ │││      0x00007f000d23da4d: jb     0x00007f000d23da62  ;*if_icmple
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.47%    0.56%      │     │││  │││││   │││││ │││      0x00007f000d23da4f: mov    0x18(%rsp),%r11d
  0.01%    0.01%      │     │││  │││││   │││││ │││      0x00007f000d23da54: add    $0xffffff9f,%r11d
  0.07%    0.08%      │     │││  │││││   │││││ │││      0x00007f000d23da58: cmp    $0x1a,%r11d
                      │     │││  │││││╭  │││││ │││      0x00007f000d23da5c: jae    0x00007f000d23db24  ;*iconst_1
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.10%      │     │││  ││││↘│  │││││ │││↗     0x00007f000d23da62: mov    $0x1,%ebp          ;*ireturn
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.43%    0.44%      │     │││  ││││ │  │││││ ││││↗    0x00007f000d23da67: mov    0x20(%rsp),%r10d
  0.09%    0.07%      │     │││  ││││ │  │││││ │││││    0x00007f000d23da6c: add    $0xffffffbf,%r10d
  0.09%    0.06%      │     │││  ││││ │  │││││ │││││    0x00007f000d23da70: cmp    $0x1a,%r10d
                      │     │││  ││││ │╭ │││││ │││││    0x00007f000d23da74: jb     0x00007f000d23da89  ;*if_icmple
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.06%    0.08%      │     │││  ││││ ││ │││││ │││││    0x00007f000d23da76: mov    0x20(%rsp),%r11d
  0.43%    0.54%      │     │││  ││││ ││ │││││ │││││    0x00007f000d23da7b: add    $0xffffff9f,%r11d
  0.11%    0.13%      │     │││  ││││ ││ │││││ │││││    0x00007f000d23da7f: cmp    $0x1a,%r11d
                      │     │││  ││││ ││╭│││││ │││││    0x00007f000d23da83: jae    0x00007f000d23db4d  ;*iconst_1
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.11%    0.06%      │     │││  ││││ │↘││││││ │││││↗   0x00007f000d23da89: mov    $0x1,%r10d         ;*ireturn
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.29%    0.14%      │     │││  ││││ │ ││││││ ││││││↗  0x00007f000d23da8f: cmp    %r10d,%ebp
                      │     │││  ││││ │ │╰││││ │││││││  0x00007f000d23da92: je     0x00007f000d23d706  ;*if_icmpeq
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.03%    0.07%      │     │││  ││││ │ │ ││││ │││││││  0x00007f000d23da98: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                      │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.06%      │     │││  ││││ │ │ ╰│││ │││││││  0x00007f000d23da9c: jmpq   0x00007f000d23d70a
  0.01%    0.00%      │     │││  ↘│││ │ │  │││ │││││││  0x00007f000d23daa1: mov    $0x5,%r9d
                      │     │││   │││ │ │  ╰││ │││││││  0x00007f000d23daa7: jmpq   0x00007f000d23da23
  0.01%    0.01%      │     │││   │↘│ │ │   ││ │││││││  0x00007f000d23daac: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                      │     │││   │ │ │ │   ││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                      │     │││   │ │ │ │   ╰│ │││││││  0x00007f000d23dab0: jmp    0x00007f000d23da36
  0.01%               │     │↘│   │ │ │ │    │ │││││││  0x00007f000d23dab2: mov    %r13d,0x18(%rsp)
  0.01%    0.01%      │     │ │   │ │ │ │    │ │││││││  0x00007f000d23dab7: mov    0x24(%rsp),%ecx
                      │     │ │   │ │ │ │    │ │││││││  0x00007f000d23dabb: mov    $0xffffffff,%r10d
                      │     │ │   │ │ │ │    ╰ │││││││  0x00007f000d23dac1: jmpq   0x00007f000d23d8ff
  0.00%    0.00%      │     ↘ │   │ │ │ │      │││││││  0x00007f000d23dac6: test   %ebp,%ebp
                      │       │   │ │ │ │      │││││││  0x00007f000d23dac8: jne    0x00007f000d23e791  ;*ifeq
                      │       │   │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                      │       │   │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
  0.00%    0.00%      │       │   │ │ │ │      │││││││  0x00007f000d23dace: mov    0x10(%rsp),%r10
           0.01%      │       │   │ │ │ │      │││││││  0x00007f000d23dad3: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f000d23eae9
  0.01%               │       │   │ │ │ │      │││││││  0x00007f000d23dad8: test   %r11d,%r11d
                      │       │   │ │ │ │     ╭│││││││  0x00007f000d23dadb: jne    0x00007f000d23daf6  ;*ifeq
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                      │       │   │ │ │ │     ││││││││  0x00007f000d23dadd: mov    0x1c(%r10),%ebp    ;*getfield pcs
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                      │       │   │ │ │ │     ││││││││  0x00007f000d23dae1: movb   $0x1,0x18(%r10)    ;*putfield empty
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                      │       │   │ │ │ │     ││││││││  0x00007f000d23dae6: mov    %r12,0x10(%r10)    ;*putfield pcsl
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                      │       │   │ │ │ │     ││││││││  0x00007f000d23daea: mov    %r12d,0xc(%r10)    ;*putfield size
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                      │       │   │ │ │ │     ││││││││  0x00007f000d23daee: test   %ebp,%ebp
                      │       │   │ │ │ │     ││││││││  0x00007f000d23daf0: jne    0x00007f000d23e835  ;*if_icmpne
                      │       │   │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.01%      │       │   │ │ │ │     ↘│││││││  0x00007f000d23daf6: add    $0xb0,%rsp
           0.00%      │       │   │ │ │ │      │││││││  0x00007f000d23dafd: pop    %rbp
           0.01%      │       │   │ │ │ │      │││││││  0x00007f000d23dafe: test   %eax,0x18aad4fc(%rip)        # 0x00007f0025ceb000
                      │       │   │ │ │ │      │││││││                                                ;   {poll_return}
                      │       │   │ │ │ │      │││││││  0x00007f000d23db04: retq   
  0.00%    0.02%      │       ↘   │ │ │ │      │││││││  0x00007f000d23db05: mov    $0xffffffff,%r10d
           0.00%      │           │ │ │ │      │││││││  0x00007f000d23db0b: xor    %ecx,%ecx
                      │           │ │ │ │      ╰││││││  0x00007f000d23db0d: jmpq   0x00007f000d23d8ff
                      │           ↘ │ │ │       ││││││  0x00007f000d23db12: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                      │             │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                      │             │ │ │       ╰│││││  0x00007f000d23db16: jmpq   0x00007f000d23da2c
           0.00%      │             ↘ │ │        │││││  0x00007f000d23db1b: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                      │               │ │        │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%               │               │ │        ╰││││  0x00007f000d23db1f: jmpq   0x00007f000d23da40
  0.02%    0.04%      │               ↘ │         ││││  0x00007f000d23db24: mov    0x18(%rsp),%r10d
  0.10%    0.09%      │                 │         ││││  0x00007f000d23db29: add    $0xffffffd0,%r10d
                      │                 │         ││││  0x00007f000d23db2d: cmp    $0xa,%r10d
                      │                 │         ╰│││  0x00007f000d23db31: jb     0x00007f000d23da62  ;*if_icmple
                      │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                 │          │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.02%      │                 │          │││  0x00007f000d23db37: mov    0x18(%rsp),%r10d
  0.01%    0.03%      │                 │          │││  0x00007f000d23db3c: cmp    $0x5f,%r10d
  0.08%    0.08%      │                 │          │││  0x00007f000d23db40: je     0x00007f000d23e8e9  ;*if_icmpne
                      │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                      │                 │          │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.01%    0.00%      │                 │          │││  0x00007f000d23db46: xor    %ebp,%ebp
  0.03%    0.00%      │                 │          ╰││  0x00007f000d23db48: jmpq   0x00007f000d23da67
  0.10%    0.09%      │                 ↘           ││  0x00007f000d23db4d: mov    0x20(%rsp),%r10d
  0.21%    0.23%      │                             ││  0x00007f000d23db52: add    $0xffffffd0,%r10d
  0.10%    0.07%      │                             ││  0x00007f000d23db56: cmp    $0xa,%r10d
                      │                             ╰│  0x00007f000d23db5a: jb     0x00007f000d23da89  ;*if_icmple
                      │                              │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                      │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                              │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.03%      │                              │  0x00007f000d23db60: cmp    $0x5f,%r13d
                      │                              │  0x00007f000d23db64: je     0x00007f000d23e929  ;*if_icmpne
                      │                              │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                      │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                      │                              │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.00%    0.01%      │                              │  0x00007f000d23db6a: xor    %r10d,%r10d
  0.03%    0.00%      │                              ╰  0x00007f000d23db6d: jmpq   0x00007f000d23da8f
                      ↘                                 0x00007f000d23db72: mov    0x60(%rsp),%rcx
                                                        0x00007f000d23db77: movb   $0x1,0x10(%rcx)    ;*putfield matched
                                                                                                      ; - com.google.re2j.Machine::step@161 (line 305)
                                                                                                      ; - com.google.re2j.Machine::match@355 (line 246)
                                                        0x00007f000d23db7b: test   %r14d,%r14d
                                                        0x00007f000d23db7e: jne    0x00007f000d23e851  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::step@166 (line 306)
                                                                                                      ; - com.google.re2j.Machine::match@355 (line 246)
  0.00%                                                 0x00007f000d23db84: mov    0x28(%rsp),%r10d
                                                        0x00007f000d23db89: movzbl 0x18(%r12,%r10,8),%r11d
                                                        0x00007f000d23db8f: test   %r11d,%r11d
                                                        0x00007f000d23db92: jne    0x00007f000d23dbb1  ;*ifeq
                                                                                                      ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                                      ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                      ; - com.google.re2j.Machine::step@173 (line 308)
                                                                                                      ; - com.google.re2j.Machine::match@355 (line 246)
                                                        0x00007f000d23db94: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
....................................................................................................
 59.78%   60.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 505 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f000d2201c0: mov    0x8(%rsi),%r10d
                     0x00007f000d2201c4: shl    $0x3,%r10
                     0x00007f000d2201c8: cmp    %r10,%rax
                     0x00007f000d2201cb: jne    0x00007f000d045e20  ;   {runtime_call}
                     0x00007f000d2201d1: data16 xchg %ax,%ax
                     0x00007f000d2201d4: nopl   0x0(%rax,%rax,1)
                     0x00007f000d2201dc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.16%    0.04%     0x00007f000d2201e0: mov    %eax,-0x14000(%rsp)
  0.53%    0.45%     0x00007f000d2201e7: push   %rbp
  0.01%              0x00007f000d2201e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.58%    0.76%     0x00007f000d2201ec: vmovq  %r8,%xmm6
           0.01%     0x00007f000d2201f1: vmovq  %rsi,%xmm4
  0.03%    0.05%     0x00007f000d2201f6: vmovd  %ecx,%xmm0
  0.09%    0.16%     0x00007f000d2201fa: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.65%    0.56%     0x00007f000d2201fd: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f000d220b71
           0.01%     0x00007f000d220201: cmp    $0x40,%ecx
                     0x00007f000d220204: jg     0x00007f000d2206dd  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%    0.01%     0x00007f000d22020a: mov    $0x1,%eax
  0.12%    0.06%     0x00007f000d22020f: mov    $0x1,%r8d
  0.53%    0.51%     0x00007f000d220215: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.15%    0.13%     0x00007f000d220218: mov    %r11,%r10
  0.53%    0.62%     0x00007f000d22021b: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%     0x00007f000d22021e: xor    %r13d,%r13d
  0.06%    0.04%     0x00007f000d220221: test   %r10,%r10
                     0x00007f000d220224: jne    0x00007f000d220711  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.08%    0.08%     0x00007f000d22022a: cmp    $0x40,%ecx
                     0x00007f000d22022d: jge    0x00007f000d220755  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.58%    0.72%     0x00007f000d220233: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.01%     0x00007f000d220237: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.03%    0.04%     0x00007f000d22023a: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.12%    0.08%     0x00007f000d22023d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.63%    0.49%     0x00007f000d220241: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f000d220b85
  0.00%              0x00007f000d220246: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f000d22024d: jne    0x00007f000d2205b1
  0.04%    0.02%     0x00007f000d220253: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.09%    0.10%     0x00007f000d220257: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.54%    0.50%     0x00007f000d22025b: cmp    $0x40,%ecx
                     0x00007f000d22025e: jg     0x00007f000d220789  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
           0.01%     0x00007f000d220264: mov    $0x1,%r11d
  0.02%    0.04%     0x00007f000d22026a: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.72%    0.69%     0x00007f000d22026d: mov    %r8,%rbx
  0.02%    0.04%     0x00007f000d220270: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.07%    0.09%     0x00007f000d220273: test   %rbx,%rbx
                     0x00007f000d220276: jne    0x00007f000d2207c9  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.67%    0.40%     0x00007f000d22027c: cmp    $0x40,%ecx
                     0x00007f000d22027f: jge    0x00007f000d220811  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.00%              0x00007f000d220285: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.05%     0x00007f000d220288: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.06%    0.12%     0x00007f000d22028c: mov    0x70(%rsp),%r11
  0.59%    0.41%     0x00007f000d220291: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                                                                   ; implicit exception: dispatches to 0x00007f000d220bad
           0.01%     0x00007f000d220296: test   %ebp,%ebp
                     0x00007f000d220298: jne    0x00007f000d220851  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.03%    0.04%     0x00007f000d22029e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.10%    0.15%     0x00007f000d2202a1: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.54%    0.63%     0x00007f000d2202a4: mov    %ecx,%esi
  0.03%    0.02%     0x00007f000d2202a6: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.05%    0.04%     0x00007f000d2202a8: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.11%    0.11%     0x00007f000d2202ab: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f000d220bbd
  0.54%    0.48%     0x00007f000d2202b0: cmp    %edi,%ecx
                  ╭  0x00007f000d2202b2: jae    0x00007f000d220535
  0.02%    0.01%  │  0x00007f000d2202b8: vmovd  %esi,%xmm1
  0.03%    0.02%  │  0x00007f000d2202bc: vmovd  %ebx,%xmm2
  0.09%    0.12%  │  0x00007f000d2202c0: mov    %ecx,0x18(%rsp)
  0.57%    0.45%  │  0x00007f000d2202c4: mov    %r10,%rcx
           0.01%  │  0x00007f000d2202c7: mov    0x70(%rsp),%r14
  0.03%    0.06%  │  0x00007f000d2202cc: mov    0x8(%r12,%rbx,8),%r11d
  0.10%    0.11%  │  0x00007f000d2202d1: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f000d2202d8: jne    0x00007f000d2205e1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.61%    0.82%  │  0x00007f000d2202de: vmovq  %xmm4,%r10
  0.01%    0.01%  │  0x00007f000d2202e3: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 266)
  0.04%    0.01%  │  0x00007f000d2202e7: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.11%    0.10%  │  0x00007f000d2202eb: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.57%    0.62%  │  0x00007f000d2202ef: mov    0x18(%rsp),%r10d
  0.00%    0.00%  │  0x00007f000d2202f4: lea    0x10(%r11,%r10,4),%r10
  0.04%    0.04%  │  0x00007f000d2202f9: mov    %ecx,(%r10)
  0.27%    0.25%  │  0x00007f000d2202fc: shr    $0x9,%r10
  0.47%    0.43%  │  0x00007f000d220300: movabs $0x7f001e6f3000,%rbx
           0.00%  │  0x00007f000d22030a: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.17%    0.13%  │  0x00007f000d22030e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f000d220bd5
  0.13%    0.09%  │  0x00007f000d220313: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f000d22031a: jne    0x00007f000d220619
  0.46%    0.35%  │  0x00007f000d220320: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.01%    0.01%  │  0x00007f000d220324: vmovq  %r10,%xmm3
  0.07%    0.06%  │  0x00007f000d220329: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.13%    0.20%  │  0x00007f000d22032d: vmovd  %ecx,%xmm5
  0.51%    0.22%  │  0x00007f000d220331: cmp    $0x40,%ecx
                  │  0x00007f000d220334: jg     0x00007f000d22088d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.00%    0.00%  │  0x00007f000d22033a: mov    $0x1,%r10d
  0.09%    0.17%  │  0x00007f000d220340: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.60%    0.49%  │  0x00007f000d220343: mov    %r8,%rcx
  0.12%    0.12%  │  0x00007f000d220346: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.11%    0.07%  │  0x00007f000d220349: test   %rcx,%rcx
                  │  0x00007f000d22034c: jne    0x00007f000d2208c9  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.49%    0.59%  │  0x00007f000d220352: vmovd  %xmm5,%ecx
  0.00%    0.00%  │  0x00007f000d220356: cmp    $0x40,%ecx
                  │  0x00007f000d220359: jge    0x00007f000d220911  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.11%    0.16%  │  0x00007f000d22035f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.07%    0.04%  │  0x00007f000d220362: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.48%    0.29%  │  0x00007f000d220366: mov    0x18(%rsp),%ecx
                  │  0x00007f000d22036a: add    $0x2,%ecx
  0.11%    0.11%  │  0x00007f000d22036d: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.09%    0.10%  │  0x00007f000d220370: mov    0x18(%rsp),%r10d
  0.58%    0.59%  │  0x00007f000d220375: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.00%    0.01%  │  0x00007f000d220379: cmp    %edi,%r10d
                  │  0x00007f000d22037c: jae    0x00007f000d220571  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.11%    0.17%  │  0x00007f000d220382: vmovd  %r9d,%xmm7
  0.08%    0.15%  │  0x00007f000d220387: vmovq  %xmm4,%r9
  0.42%    0.58%  │  0x00007f000d22038c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 267)
  0.00%    0.00%  │  0x00007f000d220390: vmovq  %xmm3,%r9
  0.11%    0.10%  │  0x00007f000d220395: mov    %r9,%rcx
  0.09%    0.09%  │  0x00007f000d220398: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.43%    0.58%  │  0x00007f000d22039c: movslq 0x18(%rsp),%r9
                  │  0x00007f000d2203a1: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.15%    0.10%  │  0x00007f000d2203a5: mov    %r9,%rdi
  0.13%    0.10%  │  0x00007f000d2203a8: add    $0x14,%rdi
  0.49%    0.50%  │  0x00007f000d2203ac: mov    %ecx,(%rdi)
  0.02%    0.01%  │  0x00007f000d2203ae: mov    %rdi,%rcx
  0.07%    0.15%  │  0x00007f000d2203b1: shr    $0x9,%rcx
  0.07%    0.07%  │  0x00007f000d2203b5: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.55%    0.43%  │  0x00007f000d2203b9: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f000d220bfd
  0.03%    0.04%  │  0x00007f000d2203be: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f000d2203c4: jne    0x00007f000d220649
  0.15%    0.16%  │  0x00007f000d2203ca: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%    0.15%  │  0x00007f000d2203ce: vmovq  %rcx,%xmm1
  0.43%    0.64%  │  0x00007f000d2203d3: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.00%    0.02%  │  0x00007f000d2203d6: vmovd  %ecx,%xmm2
  0.10%    0.14%  │  0x00007f000d2203da: cmp    $0x40,%ecx
                  │  0x00007f000d2203dd: jg     0x00007f000d220951  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.13%    0.12%  │  0x00007f000d2203e3: mov    $0x1,%edi
  0.46%    0.58%  │  0x00007f000d2203e8: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.36%    0.37%  │  0x00007f000d2203eb: mov    %r8,%rcx
  0.41%    0.38%  │  0x00007f000d2203ee: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%           │  0x00007f000d2203f1: test   %rcx,%rcx
                  │  0x00007f000d2203f4: jne    0x00007f000d220991  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.21%  │  0x00007f000d2203fa: vmovd  %xmm2,%ecx
  0.07%    0.16%  │  0x00007f000d2203fe: cmp    $0x40,%ecx
                  │  0x00007f000d220401: jge    0x00007f000d2209dd  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.52%    0.52%  │  0x00007f000d220407: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.00%  │  0x00007f000d22040a: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.17%  │  0x00007f000d22040e: vmovq  %xmm4,%rcx
  0.13%    0.11%  │  0x00007f000d220413: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 268)
  0.46%    0.39%  │  0x00007f000d220416: mov    %r9,%rdi
  0.01%    0.01%  │  0x00007f000d220419: add    $0x18,%rdi
  0.08%    0.11%  │  0x00007f000d22041d: vmovq  %xmm1,%rsi
  0.10%    0.14%  │  0x00007f000d220422: mov    %rsi,%rcx
  0.46%    0.65%  │  0x00007f000d220425: shr    $0x3,%rcx
  0.01%    0.00%  │  0x00007f000d220429: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.11%    0.09%  │  0x00007f000d22042b: mov    0x18(%rsp),%ecx
  0.13%    0.07%  │  0x00007f000d22042f: add    $0x3,%ecx
  0.46%    0.43%  │  0x00007f000d220432: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.01%    0.00%  │  0x00007f000d220435: shr    $0x9,%rdi
  0.14%    0.06%  │  0x00007f000d220439: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.17%    0.12%  │  0x00007f000d22043d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f000d220c25
  0.54%    0.50%  │  0x00007f000d220442: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f000d220448: jne    0x00007f000d22067d
  0.02%    0.02%  │  0x00007f000d22044e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.15%  │  0x00007f000d220452: vmovq  %rcx,%xmm1
  0.12%    0.18%  │  0x00007f000d220457: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.55%    0.51%  │  0x00007f000d22045a: vmovd  %ecx,%xmm3
  0.01%    0.02%  │  0x00007f000d22045e: cmp    $0x40,%ecx
                  │  0x00007f000d220461: jg     0x00007f000d220a1d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.11%    0.16%  │  0x00007f000d220467: mov    $0x1,%edi
  0.11%    0.14%  │  0x00007f000d22046c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.57%    0.56%  │  0x00007f000d22046f: mov    %r8,%rcx
  0.14%    0.10%  │  0x00007f000d220472: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.43%    0.38%  │  0x00007f000d220475: test   %rcx,%rcx
                  │  0x00007f000d220478: jne    0x00007f000d220a5d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.03%    0.02%  │  0x00007f000d22047e: vmovd  %xmm3,%ecx
  0.11%    0.13%  │  0x00007f000d220482: cmp    $0x40,%ecx
                  │  0x00007f000d220485: jge    0x00007f000d220aa9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.15%    0.15%  │  0x00007f000d22048b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.41%    0.60%  │  0x00007f000d22048f: vmovq  %xmm4,%r10
  0.00%    0.01%  │  0x00007f000d220494: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 269)
  0.14%    0.11%  │  0x00007f000d220498: mov    %r9,%rcx
  0.14%    0.11%  │  0x00007f000d22049b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.41%    0.43%  │  0x00007f000d22049f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.02%           │  0x00007f000d2204a2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.09%    0.12%  │  0x00007f000d2204a6: vmovq  %xmm1,%r10
  0.12%    0.14%  │  0x00007f000d2204ab: shr    $0x3,%r10
  0.55%    0.50%  │  0x00007f000d2204af: mov    %r10d,(%rcx)
  0.02%    0.03%  │  0x00007f000d2204b2: mov    %rcx,%r10
  0.10%    0.13%  │  0x00007f000d2204b5: shr    $0x9,%r10
  0.13%    0.15%  │  0x00007f000d2204b9: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.46%    0.46%  │  0x00007f000d2204bd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f000d220c4d
  0.01%    0.03%  │  0x00007f000d2204c2: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f000d2204c9: jne    0x00007f000d2206b1
  0.17%    0.11%  │  0x00007f000d2204cf: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.14%  │  0x00007f000d2204d3: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.49%    0.52%  │  0x00007f000d2204d6: cmp    $0x40,%ecx
                  │  0x00007f000d2204d9: jg     0x00007f000d220ae9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.01%    0.01%  │  0x00007f000d2204df: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.74%    0.62%  │  0x00007f000d2204e2: mov    %r8,%r10
  0.01%    0.01%  │  0x00007f000d2204e5: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.12%    0.12%  │  0x00007f000d2204e8: test   %r10,%r10
                  │  0x00007f000d2204eb: jne    0x00007f000d220b11  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.15%    0.11%  │  0x00007f000d2204f1: cmp    $0x40,%ecx
                  │  0x00007f000d2204f4: jge    0x00007f000d220b49  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.46%    0.53%  │  0x00007f000d2204fa: or     %rax,%r8
  0.02%    0.01%  │  0x00007f000d2204fd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.13%  │  0x00007f000d220501: add    $0x20,%r9
  0.09%    0.11%  │  0x00007f000d220505: mov    %rdi,%r10
  0.49%    0.55%  │  0x00007f000d220508: shr    $0x3,%r10
  0.01%    0.01%  │  0x00007f000d22050c: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.16%    0.10%  │  0x00007f000d22050f: mov    %r9,%r10
  0.11%    0.08%  │  0x00007f000d220512: mov    0x18(%rsp),%r11d
  0.49%    0.25%  │  0x00007f000d220517: add    $0x5,%r11d
  0.01%           │  0x00007f000d22051b: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.08%  │  0x00007f000d22051f: shr    $0x9,%r10
  0.09%    0.21%  │  0x00007f000d220523: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.44%    0.53%  │  0x00007f000d220527: xor    %eax,%eax
  0.01%    0.01%  │  0x00007f000d220529: add    $0x60,%rsp
  0.11%    0.18%  │  0x00007f000d22052d: pop    %rbp
  0.15%    0.14%  │  0x00007f000d22052e: test   %eax,0x18acaacc(%rip)        # 0x00007f0025ceb000
                  │                                                ;   {poll_return}
  1.37%    1.43%  │  0x00007f000d220534: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                  ↘  0x00007f000d220535: mov    $0xffffffe4,%esi
                     0x00007f000d22053a: vmovq  %xmm4,%rbp
                     0x00007f000d22053f: mov    %rdx,0x70(%rsp)
                     0x00007f000d220544: vmovss %xmm0,(%rsp)
                     0x00007f000d220549: vmovsd %xmm6,0x8(%rsp)
                     0x00007f000d22054f: mov    %r9d,0x4(%rsp)
....................................................................................................
 36.32%   36.45%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.78%   60.72%         C2, level 4  com.google.re2j.Machine::match, version 543 (1802 bytes) 
 36.32%   36.45%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 505 (852 bytes) 
  0.58%    0.56%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.27%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 550 (160 bytes) 
  0.18%    0.08%         C2, level 4  java.util.Collections::shuffle, version 557 (195 bytes) 
  0.16%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 550 (33 bytes) 
  0.12%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.12%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 550 (0 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.09%                  C2, level 4  com.google.re2j.RE2::match, version 550 (82 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.08%                  C2, level 4  com.google.re2j.RE2::match, version 550 (86 bytes) 
  0.07%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 550 (0 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 550 (0 bytes) 
  0.06%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 593 (91 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Machine::match, version 543 (24 bytes) 
  0.04%    0.11%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.03%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.04%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 550 (106 bytes) 
  1.70%    1.65%  <...other 345 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.82%   60.74%         C2, level 4  com.google.re2j.Machine::match, version 543 
 36.32%   36.45%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 505 
  1.69%    1.36%   [kernel.kallsyms]  [unknown] 
  1.01%    0.37%         C2, level 4  com.google.re2j.RE2::match, version 550 
  0.25%    0.12%         C2, level 4  java.util.Collections::shuffle, version 557 
  0.14%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 593 
  0.08%    0.02%              [vdso]  [unknown] 
  0.06%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.11%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.01%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.03%                 libc-2.26.so  __clock_gettime 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%    0.01%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.02%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 551 
  0.02%                    libjvm.so  _ZN13defaultStream5flushEv 
  0.01%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.01%    0.05%        libc-2.26.so  _IO_fwrite 
  0.01%    0.01%        libc-2.26.so  _IO_vsnprintf 
  0.30%    0.31%  <...other 53 warm methods...>
....................................................................................................
 99.99%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.57%   97.73%         C2, level 4
  1.69%    1.36%   [kernel.kallsyms]
  0.33%    0.44%           libjvm.so
  0.18%    0.32%        libc-2.26.so
  0.08%    0.02%              [vdso]
  0.06%    0.06%      hsdis-amd64.so
  0.05%    0.06%  libpthread-2.26.so
  0.02%    0.00%         interpreter
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  20307.455 ± 80.822  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
