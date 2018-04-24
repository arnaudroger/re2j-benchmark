# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4279.265 ops/s
# Warmup Iteration   2: 9532.575 ops/s
# Warmup Iteration   3: 9535.686 ops/s
# Warmup Iteration   4: 9531.025 ops/s
# Warmup Iteration   5: 9528.069 ops/s
# Warmup Iteration   6: 9529.485 ops/s
# Warmup Iteration   7: 9534.117 ops/s
# Warmup Iteration   8: 9450.763 ops/s
# Warmup Iteration   9: 9540.732 ops/s
# Warmup Iteration  10: 9574.870 ops/s
# Warmup Iteration  11: 9593.290 ops/s
# Warmup Iteration  12: 9393.751 ops/s
# Warmup Iteration  13: 9590.860 ops/s
# Warmup Iteration  14: 9593.506 ops/s
# Warmup Iteration  15: 9595.770 ops/s
# Warmup Iteration  16: 9596.566 ops/s
# Warmup Iteration  17: 9586.035 ops/s
# Warmup Iteration  18: 9535.482 ops/s
# Warmup Iteration  19: 9600.277 ops/s
# Warmup Iteration  20: 9594.944 ops/s
Iteration   1: 9597.139 ops/s
Iteration   2: 9496.295 ops/s
Iteration   3: 9480.261 ops/s
Iteration   4: 9592.041 ops/s
Iteration   5: 9576.508 ops/s
Iteration   6: 9602.161 ops/s
Iteration   7: 9600.225 ops/s
Iteration   8: 9565.209 ops/s
Iteration   9: 9580.379 ops/s
Iteration  10: 9503.245 ops/s
Iteration  11: 9583.522 ops/s
Iteration  12: 9585.707 ops/s
Iteration  13: 9581.916 ops/s
Iteration  14: 9584.253 ops/s
Iteration  15: 9582.351 ops/s
Iteration  16: 9580.299 ops/s
Iteration  17: 9555.302 ops/s
Iteration  18: 9491.610 ops/s
Iteration  19: 9487.376 ops/s
Iteration  20: 9489.073 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9555.744 ±(99.9%) 38.829 ops/s [Average]
  (min, avg, max) = (9480.261, 9555.744, 9602.161), stdev = 44.716
  CI (99.9%): [9516.915, 9594.573] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 199243 total address lines.
Perf output processed (skipped 23.367 seconds):
 Column 1: cycles (20310 events)
 Column 2: instructions (20379 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 541 (1538 bytes) 

                                                                                           ; - java.util.Arrays::fill@3 (line 2881)
                                                                                           ; - com.google.re2j.Machine::match@52 (line 168)
                                                                                           ; implicit exception: dispatches to 0x00007fdc80c0fe19
                                             0x00007fdc80c0dd52: test   %ebp,%ebp
                                             0x00007fdc80c0dd54: jg     0x00007fdc80c0f4c5  ;*if_icmpge
                                                                                           ; - java.util.Arrays::fill@7 (line 2881)
                                                                                           ; - com.google.re2j.Machine::match@52 (line 168)
                                             0x00007fdc80c0dd5a: mov    %r12,0x10(%r10)    ;*putfield pcsl
                                                                                           ; - com.google.re2j.Machine::clearContains@2 (line 328)
                                                                                           ; - com.google.re2j.Machine::match@56 (line 169)
  0.00%                                      0x00007fdc80c0dd5e: mov    0x34(%r10),%ebp    ;*getfield pcs
                                                                                           ; - com.google.re2j.Machine::clearContains@6 (line 329)
                                                                                           ; - com.google.re2j.Machine::match@56 (line 169)
  0.00%                                      0x00007fdc80c0dd62: test   %ebp,%ebp
                                             0x00007fdc80c0dd64: jne    0x00007fdc80c0f4f9  ;*ifnull
                                                                                           ; - com.google.re2j.Machine::clearContains@9 (line 329)
                                                                                           ; - com.google.re2j.Machine::match@56 (line 169)
                                             0x00007fdc80c0dd6a: mov    0x8(%rdx),%eax     ; implicit exception: dispatches to 0x00007fdc80c0fe29
                                             0x00007fdc80c0dd6d: mov    0x28(%r10),%edi    ;*getfield q1
                                                                                           ; - com.google.re2j.Machine::match@66 (line 171)
  0.01%                                      0x00007fdc80c0dd71: mov    0x24(%r10),%ebx    ;*getfield q0
                                                                                           ; - com.google.re2j.Machine::match@60 (line 171)
                                             0x00007fdc80c0dd75: cmp    $0xf8019b8e,%eax   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                             0x00007fdc80c0dd7b: jne    0x00007fdc80c0f059  ;*invokevirtual step
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dd81: mov    0xc(%rdx),%eax     ;*getfield start
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dd84: mov    0x10(%rdx),%ebp    ;*getfield end
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
  0.02%                                      0x00007fdc80c0dd87: add    %eax,%ecx          ;*iadd
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dd89: cmp    %ebp,%ecx
                                             0x00007fdc80c0dd8b: jge    0x00007fdc80c0ef21  ;*if_icmpge
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dd91: mov    %ebp,0x70(%rsp)
  0.00%                                      0x00007fdc80c0dd95: mov    %eax,0x20(%rsp)
                                             0x00007fdc80c0dd99: mov    0x14(%rdx),%r13d   ;*getfield str
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dd9d: mov    0x8(%r12,%r13,8),%eax  ; implicit exception: dispatches to 0x00007fdc80c0fe3d
                                             0x00007fdc80c0dda2: cmp    $0xf80002da,%eax   ;   {metadata(&apos;java/lang/String&apos;)}
                                             0x00007fdc80c0dda8: jne    0x00007fdc80c0f08d
                                             0x00007fdc80c0ddae: lea    (%r12,%r13,8),%rax  ;*invokeinterface charAt
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
  0.00%    0.00%                             0x00007fdc80c0ddb2: test   %ecx,%ecx
                                             0x00007fdc80c0ddb4: jl     0x00007fdc80c0f331  ;*iflt
                                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0ddba: mov    %rdx,0x50(%rsp)
                                             0x00007fdc80c0ddbf: mov    %ebx,0x28(%rsp)
                                             0x00007fdc80c0ddc3: mov    %edi,0x1c(%rsp)
  0.01%    0.01%                             0x00007fdc80c0ddc7: mov    %r9d,0x48(%rsp)
                                             0x00007fdc80c0ddcc: mov    %r11d,0x44(%rsp)
                                             0x00007fdc80c0ddd1: mov    %r8d,0x40(%rsp)
  0.00%                                      0x00007fdc80c0ddd6: mov    %r10,0x38(%rsp)
           0.01%                             0x00007fdc80c0dddb: mov    0xc(%rax),%r10d    ;*getfield value
                                                                                           ; - java.lang.String::charAt@6 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0dddf: mov    %r10d,%r9d
                                             0x00007fdc80c0dde2: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                                           ; - java.lang.String::charAt@9 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                                                                           ; implicit exception: dispatches to 0x00007fdc80c0fe51
                                             0x00007fdc80c0dde7: mov    %r10d,%edi
  0.01%    0.00%                             0x00007fdc80c0ddea: cmp    %edi,%ecx
                                             0x00007fdc80c0ddec: jge    0x00007fdc80c0f525  ;*if_icmplt
                                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0ddf2: cmp    %edi,%ecx
                                             0x00007fdc80c0ddf4: jae    0x00007fdc80c0ef91
                                             0x00007fdc80c0ddfa: mov    %r9d,%r10d
                                             0x00007fdc80c0ddfd: lea    (%r12,%r10,8),%r11
  0.00%    0.00%                             0x00007fdc80c0de01: movzwl 0x10(%r11,%rcx,2),%r10d  ;*caload
                                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0de07: cmp    $0xd800,%r10d
                                             0x00007fdc80c0de0e: jge    0x00007fdc80c0f581  ;*if_icmplt
                                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0de14: shl    $0x3,%r10d         ;*ishl
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
                                             0x00007fdc80c0de18: mov    %r10d,%r8d
  0.00%    0.00%                             0x00007fdc80c0de1b: and    $0x7,%r8d
                                             0x00007fdc80c0de1f: or     $0x1,%r10d
                                             0x00007fdc80c0de23: mov    %r10d,%ebp
                                             0x00007fdc80c0de26: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                           ; - com.google.re2j.Machine::match@73 (line 172)
           0.00%                             0x00007fdc80c0de2a: mov    %r8d,0x24(%rsp)
                                             0x00007fdc80c0de2f: mov    %r10d,%ecx
                                             0x00007fdc80c0de32: sar    $0x3,%ecx          ;*ishr
                                                                                           ; - com.google.re2j.Machine::match@81 (line 173)
                                             0x00007fdc80c0de35: cmp    $0xfffffff8,%r10d
                                             0x00007fdc80c0de39: je     0x00007fdc80c0ef30  ;*if_icmpeq
                                                                                           ; - com.google.re2j.Machine::match@101 (line 177)
  0.00%                                      0x00007fdc80c0de3f: vmovd  %xmm0,%r10d
                                             0x00007fdc80c0de44: add    %r8d,%r10d
                                             0x00007fdc80c0de47: add    0x20(%rsp),%r10d   ;*iadd
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
                                             0x00007fdc80c0de4c: mov    %r10d,%r8d
  0.00%    0.01%                             0x00007fdc80c0de4f: cmp    0x70(%rsp),%r10d
                                             0x00007fdc80c0de54: jge    0x00007fdc80c0e7b4  ;*if_icmpge
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
  0.00%                                      0x00007fdc80c0de5a: test   %r10d,%r10d
                                             0x00007fdc80c0de5d: jl     0x00007fdc80c0f3e1  ;*iflt
                                                                                           ; - java.lang.String::charAt@1 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
           0.00%                             0x00007fdc80c0de63: cmp    %edi,%r10d
                                             0x00007fdc80c0de66: jge    0x00007fdc80c0f5e5  ;*if_icmplt
                                                                                           ; - java.lang.String::charAt@10 (line 657)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
           0.00%                             0x00007fdc80c0de6c: cmp    %edi,%r10d
                                             0x00007fdc80c0de6f: jae    0x00007fdc80c0efe9
  0.01%                                      0x00007fdc80c0de75: movzwl 0x10(%r11,%r10,2),%r10d  ;*caload
                                                                                           ; - java.lang.String::charAt@27 (line 660)
                                                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
           0.00%                             0x00007fdc80c0de7b: cmp    $0xd800,%r10d
                                             0x00007fdc80c0de82: jge    0x00007fdc80c0f655  ;*if_icmplt
                                                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
                                             0x00007fdc80c0de88: shl    $0x3,%r10d         ;*ishl
                                                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
                                             0x00007fdc80c0de8c: mov    %r10d,%r11d
  0.00%                                      0x00007fdc80c0de8f: and    $0x7,%r11d
                                             0x00007fdc80c0de93: or     $0x1,%r10d
                                             0x00007fdc80c0de97: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                           ; - com.google.re2j.Machine::match@109 (line 178)
  0.00%                                      0x00007fdc80c0de9b: mov    %r11d,0x2c(%rsp)
           0.01%                             0x00007fdc80c0dea0: sar    $0x3,%r10d         ;*ishr
                                                                                           ; - com.google.re2j.Machine::match@117 (line 179)
                                             0x00007fdc80c0dea4: mov    %r10d,0x34(%rsp)   ;*iand
                                                                                           ; - com.google.re2j.Machine::match@124 (line 180)
                                             0x00007fdc80c0dea9: vmovd  %xmm0,%r10d
                                             0x00007fdc80c0deae: test   %r10d,%r10d
                                             0x00007fdc80c0deb1: jne    0x00007fdc80c0f375  ;*ifne
                                                                                           ; - com.google.re2j.Machine::match@128 (line 183)
  0.01%                                      0x00007fdc80c0deb7: test   %ecx,%ecx
                                             0x00007fdc80c0deb9: jl     0x00007fdc80c0e7a6  ;*ifge
                                                                                           ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                           ; - com.google.re2j.Machine::match@134 (line 184)
                                             0x00007fdc80c0debf: mov    $0x5,%r10d         ;*iload_1
                                                                                           ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                           ; - com.google.re2j.Machine::match@134 (line 184)
                                             0x00007fdc80c0dec5: cmp    $0xa,%ecx
                                             0x00007fdc80c0dec8: je     0x00007fdc80c0e7d6  ;*iload_0
                                                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                           ; - com.google.re2j.Machine::match@134 (line 184)
                                             0x00007fdc80c0dece: mov    %ecx,%r8d
  0.00%    0.01%                             0x00007fdc80c0ded1: add    $0xffffffbf,%r8d
                                             0x00007fdc80c0ded5: cmp    $0x1a,%r8d
                  ╭                          0x00007fdc80c0ded9: jb     0x00007fdc80c0deec  ;*if_icmple
                  │                                                                        ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                        ; - com.google.re2j.Machine::match@134 (line 184)
                  │                          0x00007fdc80c0dedb: mov    %ecx,%r11d
                  │                          0x00007fdc80c0dede: add    $0xffffff9f,%r11d
  0.01%           │                          0x00007fdc80c0dee2: cmp    $0x1a,%r11d
                  │                          0x00007fdc80c0dee6: jae    0x00007fdc80c0e7df  ;*iconst_1
                  │                                                                        ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                        ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                        ; - com.google.re2j.Machine::match@134 (line 184)
                  ↘                          0x00007fdc80c0deec: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                           ; - com.google.re2j.Machine::match@134 (line 184)
                                             0x00007fdc80c0def0: mov    %r10d,0x30(%rsp)   ;*iload_2
                                                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                           ; - com.google.re2j.Machine::match@134 (line 184)
                                             0x00007fdc80c0def5: mov    0x40(%rsp),%r11d
           0.01%                             0x00007fdc80c0defa: test   %r11d,%r11d
                                             0x00007fdc80c0defd: jne    0x00007fdc80c0f0d1  ;*aload
                                                                                           ; - com.google.re2j.Machine::match@149 (line 190)
                                             0x00007fdc80c0df03: mov    0x48(%rsp),%r10d
                                             0x00007fdc80c0df08: mov    0x8(%r12,%r10,8),%r11d  ;*invokevirtual add
                                                                                           ; - com.google.re2j.Machine::match@326 (line 222)
                                                                                           ; implicit exception: dispatches to 0x00007fdc80c0f0d1
                                             0x00007fdc80c0df0d: mov    %r11d,0x14(%rsp)
           0.01%                             0x00007fdc80c0df12: mov    0x38(%rsp),%r10
                                             0x00007fdc80c0df17: movzbl 0x19(%r10),%r11d   ;*getfield captures
                                                                                           ; - com.google.re2j.Machine::match@296 (line 219)
           0.01%                             0x00007fdc80c0df1c: mov    0x48(%rsp),%r10d
                                             0x00007fdc80c0df21: shl    $0x3,%r10
  0.00%                                      0x00007fdc80c0df25: mov    %r10,0x58(%rsp)
                                             0x00007fdc80c0df2a: mov    0x44(%rsp),%r10d
           0.00%                             0x00007fdc80c0df2f: and    $0x4,%r10d         ;*iand
                                                                                           ; - com.google.re2j.Machine::match@160 (line 191)
  0.00%                                      0x00007fdc80c0df33: mov    %r10d,0x4c(%rsp)
  0.00%    0.00%                             0x00007fdc80c0df38: xor    %edi,%edi
                                             0x00007fdc80c0df3a: vmovd  %r11d,%xmm5
           0.00%                             0x00007fdc80c0df3f: xor    %r11d,%r11d
                                             0x00007fdc80c0df42: mov    %r11d,0x18(%rsp)
                                             0x00007fdc80c0df47: xor    %eax,%eax
                   ╭                         0x00007fdc80c0df49: jmpq   0x00007fdc80c0e1a5
  0.00%    0.01%   │    ↗                    0x00007fdc80c0df4e: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │    │                                                                  ; - com.google.re2j.Machine::match@334 (line 224)
           0.00%   │╭   │                    0x00007fdc80c0df52: jmp    0x00007fdc80c0dfb6
  0.01%    0.01%   ││ ↗ │                    0x00007fdc80c0df54: mov    $0x5,%r8d
                   ││╭│ │                    0x00007fdc80c0df5a: jmp    0x00007fdc80c0dfa2
  0.32%    0.11%   ││││ │           ↗        0x00007fdc80c0df5c: mov    0x58(%rsp),%rbp    ;*ifeq
                   ││││ │           │                                                      ; - com.google.re2j.Machine::match@299 (line 219)
  0.00%            ││││ │           │        0x00007fdc80c0df61: mov    %r14,%r8
  0.00%    0.01%   ││││ │           │        0x00007fdc80c0df64: shl    $0x3,%r8           ;*getfield matchcap
                   ││││ │           │                                                      ; - com.google.re2j.Machine::match@315 (line 222)
  0.04%    0.02%   ││││ │           │        0x00007fdc80c0df68: mov    %rbp,%rsi
  0.24%    0.12%   ││││ │           │        0x00007fdc80c0df6b: mov    0x60(%rsp),%rdx
  0.00%    0.00%   ││││ │           │        0x00007fdc80c0df70: mov    0x68(%rsp),%ecx
  0.00%    0.01%   ││││ │           │        0x00007fdc80c0df74: mov    0x30(%rsp),%r9d
  0.05%    0.04%   ││││ │           │        0x00007fdc80c0df79: xor    %edi,%edi
  0.25%    0.19%   ││││ │           │        0x00007fdc80c0df7b: mov    0x38(%rsp),%r10
                   ││││ │           │        0x00007fdc80c0df80: mov    %r10,(%rsp)
  0.00%    0.01%   ││││ │           │        0x00007fdc80c0df84: vmovss %xmm5,0x8(%rsp)
  0.06%    0.02%   ││││ │           │        0x00007fdc80c0df8a: nop
  0.31%    0.23%   ││││ │           │        0x00007fdc80c0df8b: callq  0x00007fdc80a0d020  ; OopMap{rbp=Oop [28]=NarrowOop [40]=NarrowOop [56]=Oop [72]=NarrowOop [80]=Oop [88]=Oop [96]=Oop off=688}
                   ││││ │           │                                                      ;*invokevirtual add
                   ││││ │           │                                                      ; - com.google.re2j.Machine::match@326 (line 222)
                   ││││ │           │                                                      ;   {optimized virtual_call}
  0.10%    0.11%   ││││ │           │        0x00007fdc80c0df90: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   ││││ │           │                                                      ; - com.google.re2j.Machine::match@-1 (line 157)
  0.17%    0.19%   ││││ │           │↗       0x00007fdc80c0df95: mov    0x6c(%rsp),%r10d
           0.00%   ││││ │           ││       0x00007fdc80c0df9a: test   %r10d,%r10d
                   │││╰ │           ││       0x00007fdc80c0df9d: jl     0x00007fdc80c0df54  ;*ifge
                   │││  │           ││                                                     ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   │││  │           ││                                                     ; - com.google.re2j.Machine::match@334 (line 224)
  0.33%    0.29%   │││  │           ││       0x00007fdc80c0df9f: xor    %r8d,%r8d          ;*iload_0
                   │││  │           ││                                                     ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   │││  │           ││                                                     ; - com.google.re2j.Machine::match@334 (line 224)
  0.18%    0.15%   ││↘  │           ││       0x00007fdc80c0dfa2: cmp    $0xa,%r10d
                   ││  ╭│           ││       0x00007fdc80c0dfa6: je     0x00007fdc80c0e342  ;*iload_1
                   ││  ││           ││                                                     ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││  ││           ││                                                     ; - com.google.re2j.Machine::match@334 (line 224)
  0.16%    0.15%   ││  ││           ││   ↗   0x00007fdc80c0dfac: mov    0x34(%rsp),%r10d
  0.01%            ││  ││           ││   │   0x00007fdc80c0dfb1: test   %r10d,%r10d
                   ││  │╰           ││   │   0x00007fdc80c0dfb4: jl     0x00007fdc80c0df4e  ;*iload_1
                   ││  │            ││   │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││  │            ││   │                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.33%    0.40%   │↘  │            ││   │   0x00007fdc80c0dfb6: cmp    $0xa,%r10d
                   │   │ ╭          ││   │   0x00007fdc80c0dfba: je     0x00007fdc80c0e34b  ;*iload_0
                   │   │ │          ││   │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │   │ │          ││   │                                                 ; - com.google.re2j.Machine::match@334 (line 224)
  0.20%    0.18%   │   │ │          ││   │↗  0x00007fdc80c0dfc0: mov    0x6c(%rsp),%r11d
  0.16%    0.11%   │   │ │          ││   ││  0x00007fdc80c0dfc5: add    $0xffffffbf,%r11d
  0.01%    0.02%   │   │ │          ││   ││  0x00007fdc80c0dfc9: cmp    $0x1a,%r11d
                   │   │ │╭         ││   ││  0x00007fdc80c0dfcd: jb     0x00007fdc80c0dfe2  ;*if_icmple
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.35%    0.34%   │   │ ││         ││   ││  0x00007fdc80c0dfcf: mov    0x6c(%rsp),%r10d
  0.13%    0.20%   │   │ ││         ││   ││  0x00007fdc80c0dfd4: add    $0xffffff9f,%r10d
  0.10%    0.20%   │   │ ││         ││   ││  0x00007fdc80c0dfd8: cmp    $0x1a,%r10d
                   │   │ ││         ││   ││  0x00007fdc80c0dfdc: jae    0x00007fdc80c0e5f8  ;*iconst_1
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │   │ ││         ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.03%    0.01%   │   │ │↘         ││   ││  0x00007fdc80c0dfe2: mov    $0x1,%ebp          ;*ireturn
                   │   │ │          ││   ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │   │ │          ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │   │ │          ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.32%    0.34%   │   │ │          ││   ││  0x00007fdc80c0dfe7: mov    0x34(%rsp),%r11d
  0.12%    0.15%   │   │ │          ││   ││  0x00007fdc80c0dfec: add    $0xffffffbf,%r11d
  0.19%    0.15%   │   │ │          ││   ││  0x00007fdc80c0dff0: cmp    $0x1a,%r11d
                   │   │ │ ╭        ││   ││  0x00007fdc80c0dff4: jb     0x00007fdc80c0e009  ;*if_icmple
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.07%    0.03%   │   │ │ │        ││   ││  0x00007fdc80c0dff6: mov    0x34(%rsp),%r10d
  0.23%    0.27%   │   │ │ │        ││   ││  0x00007fdc80c0dffb: add    $0xffffff9f,%r10d
  0.17%    0.06%   │   │ │ │        ││   ││  0x00007fdc80c0dfff: cmp    $0x1a,%r10d
                   │   │ │ │        ││   ││  0x00007fdc80c0e003: jae    0x00007fdc80c0e621  ;*iconst_1
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │   │ │ │        ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.17%    0.16%   │   │ │ ↘        ││   ││  0x00007fdc80c0e009: mov    $0x1,%r11d         ;*ireturn
                   │   │ │          ││   ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │   │ │          ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │   │ │          ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.23%    0.28%   │   │ │          ││   ││  0x00007fdc80c0e00f: cmp    %r11d,%ebp
                   │   │ │  ╭       ││   ││  0x00007fdc80c0e012: jne    0x00007fdc80c0e01f  ;*if_icmpeq
                   │   │ │  │       ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │   │ │  │       ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.21%    0.27%   │   │ │  │       ││   ││  0x00007fdc80c0e014: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │   │ │  │       ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.08%    0.16%   │   │ │  │       ││   ││  0x00007fdc80c0e018: mov    %r8d,0x30(%rsp)
  0.17%    0.21%   │   │ │  │╭      ││   ││  0x00007fdc80c0e01d: jmp    0x00007fdc80c0e028
  0.16%    0.12%   │   │ │  ↘│      ││   ││  0x00007fdc80c0e01f: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │   │ │   │      ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
                   │   │ │   │      ││   ││  0x00007fdc80c0e023: mov    %r8d,0x30(%rsp)    ;*iload_2
                   │   │ │   │      ││   ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │   │ │   │      ││   ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.21%    0.30%   │   │ │   ↘      ││   ││  0x00007fdc80c0e028: mov    0x50(%rsp),%r10
  0.53%    0.51%   │   │ │          ││   ││  0x00007fdc80c0e02d: mov    0x10(%r10),%r11d   ;*getfield end
                   │   │ │          ││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │   │ │          ││   ││                                                ; - com.google.re2j.Machine::match@356 (line 225)
  0.61%    0.41%   │   │ │          ││   ││  0x00007fdc80c0e031: mov    0x68(%rsp),%r10d
  0.09%    0.10%   │   │ │          ││   ││  0x00007fdc80c0e036: cmp    %r11d,%r10d
                   │   │ │    ╭     ││   ││  0x00007fdc80c0e039: je     0x00007fdc80c0e307  ;*if_icmpne
                   │   │ │    │     ││   ││                                                ; - com.google.re2j.Machine::match@359 (line 225)
  0.26%    0.13%   │   │ │    │     ││   ││  0x00007fdc80c0e03f: xor    %eax,%eax          ;*invokevirtual endPos
                   │   │ │    │     ││   ││                                                ; - com.google.re2j.Machine::match@356 (line 225)
  0.26%    0.38%   │   │ │    │     ││ ↗ ││  0x00007fdc80c0e041: mov    0x68(%rsp),%r11d
  0.15%    0.20%   │   │ │    │     ││ │ ││  0x00007fdc80c0e046: add    0x24(%rsp),%r11d   ;*iadd
                   │   │ │    │     ││ │ ││                                                ; - com.google.re2j.Machine::match@348 (line 225)
  0.12%    0.09%   │   │ │    │     ││ │ ││  0x00007fdc80c0e04b: mov    %r11d,0x18(%rsp)
  0.16%    0.09%   │   │ │    │     ││ │ ││  0x00007fdc80c0e050: mov    0x1c(%rsp),%r10d
  0.21%    0.38%   │   │ │    │     ││ │ ││  0x00007fdc80c0e055: mov    %r10,%rcx
  0.10%    0.15%   │   │ │    │     ││ │ ││  0x00007fdc80c0e058: shl    $0x3,%rcx          ;*aload
                   │   │ │    │     ││ │ ││                                                ; - com.google.re2j.Machine::match@149 (line 190)
  0.07%    0.10%   │   │ │    │     ││ │ ││  0x00007fdc80c0e05c: mov    0x38(%rsp),%rsi
  0.18%    0.04%   │   │ │    │     ││ │ ││  0x00007fdc80c0e061: mov    0x60(%rsp),%rdx
  0.24%    0.32%   │   │ │    │     ││ │ ││  0x00007fdc80c0e066: mov    0x68(%rsp),%r8d
  0.09%    0.16%   │   │ │    │     ││ │ ││  0x00007fdc80c0e06b: mov    %r11d,%r9d
  0.06%    0.14%   │   │ │    │     ││ │ ││  0x00007fdc80c0e06e: mov    0x6c(%rsp),%edi
  0.12%    0.11%   │   │ │    │     ││ │ ││  0x00007fdc80c0e072: mov    0x30(%rsp),%r10d
  0.24%    0.29%   │   │ │    │     ││ │ ││  0x00007fdc80c0e077: mov    %r10d,(%rsp)
  0.12%    0.21%   │   │ │    │     ││ │ ││  0x00007fdc80c0e07b: xor    %r10d,%r10d
  0.10%    0.05%   │   │ │    │     ││ │ ││  0x00007fdc80c0e07e: mov    %r10d,0x8(%rsp)
  0.17%    0.12%   │   │ │    │     ││ │ ││  0x00007fdc80c0e083: mov    %eax,0x10(%rsp)
  0.23%    0.25%   │   │ │    │     ││ │ ││  0x00007fdc80c0e087: callq  0x00007fdc80a0d020  ; OopMap{[28]=NarrowOop [40]=NarrowOop [56]=Oop [72]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [112]=Oop off=940}
                   │   │ │    │     ││ │ ││                                                ;*invokespecial step
                   │   │ │    │     ││ │ ││                                                ; - com.google.re2j.Machine::match@367 (line 225)
                   │   │ │    │     ││ │ ││                                                ;   {optimized virtual_call}
  0.17%    0.19%   │   │ │    │     ││ │ ││  0x00007fdc80c0e08c: mov    0x38(%rsp),%r10
  0.49%    0.65%   │   │ │    │     ││ │ ││  0x00007fdc80c0e091: movzbl 0x19(%r10),%r11d   ;*getfield captures
                   │   │ │    │     ││ │ ││                                                ; - com.google.re2j.Machine::match@379 (line 229)
  0.02%    0.00%   │   │ │    │     ││ │ ││  0x00007fdc80c0e096: movzbl 0x18(%r10),%eax    ;*getfield matched
                   │   │ │    │     ││ │ ││                                                ; - com.google.re2j.Machine::match@386 (line 229)
  0.13%    0.14%   │   │ │    │     ││ │ ││  0x00007fdc80c0e09b: mov    0x24(%rsp),%r10d
  0.11%    0.21%   │   │ │    │     ││ │ ││  0x00007fdc80c0e0a0: test   %r10d,%r10d
                   │   │ │    │╭    ││ │ ││  0x00007fdc80c0e0a3: je     0x00007fdc80c0e320  ;*ifne
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@372 (line 226)
  0.43%    0.41%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0a9: test   %r11d,%r11d
                   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0ac: jne    0x00007fdc80c0e985  ;*ifne
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@382 (line 229)
  0.01%    0.01%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0b2: test   %eax,%eax
                   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0b4: jne    0x00007fdc80c0ebe5  ;*ifeq
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@389 (line 229)
  0.16%    0.24%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0ba: mov    0x50(%rsp),%r10
  0.18%    0.22%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0bf: mov    0x10(%r10),%r8d    ;*getfield end
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.41%    0.50%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0c3: mov    0xc(%r10),%r9d     ;*getfield start
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.01%    0.01%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0c7: mov    0x14(%r10),%r13d   ;*getfield str
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │   │ │    ││    ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.18%    0.24%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0cb: mov    0x34(%rsp),%ecx
  0.12%    0.17%   │   │ │    ││    ││ │ ││  0x00007fdc80c0e0cf: cmp    $0xffffffff,%ecx
                   │   │ │    ││╭   ││ │ ││  0x00007fdc80c0e0d2: je     0x00007fdc80c0e311  ;*if_icmpeq
                   │   │ │    │││   ││ │ ││                                                ; - com.google.re2j.Machine::match@411 (line 237)
  0.33%    0.45%   │   │ │    │││   ││ │ ││  0x00007fdc80c0e0d8: mov    0x2c(%rsp),%ecx
                   │   │ │    │││   ││ │ ││  0x00007fdc80c0e0dc: add    0x18(%rsp),%ecx
  0.19%    0.31%   │   │ │    │││   ││ │ ││  0x00007fdc80c0e0e0: add    %r9d,%ecx          ;*iadd
                   │   │ │    │││   ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │   │ │    │││   ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.11%    0.13%   │   │ │    │││   ││ │ ││  0x00007fdc80c0e0e3: cmp    %r8d,%ecx
                   │   │ │    │││╭  ││ │ ││  0x00007fdc80c0e0e6: jge    0x00007fdc80c0e2fa  ;*if_icmpge
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.35%    0.47%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e0ec: mov    0x8(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007fdc80c0fd91
  0.91%    1.27%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e0f1: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e0f8: jne    0x00007fdc80c0e8ad
  0.44%    0.50%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e0fe: lea    (%r12,%r13,8),%rbx  ;*invokeinterface charAt
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.04%    0.06%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e102: test   %ecx,%ecx
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e104: jl     0x00007fdc80c0e9d5  ;*iflt
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.15%    0.30%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e10a: mov    0xc(%rbx),%r10d    ;*getfield value
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.00%    0.02%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e10e: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
                   │   │ │    ││││  ││ │ ││                                                ; implicit exception: dispatches to 0x00007fdc80c0fda5
  2.52%    3.01%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e113: cmp    %ebp,%ecx
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e115: jge    0x00007fdc80c0ec35  ;*if_icmplt
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.59%    0.63%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e11b: cmp    %ebp,%ecx
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e11d: jae    0x00007fdc80c0e838
  0.14%    0.19%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e123: shl    $0x3,%r10
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e127: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.90%    1.08%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e12d: cmp    $0xd800,%r10d
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e134: jge    0x00007fdc80c0eca1  ;*if_icmplt
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │   │ │    ││││  ││ │ ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.63%    0.70%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e13a: shl    $0x3,%r10d         ;*ishl
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@419 (line 238)
  0.26%    0.27%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e13e: mov    %r10d,%ebx
                   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e141: or     $0x1,%ebx
  0.60%    0.87%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e144: and    $0x7,%r10d
  0.01%    0.01%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e148: sar    $0x3,%ebx          ;*ishr
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@427 (line 239)
  0.58%    0.80%   │   │ │    ││││  ││ │ ││  0x00007fdc80c0e14b: or     $0x1,%r10d         ; OopMap{r13=NarrowOop [28]=NarrowOop [56]=Oop [72]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [112]=Oop off=1135}
                   │   │ │    ││││  ││ │ ││                                                ;*goto
                   │   │ │    ││││  ││ │ ││                                                ; - com.google.re2j.Machine::match@449 (line 245)
  0.01%    0.01%   │   │ │    ││││  ││↗│↗││  0x00007fdc80c0e14f: test   %eax,0x15fc0eab(%rip)        # 0x00007fdc96bcf000
                   │   │ │    ││││  │││││││                                                ;*goto
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@449 (line 245)
                   │   │ │    ││││  │││││││                                                ;   {poll}
  0.01%    0.01%   │   │ │    ││││  │││││││  0x00007fdc80c0e155: mov    0x38(%rsp),%rcx
  0.00%    0.02%   │   │ │    ││││  │││││││  0x00007fdc80c0e15a: mov    0x10(%rcx),%rdi    ;*getfield pcsl
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.66%    0.80%   │   │ │    ││││  │││││││  0x00007fdc80c0e15e: mov    0x1c(%rcx),%esi    ;*getfield re2
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@182 (line 199)
           0.00%   │   │ │    ││││  │││││││  0x00007fdc80c0e161: mov    0x30(%rcx),%r14d   ;*getfield matchcap
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@315 (line 222)
  0.00%            │   │ │    ││││  │││││││  0x00007fdc80c0e165: mov    0x60(%rsp),%rcx
  0.01%    0.03%   │   │ │    ││││  │││││││  0x00007fdc80c0e16a: mov    %rcx,%rbp
  0.60%    0.78%   │   │ │    ││││  │││││││  0x00007fdc80c0e16d: shr    $0x3,%rbp
                   │   │ │    ││││  │││││││  0x00007fdc80c0e171: mov    0x34(%rsp),%ecx
           0.00%   │   │ │    ││││  │││││││  0x00007fdc80c0e175: vmovd  %r11d,%xmm5
  0.01%    0.03%   │   │ │    ││││  │││││││  0x00007fdc80c0e17a: mov    0x1c(%rsp),%r11d
  0.57%    0.62%   │   │ │    ││││  │││││││  0x00007fdc80c0e17f: mov    %r11d,0x28(%rsp)
  0.00%    0.00%   │   │ │    ││││  │││││││  0x00007fdc80c0e184: mov    %ebp,0x1c(%rsp)
  0.00%            │   │ │    ││││  │││││││  0x00007fdc80c0e188: mov    0x2c(%rsp),%r11d
  0.02%    0.01%   │   │ │    ││││  │││││││  0x00007fdc80c0e18d: mov    %r11d,0x24(%rsp)
  0.65%    0.53%   │   │ │    ││││  │││││││  0x00007fdc80c0e192: mov    %r10d,0x2c(%rsp)
  0.00%    0.00%   │   │ │    ││││  │││││││  0x00007fdc80c0e197: mov    %ebx,0x34(%rsp)
  0.00%            │   │ │    ││││  │││││││  0x00007fdc80c0e19b: mov    %r9d,0x20(%rsp)
  0.01%    0.02%   │   │ │    ││││  │││││││  0x00007fdc80c0e1a0: mov    %r8d,0x70(%rsp)    ;*getfield pcsl
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                   │   │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.65%    0.45%   ↘   │ │    ││││  │││││││  0x00007fdc80c0e1a5: mov    0x28(%rsp),%r10d
           0.00%       │ │    ││││  │││││││  0x00007fdc80c0e1aa: mov    0xc(%r12,%r10,8),%r9d  ;*getfield size
                       │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@151 (line 190)
                       │ │    ││││  │││││││                                                ; implicit exception: dispatches to 0x00007fdc80c0fd82
  0.04%    0.03%       │ │    ││││  │││││││  0x00007fdc80c0e1af: shl    $0x3,%r10          ;*aload
                       │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@149 (line 190)
  0.02%    0.03%       │ │    ││││  │││││││  0x00007fdc80c0e1b3: mov    %r10,0x60(%rsp)
  0.58%    0.48%       │ │    ││││  │││││││  0x00007fdc80c0e1b8: test   %r9d,%r9d
                       │ │    ││││╭ │││││││  0x00007fdc80c0e1bb: jne    0x00007fdc80c0e208  ;*ifne
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@154 (line 190)
                       │ │    │││││ │││││││  0x00007fdc80c0e1bd: mov    0x4c(%rsp),%r11d
                       │ │    │││││ │││││││  0x00007fdc80c0e1c2: test   %r11d,%r11d
                       │ │    │││││ │││││││  0x00007fdc80c0e1c5: jne    0x00007fdc80c0ede1  ;*ifeq
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@161 (line 191)
  0.01%    0.01%       │ │    │││││ │││││││  0x00007fdc80c0e1cb: test   %eax,%eax
                       │ │    │││││ │││││││  0x00007fdc80c0e1cd: jne    0x00007fdc80c0ee41  ;*ifeq
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@175 (line 195)
  0.21%    0.26%       │ │    │││││ │││││││  0x00007fdc80c0e1d3: mov    0x24(%r12,%rsi,8),%r10d  ;*getfield prefix
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@185 (line 199)
                       │ │    │││││ │││││││                                                ; implicit exception: dispatches to 0x00007fdc80c0fdc9
  0.00%                │ │    │││││ │││││││  0x00007fdc80c0e1d8: mov    %r10d,%r8d
           0.01%       │ │    │││││ │││││││  0x00007fdc80c0e1db: mov    0xc(%r12,%r10,8),%r10d  ;*getfield value
                       │ │    │││││ │││││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@188 (line 199)
                       │ │    │││││ │││││││                                                ; implicit exception: dispatches to 0x00007fdc80c0fdd9
  0.00%    0.01%       │ │    │││││ │││││││  0x00007fdc80c0e1e0: vmovd  %r10d,%xmm1
  0.30%    0.19%       │ │    │││││ │││││││  0x00007fdc80c0e1e5: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                       │ │    │││││ │││││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@188 (line 199)
                       │ │    │││││ │││││││                                                ; implicit exception: dispatches to 0x00007fdc80c0fde9
  0.02%                │ │    │││││ │││││││  0x00007fdc80c0e1ea: mov    %r10d,0x68(%rsp)
  0.01%    0.01%       │ │    │││││ │││││││  0x00007fdc80c0e1ef: test   %r10d,%r10d
                       │ │    │││││ │││││││  0x00007fdc80c0e1f2: jne    0x00007fdc80c0e401  ;*ifne
                       │ │    │││││ │││││││                                                ; - com.google.re2j.Machine::match@191 (line 199)
  0.01%    0.02%       │ │    │││││ │││││││  0x00007fdc80c0e1f8: mov    %ecx,0x6c(%rsp)
  0.21%    0.12%       │ │    │││││ │││││││  0x00007fdc80c0e1fc: mov    0x18(%rsp),%r11d
  0.01%                │ │    │││││ │││││││  0x00007fdc80c0e201: mov    %r11d,0x68(%rsp)
  0.00%                │ │    │││││╭│││││││  0x00007fdc80c0e206: jmp    0x00007fdc80c0e216
  0.00%                │ │    ││││↘││││││││  0x00007fdc80c0e208: mov    %ecx,0x6c(%rsp)
                       │ │    ││││ ││││││││  0x00007fdc80c0e20c: mov    0x18(%rsp),%r10d
  0.00%    0.01%       │ │    ││││ ││││││││  0x00007fdc80c0e211: mov    %r10d,0x68(%rsp)   ;*iload_3
                       │ │    ││││ ││││││││                                                ; - com.google.re2j.Machine::match@280 (line 216)
  0.37%    0.26%       │ │    ││││ ↘│││││││  0x00007fdc80c0e216: test   %eax,%eax
                       │ │    ││││  │││││││  0x00007fdc80c0e218: jne    0x00007fdc80c0e91d  ;*ifne
                       │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@292 (line 216)
  0.28%    0.10%       │ │    ││││  │││││││  0x00007fdc80c0e21e: vmovd  %xmm5,%r10d
                       │ │    ││││  │││││││  0x00007fdc80c0e223: test   %r10d,%r10d
                       │ │    ││││  │││││││  0x00007fdc80c0e226: jne    0x00007fdc80c0eab1  ;*ifeq
                       │ │    ││││  │││││││                                                ; - com.google.re2j.Machine::match@299 (line 219)
  0.01%    0.01%       │ │    ││││  │││││││  0x00007fdc80c0e22c: mov    0x14(%rsp),%r11d
  0.38%    0.16%       │ │    ││││  │││││││  0x00007fdc80c0e231: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                       │ │    ││││  ╰││││││  0x00007fdc80c0e238: je     0x00007fdc80c0df5c
  0.01%    0.00%       │ │    ││││   ││││││  0x00007fdc80c0e23e: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                       │ │    ││││   ││││││  0x00007fdc80c0e245: jne    0x00007fdc80c0eb1d
                       │ │    ││││   ││││││  0x00007fdc80c0e24b: mov    0x58(%rsp),%r10    ;*invokevirtual add
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
                       │ │    ││││   ││││││  0x00007fdc80c0e250: mov    %r10,0x70(%rsp)
  0.26%    0.13%       │ │    ││││   ││││││  0x00007fdc80c0e255: mov    0x18(%r10),%ecx    ;*getfield pc
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
           0.00%       │ │    ││││   ││││││  0x00007fdc80c0e259: cmp    $0x40,%ecx
                       │ │    ││││   ││││││  0x00007fdc80c0e25c: jge    0x00007fdc80c0ed0d  ;*if_icmpge
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.00%    0.00%       │ │    ││││   ││││││  0x00007fdc80c0e262: mov    $0x1,%r10d
                       │ │    ││││   ││││││  0x00007fdc80c0e268: shl    %cl,%r10           ;*lshl
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.24%    0.12%       │ │    ││││   ││││││  0x00007fdc80c0e26b: mov    %r10,%r11
           0.01%       │ │    ││││   ││││││  0x00007fdc80c0e26e: and    %rdi,%r11          ;*land
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.24%    0.07%       │ │    ││││   ││││││  0x00007fdc80c0e271: test   %r11,%r11
                       │ │    ││││   ││││││  0x00007fdc80c0e274: jne    0x00007fdc80c0e7cc  ;*ifne
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.00%    0.00%       │ │    ││││   ││││││  0x00007fdc80c0e27a: or     %rdi,%r10
                       │ │    ││││   ││││││  0x00007fdc80c0e27d: mov    0x38(%rsp),%r8
  0.00%                │ │    ││││   ││││││  0x00007fdc80c0e282: mov    %r10,0x10(%r8)     ;*putfield pcsl
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.29%    0.19%       │ │    ││││   ││││││  0x00007fdc80c0e286: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.01%                │ │    ││││   ││││││  0x00007fdc80c0e288: test   %r11,%r11
                       │ │    ││││   ││││││  0x00007fdc80c0e28b: jne    0x00007fdc80c0ed81  ;*ifeq
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
                       │ │    ││││   ││││││  0x00007fdc80c0e291: mov    0x28(%rsp),%r10d
  0.00%                │ │    ││││   ││││││  0x00007fdc80c0e296: mov    0x10(%r12,%r10,8),%ebp  ;*getfield denseThreadsInstructions
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.25%    0.25%       │ │    ││││   ││││││  0x00007fdc80c0e29b: mov    %r9d,%r10d
                       │ │    ││││   ││││││  0x00007fdc80c0e29e: inc    %r10d
                       │ │    ││││   ││││││  0x00007fdc80c0e2a1: mov    0x28(%rsp),%r8d
           0.00%       │ │    ││││   ││││││  0x00007fdc80c0e2a6: mov    %r10d,0xc(%r12,%r8,8)  ;*putfield size
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.30%    0.12%       │ │    ││││   ││││││  0x00007fdc80c0e2ab: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fdc80c0fdb5
  0.03%    0.00%       │ │    ││││   ││││││  0x00007fdc80c0e2b0: cmp    %r10d,%r9d
                       │ │    ││││   ││││││  0x00007fdc80c0e2b3: jae    0x00007fdc80c0ea45
  0.05%    0.02%       │ │    ││││   ││││││  0x00007fdc80c0e2b9: mov    0x8(%r12,%rbp,8),%r10d
  0.01%    0.00%       │ │    ││││   ││││││  0x00007fdc80c0e2be: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                       │ │    ││││   ││││││  0x00007fdc80c0e2c5: jne    0x00007fdc80c0eb79
  0.26%    0.13%       │ │    ││││   ││││││  0x00007fdc80c0e2cb: mov    0x70(%rsp),%r10
  0.01%    0.02%       │ │    ││││   ││││││  0x00007fdc80c0e2d0: shr    $0x3,%r10          ;*aastore
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.02%    0.02%       │ │    ││││   ││││││  0x00007fdc80c0e2d4: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreadsInstructions
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
                       │ │    ││││   ││││││  0x00007fdc80c0e2d8: lea    0x10(%r11,%r9,4),%r11
  0.33%    0.21%       │ │    ││││   ││││││  0x00007fdc80c0e2dd: mov    %r10d,(%r11)
  0.11%    0.11%       │ │    ││││   ││││││  0x00007fdc80c0e2e0: mov    %r11,%r10
                       │ │    ││││   ││││││  0x00007fdc80c0e2e3: shr    $0x9,%r10
                       │ │    ││││   ││││││  0x00007fdc80c0e2e7: movabs $0x7fdc7c3f5000,%r11
  0.26%    0.16%       │ │    ││││   ││││││  0x00007fdc80c0e2f1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                       │ │    ││││   ││││││                                                ; - com.google.re2j.Machine::match@326 (line 222)
  0.13%    0.18%       │ │    ││││   ╰│││││  0x00007fdc80c0e2f5: jmpq   0x00007fdc80c0df95
  0.03%    0.03%       │ │    │││↘    │││││  0x00007fdc80c0e2fa: mov    $0xffffffff,%ebx
  0.00%    0.03%       │ │    │││     │││││  0x00007fdc80c0e2ff: xor    %r10d,%r10d
                       │ │    │││     ╰││││  0x00007fdc80c0e302: jmpq   0x00007fdc80c0e14f
           0.00%       │ │    ↘││      ││││  0x00007fdc80c0e307: mov    $0x1,%eax
  0.00%    0.01%       │ │     ││      ╰│││  0x00007fdc80c0e30c: jmpq   0x00007fdc80c0e041
  0.00%                │ │     │↘       │││  0x00007fdc80c0e311: mov    0x2c(%rsp),%r10d
           0.00%       │ │     │        │││  0x00007fdc80c0e316: mov    $0xffffffff,%ebx
                       │ │     │        ╰││  0x00007fdc80c0e31b: jmpq   0x00007fdc80c0e14f
  0.00%    0.00%       │ │     ↘         ││  0x00007fdc80c0e320: test   %r11d,%r11d
                       │ │               ││  0x00007fdc80c0e323: jne    0x00007fdc80c0e762  ;*getfield matched
                       │ │               ││                                                ; - com.google.re2j.Machine::match@459 (line 248)
  0.01%                │ │               ││  0x00007fdc80c0e329: mov    0x1c(%rsp),%r11d
           0.00%       │ │               ││  0x00007fdc80c0e32e: mov    %r12d,0xc(%r12,%r11,8)  ;*if_icmpne
                       │ │               ││                                                ; - com.google.re2j.Machine::match@12 (line 158)
                       │ │               ││                                                ; implicit exception: dispatches to 0x00007fdc80c0fe61
  0.01%                │ │               ││  0x00007fdc80c0e333: add    $0x90,%rsp
                       │ │               ││  0x00007fdc80c0e33a: pop    %rbp
                       │ │               ││  0x00007fdc80c0e33b: test   %eax,0x15fc0cbf(%rip)        # 0x00007fdc96bcf000
                       │ │               ││                                                ;   {poll_return}
                       │ │               ││  0x00007fdc80c0e341: retq   
           0.00%       ↘ │               ││  0x00007fdc80c0e342: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                         │               ││                                                ; - com.google.re2j.Machine::match@334 (line 224)
                         │               ╰│  0x00007fdc80c0e346: jmpq   0x00007fdc80c0dfac
  0.01%                  ↘                │  0x00007fdc80c0e34b: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                          │                                                ; - com.google.re2j.Machine::match@334 (line 224)
  0.00%    0.01%                          ╰  0x00007fdc80c0e34f: jmpq   0x00007fdc80c0dfc0
                                             0x00007fdc80c0e354: nopl   0x0(%rax,%rax,1)
                                             0x00007fdc80c0e35c: data16 data16 xchg %ax,%ax
  0.00%                                      0x00007fdc80c0e360: mov    %ecx,%r8d
                                             0x00007fdc80c0e363: jmpq   0x00007fdc80c0e562
                                             0x00007fdc80c0e368: add    $0x2,%r8d
                                             0x00007fdc80c0e36c: mov    %r8d,%ecx
                                             0x00007fdc80c0e36f: inc    %ecx
                                             0x00007fdc80c0e371: jmp    0x00007fdc80c0e382
                                             0x00007fdc80c0e373: mov    %r8d,%ecx
                                             0x00007fdc80c0e376: add    $0x2,%ecx
                                             0x00007fdc80c0e379: jmp    0x00007fdc80c0e37f
                                             0x00007fdc80c0e37b: add    $0x2,%r8d
                                             0x00007fdc80c0e37f: inc    %r8d               ;*iinc
....................................................................................................
 30.02%   31.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 499 (303 bytes) 

                                                                    ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                    ; - com.google.re2j.Machine::step@218 (line 298)
                                                                    ;   {optimized virtual_call}
                      0x00007fdc80bea1e8: test   %rax,%rax
                      0x00007fdc80bea1eb: jne    0x00007fdc80beb0b5  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@225 (line 301)
                      0x00007fdc80bea1f1: mov    0x28(%rsp),%r8
                      0x00007fdc80bea1f6: mov    0x30(%rsp),%r9
                  ╭   0x00007fdc80bea1fb: jmp    0x00007fdc80bea275
  0.03%    0.04%  │   0x00007fdc80bea1fd: cmp    $0xf8019909,%edx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007fdc80bea203: jne    0x00007fdc80beac01  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.07%    0.10%  │   0x00007fdc80bea209: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.15%    0.20%  │   0x00007fdc80bea20c: cmp    $0x40,%ecx
                  │   0x00007fdc80bea20f: jge    0x00007fdc80beafd1  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.04%  │   0x00007fdc80bea215: mov    $0x1,%r10d
  0.02%    0.02%  │   0x00007fdc80bea21b: shl    %cl,%r10           ;*lshl
                  │                                                 ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.28%    0.28%  │   0x00007fdc80bea21e: mov    %r10,%rcx
  0.03%    0.04%  │   0x00007fdc80bea221: and    %r9,%rcx           ;*land
                  │                                                 ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.10%  │   0x00007fdc80bea224: test   %rcx,%rcx
                  │   0x00007fdc80bea227: jne    0x00007fdc80bea441  ;*ifne
                  │                                                 ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.18%  │   0x00007fdc80bea22d: or     %r9,%r10
  0.09%    0.05%  │   0x00007fdc80bea230: mov    0x28(%rsp),%r8
  0.03%    0.02%  │   0x00007fdc80bea235: mov    %r10,0x10(%r8)     ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.05%    0.11%  │   0x00007fdc80bea239: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.15%    0.11%  │   0x00007fdc80bea23b: test   %rcx,%rcx
                  │   0x00007fdc80bea23e: jne    0x00007fdc80beb041  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.13%  │   0x00007fdc80bea244: add    $0x18,%rbx
  0.06%    0.05%  │   0x00007fdc80bea248: mov    %rdi,%r10
  0.07%    0.08%  │   0x00007fdc80bea24b: shr    $0x3,%r10
  0.11%    0.15%  │   0x00007fdc80bea24f: mov    %r10d,(%rbx)       ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.04%    0.10%  │   0x00007fdc80bea252: mov    %rbx,%r10
  0.02%    0.06%  │   0x00007fdc80bea255: mov    0xc(%rsp),%ecx
  0.06%    0.10%  │   0x00007fdc80bea259: add    $0x3,%ecx
  0.14%    0.17%  │   0x00007fdc80bea25c: mov    %r14,%r9
  0.06%    0.11%  │   0x00007fdc80bea25f: mov    %ecx,0xc(%r14)     ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.03%    0.03%  │   0x00007fdc80bea263: shr    $0x9,%r10
  0.08%    0.07%  │   0x00007fdc80bea267: movabs $0x7fdc7c3f5000,%r11
  0.15%    0.17%  │   0x00007fdc80bea271: mov    %r12b,(%r11,%r10,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.10%  ↘   0x00007fdc80bea275: mov    0xac(%rsp),%eax
  0.04%    0.01%      0x00007fdc80bea27c: mov    0x48(%rsp),%r13
  0.06%    0.05%      0x00007fdc80bea281: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.06%      0x00007fdc80bea289: mov    0xa8(%rsp),%r11d
  0.07%    0.05%      0x00007fdc80bea291: mov    0xb0(%rsp),%ebx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@223 (line 301)
  0.76%    0.72%      0x00007fdc80bea298: inc    %r10d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@234 (line 267)
  0.57%    0.72%      0x00007fdc80bea29b: cmp    %eax,%r10d
                      0x00007fdc80bea29e: jge    0x00007fdc80bea379  ;*iload
                                                                    ; - com.google.re2j.Machine::step@47 (line 270)
  0.93%    1.01%      0x00007fdc80bea2a4: mov    0x10(%r8),%rdi     ;*getfield pcsl
                                                                    ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                    ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                    ; - com.google.re2j.Machine::step@218 (line 298)
  0.56%    0.64%      0x00007fdc80bea2a8: mov    %r9,%r14
  0.43%    0.36%      0x00007fdc80bea2ab: mov    %r11d,0xa8(%rsp)
  0.55%    0.66%      0x00007fdc80bea2b3: mov    %ebx,0xb0(%rsp)    ;*iload
                                                                    ; - com.google.re2j.Machine::step@47 (line 270)
  0.98%    1.06%      0x00007fdc80bea2ba: mov    0x10(%r13,%r10,4),%r11d  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@103 (line 280)
  1.42%    1.34%      0x00007fdc80bea2bf: mov    0xc(%r12,%r11,8),%ecx  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@108 (line 282)
                                                                    ; implicit exception: dispatches to 0x00007fdc80beb121
  3.21%    3.77%      0x00007fdc80bea2c4: cmp    $0x6,%ecx
                      0x00007fdc80bea2c7: je     0x00007fdc80bea3ba  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@113 (line 282)
  1.17%    1.17%      0x00007fdc80bea2cd: cmp    $0xa,%ecx
                      0x00007fdc80bea2d0: je     0x00007fdc80be9eca  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  1.00%    0.93%      0x00007fdc80bea2d6: cmp    $0xb,%ecx
                      0x00007fdc80bea2d9: je     0x00007fdc80bea450  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.99%    0.95%      0x00007fdc80bea2df: mov    0x1c(%r12,%r11,8),%ebx  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.35%    0.59%      0x00007fdc80bea2e4: cmp    $0x9,%ecx
                   ╭  0x00007fdc80bea2e7: jne    0x00007fdc80bea2fa  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.16%    0.18%   │  0x00007fdc80bea2e9: cmp    0x20(%rsp),%ebx
                   │  0x00007fdc80bea2ed: je     0x00007fdc80bea39b  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@195 (line 297)
  0.24%    0.25%   │  0x00007fdc80bea2f3: xor    %ecx,%ecx
  0.15%    0.17%   │  0x00007fdc80bea2f5: jmpq   0x00007fdc80be9e22
  0.56%    0.52%   ↘  0x00007fdc80bea2fa: cmp    $0xc,%ecx
                      0x00007fdc80bea2fd: jne    0x00007fdc80bea47d  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.99%    0.90%      0x00007fdc80bea303: cmp    0x20(%rsp),%ebx
                      0x00007fdc80bea307: je     0x00007fdc80bea391  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.59%    0.48%      0x00007fdc80bea30d: mov    0x20(%r12,%r11,8),%ecx  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.97%    0.91%      0x00007fdc80bea312: cmp    0x20(%rsp),%ecx
                      0x00007fdc80bea316: je     0x00007fdc80bea391  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  1.15%    1.06%      0x00007fdc80bea318: mov    0x24(%r12,%r11,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.57%    0.69%      0x00007fdc80bea31d: cmp    0x20(%rsp),%ebp
                      0x00007fdc80bea321: je     0x00007fdc80bea4a9  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.89%    0.86%      0x00007fdc80bea327: mov    0x28(%r12,%r11,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
  0.27%    0.32%      0x00007fdc80bea32c: cmp    0x20(%rsp),%ebp
                      0x00007fdc80bea330: jne    0x00007fdc80be9e20  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@38 (line 98)
                                                                    ; - com.google.re2j.Machine::step@195 (line 297)
                      0x00007fdc80bea336: mov    $0xffffff65,%esi
                      0x00007fdc80bea33b: mov    %r10d,0xa4(%rsp)
                      0x00007fdc80bea343: mov    %r11d,0xac(%rsp)
                      0x00007fdc80bea34b: mov    %r8,0x28(%rsp)
                      0x00007fdc80bea350: mov    %r14,0x30(%rsp)
....................................................................................................
 22.00%   23.06%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 518 (871 bytes) 

                         # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                         # parm6:    [sp+0x88]   = boolean
                         0x00007fdc80bef520: mov    0x8(%rsi),%r10d
                         0x00007fdc80bef524: shl    $0x3,%r10
                         0x00007fdc80bef528: cmp    %r10,%rax
                         0x00007fdc80bef52b: jne    0x00007fdc80a0ce20  ;   {runtime_call}
                         0x00007fdc80bef531: data16 xchg %ax,%ax
                         0x00007fdc80bef534: nopl   0x0(%rax,%rax,1)
                         0x00007fdc80bef53c: data16 data16 xchg %ax,%ax
                       [Verified Entry Point]
  0.01%                  0x00007fdc80bef540: mov    %eax,-0x14000(%rsp)
  0.28%    0.17%         0x00007fdc80bef547: push   %rbp
                         0x00007fdc80bef548: sub    $0x70,%rsp         ;*synchronization entry
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 256)
  0.10%    0.04%         0x00007fdc80bef54c: vmovd  %r9d,%xmm5
  0.19%    0.31%         0x00007fdc80bef551: vmovq  %r8,%xmm4
  0.00%                  0x00007fdc80bef556: vmovq  %rdx,%xmm3
  0.01%    0.01%         0x00007fdc80bef55b: vmovq  %rsi,%xmm2
  0.05%    0.07%         0x00007fdc80bef560: mov    %ecx,%eax
  0.26%    0.18%         0x00007fdc80bef562: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@3 (line 256)
                         0x00007fdc80bef565: mov    0x80(%rsp),%r10
  0.01%                  0x00007fdc80bef56d: mov    0x10(%r10),%r8     ;*getfield pcsl
                                                                       ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
                                                                       ; implicit exception: dispatches to 0x00007fdc80befdc5
  0.07%    0.04%         0x00007fdc80bef571: cmp    $0x40,%ecx
                         0x00007fdc80bef574: jge    0x00007fdc80befac9  ;*if_icmpge
                                                                       ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.28%    0.26%         0x00007fdc80bef57a: mov    $0x1,%r9d
           0.00%         0x00007fdc80bef580: mov    $0x1,%r11d
  0.00%    0.00%         0x00007fdc80bef586: shl    %cl,%r11           ;*lshl
                                                                       ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.37%    0.29%         0x00007fdc80bef589: mov    %r11,%rcx
  0.00%    0.00%         0x00007fdc80bef58c: and    %r8,%rcx           ;*land
                                                                       ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.08%    0.04%         0x00007fdc80bef58f: test   %rcx,%rcx
                  ╭      0x00007fdc80bef592: jne    0x00007fdc80bef8a8  ;*ifne
                  │                                                    ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.33%    0.26%  │      0x00007fdc80bef598: or     %r8,%r11           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
           0.00%  │      0x00007fdc80bef59b: mov    %r11,0x10(%r10)    ;*putfield pcsl
                  │                                                    ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@6 (line 256)
  0.03%    0.01%  │      0x00007fdc80bef59f: xor    %ebp,%ebp          ;*getfield pcsl
                  │                                                    ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.09%    0.07%  │  ↗   0x00007fdc80bef5a1: test   %rcx,%rcx
                  │  │   0x00007fdc80bef5a4: jne    0x00007fdc80befb01  ;*ifeq
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@9 (line 256)
  0.27%    0.26%  │  │   0x00007fdc80bef5aa: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@16 (line 260)
                  │  │   0x00007fdc80bef5ad: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fdc80befdd9
  0.00%    0.01%  │  │   0x00007fdc80bef5b2: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  │   0x00007fdc80bef5b8: jne    0x00007fdc80bef981
  0.08%    0.04%  │  │   0x00007fdc80bef5be: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.23%    0.25%  │  │   0x00007fdc80bef5c2: mov    0x18(%r8),%ecx     ;*getfield pc
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                  │  │   0x00007fdc80bef5c6: cmp    $0x40,%ecx
                  │  │   0x00007fdc80bef5c9: jge    0x00007fdc80befb39  ;*if_icmpge
                  │  │                                                 ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.01%    0.01%  │  │   0x00007fdc80bef5cf: mov    $0x1,%ebx
  0.09%    0.08%  │  │   0x00007fdc80bef5d4: shl    %cl,%rbx           ;*lshl
                  │  │                                                 ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.28%    0.26%  │  │   0x00007fdc80bef5d7: mov    %rbx,%rcx
  0.10%    0.07%  │  │   0x00007fdc80bef5da: and    %r11,%rcx          ;*land
                  │  │                                                 ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.27%    0.37%  │  │   0x00007fdc80bef5dd: test   %rcx,%rcx
                  │╭ │   0x00007fdc80bef5e0: jne    0x00007fdc80bef8b5  ;*ifne
                  ││ │                                                 ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.00%           ││ │   0x00007fdc80bef5e6: or     %r11,%rbx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.01%    0.00%  ││ │   0x00007fdc80bef5e9: mov    %rbx,0x10(%r10)    ;*putfield pcsl
                  ││ │                                                 ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.04%    0.10%  ││ │   0x00007fdc80bef5ed: xor    %ebp,%ebp          ;*getfield pcsl
                  ││ │                                                 ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.25%    0.35%  ││ │↗  0x00007fdc80bef5ef: test   %rcx,%rcx
                  ││ ││  0x00007fdc80bef5f2: jne    0x00007fdc80befb79  ;*ifeq
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                  ││ ││  0x00007fdc80bef5f8: mov    0x88(%rsp),%r11d
  0.03%    0.02%  ││ ││  0x00007fdc80bef600: test   %r11d,%r11d
                  ││ ││  0x00007fdc80bef603: jne    0x00007fdc80befbb5  ;*ifeq
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@17 (line 148)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.05%    0.06%  ││ ││  0x00007fdc80bef609: mov    0x10(%rdx),%edx    ;*getfield denseThreadsInstructions
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                  ││ ││                                                ; implicit exception: dispatches to 0x00007fdc80befe0d
  0.25%    0.31%  ││ ││  0x00007fdc80bef60c: vmovq  %xmm3,%rcx
  0.00%           ││ ││  0x00007fdc80bef611: mov    0xc(%rcx),%ecx     ;*getfield size
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.02%    0.01%  ││ ││  0x00007fdc80bef614: mov    %ecx,%esi
  0.07%    0.07%  ││ ││  0x00007fdc80bef616: inc    %esi               ;*iadd
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.23%    0.28%  ││ ││  0x00007fdc80bef618: vmovq  %xmm3,%rdi
           0.01%  ││ ││  0x00007fdc80bef61d: mov    %esi,0xc(%rdi)     ;*putfield size
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.03%    0.03%  ││ ││  0x00007fdc80bef620: mov    0xc(%r12,%rdx,8),%edi  ; implicit exception: dispatches to 0x00007fdc80befe21
  0.06%    0.12%  ││ ││  0x00007fdc80bef625: cmp    %edi,%ecx
                  ││ ││  0x00007fdc80bef627: jae    0x00007fdc80bef8f4
  0.30%    0.41%  ││ ││  0x00007fdc80bef62d: vmovd  %esi,%xmm0
                  ││ ││  0x00007fdc80bef631: mov    %ecx,0x18(%rsp)
  0.01%    0.02%  ││ ││  0x00007fdc80bef635: mov    %edx,%r14d
  0.08%    0.06%  ││ ││  0x00007fdc80bef638: mov    0x80(%rsp),%r13
  0.29%    0.33%  ││ ││  0x00007fdc80bef640: mov    0x8(%r12,%rdx,8),%ecx
                  ││ ││  0x00007fdc80bef645: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││ ││  0x00007fdc80bef64b: jne    0x00007fdc80bef9b9  ;*aastore
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.02%    0.01%  ││ ││  0x00007fdc80bef651: vmovq  %xmm2,%r10
  0.10%    0.06%  ││ ││  0x00007fdc80bef656: mov    0x34(%r10),%ebp    ;*getfield inst2
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@36 (line 261)
  0.20%    0.28%  ││ ││  0x00007fdc80bef65a: shl    $0x3,%rdx          ;*getfield denseThreadsInstructions
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
                  ││ ││  0x00007fdc80bef65e: mov    0x18(%rsp),%r10d
  0.15%    0.07%  ││ ││  0x00007fdc80bef663: lea    0x10(%rdx,%r10,4),%r11
  0.10%    0.05%  ││ ││  0x00007fdc80bef668: mov    %r8,%r10
  0.25%    0.25%  ││ ││  0x00007fdc80bef66b: shr    $0x3,%r10
  0.00%           ││ ││  0x00007fdc80bef66f: mov    %r10d,(%r11)
  0.38%    0.30%  ││ ││  0x00007fdc80bef672: mov    %r11,%r10
  0.08%    0.02%  ││ ││  0x00007fdc80bef675: shr    $0x9,%r10
  0.17%    0.08%  ││ ││  0x00007fdc80bef679: movabs $0x7fdc7c3f5000,%rsi
                  ││ ││  0x00007fdc80bef683: mov    %r12b,(%rsi,%r10,1)  ;*aastore
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@30 (line 260)
  0.17%    0.19%  ││ ││  0x00007fdc80bef687: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fdc80befe3d
  0.07%    0.03%  ││ ││  0x00007fdc80bef68c: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││ ││  0x00007fdc80bef693: jne    0x00007fdc80bef9fd
  0.07%    0.09%  ││ ││  0x00007fdc80bef699: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
                  ││ ││  0x00007fdc80bef69d: vmovq  %r10,%xmm1
  0.15%    0.17%  ││ ││  0x00007fdc80bef6a2: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.07%    0.05%  ││ ││  0x00007fdc80bef6a6: cmp    $0x40,%ecx
                  ││ ││  0x00007fdc80bef6a9: jge    0x00007fdc80befbf5  ;*if_icmpge
                  ││ ││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.13%    0.15%  ││ ││  0x00007fdc80bef6af: mov    $0x1,%r11d
                  ││ ││  0x00007fdc80bef6b5: shl    %cl,%r11           ;*lshl
                  ││ ││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.35%    0.37%  ││ ││  0x00007fdc80bef6b8: mov    %r11,%r10
  0.00%           ││ ││  0x00007fdc80bef6bb: and    %rbx,%r10          ;*land
                  ││ ││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.14%    0.12%  ││ ││  0x00007fdc80bef6be: test   %r10,%r10
                  ││╭││  0x00007fdc80bef6c1: jne    0x00007fdc80bef8c2  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.06%    0.05%  │││││  0x00007fdc80bef6c7: or     %rbx,%r11          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.19%    0.14%  │││││  0x00007fdc80bef6ca: mov    %r11,0x10(%r13)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
                  │││││  0x00007fdc80bef6ce: xor    %ebp,%ebp          ;*getfield pcsl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@11 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.14%    0.10%  │││││  0x00007fdc80bef6d0: test   %r10,%r10
                  │││││  0x00007fdc80bef6d3: jne    0x00007fdc80befc35  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.05%    0.01%  │││││  0x00007fdc80bef6d9: mov    0x18(%rsp),%r10d
  0.17%    0.09%  │││││  0x00007fdc80bef6de: add    $0x4,%r10d         ;*iadd
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
                  │││││  0x00007fdc80bef6e2: mov    0x18(%rsp),%r8d
  0.12%    0.23%  │││││  0x00007fdc80bef6e7: add    $0x2,%r8d
  0.03%    0.08%  │││││  0x00007fdc80bef6eb: vmovq  %xmm3,%rbx
  0.11%    0.21%  │││││  0x00007fdc80bef6f0: mov    %r8d,0xc(%rbx)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
                  │││││  0x00007fdc80bef6f4: cmp    %edi,%r10d
                  │││││  0x00007fdc80bef6f7: jae    0x00007fdc80bef93d  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.19%    0.19%  │││││  0x00007fdc80bef6fd: vmovq  %xmm2,%r8
  0.04%    0.06%  │││││  0x00007fdc80bef702: mov    0x38(%r8),%ebp     ;*getfield inst3
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@56 (line 262)
  0.15%    0.20%  │││││  0x00007fdc80bef706: vmovq  %xmm1,%r8
                  │││││  0x00007fdc80bef70b: shr    $0x3,%r8           ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.18%    0.18%  │││││  0x00007fdc80bef70f: movslq 0x18(%rsp),%rcx
  0.06%    0.09%  │││││  0x00007fdc80bef714: lea    (%rdx,%rcx,4),%rbx  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.16%    0.19%  │││││  0x00007fdc80bef718: mov    %rbx,%rcx
  0.00%    0.00%  │││││  0x00007fdc80bef71b: add    $0x14,%rcx
  0.14%    0.12%  │││││  0x00007fdc80bef71f: mov    %r8d,(%rcx)
  0.04%    0.05%  │││││  0x00007fdc80bef722: mov    %rcx,%r8
  0.17%    0.08%  │││││  0x00007fdc80bef725: shr    $0x9,%r8
  0.01%    0.01%  │││││  0x00007fdc80bef729: mov    %r12b,(%rsi,%r8,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@50 (line 261)
  0.13%    0.23%  │││││  0x00007fdc80bef72d: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fdc80befe6d
  0.04%    0.09%  │││││  0x00007fdc80bef732: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fdc80bef738: jne    0x00007fdc80befa31
  0.14%    0.20%  │││││  0x00007fdc80bef73e: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
                  │││││  0x00007fdc80bef742: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.13%    0.24%  │││││  0x00007fdc80bef746: cmp    $0x40,%ecx
                  │││││  0x00007fdc80bef749: jge    0x00007fdc80befc71  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.06%    0.08%  │││││  0x00007fdc80bef74f: mov    $0x1,%edi
  0.16%    0.19%  │││││  0x00007fdc80bef754: shl    %cl,%rdi           ;*lshl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.14%    0.24%  │││││  0x00007fdc80bef757: mov    %rdi,%r8
  0.10%    0.15%  │││││  0x00007fdc80bef75a: and    %r11,%r8           ;*land
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
                  │││││  0x00007fdc80bef75d: test   %r8,%r8
                  │││││  0x00007fdc80bef760: jne    0x00007fdc80bef8cf  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.10%    0.18%  │││││  0x00007fdc80bef766: or     %r11,%rdi          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.03%    0.09%  │││││  0x00007fdc80bef769: mov    %rdi,0x10(%r13)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.13%    0.13%  │││││  0x00007fdc80bef76d: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.00%           │││││  0x00007fdc80bef76f: test   %r8,%r8
                  │││││  0x00007fdc80bef772: jne    0x00007fdc80befcb1  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.09%    0.12%  │││││  0x00007fdc80bef778: mov    %rbx,%r8
  0.05%    0.06%  │││││  0x00007fdc80bef77b: add    $0x18,%r8          ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.12%    0.22%  │││││  0x00007fdc80bef77f: vmovq  %xmm2,%r11
                  │││││  0x00007fdc80bef784: mov    0x3c(%r11),%ebp    ;*getfield inst4
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@76 (line 263)
  0.21%    0.13%  │││││  0x00007fdc80bef788: mov    %r14,%r11
  0.05%    0.08%  │││││  0x00007fdc80bef78b: shr    $0x3,%r11
  0.15%    0.18%  │││││  0x00007fdc80bef78f: mov    %r11d,(%r8)        ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.00%           │││││  0x00007fdc80bef792: mov    %r8,%r11
  0.15%    0.10%  │││││  0x00007fdc80bef795: mov    0x18(%rsp),%r8d
  0.05%    0.04%  │││││  0x00007fdc80bef79a: add    $0x3,%r8d
  0.14%    0.14%  │││││  0x00007fdc80bef79e: vmovq  %xmm3,%r14
  0.00%           │││││  0x00007fdc80bef7a3: mov    %r8d,0xc(%r14)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.16%    0.03%  │││││  0x00007fdc80bef7a7: shr    $0x9,%r11
  0.08%    0.04%  │││││  0x00007fdc80bef7ab: mov    %r12b,(%rsi,%r11,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@70 (line 262)
  0.18%    0.14%  │││││  0x00007fdc80bef7af: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fdc80befe9d
           0.00%  │││││  0x00007fdc80bef7b4: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fdc80bef7bb: jne    0x00007fdc80befa65
  0.09%    0.09%  │││││  0x00007fdc80bef7c1: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.06%    0.05%  │││││  0x00007fdc80bef7c5: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.21%    0.15%  │││││  0x00007fdc80bef7c9: cmp    $0x40,%ecx
                  │││││  0x00007fdc80bef7cc: jge    0x00007fdc80befced  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.00%           │││││  0x00007fdc80bef7d2: mov    $0x1,%r11d
  0.16%    0.24%  │││││  0x00007fdc80bef7d8: shl    %cl,%r11           ;*lshl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.24%    0.26%  │││││  0x00007fdc80bef7db: mov    %r11,%r8
  0.21%    0.15%  │││││  0x00007fdc80bef7de: and    %rdi,%r8           ;*land
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.03%    0.06%  │││││  0x00007fdc80bef7e1: test   %r8,%r8
                  │││││  0x00007fdc80bef7e4: jne    0x00007fdc80bef8dc  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.13%    0.11%  │││││  0x00007fdc80bef7ea: or     %rdi,%r11          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.00%           │││││  0x00007fdc80bef7ed: mov    %r11,0x10(%r13)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.14%    0.09%  │││││  0x00007fdc80bef7f1: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.03%    0.02%  │││││  0x00007fdc80bef7f3: test   %r8,%r8
                  │││││  0x00007fdc80bef7f6: jne    0x00007fdc80befd2d  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.18%    0.22%  │││││  0x00007fdc80bef7fc: vmovq  %xmm3,%r8
           0.00%  │││││  0x00007fdc80bef801: mov    %r10d,0xc(%r8)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.13%    0.20%  │││││  0x00007fdc80bef805: vmovq  %xmm2,%r10
  0.03%    0.08%  │││││  0x00007fdc80bef80a: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@96 (line 264)
  0.12%    0.21%  │││││  0x00007fdc80bef80e: mov    %rbx,%r8
  0.01%           │││││  0x00007fdc80bef811: add    $0x1c,%r8
  0.09%    0.19%  │││││  0x00007fdc80bef815: mov    %r14,%r10
  0.02%    0.09%  │││││  0x00007fdc80bef818: shr    $0x3,%r10
  0.17%    0.16%  │││││  0x00007fdc80bef81c: mov    %r10d,(%r8)
           0.02%  │││││  0x00007fdc80bef81f: mov    %r8,%r10
  0.11%    0.16%  │││││  0x00007fdc80bef822: shr    $0x9,%r10
  0.06%    0.07%  │││││  0x00007fdc80bef826: mov    %r12b,(%rsi,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@90 (line 263)
  0.15%    0.24%  │││││  0x00007fdc80bef82a: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fdc80befec9
           0.02%  │││││  0x00007fdc80bef82f: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fdc80bef836: jne    0x00007fdc80befa99
  0.16%    0.23%  │││││  0x00007fdc80bef83c: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.04%    0.03%  │││││  0x00007fdc80bef840: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.14%    0.22%  │││││  0x00007fdc80bef844: cmp    $0x40,%ecx
                  │││││  0x00007fdc80bef847: jge    0x00007fdc80befd69  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.02%    0.00%  │││││  0x00007fdc80bef84d: shl    %cl,%r9            ;*lshl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.39%    0.34%  │││││  0x00007fdc80bef850: mov    %r9,%r8
           0.01%  │││││  0x00007fdc80bef853: and    %r11,%r8           ;*land
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.13%    0.16%  │││││  0x00007fdc80bef856: test   %r8,%r8
                  │││││  0x00007fdc80bef859: jne    0x00007fdc80bef8e9  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.06%    0.05%  │││││  0x00007fdc80bef85f: or     %r11,%r9
  0.15%    0.17%  │││││  0x00007fdc80bef862: mov    %r9,0x10(%r13)     ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
           0.01%  │││││  0x00007fdc80bef866: xor    %r11d,%r11d        ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.10%    0.27%  │││││  0x00007fdc80bef869: test   %r8,%r8
                  │││││  0x00007fdc80bef86c: jne    0x00007fdc80befd95  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.02%    0.07%  │││││  0x00007fdc80bef872: add    $0x20,%rbx
  0.15%    0.21%  │││││  0x00007fdc80bef876: shr    $0x3,%r10
           0.01%  │││││  0x00007fdc80bef87a: mov    %r10d,(%rbx)       ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.11%    0.17%  │││││  0x00007fdc80bef87d: mov    %rbx,%r10
  0.07%    0.05%  │││││  0x00007fdc80bef880: mov    0x18(%rsp),%r11d
  0.12%    0.10%  │││││  0x00007fdc80bef885: add    $0x5,%r11d
                  │││││  0x00007fdc80bef889: vmovq  %xmm3,%r8
  0.11%    0.14%  │││││  0x00007fdc80bef88e: mov    %r11d,0xc(%r8)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.13%    0.11%  │││││  0x00007fdc80bef892: shr    $0x9,%r10
  0.17%    0.15%  │││││  0x00007fdc80bef896: mov    %r12b,(%rsi,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@110 (line 264)
  0.01%    0.00%  │││││  0x00007fdc80bef89a: xor    %eax,%eax
  0.17%    0.16%  │││││  0x00007fdc80bef89c: add    $0x70,%rsp
  0.04%    0.08%  │││││  0x00007fdc80bef8a0: pop    %rbp
  0.14%    0.17%  │││││  0x00007fdc80bef8a1: test   %eax,0x15fdf759(%rip)        # 0x00007fdc96bcf000
                  │││││                                                ;   {poll_return}
           0.00%  │││││  0x00007fdc80bef8a7: retq   
                  ↘││││  0x00007fdc80bef8a8: mov    %r8,%r11
                   ││││  0x00007fdc80bef8ab: mov    $0x1,%ebp
                   ││╰│  0x00007fdc80bef8b0: jmpq   0x00007fdc80bef5a1
                   ↘│ │  0x00007fdc80bef8b5: mov    %r11,%rbx
                    │ │  0x00007fdc80bef8b8: mov    $0x1,%ebp
                    │ ╰  0x00007fdc80bef8bd: jmpq   0x00007fdc80bef5ef
                    ↘    0x00007fdc80bef8c2: mov    %rbx,%r11
                         0x00007fdc80bef8c5: mov    $0x1,%ebp
                         0x00007fdc80bef8ca: jmpq   0x00007fdc80bef6d0
....................................................................................................
 17.36%   18.69%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 499 (723 bytes) 

                     0x00007fdc80be9eab: mov    %r8d,(%r10)
                     0x00007fdc80be9eae: shr    $0x9,%r11
                     0x00007fdc80be9eb2: movabs $0x7fdc7c3f5000,%r10
                     0x00007fdc80be9ebc: mov    %r12b,(%r10,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                     0x00007fdc80be9ec0: mov    0x28(%rsp),%r8
                     0x00007fdc80be9ec5: jmpq   0x00007fdc80bea275
  0.20%    0.16%     0x00007fdc80be9eca: mov    0x2c(%r12,%r11,8),%ebx  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@203 (line 298)
  0.52%    0.29%     0x00007fdc80be9ecf: mov    0x8(%r12,%rbx,8),%ecx  ; implicit exception: dispatches to 0x00007fdc80beb151
  1.46%    1.36%     0x00007fdc80be9ed4: lea    (%r12,%rbx,8),%r11
                     0x00007fdc80be9ed8: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007fdc80be9ede: je     0x00007fdc80be9f82
  0.12%    0.05%  │  0x00007fdc80be9ee4: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fdc80be9eea: jne    0x00007fdc80beab05  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.05%    0.02%  │  0x00007fdc80be9ef0: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.00%           │  0x00007fdc80be9ef4: cmp    $0x40,%ecx
                  │  0x00007fdc80be9ef7: jge    0x00007fdc80beaed9  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.01%  │  0x00007fdc80be9efd: mov    $0x1,%r9d
  0.02%    0.01%  │  0x00007fdc80be9f03: shl    %cl,%r9            ;*lshl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.15%    0.06%  │  0x00007fdc80be9f06: mov    %r9,%rcx
  0.00%    0.02%  │  0x00007fdc80be9f09: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
                  │  0x00007fdc80be9f0c: test   %rcx,%rcx
                  │  0x00007fdc80be9f0f: jne    0x00007fdc80bea437  ;*ifne
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.08%    0.04%  │  0x00007fdc80be9f15: or     %rdi,%r9
  0.01%    0.01%  │  0x00007fdc80be9f18: mov    %r9,0x10(%r8)      ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.02%  │  0x00007fdc80be9f1c: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
                  │  0x00007fdc80be9f1e: test   %rcx,%rcx
                  │  0x00007fdc80be9f21: jne    0x00007fdc80beaf61  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.00%  │  0x00007fdc80be9f27: mov    %r14,%r9
  0.01%    0.00%  │  0x00007fdc80be9f2a: mov    0x10(%r14),%ecx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
                  │                                                ; implicit exception: dispatches to 0x00007fdc80beb209
  0.04%    0.03%  │  0x00007fdc80be9f2e: mov    0xc(%r14),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
                  │  0x00007fdc80be9f32: mov    %ebp,%edi
  0.02%    0.02%  │  0x00007fdc80be9f34: inc    %edi
  0.03%    0.00%  │  0x00007fdc80be9f36: mov    %edi,0xc(%r14)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.02%    0.03%  │  0x00007fdc80be9f3a: mov    0xc(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007fdc80beb21d
                  │  0x00007fdc80be9f3f: cmp    %edi,%ebp
                  │  0x00007fdc80be9f41: jae    0x00007fdc80beaa7d
  0.02%    0.01%  │  0x00007fdc80be9f47: mov    0x8(%r12,%rcx,8),%edi
  0.01%    0.01%  │  0x00007fdc80be9f4c: cmp    $0xf8019807,%edi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fdc80be9f52: jne    0x00007fdc80beab79  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.05%    0.02%  │  0x00007fdc80be9f58: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
                  │  0x00007fdc80be9f5c: lea    0x10(%rcx,%rbp,4),%rcx
  0.02%    0.01%  │  0x00007fdc80be9f61: shr    $0x3,%r11
  0.00%    0.01%  │  0x00007fdc80be9f65: mov    %r11d,(%rcx)
  0.31%    0.08%  │  0x00007fdc80be9f68: mov    %rcx,%r11
                  │  0x00007fdc80be9f6b: shr    $0x9,%r11
           0.01%  │  0x00007fdc80be9f6f: movabs $0x7fdc7c3f5000,%rcx
                  │  0x00007fdc80be9f79: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.08%    0.07%  │  0x00007fdc80be9f7d: jmpq   0x00007fdc80bea289  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@218 (line 298)
  0.24%    0.26%  ↘  0x00007fdc80be9f82: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@3 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.05%    0.08%     0x00007fdc80be9f86: cmp    $0x40,%ecx
                     0x00007fdc80be9f89: jge    0x00007fdc80bea8f1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.35%    0.34%     0x00007fdc80be9f8f: mov    $0x1,%edx
                     0x00007fdc80be9f94: shl    %cl,%rdx           ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.70%    0.67%     0x00007fdc80be9f97: mov    %rdx,%r9
                     0x00007fdc80be9f9a: and    %rdi,%r9           ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.03%    0.01%     0x00007fdc80be9f9d: test   %r9,%r9
                     0x00007fdc80be9fa0: jne    0x00007fdc80bea403  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.19%    0.25%     0x00007fdc80be9fa6: or     %rdi,%rdx          ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.08%     0x00007fdc80be9fa9: mov    %rdx,0x10(%r8)     ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.00%     0x00007fdc80be9fad: test   %r9,%r9
                     0x00007fdc80be9fb0: jne    0x00007fdc80bea3a5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@9 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.01%     0x00007fdc80be9fb6: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@16 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.09%    0.12%     0x00007fdc80be9fba: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fdc80beb16d
  0.05%    0.08%     0x00007fdc80be9fbf: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fdc80be9fc5: jne    0x00007fdc80bea5a5
  0.13%    0.16%     0x00007fdc80be9fcb: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.00%              0x00007fdc80be9fcf: mov    0x18(%rbx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.02%    0.06%     0x00007fdc80be9fd2: cmp    $0x40,%ecx
                     0x00007fdc80be9fd5: jge    0x00007fdc80bea96d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.20%    0.24%     0x00007fdc80be9fdb: mov    $0x1,%r9d
  0.01%              0x00007fdc80be9fe1: shl    %cl,%r9            ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.61%    0.23%     0x00007fdc80be9fe4: mov    %r9,%rcx
  0.00%              0x00007fdc80be9fe7: and    %rdx,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                     0x00007fdc80be9fea: test   %rcx,%rcx
                     0x00007fdc80be9fed: jne    0x00007fdc80bea40b  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.17%    0.01%     0x00007fdc80be9ff3: or     %rdx,%r9           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.01%     0x00007fdc80be9ff6: mov    %r9,0x10(%r8)      ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.00%     0x00007fdc80be9ffa: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                     0x00007fdc80be9ffc: test   %rcx,%rcx
                     0x00007fdc80be9fff: jne    0x00007fdc80bea9f5  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.00%     0x00007fdc80bea005: mov    0x10(%r14),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007fdc80beb189
  0.09%    0.01%     0x00007fdc80bea009: mov    0xc(%r14),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.02%     0x00007fdc80bea00d: mov    %ecx,%edx
                     0x00007fdc80bea00f: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.09%    0.02%     0x00007fdc80bea011: mov    %edx,0xc(%r14)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.07%    0.05%     0x00007fdc80bea015: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fdc80beb19d
  0.08%    0.09%     0x00007fdc80bea01a: cmp    %esi,%ecx
                     0x00007fdc80bea01c: jae    0x00007fdc80bea525
  0.01%              0x00007fdc80bea022: vmovd  %edx,%xmm0
  0.08%    0.09%     0x00007fdc80bea026: mov    %ecx,0xc(%rsp)
  0.17%    0.09%     0x00007fdc80bea02a: mov    %edi,%edx
  0.07%              0x00007fdc80bea02c: mov    %r10d,0xa4(%rsp)
  0.02%              0x00007fdc80bea034: mov    %r13,0x48(%rsp)
  0.06%    0.00%     0x00007fdc80bea039: mov    %eax,0xac(%rsp)
  0.12%    0.01%     0x00007fdc80bea040: mov    %r14,0x30(%rsp)
  0.11%              0x00007fdc80bea045: mov    %r8,0x28(%rsp)
  0.00%              0x00007fdc80bea04a: mov    0x8(%r12,%rdi,8),%r10d
  0.09%              0x00007fdc80bea04f: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fdc80bea056: jne    0x00007fdc80bea629  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.15%    0.01%     0x00007fdc80bea05c: mov    0x34(%r11),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@36 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.00%     0x00007fdc80bea060: mov    %r10d,%eax
                     0x00007fdc80bea063: lea    (%r12,%rdi,8),%r11  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.09%              0x00007fdc80bea067: lea    0x10(%r11,%rcx,4),%r8
  0.14%    0.02%     0x00007fdc80bea06c: mov    %rbx,%r10
  0.09%    0.04%     0x00007fdc80bea06f: shr    $0x3,%r10
  0.02%              0x00007fdc80bea073: mov    %r10d,(%r8)
  0.08%    0.04%     0x00007fdc80bea076: mov    %r8,%r10
  0.07%    0.07%     0x00007fdc80bea079: shr    $0x9,%r10
  0.09%    0.07%     0x00007fdc80bea07d: movabs $0x7fdc7c3f5000,%r8
                     0x00007fdc80bea087: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.05%    0.04%     0x00007fdc80bea08b: mov    %eax,%r10d
  0.17%    0.08%     0x00007fdc80bea08e: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007fdc80beb1b9
  0.04%    0.07%     0x00007fdc80bea093: movslq 0xc(%rsp),%r10
  0.00%              0x00007fdc80bea098: lea    (%r11,%r10,4),%rbx  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.14%    0.04%     0x00007fdc80bea09c: mov    %rbx,%r10
  0.16%    0.04%     0x00007fdc80bea09f: add    $0x14,%r10         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.00%     0x00007fdc80bea0a3: lea    (%r12,%rax,8),%rdi
                     0x00007fdc80bea0a7: mov    0xc(%rsp),%r8d
  0.07%              0x00007fdc80bea0ac: add    $0x2,%r8d          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.02%     0x00007fdc80bea0b0: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fdc80bea0b6: jne    0x00007fdc80be9e41  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.06%     0x00007fdc80bea0bc: mov    0x2c(%rdi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@75 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                     0x00007fdc80bea0bf: mov    0x8(%r12,%rbp,8),%edi  ; implicit exception: dispatches to 0x00007fdc80beb1cd
  0.07%    0.01%     0x00007fdc80bea0c4: cmp    $0xf8019843,%edi   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fdc80bea0ca: jne    0x00007fdc80bea84d
  0.12%    0.04%     0x00007fdc80bea0d0: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.09%    0.12%     0x00007fdc80bea0d4: mov    0x18(%rax),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@3 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.01%    0.00%     0x00007fdc80bea0d7: cmp    $0x40,%ecx
                     0x00007fdc80bea0da: jge    0x00007fdc80bead99  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.08%    0.10%     0x00007fdc80bea0e0: mov    $0x1,%edi
  0.09%    0.11%     0x00007fdc80bea0e5: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.20%    0.19%     0x00007fdc80bea0e8: mov    %rdi,%rcx
  0.12%    0.16%     0x00007fdc80bea0eb: and    %r9,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.09%     0x00007fdc80bea0ee: test   %rcx,%rcx
                     0x00007fdc80bea0f1: jne    0x00007fdc80bea422  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
           0.00%     0x00007fdc80bea0f7: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.10%     0x00007fdc80bea0fa: mov    0x28(%rsp),%r9
  0.17%    0.09%     0x00007fdc80bea0ff: mov    %rdi,0x10(%r9)     ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@6 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.04%     0x00007fdc80bea103: test   %rcx,%rcx
                     0x00007fdc80bea106: jne    0x00007fdc80bea3ad  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@9 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
           0.00%     0x00007fdc80bea10c: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@16 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.08%     0x00007fdc80bea10f: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fdc80beb1e1
  0.09%    0.15%     0x00007fdc80bea114: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fdc80bea11b: jne    0x00007fdc80bea895
  0.10%    0.01%     0x00007fdc80bea121: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.00%    0.00%     0x00007fdc80bea125: mov    0x18(%r13),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.12%    0.01%     0x00007fdc80bea129: cmp    $0x40,%ecx
                     0x00007fdc80bea12c: jge    0x00007fdc80beae0d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine::containsOrAdd@3 (line 312)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.09%    0.02%     0x00007fdc80bea132: mov    $0x1,%r9d
  0.10%    0.08%     0x00007fdc80bea138: shl    %cl,%r9            ;*lshl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@8 (line 313)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.31%    0.35%     0x00007fdc80bea13b: mov    %r9,%rcx
  0.09%    0.07%     0x00007fdc80bea13e: and    %rdi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine::containsOrAdd@15 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.00%    0.01%     0x00007fdc80bea141: test   %rcx,%rcx
                     0x00007fdc80bea144: jne    0x00007fdc80bea42a  ;*ifne
                                                                   ; - com.google.re2j.Machine::containsOrAdd@18 (line 314)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.11%    0.18%     0x00007fdc80bea14a: or     %rdi,%r9           ;*lor  ; - com.google.re2j.Machine::containsOrAdd@27 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.10%    0.16%     0x00007fdc80bea14d: mov    0x28(%rsp),%rdi
  0.08%    0.10%     0x00007fdc80bea152: mov    %r9,0x10(%rdi)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine::containsOrAdd@28 (line 315)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.04%     0x00007fdc80bea156: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@6 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.06%     0x00007fdc80bea158: test   %rcx,%rcx
                     0x00007fdc80bea15b: jne    0x00007fdc80beae89  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@9 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.13%    0.12%     0x00007fdc80bea161: mov    %r8d,0xc(%r14)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.06%    0.06%     0x00007fdc80bea165: cmp    %esi,%r8d
                     0x00007fdc80bea168: jae    0x00007fdc80bea75d  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.03%    0.06%     0x00007fdc80bea16e: mov    0x34(%rax),%r8d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@36 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.07%    0.09%     0x00007fdc80bea172: mov    %r10,%rcx
  0.11%    0.16%     0x00007fdc80bea175: mov    %r13,%rdi
  0.06%    0.11%     0x00007fdc80bea178: shr    $0x3,%rdi
  0.02%    0.03%     0x00007fdc80bea17c: mov    %edi,(%r10)
  0.06%    0.06%     0x00007fdc80bea17f: shr    $0x9,%rcx
  0.15%    0.12%     0x00007fdc80bea183: movabs $0x7fdc7c3f5000,%r10
  0.02%    0.08%     0x00007fdc80bea18d: mov    %r12b,(%r10,%rcx,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 40)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@65 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@30 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
  0.03%    0.02%     0x00007fdc80bea191: mov    0x8(%r12,%r8,8),%edx  ; implicit exception: dispatches to 0x00007fdc80beb1f5
  0.05%    0.08%     0x00007fdc80bea196: mov    %r8d,%r10d
  0.13%    0.15%     0x00007fdc80bea199: lea    (%r12,%r8,8),%rdi
  0.05%    0.10%     0x00007fdc80bea19d: cmp    $0xf8019885,%edx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fdc80bea1a3: jne    0x00007fdc80bea1fd  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 260)
                     0x00007fdc80bea1a5: mov    0x2c(%rdi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@75 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@89 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
....................................................................................................
 13.29%    9.72%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 499 (188 bytes) 

                    # parm6:    [sp+0xa8]   = int
                    # parm7:    [sp+0xb0]   = boolean
                    0x00007fdc80be9d60: mov    0x8(%rsi),%r10d
                    0x00007fdc80be9d64: shl    $0x3,%r10
                    0x00007fdc80be9d68: cmp    %r10,%rax
                    0x00007fdc80be9d6b: jne    0x00007fdc80a0ce20  ;   {runtime_call}
                    0x00007fdc80be9d71: data16 xchg %ax,%ax
                    0x00007fdc80be9d74: nopl   0x0(%rax,%rax,1)
                    0x00007fdc80be9d7c: data16 data16 xchg %ax,%ax
                  [Verified Entry Point]
  0.27%    0.31%    0x00007fdc80be9d80: mov    %eax,-0x14000(%rsp)
  0.48%    0.47%    0x00007fdc80be9d87: push   %rbp
  0.24%    0.16%    0x00007fdc80be9d88: sub    $0x90,%rsp         ;*synchronization entry
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
  0.20%    0.17%    0x00007fdc80be9d8f: mov    %edi,0x20(%rsp)
  0.37%    0.33%    0x00007fdc80be9d93: mov    %r9d,0x1c(%rsp)
  0.16%    0.16%    0x00007fdc80be9d98: mov    %r8d,0x18(%rsp)
  0.20%    0.16%    0x00007fdc80be9d9d: mov    %rcx,%r14
  0.07%    0.05%    0x00007fdc80be9da0: mov    %rdx,0x10(%rsp)
  0.28%    0.36%    0x00007fdc80be9da5: mov    %rsi,%r8
  0.12%    0.13%    0x00007fdc80be9da8: mov    0x1c(%rsi),%r11d   ;*getfield re2
                                                                  ; - com.google.re2j.Machine::step@1 (line 260)
  0.16%    0.10%    0x00007fdc80be9dac: movzbl 0x18(%r12,%r11,8),%r10d  ;*getfield longest
                                                                  ; - com.google.re2j.Machine::step@4 (line 260)
                                                                  ; implicit exception: dispatches to 0x00007fdc80beb131
  0.09%    0.04%    0x00007fdc80be9db2: mov    %r10d,0x24(%rsp)
  0.28%    0.33%    0x00007fdc80be9db7: mov    0xc(%rdx),%eax     ;*getfield size
                                                                  ; - com.google.re2j.Machine::step@10 (line 261)
                                                                  ; implicit exception: dispatches to 0x00007fdc80beb141
  0.06%    0.06%    0x00007fdc80be9dba: mov    %r12,0x10(%rsi)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine::clearContains@2 (line 328)
                                                                  ; - com.google.re2j.Machine::step@34 (line 265)
  0.15%    0.11%    0x00007fdc80be9dbe: mov    0x34(%rsi),%r10d   ;*getfield pcs
                                                                  ; - com.google.re2j.Machine::clearContains@6 (line 329)
                                                                  ; - com.google.re2j.Machine::step@34 (line 265)
  0.06%    0.02%    0x00007fdc80be9dc2: movzbl 0x19(%rsi),%r9d    ;*getfield captures
                                                                  ; - com.google.re2j.Machine::step@16 (line 262)
  0.27%    0.29%    0x00007fdc80be9dc7: mov    0x14(%rdx),%ecx    ;*getfield denseThreadsCapture
                                                                  ; - com.google.re2j.Machine::step@28 (line 264)
  0.10%    0.11%    0x00007fdc80be9dca: mov    %ecx,0x40(%rsp)
  0.15%    0.14%    0x00007fdc80be9dce: mov    0x10(%rdx),%r11d   ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine::step@22 (line 263)
  0.05%    0.05%    0x00007fdc80be9dd2: mov    %r11d,0x3c(%rsp)
  0.37%    0.29%    0x00007fdc80be9dd7: test   %r10d,%r10d
                    0x00007fdc80be9dda: jne    0x00007fdc80bea681  ;*ifnull
                                                                  ; - com.google.re2j.Machine::clearContains@9 (line 329)
                                                                  ; - com.google.re2j.Machine::step@34 (line 265)
  0.11%    0.16%    0x00007fdc80be9de0: test   %eax,%eax
                    0x00007fdc80be9de2: jle    0x00007fdc80bea379  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::step@44 (line 267)
  0.14%    0.10%    0x00007fdc80be9de8: test   %r9d,%r9d
                    0x00007fdc80be9deb: jne    0x00007fdc80bea4d5  ;*iload
                                                                  ; - com.google.re2j.Machine::step@47 (line 270)
  0.06%    0.08%    0x00007fdc80be9df1: mov    0xc(%r12,%r11,8),%r11d  ;*aaload
                                                                  ; - com.google.re2j.Machine::step@103 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007fdc80bea4d5
  0.25%    0.48%    0x00007fdc80be9df6: test   %r11d,%r11d
                    0x00007fdc80be9df9: jbe    0x00007fdc80bea4d5
  0.12%    0.17%    0x00007fdc80be9dff: mov    %eax,%ecx
  0.21%    0.15%    0x00007fdc80be9e01: dec    %ecx
  0.06%    0.05%    0x00007fdc80be9e03: cmp    %r11d,%ecx
                    0x00007fdc80be9e06: jae    0x00007fdc80bea4d5  ;*iload
                                                                  ; - com.google.re2j.Machine::step@47 (line 270)
  0.32%    0.40%    0x00007fdc80be9e0c: mov    0x3c(%rsp),%r10d
  0.32%    0.20%    0x00007fdc80be9e11: lea    (%r12,%r10,8),%r13  ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine::step@22 (line 263)
  0.22%    0.14%    0x00007fdc80be9e15: xor    %edi,%edi
  0.03%    0.04%    0x00007fdc80be9e17: xor    %r10d,%r10d
  0.31%    0.46%    0x00007fdc80be9e1a: jmpq   0x00007fdc80bea2ba
                    0x00007fdc80be9e1f: nop
  0.79%    0.85%    0x00007fdc80be9e20: xor    %ecx,%ecx
  0.63%    0.62%    0x00007fdc80be9e22: test   %ecx,%ecx
                    0x00007fdc80be9e24: jne    0x00007fdc80be9eca
  0.65%    0.70%    0x00007fdc80be9e2a: mov    0xa8(%rsp),%r11d
  0.51%    0.53%    0x00007fdc80be9e32: mov    0xb0(%rsp),%ebx    ;*ifnull
                                                                  ; - com.google.re2j.Machine::step@225 (line 301)
  0.92%    0.85%    0x00007fdc80be9e39: mov    %r14,%r9
  0.44%    0.68%    0x00007fdc80be9e3c: jmpq   0x00007fdc80bea298
                    0x00007fdc80be9e41: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007fdc80be9e47: jne    0x00007fdc80bea7dd  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                    0x00007fdc80be9e4d: mov    0x18(%rdi),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@3 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@50 (line 179)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 260)
                    0x00007fdc80be9e51: cmp    $0x40,%r11d
                    0x00007fdc80be9e55: jge    0x00007fdc80beacb9  ;*if_icmpge
....................................................................................................
 10.20%   10.54%  <total for region 5>

....[Hottest Regions]...............................................................................
 30.02%   31.13%         C2, level 4  com.google.re2j.Machine::match, version 541 (1538 bytes) 
 22.00%   23.06%         C2, level 4  com.google.re2j.Machine::step, version 499 (303 bytes) 
 17.36%   18.69%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 518 (871 bytes) 
 13.29%    9.72%         C2, level 4  com.google.re2j.Machine::step, version 499 (723 bytes) 
 10.20%   10.54%         C2, level 4  com.google.re2j.Machine::step, version 499 (188 bytes) 
  2.18%    2.49%         C2, level 4  com.google.re2j.Machine::step, version 499 (44 bytes) 
  1.49%    1.52%         C2, level 4  com.google.re2j.Machine::match, version 541 (171 bytes) 
  0.61%    0.60%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 547 (0 bytes) 
  0.11%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 547 (12 bytes) 
  0.10%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 547 (0 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (3 bytes) 
  0.09%            [kernel.kallsyms]  [unknown] (51 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 547 (55 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Pattern::find, version 547 (104 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 547 (8 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (16 bytes) 
  0.06%    0.01%         C2, level 4  java.util.Collections::shuffle, version 569 (82 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 541 (141 bytes) 
  1.85%    1.87%  <...other 380 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 47.69%   45.81%         C2, level 4  com.google.re2j.Machine::step, version 499 
 31.66%   32.75%         C2, level 4  com.google.re2j.Machine::match, version 541 
 17.36%   18.69%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 518 
  1.67%    1.48%   [kernel.kallsyms]  [unknown] 
  0.70%    0.37%         C2, level 4  com.google.re2j.Pattern::find, version 547 
  0.15%    0.04%         C2, level 4  java.util.Collections::shuffle, version 569 
  0.08%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 624 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.01%    0.00%        libc-2.26.so  _IO_fflush 
  0.01%    0.01%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%                 libc-2.26.so  __clock_gettime 
  0.01%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%           libpthread-2.26.so  __libc_write 
  0.01%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%    0.00%           libjvm.so  _ZL13printf_to_envPvPKcz 
  0.38%    0.25%  <...other 60 warm methods...>
....................................................................................................
100.00%   99.78%  <totals>

....[Distribution by Source]........................................................................
 97.67%   97.72%         C2, level 4
  1.67%    1.48%   [kernel.kallsyms]
  0.36%    0.48%           libjvm.so
  0.17%    0.24%        libc-2.26.so
  0.05%    0.01%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.01%    0.02%              [vdso]
  0.01%                  interpreter
  0.00%                perf-1495.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  9555.744 ± 38.829  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
