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
# Warmup Iteration   1: 16816.725 ops/s
# Warmup Iteration   2: 25008.218 ops/s
# Warmup Iteration   3: 26187.472 ops/s
# Warmup Iteration   4: 25993.861 ops/s
# Warmup Iteration   5: 26402.045 ops/s
# Warmup Iteration   6: 26083.312 ops/s
# Warmup Iteration   7: 25885.473 ops/s
# Warmup Iteration   8: 25921.125 ops/s
# Warmup Iteration   9: 26044.632 ops/s
# Warmup Iteration  10: 26120.486 ops/s
# Warmup Iteration  11: 25829.322 ops/s
# Warmup Iteration  12: 26062.896 ops/s
# Warmup Iteration  13: 26593.228 ops/s
# Warmup Iteration  14: 26571.522 ops/s
# Warmup Iteration  15: 26513.569 ops/s
# Warmup Iteration  16: 26571.848 ops/s
# Warmup Iteration  17: 26374.816 ops/s
# Warmup Iteration  18: 26389.862 ops/s
# Warmup Iteration  19: 26568.957 ops/s
# Warmup Iteration  20: 26630.562 ops/s
Iteration   1: 26581.295 ops/s
Iteration   2: 26407.972 ops/s
Iteration   3: 26338.766 ops/s
Iteration   4: 26410.098 ops/s
Iteration   5: 26317.526 ops/s
Iteration   6: 26289.280 ops/s
Iteration   7: 26160.891 ops/s
Iteration   8: 26225.320 ops/s
Iteration   9: 26317.658 ops/s
Iteration  10: 26350.708 ops/s
Iteration  11: 26290.256 ops/s
Iteration  12: 26205.206 ops/s
Iteration  13: 26272.074 ops/s
Iteration  14: 26280.911 ops/s
Iteration  15: 26267.842 ops/s
Iteration  16: 26166.715 ops/s
Iteration  17: 26191.497 ops/s
Iteration  18: 26114.357 ops/s
Iteration  19: 26304.610 ops/s
Iteration  20: 26374.167 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  26293.357 ±(99.9%) 91.843 ops/s [Average]
  (min, avg, max) = (26114.357, 26293.357, 26581.295), stdev = 105.766
  CI (99.9%): [26201.515, 26385.200] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 197933 total address lines.
Perf output processed (skipped 22.768 seconds):
 Column 1: cycles (20673 events)
 Column 2: instructions (20650 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 554 (1639 bytes) 

                                       0x00007f39c1248425: je     0x00007f39c1249885  ;*if_icmpne
                                                                                     ; - com.google.re2j.Machine::match@24 (line 186)
                                       0x00007f39c124842b: mov    %r12b,0x10(%rsi)   ;*putfield matched
                                                                                     ; - com.google.re2j.Machine::match@35 (line 190)
                                       0x00007f39c124842f: mov    0x28(%rsi),%edx    ;*getfield matchcap
                                                                                     ; - com.google.re2j.Machine::match@39 (line 191)
                                       0x00007f39c1248432: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                                                                                     ; - java.util.Arrays::fill@3 (line 2881)
                                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                                                                     ; implicit exception: dispatches to 0x00007f39c1249ca5
  0.00%                                0x00007f39c1248437: test   %ebp,%ebp
                                       0x00007f39c1248439: jg     0x00007f39c12498ad  ;*if_icmpge
                                                                                     ; - java.util.Arrays::fill@7 (line 2881)
                                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                       0x00007f39c124843f: mov    0x8(%r9),%edi      ; implicit exception: dispatches to 0x00007f39c1249cb5
                                       0x00007f39c1248443: mov    0x20(%rsi),%r13d   ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
  0.00%                                0x00007f39c1248447: mov    0x1c(%rsi),%ebx    ;*getfield q0
                                                                                     ; - com.google.re2j.Machine::match@47 (line 192)
  0.01%                                0x00007f39c124844a: cmp    $0xf8019b8e,%edi   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                       0x00007f39c1248450: jne    0x00007f39c12496d5
                                       0x00007f39c1248456: mov    %r9,%rdi           ;*invokevirtual step
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c1248459: mov    0xc(%rdi),%esi     ;*getfield start
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c124845c: mov    0x10(%rdi),%r14d   ;*getfield end
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                0x00007f39c1248460: mov    %ecx,%r9d
                                       0x00007f39c1248463: add    %esi,%r9d          ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c1248466: cmp    %r14d,%r9d
                                       0x00007f39c1248469: jge    0x00007f39c12495e1  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                0x00007f39c124846f: mov    0x14(%rdi),%ebp    ;*getfield str
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c1248472: mov    0x8(%r12,%rbp,8),%eax  ; implicit exception: dispatches to 0x00007f39c1249cc9
                                       0x00007f39c1248477: cmp    $0xf80002da,%eax   ;   {metadata(&apos;java/lang/String&apos;)}
                                       0x00007f39c124847d: jne    0x00007f39c1249705
  0.00%                                0x00007f39c1248483: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c1248487: test   %r9d,%r9d
                                       0x00007f39c124848a: jl     0x00007f39c1249779  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c1248490: vmovd  %edx,%xmm3
                                       0x00007f39c1248494: mov    0xc(%rcx),%edx     ;*getfield value
                                                                                     ; - java.lang.String::charAt@6 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                0x00007f39c1248497: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                                     ; - java.lang.String::charAt@9 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                                                                     ; implicit exception: dispatches to 0x00007f39c1249cdd
  0.01%                                0x00007f39c124849c: cmp    %eax,%r9d
                                       0x00007f39c124849f: jge    0x00007f39c12498d9  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c12484a5: cmp    %eax,%r9d
                                       0x00007f39c12484a8: jae    0x00007f39c1249649
  0.00%                                0x00007f39c12484ae: mov    %rdi,0x70(%rsp)
                                       0x00007f39c12484b3: mov    %ebx,0x2c(%rsp)
                                       0x00007f39c12484b7: mov    %r8d,0x68(%rsp)
                                       0x00007f39c12484bc: mov    %r11d,%ebx
  0.01%                                0x00007f39c12484bf: mov    %r10,0x60(%rsp)
                                       0x00007f39c12484c4: lea    (%r12,%rdx,8),%r11
                                       0x00007f39c12484c8: movzwl 0x10(%r11,%r9,2),%r10d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c12484ce: cmp    $0xd800,%r10d
                                       0x00007f39c12484d5: jge    0x00007f39c124991d  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.00%                       0x00007f39c12484db: shl    $0x3,%r10d         ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c12484df: mov    %r10d,%r8d
                                       0x00007f39c12484e2: and    $0x7,%r8d
                                       0x00007f39c12484e6: or     $0x1,%r10d
           0.01%                       0x00007f39c12484ea: mov    %r10d,%ebp
                                       0x00007f39c12484ed: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007f39c12484f1: mov    %r8d,0x20(%rsp)
                                       0x00007f39c12484f6: sar    $0x3,%r10d         ;*ishr
                                                                                     ; - com.google.re2j.Machine::match@68 (line 194)
  0.00%    0.00%                       0x00007f39c12484fa: vmovd  %r10d,%xmm0
                                       0x00007f39c12484ff: mov    %ebp,%r10d
                                       0x00007f39c1248502: cmp    $0xfffffff8,%r10d
                                       0x00007f39c1248506: je     0x00007f39c12495f0  ;*if_icmpeq
                                                                                     ; - com.google.re2j.Machine::match@88 (line 198)
                                       0x00007f39c124850c: vmovd  %xmm1,%r8d
  0.00%    0.01%                       0x00007f39c1248511: add    0x20(%rsp),%r8d
  0.02%                                0x00007f39c1248516: add    %esi,%r8d          ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%                       0x00007f39c1248519: cmp    %r14d,%r8d
                                       0x00007f39c124851c: jge    0x00007f39c1248ba9  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007f39c1248522: test   %r8d,%r8d
                                       0x00007f39c1248525: jl     0x00007f39c12497f5  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007f39c124852b: cmp    %eax,%r8d
                                       0x00007f39c124852e: jge    0x00007f39c1249971  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%                       0x00007f39c1248534: cmp    %eax,%r8d
                                       0x00007f39c1248537: jae    0x00007f39c124968d
  0.01%                                0x00007f39c124853d: movzwl 0x10(%r11,%r8,2),%r9d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                0x00007f39c1248543: cmp    $0xd800,%r9d
                                       0x00007f39c124854a: jge    0x00007f39c12499b9  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                                0x00007f39c1248550: shl    $0x3,%r9d          ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007f39c1248554: mov    %r9d,%r8d
                                       0x00007f39c1248557: and    $0x7,%r8d
  0.01%    0.00%                       0x00007f39c124855b: or     $0x1,%r9d
                                       0x00007f39c124855f: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007f39c1248563: sar    $0x3,%r9d          ;*iand
                                                                                     ; - com.google.re2j.Machine::match@111 (line 201)
                                       0x00007f39c1248567: vmovd  %xmm1,%r10d
                                       0x00007f39c124856c: test   %r10d,%r10d
                                       0x00007f39c124856f: jne    0x00007f39c12497b9  ;*ifne
                                                                                     ; - com.google.re2j.Machine::match@115 (line 204)
                                       0x00007f39c1248575: vmovd  %xmm0,%ecx
  0.00%    0.00%                       0x00007f39c1248579: test   %ecx,%ecx
                                       0x00007f39c124857b: jl     0x00007f39c1248b9e  ;*ifge
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f39c1248581: mov    $0x5,%r10d         ;*iload_1
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f39c1248587: cmp    $0xa,%ecx
                                       0x00007f39c124858a: je     0x00007f39c1248bb7  ;*iload_0
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f39c1248590: mov    %ecx,%r11d
  0.01%                                0x00007f39c1248593: add    $0xffffffbf,%r11d
                                       0x00007f39c1248597: cmp    $0x1a,%r11d
                  ╭                    0x00007f39c124859b: jb     0x00007f39c12485ab  ;*if_icmple
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  │                    0x00007f39c124859d: mov    %ecx,%edi
                  │                    0x00007f39c124859f: add    $0xffffff9f,%edi
           0.00%  │                    0x00007f39c12485a2: cmp    $0x1a,%edi
                  │                    0x00007f39c12485a5: jae    0x00007f39c1248bc0  ;*iconst_1
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                    0x00007f39c12485ab: or     $0x10,%r10d        ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007f39c12485af: mov    %ebx,%r11d
                                       0x00007f39c12485b2: test   %r11d,%r11d
                                       0x00007f39c12485b5: jne    0x00007f39c1249741  ;*aload
                                                                                     ; - com.google.re2j.Machine::match@136 (line 211)
           0.00%                       0x00007f39c12485bb: mov    %r8d,0x34(%rsp)
  0.01%                                0x00007f39c12485c0: mov    %r9d,0x28(%rsp)
  0.00%                                0x00007f39c12485c5: mov    %ecx,0x24(%rsp)
  0.00%    0.01%                       0x00007f39c12485c9: mov    %r11d,0x30(%rsp)
  0.00%                                0x00007f39c12485ce: mov    0x68(%rsp),%r11d
                                       0x00007f39c12485d3: and    $0x4,%r11d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
                                       0x00007f39c12485d7: mov    %r11d,0x38(%rsp)
  0.00%                                0x00007f39c12485dc: mov    %r13,%r11
                                       0x00007f39c12485df: shl    $0x3,%r11          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                       0x00007f39c12485e3: mov    %r11,0x50(%rsp)
  0.00%                                0x00007f39c12485e8: xor    %eax,%eax
                                       0x00007f39c12485ea: xor    %r11d,%r11d
  0.01%                                0x00007f39c12485ed: mov    %r11d,0x3c(%rsp)
                   ╭                   0x00007f39c12485f2: jmpq   0x00007f39c1248944
  0.34%    0.29%   │  ↗↗↗              0x00007f39c12485f7: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │  │││                                                            ; - com.google.re2j.Machine::step@199 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.22%   │  │││              0x00007f39c12485fc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f39c1249c4d
  0.20%    0.15%   │  │││              0x00007f39c1248601: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  │││              0x00007f39c1248607: jne    0x00007f39c124936d
  0.09%    0.09%   │  │││              0x00007f39c124860d: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.01%   │  │││              0x00007f39c1248611: vmovq  %r9,%xmm2
  0.00%    0.01%   │  │││              0x00007f39c1248616: mov    0x18(%r9),%r9d     ;*getfield pc
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%   │  │││              0x00007f39c124861a: vmovd  %r9d,%xmm5
  0.07%    0.04%   │  │││              0x00007f39c124861f: mov    0x50(%rsp),%r9
  0.02%    0.02%   │  │││              0x00007f39c1248624: mov    0x10(%r9),%r9      ;*getfield pcsl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
                   │  │││                                                            ; implicit exception: dispatches to 0x00007f39c1249c69
  0.01%    0.02%   │  │││              0x00007f39c1248628: vmovd  %xmm5,%ecx
  0.10%    0.10%   │  │││              0x00007f39c124862c: cmp    $0x40,%ecx
                   │  │││              0x00007f39c124862f: jg     0x00007f39c1249459  ;*if_icmpgt
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.15%   │  │││              0x00007f39c1248635: mov    $0x1,%edi
  0.00%    0.02%   │  │││              0x00007f39c124863a: shl    %cl,%rdi           ;*lshl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.25%    0.26%   │  │││              0x00007f39c124863d: mov    %r9,%rcx
  0.00%    0.01%   │  │││              0x00007f39c1248640: and    %rdi,%rcx          ;*land
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%            │  │││              0x00007f39c1248643: test   %rcx,%rcx
                   │  │││              0x00007f39c1248646: jne    0x00007f39c12494dd  ;*ifeq
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.14%   │  │││              0x00007f39c124864c: vmovd  %xmm5,%ecx
           0.04%   │  │││              0x00007f39c1248650: cmp    $0x40,%ecx
                   │  │││              0x00007f39c1248653: jge    0x00007f39c124955d  ;*if_icmpge
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.14%   │  │││              0x00007f39c1248659: mov    0x50(%rsp),%rcx
  0.00%    0.01%   │  │││              0x00007f39c124865e: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.00%   │  │││              0x00007f39c1248662: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.01%   │  │││              0x00007f39c1248665: vmovd  %ecx,%xmm4
  0.12%    0.15%   │  │││              0x00007f39c1248669: mov    0x50(%rsp),%rcx
  0.00%    0.00%   │  │││              0x00007f39c124866e: mov    0xc(%rcx),%ebp     ;*getfield size
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.04%   │  │││              0x00007f39c1248671: or     %r9,%rdi
  0.02%    0.02%   │  │││              0x00007f39c1248674: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.11%   │  │││              0x00007f39c1248678: mov    %ebp,%r9d
  0.01%    0.01%   │  │││              0x00007f39c124867b: inc    %r9d
  0.05%    0.02%   │  │││              0x00007f39c124867e: mov    %r9d,0xc(%rcx)     ;*putfield size
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%    0.02%   │  │││              0x00007f39c1248682: vmovd  %xmm4,%r9d
  0.12%    0.08%   │  │││              0x00007f39c1248687: mov    0xc(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007f39c1249c7d
  0.19%    0.15%   │  │││              0x00007f39c124868c: cmp    %r9d,%ebp
                   │  │││              0x00007f39c124868f: jae    0x00007f39c12492ed
  0.24%    0.26%   │  │││              0x00007f39c1248695: vmovd  %xmm4,%r9d
  0.01%    0.00%   │  │││              0x00007f39c124869a: mov    0x8(%r12,%r9,8),%ecx
  0.03%    0.06%   │  │││              0x00007f39c124869f: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  │││              0x00007f39c12486a5: jne    0x00007f39c12493d5  ;*aastore
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.03%   │  │││              0x00007f39c12486ab: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.07%   │  │││              0x00007f39c12486af: lea    0x10(%r9,%rbp,4),%r9
  0.01%    0.01%   │  │││              0x00007f39c12486b4: vmovq  %xmm2,%rcx
  0.04%    0.04%   │  │││              0x00007f39c12486b9: shr    $0x3,%rcx
  0.06%    0.06%   │  │││              0x00007f39c12486bd: mov    %ecx,(%r9)
  0.27%    0.28%   │  │││              0x00007f39c12486c0: shr    $0x9,%r9
  0.00%            │  │││              0x00007f39c12486c4: movabs $0x7f39d234e000,%rcx
  0.04%    0.05%   │  │││              0x00007f39c12486ce: mov    %r12b,(%rcx,%r9,1)  ;*aastore
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 317)
                   │  │││                                                            ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.23%   │╭ │││              0x00007f39c12486d2: jmpq   0x00007f39c12487f3
  0.20%    0.15%   ││ │││        ↗     0x00007f39c12486d7: or     $0x20,%r10d        ;*iload_2
                   ││ │││        │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││ │││        │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.18%   ││ │││        │↗    0x00007f39c12486db: mov    0x60(%rsp),%r11
  0.15%    0.15%   ││ │││        ││    0x00007f39c12486e0: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@1 (line 280)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.29%    0.30%   ││ │││        ││    0x00007f39c12486e4: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@4 (line 280)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                   ││ │││        ││                                                  ; implicit exception: dispatches to 0x00007f39c1249be9
  0.36%    0.40%   ││ │││        ││    0x00007f39c12486ea: mov    0x2c(%rsp),%r11d
  0.12%    0.11%   ││ │││        ││    0x00007f39c12486ef: mov    0xc(%r12,%r11,8),%eax  ;*getfield size
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@10 (line 281)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.16%   ││ │││        ││    0x00007f39c12486f4: mov    0x3c(%rsp),%r8d
  0.14%    0.24%   ││ │││        ││    0x00007f39c12486f9: add    0x20(%rsp),%r8d    ;*iadd
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@340 (line 246)
  0.31%    0.27%   ││ │││        ││    0x00007f39c12486fe: test   %eax,%eax
  0.14%    0.11%   ││╭│││        ││    0x00007f39c1248700: jle    0x00007f39c12487fb  ;*if_icmpge
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@40 (line 286)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.14%   ││││││        ││    0x00007f39c1248706: mov    0x24(%r12,%r11,8),%r9d  ;*getfield denseThreadsCapture
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@28 (line 284)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.13%   ││││││        ││    0x00007f39c124870b: vmovd  %r9d,%xmm1
  0.29%    0.23%   ││││││        ││    0x00007f39c1248710: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@22 (line 283)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.15%   ││││││        ││    0x00007f39c1248715: vmovd  %r11d,%xmm0
  0.07%    0.09%   ││││││        ││    0x00007f39c124871a: mov    0x60(%rsp),%r11
  0.15%    0.18%   ││││││        ││    0x00007f39c124871f: movzbl 0x11(%r11),%ecx    ;*getfield captures
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@16 (line 282)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.34%   ││││││        ││    0x00007f39c1248724: mov    0x70(%rsp),%r11
  0.13%    0.13%   ││││││        ││    0x00007f39c1248729: mov    0x10(%r11),%r9d
  0.13%    0.15%   ││││││        ││    0x00007f39c124872d: mov    0x3c(%rsp),%ebx
  0.18%    0.15%   ││││││        ││    0x00007f39c1248731: mov    $0x1,%r11d
  0.30%    0.34%   ││││││        ││    0x00007f39c1248737: xor    %esi,%esi
  0.14%    0.16%   ││││││        ││    0x00007f39c1248739: cmp    %r9d,%ebx
  0.13%    0.20%   ││││││        ││    0x00007f39c124873c: cmovne %esi,%r11d         ;*invokespecial step
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.51%    0.46%   ││││││        ││    0x00007f39c1248740: vmovd  %r11d,%xmm3
  0.19%    0.11%   ││││││        ││    0x00007f39c1248745: test   %ecx,%ecx
                   ││││││        ││    0x00007f39c1248747: jne    0x00007f39c1248f3d  ;*iload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@43 (line 289)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.09%   ││││││        ││    0x00007f39c124874d: vmovd  %xmm0,%r9d
  0.19%    0.11%   ││││││        ││    0x00007f39c1248752: mov    0xc(%r12,%r9,8),%r9d  ;*aaload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@99 (line 299)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││││        ││                                                  ; implicit exception: dispatches to 0x00007f39c1248f3d
  0.21%    0.31%   ││││││        ││    0x00007f39c1248757: test   %r9d,%r9d
                   ││││││        ││    0x00007f39c124875a: jbe    0x00007f39c1248f3d
  0.15%    0.19%   ││││││        ││    0x00007f39c1248760: mov    %eax,%ebx
  0.09%    0.15%   ││││││        ││    0x00007f39c1248762: dec    %ebx
  0.22%    0.26%   ││││││        ││    0x00007f39c1248764: cmp    %r9d,%ebx
                   ││││││        ││    0x00007f39c1248767: jae    0x00007f39c1248f3d
  0.28%    0.33%   ││││││        ││    0x00007f39c124876d: vmovd  %xmm0,%r11d
  0.16%    0.16%   ││││││        ││    0x00007f39c1248772: lea    (%r12,%r11,8),%rbx
  0.10%    0.11%   ││││││        ││    0x00007f39c1248776: xor    %r11d,%r11d
  0.16%    0.27%   ││││││        ││    0x00007f39c1248779: nopl   0x0(%rax)          ;*iload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@43 (line 289)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.29%    1.19%   ││││││↗       ││    0x00007f39c1248780: mov    0x10(%rbx,%r11,4),%ecx  ;*aaload
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@99 (line 299)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.74%    0.71%   │││││││       ││    0x00007f39c1248785: mov    0xc(%r12,%rcx,8),%r9d  ;*getfield op
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@104 (line 301)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││││       ││                                                  ; implicit exception: dispatches to 0x00007f39c1249b99
  1.33%    1.53%   │││││││       ││    0x00007f39c124878a: cmp    $0x6,%r9d
                   │││││││       ││    0x00007f39c124878e: je     0x00007f39c1248b54  ;*if_icmpne
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@109 (line 301)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.00%    1.03%   │││││││       ││    0x00007f39c1248794: cmp    $0xa,%r9d
                   │││╰│││       ││    0x00007f39c1248798: je     0x00007f39c12485f7  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.01%    0.99%   │││ │││       ││    0x00007f39c124879e: cmp    $0xb,%r9d
                   │││ │││       ││    0x00007f39c12487a2: je     0x00007f39c1248c65  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.17%    1.21%   │││ │││       ││    0x00007f39c12487a8: cmp    $0x9,%r9d
                   │││ │││       ││    0x00007f39c12487ac: je     0x00007f39c1248ce9  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.45%    1.32%   │││ │││       ││    0x00007f39c12487b2: cmp    $0xc,%r9d
                   │││ │││       ││    0x00007f39c12487b6: jne    0x00007f39c1248be3  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.24%    1.33%   │││ │││       ││    0x00007f39c12487bc: mov    0x1c(%r12,%rcx,8),%edi  ;*getfield f0
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.72%    0.94%   │││ │││       ││    0x00007f39c12487c1: cmp    %edx,%edi
                   │││ ╰││       ││    0x00007f39c12487c3: je     0x00007f39c12485f7  ;*if_icmpeq
                   │││  ││       ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.30%    1.47%   │││  ││       ││    0x00007f39c12487c9: mov    0x20(%r12,%rcx,8),%r9d  ;*getfield f1
                   │││  ││       ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.85%    0.78%   │││  ││       ││    0x00007f39c12487ce: cmp    %edx,%r9d
                   │││  ╰│       ││    0x00007f39c12487d1: je     0x00007f39c12485f7  ;*if_icmpeq
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.43%    1.67%   │││   │       ││    0x00007f39c12487d7: mov    0x24(%r12,%rcx,8),%r9d  ;*getfield f2
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.92%   │││   │       ││    0x00007f39c12487dc: cmp    %edx,%r9d
                   │││   │       ││    0x00007f39c12487df: je     0x00007f39c1248d6d  ;*if_icmpeq
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.35%    1.41%   │││   │       ││    0x00007f39c12487e5: mov    0x28(%r12,%rcx,8),%r9d  ;*getfield f3
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 316)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.66%    0.79%   │││   │       ││    0x00007f39c12487ea: cmp    %edx,%r9d
                   │││   │       ││    0x00007f39c12487ed: je     0x00007f39c1248ded  ;*aload
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@219 (line 320)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.37%    1.56%   │↘│   │       ││    0x00007f39c12487f3: inc    %r11d              ;*iinc
                   │ │   │       ││                                                  ; - com.google.re2j.Machine::step@230 (line 286)
                   │ │   │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.67%    0.80%   │ │   │       ││    0x00007f39c12487f6: cmp    %eax,%r11d
                   │ │   ╰       ││    0x00007f39c12487f9: jl     0x00007f39c1248780  ;*if_icmpge
                   │ │           ││                                                  ; - com.google.re2j.Machine::step@40 (line 286)
                   │ │           ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.23%   │ ↘           ││    0x00007f39c12487fb: mov    0x2c(%rsp),%r9d
  0.12%    0.21%   │             ││    0x00007f39c1248800: movzbl 0x18(%r12,%r9,8),%r9d
  0.24%    0.36%   │             ││    0x00007f39c1248806: test   %r9d,%r9d
                   │      ╭      ││    0x00007f39c1248809: jne    0x00007f39c124882d  ;*ifeq
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.34%    0.36%   │      │      ││    0x00007f39c124880b: mov    0x2c(%rsp),%r11d
  0.14%    0.22%   │      │      ││    0x00007f39c1248810: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield pcs
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.13%   │      │      ││    0x00007f39c1248815: movb   $0x1,0x18(%r12,%r11,8)  ;*putfield empty
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.42%    0.56%   │      │      ││    0x00007f39c124881b: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.10%    1.38%   │      │      ││    0x00007f39c1248820: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.66%    1.05%   │      │      ││    0x00007f39c1248825: test   %ebp,%ebp
                   │      │      ││    0x00007f39c1248827: jne    0x00007f39c124913d  ;*invokevirtual clear
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 324)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.03%   │      ↘      ││    0x00007f39c124882d: mov    0x60(%rsp),%r11
  0.07%    0.08%   │             ││    0x00007f39c1248832: movzbl 0x10(%r11),%eax    ;*getfield matched
                   │             ││                                                  ; - com.google.re2j.Machine::match@378 (line 250)
  0.37%    0.53%   │             ││    0x00007f39c1248837: mov    0x60(%rsp),%r11
  0.24%    0.31%   │             ││    0x00007f39c124883c: movzbl 0x11(%r11),%ebp    ;*getfield captures
                   │             ││                                                  ; - com.google.re2j.Machine::match@371 (line 250)
  0.03%    0.03%   │             ││    0x00007f39c1248841: mov    0x20(%rsp),%r11d
  0.08%    0.12%   │             ││    0x00007f39c1248846: test   %r11d,%r11d
                   │       ╭     ││    0x00007f39c1248849: je     0x00007f39c1248a96  ;*ifne
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@364 (line 247)
  0.30%    0.42%   │       │     ││    0x00007f39c124884f: test   %ebp,%ebp
                   │       │     ││    0x00007f39c1248851: jne    0x00007f39c124901d  ;*ifne
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@374 (line 250)
  0.23%    0.41%   │       │     ││    0x00007f39c1248857: test   %eax,%eax
                   │       │     ││    0x00007f39c1248859: jne    0x00007f39c12490fd  ;*ifeq
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@381 (line 250)
  0.06%    0.07%   │       │     ││    0x00007f39c124885f: cmp    $0xffffffff,%r13d
                   │       │     ││    0x00007f39c1248863: je     0x00007f39c1248ad5  ;*if_icmpeq
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@403 (line 258)
  0.09%    0.09%   │       │     ││    0x00007f39c1248869: mov    %r13d,0x24(%rsp)
  0.28%    0.43%   │       │     ││    0x00007f39c124886e: mov    0x70(%rsp),%r11
  0.27%    0.28%   │       │     ││    0x00007f39c1248873: mov    0x10(%r11),%r11d   ;*getfield end
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.30%    0.50%   │       │     ││    0x00007f39c1248877: mov    0x34(%rsp),%r9d
  0.05%    0.08%   │       │     ││    0x00007f39c124887c: add    %r8d,%r9d
  0.35%    0.45%   │       │     ││    0x00007f39c124887f: mov    0x70(%rsp),%rcx
  0.24%    0.33%   │       │     ││    0x00007f39c1248884: add    0xc(%rcx),%r9d     ;*iadd
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.37%    0.57%   │       │     ││    0x00007f39c1248888: cmp    %r11d,%r9d
                   │       │     ││    0x00007f39c124888b: jge    0x00007f39c1248ae8  ;*if_icmpge
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.32%    0.43%   │       │     ││    0x00007f39c1248891: mov    0x14(%rcx),%ebp    ;*getfield str
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.24%    0.34%   │       │     ││    0x00007f39c1248894: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f39c1249bf9
  1.00%    1.34%   │       │     ││    0x00007f39c1248899: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │       │     ││    0x00007f39c12488a0: jne    0x00007f39c1248f01
  0.22%    0.33%   │       │     ││    0x00007f39c12488a6: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.06%    0.09%   │       │     ││    0x00007f39c12488aa: test   %r9d,%r9d
                   │       │     ││    0x00007f39c12488ad: jl     0x00007f39c1249061  ;*iflt
                   │       │     ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.21%    0.32%   │       │     ││    0x00007f39c12488b3: mov    0xc(%rbx),%edi     ;*getfield value
                   │       │     ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.21%    0.24%   │       │     ││    0x00007f39c12488b6: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │       │     ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                   │       │     ││                                                  ; implicit exception: dispatches to 0x00007f39c1249c0d
  2.31%    2.60%   │       │     ││    0x00007f39c12488bb: cmp    %ebp,%r9d
                   │       │     ││    0x00007f39c12488be: jge    0x00007f39c1249175  ;*if_icmplt
                   │       │     ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.72%    0.79%   │       │     ││    0x00007f39c12488c4: cmp    %ebp,%r9d
                   │       │     ││    0x00007f39c12488c7: jae    0x00007f39c1248ebd
  0.06%    0.03%   │       │     ││    0x00007f39c12488cd: lea    (%r12,%rdi,8),%r11
  0.01%    0.00%   │       │     ││    0x00007f39c12488d1: movzwl 0x10(%r11,%r9,2),%ecx  ;*caload
                   │       │     ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.16%    0.18%   │       │     ││    0x00007f39c12488d7: cmp    $0xd800,%ecx
                   │       │     ││    0x00007f39c12488dd: jge    0x00007f39c12491c1  ;*if_icmplt
                   │       │     ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.66%    0.90%   │       │     ││    0x00007f39c12488e3: shl    $0x3,%ecx          ;*ishl
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.02%    0.01%   │       │     ││    0x00007f39c12488e6: mov    %ecx,%ebx
                   │       │     ││    0x00007f39c12488e8: and    $0x7,%ebx
  0.62%    0.78%   │       │     ││    0x00007f39c12488eb: or     $0x1,%ecx
  0.05%    0.05%   │       │     ││    0x00007f39c12488ee: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.61%    0.88%   │       │     ││    0x00007f39c12488f1: sar    $0x3,%ecx          ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1332}
                   │       │     ││                                                  ;*goto
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
           0.00%   │       │     ││    0x00007f39c12488f4: test   %eax,0x186fd706(%rip)        # 0x00007f39d9946000
                   │       │     ││                                                  ;*goto
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
                   │       │     ││                                                  ;   {poll}
  0.01%    0.01%   │       │     ││    0x00007f39c12488fa: mov    0x60(%rsp),%r11
  0.01%    0.04%   │       │     ││    0x00007f39c12488ff: mov    0x14(%r11),%r11d   ;*getfield re2
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@169 (line 220)
  0.64%    0.69%   │       │     ││    0x00007f39c1248903: vmovd  %r11d,%xmm2
  0.00%    0.01%   │       │     ││    0x00007f39c1248908: mov    0x60(%rsp),%r11
  0.00%    0.01%   │       │     ││    0x00007f39c124890d: mov    0x28(%r11),%edx    ;*getfield matchcap
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.04%   │       │     ││    0x00007f39c1248911: mov    0x50(%rsp),%r11
  0.66%    0.49%   │       │     ││    0x00007f39c1248916: shr    $0x3,%r11
  0.01%    0.00%   │       │     ││    0x00007f39c124891a: mov    %r11d,0x2c(%rsp)
                   │       │     ││    0x00007f39c124891f: mov    0x34(%rsp),%r9d
  0.07%    0.05%   │       │     ││    0x00007f39c1248924: mov    %r9d,0x20(%rsp)
  0.69%    0.29%   │       │     ││    0x00007f39c1248929: mov    %r8d,0x3c(%rsp)
  0.02%    0.01%   │       │     ││    0x00007f39c124892e: mov    %ebx,0x34(%rsp)
                   │       │     ││    0x00007f39c1248932: mov    %ecx,0x28(%rsp)
  0.04%    0.01%   │       │     ││    0x00007f39c1248936: mov    0x10(%rsp),%r11
  0.63%    0.25%   │       │     ││    0x00007f39c124893b: mov    %r11,0x50(%rsp)
  0.02%    0.01%   │       │     ││    0x00007f39c1248940: vmovd  %edx,%xmm3         ;*aload
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%            ↘       │     ││    0x00007f39c1248944: mov    0x2c(%rsp),%r11d
  0.08%    0.04%           │     ││    0x00007f39c1248949: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f39c1249ba9
  0.74%    0.46%           │     ││    0x00007f39c124894f: test   %r8d,%r8d
                           │╭    ││    0x00007f39c1248952: je     0x00007f39c1248986  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@141 (line 211)
  0.03%    0.01%           ││    ││    0x00007f39c1248954: mov    0x38(%rsp),%r8d
                           ││    ││    0x00007f39c1248959: test   %r8d,%r8d
                           ││    ││    0x00007f39c124895c: jne    0x00007f39c1249255  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@148 (line 212)
           0.01%           ││    ││    0x00007f39c1248962: test   %eax,%eax
                           ││    ││    0x00007f39c1248964: jne    0x00007f39c12492a1  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@162 (line 216)
  0.56%    0.41%           ││    ││    0x00007f39c124896a: vmovd  %xmm2,%r11d
  0.01%    0.01%           ││    ││    0x00007f39c124896f: mov    0x24(%r12,%r11,8),%r11d  ;*getfield prefix
                           ││    ││                                                  ; - com.google.re2j.Machine::match@172 (line 220)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f39c1249c1d
                           ││    ││    0x00007f39c1248974: mov    0xc(%r12,%r11,8),%r8d  ;*getfield value
                           ││    ││                                                  ; - java.lang.String::isEmpty@1 (line 635)
                           ││    ││                                                  ; - com.google.re2j.Machine::match@175 (line 220)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f39c1249c2d
  0.03%    0.02%           ││    ││    0x00007f39c1248979: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                           ││    ││                                                  ; - java.lang.String::isEmpty@4 (line 635)
                           ││    ││                                                  ; - com.google.re2j.Machine::match@175 (line 220)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f39c1249c3d
  1.29%    1.45%           ││    ││    0x00007f39c124897e: test   %ebp,%ebp
  0.41%    0.41%           ││    ││    0x00007f39c1248980: jne    0x00007f39c124920d  ;*iload_3
                           ││    ││                                                  ; - com.google.re2j.Machine::match@267 (line 237)
  0.44%    0.39%           │↘    ││    0x00007f39c1248986: test   %eax,%eax
                           │     ││    0x00007f39c1248988: jne    0x00007f39c1248fcd  ;*ifne
                           │     ││                                                  ; - com.google.re2j.Machine::match@279 (line 237)
  0.02%                    │     ││    0x00007f39c124898e: mov    0x60(%rsp),%r11
  0.25%    0.14%           │     ││    0x00007f39c1248993: movzbl 0x11(%r11),%r9d    ;*getfield captures
                           │     ││                                                  ; - com.google.re2j.Machine::match@283 (line 240)
  0.12%    0.10%           │     ││    0x00007f39c1248998: test   %r9d,%r9d
                           │     ││    0x00007f39c124899b: jne    0x00007f39c12490ad  ;*ifeq
                           │     ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.35%    0.16%           │     ││    0x00007f39c12489a1: mov    0x18(%r11),%r8d    ;*getfield prog
                           │     ││                                                  ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.00%           │     ││    0x00007f39c12489a5: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                           │     ││                                                  ; - com.google.re2j.Machine::match@300 (line 243)
                           │     ││                                                  ; implicit exception: dispatches to 0x00007f39c1249bb9
  0.29%    0.21%           │     ││    0x00007f39c12489aa: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f39c1249bc9
  0.20%    0.22%           │     ││    0x00007f39c12489af: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                           │     ││    0x00007f39c12489b6: jne    0x00007f39c1248e61  ;*ifeq
                           │     ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.40%    0.12%           │     ││    0x00007f39c12489bc: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                           │     ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%                    │     ││    0x00007f39c12489c0: mov    0x2c(%rsp),%r11d
  0.21%    0.06%           │     ││    0x00007f39c12489c5: shl    $0x3,%r11          ;*aload
                           │     ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.07%    0.05%           │     ││    0x00007f39c12489c9: mov    %r11,0x10(%rsp)
  0.40%    0.22%           │     ││    0x00007f39c12489ce: vmovd  %xmm3,%r8d
  0.00%                    │     ││    0x00007f39c12489d3: shl    $0x3,%r8           ;*getfield matchcap
                           │     ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.19%    0.07%           │     ││    0x00007f39c12489d7: mov    %r11,%rdx
  0.08%    0.04%           │     ││    0x00007f39c12489da: mov    0x3c(%rsp),%ecx
  0.48%    0.52%           │     ││    0x00007f39c12489de: xor    %edi,%edi
  0.00%                    │     ││    0x00007f39c12489e0: mov    0x60(%rsp),%r11
  0.26%    0.03%           │     ││    0x00007f39c12489e5: mov    %r11,(%rsp)
  0.09%    0.03%           │     ││    0x00007f39c12489e9: mov    %r9d,0x8(%rsp)
  0.37%    0.31%           │     ││    0x00007f39c12489ee: mov    %r10d,%r9d
  0.01%                    │     ││    0x00007f39c12489f1: xchg   %ax,%ax
  0.24%    0.01%           │     ││    0x00007f39c12489f3: callq  0x00007f39c1046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1592}
                           │     ││                                                  ;*invokevirtual add
                           │     ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                           │     ││                                                  ;   {optimized virtual_call}
  0.30%    0.29%           │     ││    0x00007f39c12489f8: mov    0x24(%rsp),%edx
  0.24%    0.22%           │     ││    0x00007f39c12489fc: test   %edx,%edx
                           │ ╭   ││    0x00007f39c12489fe: jl     0x00007f39c1248a85  ;*ifge
                           │ │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                           │ │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.25%           │ │   ││    0x00007f39c1248a04: xor    %r10d,%r10d        ;*iload_0
                           │ │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                           │ │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.24%           │ │   ││↗   0x00007f39c1248a07: cmp    $0xa,%edx
                           │ │   │││   0x00007f39c1248a0a: je     0x00007f39c1248af4  ;*iload_1
                           │ │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                           │ │   │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.04%           │ │   │││   0x00007f39c1248a10: mov    0x28(%rsp),%r13d
  0.21%    0.17%           │ │   │││   0x00007f39c1248a15: test   %r13d,%r13d
                           │ │╭  │││   0x00007f39c1248a18: jl     0x00007f39c1248a90  ;*iload_1
                           │ ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                           │ ││  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.31%    0.25%           │ ││  │││↗  0x00007f39c1248a1a: cmp    $0xa,%r13d
                           │ ││  ││││  0x00007f39c1248a1e: je     0x00007f39c1248afd  ;*iload_0
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.29%           │ ││  ││││  0x00007f39c1248a24: mov    0x24(%rsp),%r11d
  0.05%    0.09%           │ ││  ││││  0x00007f39c1248a29: add    $0xffffffbf,%r11d
  0.15%    0.20%           │ ││  ││││  0x00007f39c1248a2d: cmp    $0x1a,%r11d
                           │ ││╭ ││││  0x00007f39c1248a31: jb     0x00007f39c1248a46  ;*if_icmple
                           │ │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │ │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.26%    0.20%           │ │││ ││││  0x00007f39c1248a33: mov    0x24(%rsp),%r8d
  0.22%    0.29%           │ │││ ││││  0x00007f39c1248a38: add    $0xffffff9f,%r8d
  0.07%    0.05%           │ │││ ││││  0x00007f39c1248a3c: cmp    $0x1a,%r8d
  0.19%    0.22%           │ │││ ││││  0x00007f39c1248a40: jae    0x00007f39c1248b06  ;*iconst_1
                           │ │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │ │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.26%           │ ││↘ ││││  0x00007f39c1248a46: mov    $0x1,%ebp          ;*ireturn
                           │ ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.26%           │ ││  ││││  0x00007f39c1248a4b: mov    0x28(%rsp),%r11d
  0.08%    0.09%           │ ││  ││││  0x00007f39c1248a50: add    $0xffffffbf,%r11d
  0.15%    0.13%           │ ││  ││││  0x00007f39c1248a54: cmp    $0x1a,%r11d
                           │ ││ ╭││││  0x00007f39c1248a58: jb     0x00007f39c1248a6d  ;*if_icmple
                           │ ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │ ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.28%           │ ││ │││││  0x00007f39c1248a5a: mov    0x28(%rsp),%r8d
  0.22%    0.28%           │ ││ │││││  0x00007f39c1248a5f: add    $0xffffff9f,%r8d
  0.05%    0.06%           │ ││ │││││  0x00007f39c1248a63: cmp    $0x1a,%r8d
                           │ ││ │││││  0x00007f39c1248a67: jae    0x00007f39c1248b2f  ;*iconst_1
                           │ ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │ ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.14%           │ ││ ↘││││  0x00007f39c1248a6d: mov    $0x1,%r11d         ;*ireturn
                           │ ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.16%           │ ││  ││││  0x00007f39c1248a73: cmp    %r11d,%ebp
                           │ ││  ╰│││  0x00007f39c1248a76: je     0x00007f39c12486d7  ;*if_icmpeq
                           │ ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                           │ ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.04%           │ ││   │││  0x00007f39c1248a7c: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                           │ ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.07%           │ ││   ╰││  0x00007f39c1248a80: jmpq   0x00007f39c12486db
                           │ ↘│    ││  0x00007f39c1248a85: mov    $0x5,%r10d
                           │  │    ╰│  0x00007f39c1248a8b: jmpq   0x00007f39c1248a07
           0.01%           │  ↘     │  0x00007f39c1248a90: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │        │                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%           │        ╰  0x00007f39c1248a94: jmp    0x00007f39c1248a1a
  0.00%    0.01%           ↘           0x00007f39c1248a96: test   %ebp,%ebp
                                       0x00007f39c1248a98: jne    0x00007f39c1249955  ;*ifeq
                                                                                     ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%                                0x00007f39c1248a9e: mov    0x50(%rsp),%r10
                                       0x00007f39c1248aa3: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f39c1249ced
                                       0x00007f39c1248aa8: test   %r11d,%r11d
                                       0x00007f39c1248aab: jne    0x00007f39c1248ac6  ;*ifeq
                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@447 (line 267)
....................................................................................................
 57.90%   60.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 520 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f39c1231c80: mov    0x8(%rsi),%r10d
                     0x00007f39c1231c84: shl    $0x3,%r10
                     0x00007f39c1231c88: cmp    %r10,%rax
                     0x00007f39c1231c8b: jne    0x00007f39c1045e20  ;   {runtime_call}
                     0x00007f39c1231c91: data16 xchg %ax,%ax
                     0x00007f39c1231c94: nopl   0x0(%rax,%rax,1)
                     0x00007f39c1231c9c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.47%    0.38%     0x00007f39c1231ca0: mov    %eax,-0x14000(%rsp)
  0.29%    0.05%     0x00007f39c1231ca7: push   %rbp
  0.07%    0.01%     0x00007f39c1231ca8: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.31%    0.39%     0x00007f39c1231cac: vmovq  %r8,%xmm5
  0.28%    0.29%     0x00007f39c1231cb1: vmovq  %rsi,%xmm4
  0.05%    0.03%     0x00007f39c1231cb6: mov    %ecx,%r14d
  0.46%    0.40%     0x00007f39c1231cb9: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.00%    0.00%     0x00007f39c1231cbc: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f39c12325d9
  0.20%    0.17%     0x00007f39c1231cc0: cmp    $0x40,%ecx
                     0x00007f39c1231cc3: jg     0x00007f39c1232181  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.07%    0.06%     0x00007f39c1231cc9: mov    $0x1,%esi
  0.46%    0.43%     0x00007f39c1231cce: mov    $0x1,%r8d
  0.00%    0.00%     0x00007f39c1231cd4: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.77%    0.56%     0x00007f39c1231cd7: mov    %r11,%r10
           0.00%     0x00007f39c1231cda: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.14%    0.25%     0x00007f39c1231cdd: xor    %r13d,%r13d
  0.10%    0.05%     0x00007f39c1231ce0: test   %r10,%r10
                     0x00007f39c1231ce3: jne    0x00007f39c12321b5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.46%    0.44%     0x00007f39c1231ce9: cmp    $0x40,%ecx
                     0x00007f39c1231cec: jge    0x00007f39c12321f5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
           0.02%     0x00007f39c1231cf2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.27%    0.17%     0x00007f39c1231cf6: vmovq  %xmm4,%r10
  0.12%    0.03%     0x00007f39c1231cfb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.44%    0.47%     0x00007f39c1231cff: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007f39c1231d02: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.20%    0.22%     0x00007f39c1231d06: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f39c12325ed
  0.08%    0.05%     0x00007f39c1231d0b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f39c1231d12: jne    0x00007f39c1232065
  0.46%    0.39%     0x00007f39c1231d18: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f39c1231d1c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.24%     0x00007f39c1231d20: cmp    $0x40,%ecx
                     0x00007f39c1231d23: jg     0x00007f39c1232229  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.10%     0x00007f39c1231d29: mov    $0x1,%r10d
  0.45%    0.21%     0x00007f39c1231d2f: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.34%     0x00007f39c1231d32: mov    %r8,%rbx
  0.36%    0.09%     0x00007f39c1231d35: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.02%     0x00007f39c1231d38: test   %rbx,%rbx
                     0x00007f39c1231d3b: jne    0x00007f39c1232265  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.27%     0x00007f39c1231d41: cmp    $0x40,%ecx
                     0x00007f39c1231d44: jge    0x00007f39c12322ad  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.07%     0x00007f39c1231d4a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.50%    0.19%     0x00007f39c1231d4d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.01%     0x00007f39c1231d51: mov    0x88(%rsp),%ecx
  0.14%    0.34%     0x00007f39c1231d58: test   %ecx,%ecx
                     0x00007f39c1231d5a: jne    0x00007f39c12322e9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.06%     0x00007f39c1231d60: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.43%    0.15%     0x00007f39c1231d63: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%              0x00007f39c1231d66: mov    %edi,%r10d
  0.20%    0.25%     0x00007f39c1231d69: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.10%     0x00007f39c1231d6c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.41%    0.52%     0x00007f39c1231d70: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f39c1232615
  0.01%              0x00007f39c1231d75: cmp    %ebx,%edi
                  ╭  0x00007f39c1231d77: jae    0x00007f39c1231fe8
  0.23%    0.25%  │  0x00007f39c1231d7d: vmovd  %r10d,%xmm2
  0.08%    0.06%  │  0x00007f39c1231d82: vmovd  %eax,%xmm0
  0.37%    0.48%  │  0x00007f39c1231d86: mov    %edi,%eax
  0.01%    0.01%  │  0x00007f39c1231d88: vmovd  %xmm0,%r10d
  0.23%    0.24%  │  0x00007f39c1231d8d: mov    0x8(%r12,%r10,8),%r10d
  0.06%    0.09%  │  0x00007f39c1231d92: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f39c1231d99: jne    0x00007f39c1232095  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.45%    0.48%  │  0x00007f39c1231d9f: vmovq  %xmm4,%r10
  0.01%           │  0x00007f39c1231da4: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.26%    0.26%  │  0x00007f39c1231da8: mov    %r11,%rcx
  0.07%    0.08%  │  0x00007f39c1231dab: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.42%    0.45%  │  0x00007f39c1231daf: vmovd  %xmm0,%r10d
  0.00%           │  0x00007f39c1231db4: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.26%    0.19%  │  0x00007f39c1231db8: lea    0x10(%r11,%rdi,4),%r10
  0.10%    0.07%  │  0x00007f39c1231dbd: mov    %ecx,(%r10)
  0.60%    0.66%  │  0x00007f39c1231dc0: shr    $0x9,%r10
  0.01%    0.02%  │  0x00007f39c1231dc4: movabs $0x7f39d234e000,%rdi
  0.25%    0.30%  │  0x00007f39c1231dce: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.13%  │  0x00007f39c1231dd2: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f39c1232631
  0.43%    0.27%  │  0x00007f39c1231dd7: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f39c1231dde: jne    0x00007f39c12320d5
  0.03%    0.01%  │  0x00007f39c1231de4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.10%  │  0x00007f39c1231de8: vmovq  %r10,%xmm1
  0.15%    0.07%  │  0x00007f39c1231ded: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.96%    0.97%  │  0x00007f39c1231df1: vmovd  %ecx,%xmm3
  0.15%    0.21%  │  0x00007f39c1231df5: cmp    $0x40,%ecx
                  │  0x00007f39c1231df8: jg     0x00007f39c1232325  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.09%  │  0x00007f39c1231dfe: mov    $0x1,%r10d
  0.11%    0.16%  │  0x00007f39c1231e04: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.76%    0.75%  │  0x00007f39c1231e07: mov    %r8,%rcx
  0.15%    0.09%  │  0x00007f39c1231e0a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.30%    0.36%  │  0x00007f39c1231e0d: test   %rcx,%rcx
                  │  0x00007f39c1231e10: jne    0x00007f39c1232361  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.19%    0.20%  │  0x00007f39c1231e16: vmovd  %xmm3,%ecx
  0.23%    0.22%  │  0x00007f39c1231e1a: cmp    $0x40,%ecx
                  │  0x00007f39c1231e1d: jge    0x00007f39c12323a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.30%    0.28%  │  0x00007f39c1231e23: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.29%    0.19%  │  0x00007f39c1231e26: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.06%  │  0x00007f39c1231e2a: mov    %eax,%ecx
  0.19%    0.15%  │  0x00007f39c1231e2c: add    $0x2,%ecx
  0.25%    0.24%  │  0x00007f39c1231e2f: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.21%  │  0x00007f39c1231e32: mov    %eax,%r10d
  0.02%    0.09%  │  0x00007f39c1231e35: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.24%  │  0x00007f39c1231e39: cmp    %ebx,%r10d
                  │  0x00007f39c1231e3c: jae    0x00007f39c1232025  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.27%  │  0x00007f39c1231e42: vmovd  %r9d,%xmm3
  0.23%    0.31%  │  0x00007f39c1231e47: vmovq  %xmm4,%r9
  0.03%    0.03%  │  0x00007f39c1231e4c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.13%    0.13%  │  0x00007f39c1231e50: vmovq  %xmm1,%r9
  0.28%    0.28%  │  0x00007f39c1231e55: mov    %r9,%rcx
  0.29%    0.31%  │  0x00007f39c1231e58: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.04%  │  0x00007f39c1231e5c: movslq %eax,%r9
  0.16%    0.25%  │  0x00007f39c1231e5f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.23%    0.24%  │  0x00007f39c1231e63: mov    %r9,%rbx
  0.26%    0.45%  │  0x00007f39c1231e66: add    $0x14,%rbx
  0.01%    0.07%  │  0x00007f39c1231e6a: mov    %ecx,(%rbx)
  0.14%    0.14%  │  0x00007f39c1231e6c: mov    %rbx,%rcx
  0.24%    0.18%  │  0x00007f39c1231e6f: shr    $0x9,%rcx
  0.22%    0.12%  │  0x00007f39c1231e73: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.04%  │  0x00007f39c1231e77: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f39c1232655
  0.14%    0.15%  │  0x00007f39c1231e7c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f39c1231e82: jne    0x00007f39c1232101
  0.30%    0.25%  │  0x00007f39c1231e88: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.26%    0.36%  │  0x00007f39c1231e8c: vmovq  %rcx,%xmm0
  0.06%    0.05%  │  0x00007f39c1231e91: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.12%    0.23%  │  0x00007f39c1231e94: vmovd  %ecx,%xmm2
  0.21%    0.24%  │  0x00007f39c1231e98: cmp    $0x40,%ecx
                  │  0x00007f39c1231e9b: jg     0x00007f39c12323e1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.33%    0.29%  │  0x00007f39c1231ea1: mov    $0x1,%ebx
  0.03%    0.04%  │  0x00007f39c1231ea6: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.72%    0.71%  │  0x00007f39c1231ea9: mov    %r8,%rcx
  0.07%    0.04%  │  0x00007f39c1231eac: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.13%    0.15%  │  0x00007f39c1231eaf: test   %rcx,%rcx
                  │  0x00007f39c1231eb2: jne    0x00007f39c123241d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.23%    0.19%  │  0x00007f39c1231eb8: vmovd  %xmm2,%ecx
  0.22%    0.26%  │  0x00007f39c1231ebc: cmp    $0x40,%ecx
                  │  0x00007f39c1231ebf: jge    0x00007f39c1232465  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.02%  │  0x00007f39c1231ec5: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.18%    0.16%  │  0x00007f39c1231ec8: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.15%  │  0x00007f39c1231ecc: vmovq  %xmm4,%rcx
  0.32%    0.20%  │  0x00007f39c1231ed1: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.07%    0.07%  │  0x00007f39c1231ed4: mov    %r9,%rbx
  0.13%    0.18%  │  0x00007f39c1231ed7: add    $0x18,%rbx
  0.27%    0.17%  │  0x00007f39c1231edb: vmovq  %xmm0,%rcx
  0.27%    0.35%  │  0x00007f39c1231ee0: shr    $0x3,%rcx
  0.08%    0.03%  │  0x00007f39c1231ee4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.15%    0.12%  │  0x00007f39c1231ee6: mov    %eax,%ecx
  0.23%    0.08%  │  0x00007f39c1231ee8: add    $0x3,%ecx
  0.26%    0.19%  │  0x00007f39c1231eeb: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.03%  │  0x00007f39c1231eee: shr    $0x9,%rbx
  0.15%    0.16%  │  0x00007f39c1231ef2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.31%    0.13%  │  0x00007f39c1231ef6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f39c123267d
  0.35%    0.20%  │  0x00007f39c1231efb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f39c1231f01: jne    0x00007f39c123212d
  0.05%    0.05%  │  0x00007f39c1231f07: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.20%  │  0x00007f39c1231f0b: vmovq  %rcx,%xmm0
  0.24%    0.24%  │  0x00007f39c1231f10: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.26%    0.36%  │  0x00007f39c1231f13: vmovd  %ecx,%xmm1
  0.06%    0.03%  │  0x00007f39c1231f17: cmp    $0x40,%ecx
                  │  0x00007f39c1231f1a: jg     0x00007f39c12324a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.15%    0.15%  │  0x00007f39c1231f20: mov    $0x1,%ebx
  0.23%    0.15%  │  0x00007f39c1231f25: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.42%    0.50%  │  0x00007f39c1231f28: mov    %r8,%rcx
  0.31%    0.16%  │  0x00007f39c1231f2b: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.30%    0.11%  │  0x00007f39c1231f2e: test   %rcx,%rcx
                  │  0x00007f39c1231f31: jne    0x00007f39c12324dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.01%  │  0x00007f39c1231f37: vmovd  %xmm1,%ecx
  0.12%    0.26%  │  0x00007f39c1231f3b: cmp    $0x40,%ecx
                  │  0x00007f39c1231f3e: jge    0x00007f39c1232525  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.25%    0.25%  │  0x00007f39c1231f44: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.22%    0.41%  │  0x00007f39c1231f48: vmovq  %xmm4,%r10
  0.05%    0.12%  │  0x00007f39c1231f4d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.16%    0.17%  │  0x00007f39c1231f51: mov    %r9,%rcx
  0.31%    0.35%  │  0x00007f39c1231f54: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.27%  │  0x00007f39c1231f58: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.08%  │  0x00007f39c1231f5b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.14%  │  0x00007f39c1231f5f: vmovq  %xmm0,%r10
  0.19%    0.26%  │  0x00007f39c1231f64: shr    $0x3,%r10
  0.24%    0.33%  │  0x00007f39c1231f68: mov    %r10d,(%rcx)
  0.06%    0.07%  │  0x00007f39c1231f6b: mov    %rcx,%r10
  0.19%    0.15%  │  0x00007f39c1231f6e: shr    $0x9,%r10
  0.22%    0.29%  │  0x00007f39c1231f72: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.28%    0.18%  │  0x00007f39c1231f76: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f39c12326a5
  0.06%    0.08%  │  0x00007f39c1231f7b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f39c1231f82: jne    0x00007f39c1232159
  0.17%    0.14%  │  0x00007f39c1231f88: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.30%    0.20%  │  0x00007f39c1231f8c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.31%    0.24%  │  0x00007f39c1231f90: cmp    $0x40,%ecx
                  │  0x00007f39c1231f93: jg     0x00007f39c1232561  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.05%  │  0x00007f39c1231f99: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.79%    0.70%  │  0x00007f39c1231f9c: mov    %r8,%rbx
  0.04%    0.03%  │  0x00007f39c1231f9f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.14%    0.15%  │  0x00007f39c1231fa2: test   %rbx,%rbx
                  │  0x00007f39c1231fa5: jne    0x00007f39c1232585  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.24%    0.25%  │  0x00007f39c1231fab: cmp    $0x40,%ecx
                  │  0x00007f39c1231fae: jge    0x00007f39c12325b5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.22%    0.28%  │  0x00007f39c1231fb4: or     %rsi,%r8
  0.05%    0.10%  │  0x00007f39c1231fb7: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.13%    0.15%  │  0x00007f39c1231fbb: add    $0x20,%r9
  0.29%    0.32%  │  0x00007f39c1231fbf: mov    %r10,%r11
  0.24%    0.32%  │  0x00007f39c1231fc2: shr    $0x3,%r11
  0.07%    0.04%  │  0x00007f39c1231fc6: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.18%    0.19%  │  0x00007f39c1231fc9: mov    %r9,%r10
  0.17%    0.15%  │  0x00007f39c1231fcc: add    $0x5,%eax
  0.23%    0.17%  │  0x00007f39c1231fcf: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.01%  │  0x00007f39c1231fd2: shr    $0x9,%r10
  0.15%    0.11%  │  0x00007f39c1231fd6: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.21%    0.15%  │  0x00007f39c1231fda: xor    %eax,%eax
  0.30%    0.36%  │  0x00007f39c1231fdc: add    $0x70,%rsp
  0.08%    0.05%  │  0x00007f39c1231fe0: pop    %rbp
  0.20%    0.23%  │  0x00007f39c1231fe1: test   %eax,0x18714019(%rip)        # 0x00007f39d9946000
                  │                                                ;   {poll_return}
  0.30%    0.29%  │  0x00007f39c1231fe7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f39c1231fe8: mov    $0xffffffe4,%esi
                     0x00007f39c1231fed: vmovq  %xmm4,%rbp
                     0x00007f39c1231ff2: mov    %rdx,(%rsp)
                     0x00007f39c1231ff6: mov    %r14d,0x88(%rsp)
                     0x00007f39c1231ffe: vmovsd %xmm5,0x8(%rsp)
                     0x00007f39c1232004: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.52%   34.71%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.90%   60.83%         C2, level 4  com.google.re2j.Machine::match, version 554 (1639 bytes) 
 36.52%   34.71%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 520 (839 bytes) 
  1.65%    1.65%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.58%    0.61%         C2, level 4  com.google.re2j.Machine::match, version 554 (130 bytes) 
  0.31%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 560 (180 bytes) 
  0.15%    0.05%         C2, level 4  java.util.Collections::shuffle, version 567 (83 bytes) 
  0.14%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 560 (28 bytes) 
  0.13%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 560 (0 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.11%                  C2, level 4  com.google.re2j.RE2::match, version 560 (148 bytes) 
  0.11%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 560 (33 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 560 (8 bytes) 
  0.11%    0.02%         C2, level 4  java.util.Collections::shuffle, version 567 (236 bytes) 
  0.10%                  C2, level 4  com.google.re2j.RE2::match, version 560 (156 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 560 (202 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.00%           libjvm.so  PSPromotionManager::drain_stacks_depth (32 bytes) 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime (16 bytes) 
  0.03%    0.00%   [kernel.kallsyms]  [unknown] (33 bytes) 
  1.71%    1.61%  <...other 374 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.52%   61.45%         C2, level 4  com.google.re2j.Machine::match, version 554 
 36.52%   34.71%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 520 
  2.47%    2.29%   [kernel.kallsyms]  [unknown] 
  1.09%    0.46%         C2, level 4  com.google.re2j.RE2::match, version 560 
  0.29%    0.10%         C2, level 4  java.util.Collections::shuffle, version 567 
  0.09%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 599 
  0.07%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.07%    0.09%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.05%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.00%              [vdso]  __vdso_clock_gettime 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 564 
  0.03%    0.04%           libjvm.so  RelocIterator::initialize 
  0.03%    0.03%              [vdso]  [unknown] 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.00%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%                 libc-2.26.so  __clock_gettime 
  0.02%    0.02%           libjvm.so  xmlTextStream::write 
  0.02%    0.00%           libjvm.so  decode_env::handle_event 
  0.01%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.50%    0.42%  <...other 81 warm methods...>
....................................................................................................
100.00%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.54%   96.77%         C2, level 4
  2.47%    2.29%   [kernel.kallsyms]
  0.55%    0.55%           libjvm.so
  0.16%    0.30%        libc-2.26.so
  0.07%    0.00%  libpthread-2.26.so
  0.07%    0.03%              [vdso]
  0.06%    0.03%      hsdis-amd64.so
  0.05%    0.00%         interpreter
  0.01%    0.00%         C1, level 3
  0.00%    0.01%        runtime stub
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  26293.357 ± 91.843  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
