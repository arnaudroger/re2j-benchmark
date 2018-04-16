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
# Warmup Iteration   1: 12121.595 ops/s
# Warmup Iteration   2: 25907.161 ops/s
# Warmup Iteration   3: 26278.403 ops/s
# Warmup Iteration   4: 25157.023 ops/s
# Warmup Iteration   5: 26015.297 ops/s
# Warmup Iteration   6: 25687.496 ops/s
# Warmup Iteration   7: 26745.786 ops/s
# Warmup Iteration   8: 26555.987 ops/s
# Warmup Iteration   9: 26511.708 ops/s
# Warmup Iteration  10: 26328.221 ops/s
# Warmup Iteration  11: 26494.679 ops/s
# Warmup Iteration  12: 26413.708 ops/s
# Warmup Iteration  13: 26585.301 ops/s
# Warmup Iteration  14: 26617.646 ops/s
# Warmup Iteration  15: 26886.138 ops/s
# Warmup Iteration  16: 26791.604 ops/s
# Warmup Iteration  17: 26424.428 ops/s
# Warmup Iteration  18: 26488.595 ops/s
# Warmup Iteration  19: 25993.491 ops/s
# Warmup Iteration  20: 25880.715 ops/s
Iteration   1: 25952.508 ops/s
Iteration   2: 25802.876 ops/s
Iteration   3: 25598.901 ops/s
Iteration   4: 25568.901 ops/s
Iteration   5: 25883.384 ops/s
Iteration   6: 26359.988 ops/s
Iteration   7: 26328.657 ops/s
Iteration   8: 26354.050 ops/s
Iteration   9: 26356.869 ops/s
Iteration  10: 26460.090 ops/s
Iteration  11: 26534.328 ops/s
Iteration  12: 25672.434 ops/s
Iteration  13: 25592.003 ops/s
Iteration  14: 25631.420 ops/s
Iteration  15: 25649.129 ops/s
Iteration  16: 25530.362 ops/s
Iteration  17: 25493.186 ops/s
Iteration  18: 25879.850 ops/s
Iteration  19: 26507.098 ops/s
Iteration  20: 26517.431 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jRegex.testExp2":
  25983.673 ±(99.9%) 341.179 ops/s [Average]
  (min, avg, max) = (25493.186, 25983.673, 26534.328), stdev = 392.902
  CI (99.9%): [25642.494, 26324.852] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jRegex.testExp2:·asm":
PrintAssembly processed: 209371 total address lines.
Perf output processed (skipped 23.712 seconds):
 Column 1: cycles (20582 events)
 Column 2: instructions (20573 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 589 (1862 bytes) 

                                                        #           [sp+0xc0]  (sp of caller)
                                                        0x00007fcc2d260940: mov    0x8(%rsi),%r10d
                                                        0x00007fcc2d260944: shl    $0x3,%r10
                                                        0x00007fcc2d260948: cmp    %r10,%rax
                                                        0x00007fcc2d26094b: jne    0x00007fcc2d045e20  ;   {runtime_call}
                                                        0x00007fcc2d260951: data16 xchg %ax,%ax
                                                        0x00007fcc2d260954: nopl   0x0(%rax,%rax,1)
                                                        0x00007fcc2d26095c: data16 data16 xchg %ax,%ax
                                                      [Verified Entry Point]
                                                        0x00007fcc2d260960: mov    %eax,-0x14000(%rsp)
  0.03%                                                 0x00007fcc2d260967: push   %rbp
  0.01%                                                 0x00007fcc2d260968: sub    $0xb0,%rsp         ;*synchronization entry
                                                                                                      ; - com.google.re2j.Machine::match@-1 (line 182)
                                                        0x00007fcc2d26096f: mov    %r8d,%r11d
  0.01%                                                 0x00007fcc2d260972: vmovd  %ecx,%xmm0
                                                        0x00007fcc2d260976: mov    %rdx,%r8
                                                        0x00007fcc2d260979: mov    %rsi,%r10
                                                        0x00007fcc2d26097c: mov    0x14(%rsi),%r9d    ;*getfield re2
                                                                                                      ; - com.google.re2j.Machine::match@1 (line 182)
  0.00%                                                 0x00007fcc2d260980: vmovd  %r9d,%xmm4
  0.00%                                                 0x00007fcc2d260985: mov    0xc(%r12,%r9,8),%r9d  ;*getfield cond
                                                                                                      ; - com.google.re2j.Machine::match@4 (line 182)
                                                                                                      ; implicit exception: dispatches to 0x00007fcc2d262081
                                                        0x00007fcc2d26098a: cmp    $0xffffffff,%r9d
                                                        0x00007fcc2d26098e: je     0x00007fcc2d261ca5  ;*if_icmpne
                                                                                                      ; - com.google.re2j.Machine::match@12 (line 183)
                                                        0x00007fcc2d260994: cmp    $0x1,%r11d
                                                        0x00007fcc2d260998: je     0x00007fcc2d261ccd  ;*if_icmpeq
                                                                                                      ; - com.google.re2j.Machine::match@19 (line 186)
  0.00%                                                 0x00007fcc2d26099e: cmp    $0x2,%r11d
                                                        0x00007fcc2d2609a2: je     0x00007fcc2d261cf5  ;*if_icmpne
                                                                                                      ; - com.google.re2j.Machine::match@24 (line 186)
  0.00%                                                 0x00007fcc2d2609a8: mov    %r12b,0x10(%rsi)   ;*putfield matched
                                                                                                      ; - com.google.re2j.Machine::match@35 (line 190)
                                                        0x00007fcc2d2609ac: mov    0x28(%rsi),%edx    ;*getfield matchcap
                                                                                                      ; - com.google.re2j.Machine::match@39 (line 191)
                                                        0x00007fcc2d2609af: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                                                                                                      ; - java.util.Arrays::fill@3 (line 2881)
                                                                                                      ; - com.google.re2j.Machine::match@43 (line 191)
                                                                                                      ; implicit exception: dispatches to 0x00007fcc2d262091
                                                        0x00007fcc2d2609b4: test   %ebp,%ebp
                                                        0x00007fcc2d2609b6: jg     0x00007fcc2d261d1d  ;*if_icmpge
                                                                                                      ; - java.util.Arrays::fill@7 (line 2881)
                                                                                                      ; - com.google.re2j.Machine::match@43 (line 191)
                                                        0x00007fcc2d2609bc: mov    0x8(%r8),%ebx      ; implicit exception: dispatches to 0x00007fcc2d2620a1
                                                        0x00007fcc2d2609c0: mov    0x20(%rsi),%r13d   ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                                        0x00007fcc2d2609c4: mov    0x1c(%rsi),%ecx    ;*getfield q0
                                                                                                      ; - com.google.re2j.Machine::match@47 (line 192)
  0.00%                                                 0x00007fcc2d2609c7: cmp    $0xf8019b8e,%ebx   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                                        0x00007fcc2d2609cd: jne    0x00007fcc2d261b49
                                                        0x00007fcc2d2609d3: mov    %r8,%rdi           ;*invokevirtual step
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d2609d6: mov    0xc(%rdi),%r14d    ;*getfield start
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d2609da: mov    0x10(%rdi),%esi    ;*getfield end
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d2609dd: vmovd  %xmm0,%r8d
  0.01%                                                 0x00007fcc2d2609e2: add    %r14d,%r8d         ;*iadd
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d2609e5: cmp    %esi,%r8d
                                                        0x00007fcc2d2609e8: jge    0x00007fcc2d261a55  ;*if_icmpge
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d2609ee: mov    0x14(%rdi),%ebp    ;*getfield str
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                                 0x00007fcc2d2609f1: mov    0x8(%r12,%rbp,8),%eax  ; implicit exception: dispatches to 0x00007fcc2d2620b5
  0.00%                                                 0x00007fcc2d2609f6: cmp    $0xf80002da,%eax   ;   {metadata(&apos;java/lang/String&apos;)}
                                                        0x00007fcc2d2609fc: jne    0x00007fcc2d261b79
                                                        0x00007fcc2d260a02: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d260a06: test   %r8d,%r8d
                                                        0x00007fcc2d260a09: jl     0x00007fcc2d261bed  ;*iflt
                                                                                                      ; - java.lang.String::charAt@1 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                                 0x00007fcc2d260a0f: vmovd  %edx,%xmm1
                                                        0x00007fcc2d260a13: mov    0xc(%rbx),%edx     ;*getfield value
                                                                                                      ; - java.lang.String::charAt@6 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d260a16: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                                                      ; - java.lang.String::charAt@9 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                                                                      ; implicit exception: dispatches to 0x00007fcc2d2620c9
  0.02%    0.01%                                        0x00007fcc2d260a1b: cmp    %eax,%r8d
                                                        0x00007fcc2d260a1e: jge    0x00007fcc2d261d4d  ;*if_icmplt
                                                                                                      ; - java.lang.String::charAt@10 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
           0.00%                                        0x00007fcc2d260a24: cmp    %eax,%r8d
                                                        0x00007fcc2d260a27: jae    0x00007fcc2d261ac1
  0.00%    0.00%                                        0x00007fcc2d260a2d: mov    %rdi,0x70(%rsp)
                                                        0x00007fcc2d260a32: mov    %ecx,0x2c(%rsp)
                                                        0x00007fcc2d260a36: mov    %r9d,0x68(%rsp)
                                                        0x00007fcc2d260a3b: mov    %r11d,%edi
  0.01%                                                 0x00007fcc2d260a3e: mov    %r10,0x60(%rsp)
                                                        0x00007fcc2d260a43: lea    (%r12,%rdx,8),%r11
                                                        0x00007fcc2d260a47: movzwl 0x10(%r11,%r8,2),%r10d  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d260a4d: cmp    $0xd800,%r10d
                                                        0x00007fcc2d260a54: jge    0x00007fcc2d261d91  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.00%                                        0x00007fcc2d260a5a: shl    $0x3,%r10d         ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d260a5e: mov    %r10d,%r9d
                                                        0x00007fcc2d260a61: and    $0x7,%r9d
                                                        0x00007fcc2d260a65: or     $0x1,%r10d
                                                        0x00007fcc2d260a69: mov    %r10d,%r8d
                                                        0x00007fcc2d260a6c: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@60 (line 193)
                                                        0x00007fcc2d260a70: mov    %r9d,0x20(%rsp)
                                                        0x00007fcc2d260a75: sar    $0x3,%r10d         ;*ishr
                                                                                                      ; - com.google.re2j.Machine::match@68 (line 194)
  0.00%    0.00%                                        0x00007fcc2d260a79: vmovd  %r10d,%xmm2
                                                        0x00007fcc2d260a7e: mov    %r8d,%r10d
                                                        0x00007fcc2d260a81: cmp    $0xfffffff8,%r10d
                                                        0x00007fcc2d260a85: je     0x00007fcc2d261a64  ;*if_icmpeq
                                                                                                      ; - com.google.re2j.Machine::match@88 (line 198)
                                                        0x00007fcc2d260a8b: vmovd  %xmm0,%r9d
  0.00%                                                 0x00007fcc2d260a90: add    0x20(%rsp),%r9d
  0.01%    0.03%                                        0x00007fcc2d260a95: add    %r14d,%r9d         ;*iadd
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007fcc2d260a98: cmp    %esi,%r9d
                                                        0x00007fcc2d260a9b: jge    0x00007fcc2d261101  ;*if_icmpge
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%                                        0x00007fcc2d260aa1: test   %r9d,%r9d
                                                        0x00007fcc2d260aa4: jl     0x00007fcc2d261c65  ;*iflt
                                                                                                      ; - java.lang.String::charAt@1 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007fcc2d260aaa: cmp    %eax,%r9d
                                                        0x00007fcc2d260aad: jge    0x00007fcc2d261de1  ;*if_icmplt
                                                                                                      ; - java.lang.String::charAt@10 (line 657)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007fcc2d260ab3: cmp    %eax,%r9d
                                                        0x00007fcc2d260ab6: jae    0x00007fcc2d261b05
  0.01%                                                 0x00007fcc2d260abc: movzwl 0x10(%r11,%r9,2),%r8d  ;*caload
                                                                                                      ; - java.lang.String::charAt@27 (line 660)
                                                                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007fcc2d260ac2: cmp    $0xd800,%r8d
                                                        0x00007fcc2d260ac9: jge    0x00007fcc2d261e25  ;*if_icmplt
                                                                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                 0x00007fcc2d260acf: shl    $0x3,%r8d          ;*ishl
                                                                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
                                                        0x00007fcc2d260ad3: mov    %r8d,%r11d
                                                        0x00007fcc2d260ad6: and    $0x7,%r11d
           0.00%                                        0x00007fcc2d260ada: or     $0x1,%r8d
                                                        0x00007fcc2d260ade: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                                                 0x00007fcc2d260ae2: sar    $0x3,%r8d          ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@111 (line 201)
                                                        0x00007fcc2d260ae6: vmovd  %xmm0,%r9d
                                                        0x00007fcc2d260aeb: test   %r9d,%r9d
                                                        0x00007fcc2d260aee: jne    0x00007fcc2d261c2d  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::match@115 (line 204)
                                                        0x00007fcc2d260af4: vmovd  %xmm2,%ecx
  0.01%    0.00%                                        0x00007fcc2d260af8: test   %ecx,%ecx
                                                        0x00007fcc2d260afa: jl     0x00007fcc2d2610f6  ;*ifge
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007fcc2d260b00: mov    $0x5,%r9d          ;*iload_1
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007fcc2d260b06: cmp    $0xa,%ecx
                                                        0x00007fcc2d260b09: je     0x00007fcc2d26110f  ;*iload_0
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
                                                        0x00007fcc2d260b0f: mov    %ecx,%ebx
           0.00%                                        0x00007fcc2d260b11: add    $0xffffffbf,%ebx
                                                        0x00007fcc2d260b14: cmp    $0x1a,%ebx
                  ╭                                     0x00007fcc2d260b17: jb     0x00007fcc2d260b2a  ;*if_icmple
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                     0x00007fcc2d260b19: mov    %ecx,%r10d
                  │                                     0x00007fcc2d260b1c: add    $0xffffff9f,%r10d
                  │                                     0x00007fcc2d260b20: cmp    $0x1a,%r10d
                  │                                     0x00007fcc2d260b24: jae    0x00007fcc2d261118  ;*iconst_1
                  │                                                                                   ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                   ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                   ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                                     0x00007fcc2d260b2a: or     $0x10,%r9d         ;*iload_2
                                                                                                      ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                      ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%                                        0x00007fcc2d260b2e: mov    %edi,%r10d
                                                        0x00007fcc2d260b31: test   %r10d,%r10d
                                                        0x00007fcc2d260b34: jne    0x00007fcc2d261bb5  ;*aload
                                                                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%    0.01%                                        0x00007fcc2d260b3a: mov    %r11d,0x34(%rsp)
  0.02%    0.00%                                        0x00007fcc2d260b3f: mov    %r8d,0x28(%rsp)
                                                        0x00007fcc2d260b44: mov    %ecx,0x24(%rsp)
           0.00%                                        0x00007fcc2d260b48: mov    %r10d,0x30(%rsp)
                                                        0x00007fcc2d260b4d: mov    0x68(%rsp),%r11d
                                                        0x00007fcc2d260b52: and    $0x4,%r11d         ;*iand
                                                                                                      ; - com.google.re2j.Machine::match@147 (line 212)
                                                        0x00007fcc2d260b56: mov    %r11d,0x38(%rsp)
                                                        0x00007fcc2d260b5b: mov    %r13,%r10
  0.01%                                                 0x00007fcc2d260b5e: shl    $0x3,%r10          ;*getfield q1
                                                                                                      ; - com.google.re2j.Machine::match@53 (line 192)
                                                        0x00007fcc2d260b62: mov    %r10,0x50(%rsp)
                                                        0x00007fcc2d260b67: xor    %eax,%eax
                                                        0x00007fcc2d260b69: xor    %r11d,%r11d
  0.00%                                                 0x00007fcc2d260b6c: mov    %r11d,0x3c(%rsp)
  0.00%            ╭                                    0x00007fcc2d260b71: jmpq   0x00007fcc2d260ea9
  0.00%    0.01%   │                ↗                   0x00007fcc2d260b76: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │                │                                                                 ; - com.google.re2j.Machine::match@326 (line 245)
                   │╭               │                   0x00007fcc2d260b7a: jmpq   0x00007fcc2d260f82
           0.00%   ││             ↗ │                   0x00007fcc2d260b7f: mov    $0x5,%r9d
                   ││╭            │ │                   0x00007fcc2d260b85: jmpq   0x00007fcc2d260f6b
  0.27%    0.35%   │││   ↗↗↗      │ │                   0x00007fcc2d260b8a: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@191 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.25%   │││   │││      │ │                   0x00007fcc2d260b8f: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcc2d262039
  0.24%    0.17%   │││   │││      │ │                   0x00007fcc2d260b94: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │││   │││      │ │                   0x00007fcc2d260b9a: jne    0x00007fcc2d261841
  0.09%    0.10%   │││   │││      │ │                   0x00007fcc2d260ba0: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.00%   │││   │││      │ │                   0x00007fcc2d260ba4: vmovq  %rcx,%xmm1
  0.03%    0.05%   │││   │││      │ │                   0x00007fcc2d260ba9: mov    0x18(%rcx),%ebx    ;*getfield pc
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.02%   │││   │││      │ │                   0x00007fcc2d260bac: vmovd  %ebx,%xmm2
  0.13%    0.10%   │││   │││      │ │                   0x00007fcc2d260bb0: mov    0x50(%rsp),%rcx
  0.00%    0.01%   │││   │││      │ │                   0x00007fcc2d260bb5: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │││   │││      │ │                                                                 ; implicit exception: dispatches to 0x00007fcc2d262055
  0.02%    0.02%   │││   │││      │ │                   0x00007fcc2d260bb9: vmovd  %xmm2,%ecx
  0.12%    0.15%   │││   │││      │ │                   0x00007fcc2d260bbd: cmp    $0x40,%ecx
  0.10%    0.17%   │││   │││      │ │                   0x00007fcc2d260bc0: jg     0x00007fcc2d261909  ;*if_icmpgt
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.10%   │││   │││      │ │                   0x00007fcc2d260bc6: mov    $0x1,%edx
  0.00%    0.01%   │││   │││      │ │                   0x00007fcc2d260bcb: shl    %cl,%rdx           ;*lshl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.19%   │││   │││      │ │                   0x00007fcc2d260bce: mov    %rbx,%rcx
  0.01%    0.02%   │││   │││      │ │                   0x00007fcc2d260bd1: and    %rdx,%rcx          ;*land
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
           0.02%   │││   │││      │ │                   0x00007fcc2d260bd4: test   %rcx,%rcx
                   │││   │││      │ │                   0x00007fcc2d260bd7: jne    0x00007fcc2d261979  ;*ifeq
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.05%   │││   │││      │ │                   0x00007fcc2d260bdd: vmovd  %xmm2,%ecx
  0.13%    0.14%   │││   │││      │ │                   0x00007fcc2d260be1: cmp    $0x40,%ecx
                   │││   │││      │ │                   0x00007fcc2d260be4: jge    0x00007fcc2d2619e5  ;*if_icmpge
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.03%   │││   │││      │ │                   0x00007fcc2d260bea: mov    0x50(%rsp),%rcx
           0.00%   │││   │││      │ │                   0x00007fcc2d260bef: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.02%   │││   │││      │ │                   0x00007fcc2d260bf3: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.08%   │││   │││      │ │                   0x00007fcc2d260bf6: vmovd  %ecx,%xmm3
  0.07%    0.02%   │││   │││      │ │                   0x00007fcc2d260bfa: mov    0x50(%rsp),%rcx
                   │││   │││      │ │                   0x00007fcc2d260bff: mov    0xc(%rcx),%ebp     ;*getfield size
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.03%   │││   │││      │ │                   0x00007fcc2d260c02: or     %rbx,%rdx
  0.09%    0.12%   │││   │││      │ │                   0x00007fcc2d260c05: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.03%   │││   │││      │ │                   0x00007fcc2d260c09: mov    %ebp,%ebx
  0.00%            │││   │││      │ │                   0x00007fcc2d260c0b: inc    %ebx
  0.03%    0.02%   │││   │││      │ │                   0x00007fcc2d260c0d: mov    %ebx,0xc(%rcx)     ;*putfield size
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.07%   │││   │││      │ │                   0x00007fcc2d260c10: vmovd  %xmm3,%ecx
  0.05%    0.04%   │││   │││      │ │                   0x00007fcc2d260c14: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007fcc2d262069
  0.22%    0.20%   │││   │││      │ │                   0x00007fcc2d260c19: cmp    %ecx,%ebp
                   │││   │││      │ │                   0x00007fcc2d260c1b: jae    0x00007fcc2d2617d1
  0.20%    0.21%   │││   │││      │ │                   0x00007fcc2d260c21: vmovd  %xmm3,%ecx
  0.04%    0.01%   │││   │││      │ │                   0x00007fcc2d260c25: mov    0x8(%r12,%rcx,8),%ebx
  0.02%    0.02%   │││   │││      │ │                   0x00007fcc2d260c2a: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │││   │││      │ │                   0x00007fcc2d260c30: jne    0x00007fcc2d261899  ;*aastore
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.08%   │││   │││      │ │                   0x00007fcc2d260c36: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.03%   │││   │││      │ │                   0x00007fcc2d260c3a: lea    0x10(%rcx,%rbp,4),%rcx
  0.04%    0.02%   │││   │││      │ │                   0x00007fcc2d260c3f: vmovq  %xmm1,%rbx
  0.03%    0.04%   │││   │││      │ │                   0x00007fcc2d260c44: mov    %rbx,%rdx
  0.07%    0.07%   │││   │││      │ │                   0x00007fcc2d260c47: shr    $0x3,%rdx
  0.02%    0.05%   │││   │││      │ │                   0x00007fcc2d260c4b: mov    %edx,(%rcx)
  0.32%    0.34%   │││   │││      │ │                   0x00007fcc2d260c4d: shr    $0x9,%rcx
  0.01%    0.03%   │││   │││      │ │                   0x00007fcc2d260c51: movabs $0x7fcc3d41d000,%rbx
                   │││   │││      │ │                   0x00007fcc2d260c5b: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.16%   │││╭  │││      │ │                   0x00007fcc2d260c5f: jmpq   0x00007fcc2d260d5b
  0.27%    0.17%   ││││  │││      │ │     ↗             0x00007fcc2d260c64: or     $0x20,%r9d         ;*iload_2
                   ││││  │││      │ │     │                                                           ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││││  │││      │ │     │                                                           ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.17%   ││││  │││      │ │     │↗            0x00007fcc2d260c68: mov    0x60(%rsp),%r10
  0.17%    0.17%   ││││  │││      │ │     ││            0x00007fcc2d260c6d: mov    0x14(%r10),%r11d   ;*getfield re2
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@1 (line 280)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.25%    0.28%   ││││  │││      │ │     ││            0x00007fcc2d260c71: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@4 (line 280)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││  │││      │ │     ││                                                          ; implicit exception: dispatches to 0x00007fcc2d261fd5
  0.66%    0.55%   ││││  │││      │ │     ││            0x00007fcc2d260c77: mov    0x2c(%rsp),%r11d
  0.11%    0.17%   ││││  │││      │ │     ││            0x00007fcc2d260c7c: mov    0xc(%r12,%r11,8),%r11d  ;*getfield size
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@10 (line 281)
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.18%   ││││  │││      │ │     ││            0x00007fcc2d260c81: mov    0x3c(%rsp),%r8d
  0.18%    0.17%   ││││  │││      │ │     ││            0x00007fcc2d260c86: add    0x20(%rsp),%r8d    ;*iadd
                   ││││  │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@340 (line 246)
  0.32%    0.30%   ││││  │││      │ │     ││            0x00007fcc2d260c8b: test   %r11d,%r11d
                   ││││╭ │││      │ │     ││            0x00007fcc2d260c8e: jle    0x00007fcc2d260d63  ;*if_icmpge
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@28 (line 283)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.16%   │││││ │││      │ │     ││            0x00007fcc2d260c94: mov    0x70(%rsp),%r10
  0.14%    0.12%   │││││ │││      │ │     ││            0x00007fcc2d260c99: mov    0x10(%r10),%r10d
  0.13%    0.15%   │││││ │││      │ │     ││            0x00007fcc2d260c9d: mov    0x60(%rsp),%rcx
  0.32%    0.28%   │││││ │││      │ │     ││            0x00007fcc2d260ca2: movzbl 0x11(%rcx),%ebx    ;*getfield captures
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@16 (line 282)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.15%   │││││ │││      │ │     ││            0x00007fcc2d260ca6: mov    0x3c(%rsp),%ecx
  0.10%    0.07%   │││││ │││      │ │     ││            0x00007fcc2d260caa: mov    $0x1,%edx
  0.18%    0.16%   │││││ │││      │ │     ││            0x00007fcc2d260caf: xor    %edi,%edi
  0.40%    0.31%   │││││ │││      │ │     ││            0x00007fcc2d260cb1: cmp    %r10d,%ecx
  0.17%    0.15%   │││││ │││      │ │     ││            0x00007fcc2d260cb4: cmovne %edi,%edx          ;*invokespecial step
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.24%   │││││ │││      │ │     ││            0x00007fcc2d260cb7: vmovd  %edx,%xmm0
  0.30%    0.24%   │││││ │││      │ │     ││            0x00007fcc2d260cbb: test   %ebx,%ebx
                   │││││ │││      │ │     ││            0x00007fcc2d260cbd: jne    0x00007fcc2d261439  ;*iload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@31 (line 286)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.16%   │││││ │││      │ │     ││            0x00007fcc2d260cc3: mov    0x2c(%rsp),%r10d
  0.09%    0.14%   │││││ │││      │ │     ││            0x00007fcc2d260cc8: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@86 (line 296)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.11%   │││││ │││      │ │     ││            0x00007fcc2d260ccd: mov    0xc(%r12,%r10,8),%edi  ;*aaload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ │││      │ │     ││                                                          ; implicit exception: dispatches to 0x00007fcc2d261439
  0.42%    0.36%   │││││ │││      │ │     ││            0x00007fcc2d260cd2: test   %edi,%edi
                   │││││ │││      │ │     ││            0x00007fcc2d260cd4: jbe    0x00007fcc2d261439
  0.20%    0.32%   │││││ │││      │ │     ││            0x00007fcc2d260cda: mov    %r11d,%edx
  0.09%    0.03%   │││││ │││      │ │     ││            0x00007fcc2d260cdd: dec    %edx
  0.13%    0.08%   │││││ │││      │ │     ││            0x00007fcc2d260cdf: cmp    %edi,%edx
                   │││││ │││      │ │     ││            0x00007fcc2d260ce1: jae    0x00007fcc2d261439
  0.34%    0.24%   │││││ │││      │ │     ││            0x00007fcc2d260ce7: lea    (%r12,%r10,8),%rdi
  0.15%    0.17%   │││││ │││      │ │     ││            0x00007fcc2d260ceb: xor    %r10d,%r10d
  0.09%    0.16%   │││││ │││      │ │     ││            0x00007fcc2d260cee: xchg   %ax,%ax            ;*iload
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::step@31 (line 286)
                   │││││ │││      │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.51%    1.75%   │││││ │││↗     │ │     ││            0x00007fcc2d260cf0: mov    0x10(%rdi,%r10,4),%ecx  ;*aaload
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.53%    0.54%   │││││ ││││     │ │     ││            0x00007fcc2d260cf5: mov    0xc(%r12,%rcx,8),%ebx  ;*getfield op
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@96 (line 298)
                   │││││ ││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ ││││     │ │     ││                                                          ; implicit exception: dispatches to 0x00007fcc2d261f85
  1.73%    1.60%   │││││ ││││     │ │     ││            0x00007fcc2d260cfa: cmp    $0x6,%ebx
                   │││││╭││││     │ │     ││            0x00007fcc2d260cfd: je     0x00007fcc2d2610ad  ;*if_icmpne
                   ││││││││││     │ │     ││                                                          ; - com.google.re2j.Machine::step@101 (line 298)
                   ││││││││││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.46%    1.33%   ││││││││││     │ │     ││            0x00007fcc2d260d03: cmp    $0xa,%ebx
                   ││││││╰│││     │ │     ││            0x00007fcc2d260d06: je     0x00007fcc2d260b8a  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.56%    1.47%   ││││││ │││     │ │     ││            0x00007fcc2d260d0c: cmp    $0xb,%ebx
                   ││││││ │││     │ │     ││            0x00007fcc2d260d0f: je     0x00007fcc2d2611a9  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.13%    1.00%   ││││││ │││     │ │     ││            0x00007fcc2d260d15: cmp    $0x9,%ebx
                   ││││││ │││     │ │     ││            0x00007fcc2d260d18: je     0x00007fcc2d261219  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.70%   ││││││ │││     │ │     ││            0x00007fcc2d260d1e: cmp    $0xc,%ebx
                   ││││││ │││     │ │     ││            0x00007fcc2d260d21: jne    0x00007fcc2d261138  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.92%    1.83%   ││││││ │││     │ │     ││            0x00007fcc2d260d27: mov    0x1c(%r12,%rcx,8),%ebx  ;*getfield f0
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.93%    1.09%   ││││││ │││     │ │     ││            0x00007fcc2d260d2c: cmp    %eax,%ebx
                   ││││││ ╰││     │ │     ││            0x00007fcc2d260d2e: je     0x00007fcc2d260b8a  ;*if_icmpeq
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.78%    1.89%   ││││││  ││     │ │     ││            0x00007fcc2d260d34: mov    0x20(%r12,%rcx,8),%ebx  ;*getfield f1
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││  ││     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.32%   ││││││  ││     │ │     ││            0x00007fcc2d260d39: cmp    %eax,%ebx
                   ││││││  ╰│     │ │     ││            0x00007fcc2d260d3b: je     0x00007fcc2d260b8a  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.08%    1.00%   ││││││   │     │ │     ││            0x00007fcc2d260d41: mov    0x24(%r12,%rcx,8),%ebx  ;*getfield f2
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.18%    1.21%   ││││││   │     │ │     ││            0x00007fcc2d260d46: cmp    %eax,%ebx
                   ││││││   │     │ │     ││            0x00007fcc2d260d48: je     0x00007fcc2d261289  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  1.79%    1.84%   ││││││   │     │ │     ││            0x00007fcc2d260d4e: mov    0x28(%r12,%rcx,8),%ebx  ;*getfield f3
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.34%    0.40%   ││││││   │     │ │     ││            0x00007fcc2d260d53: cmp    %eax,%ebx
                   ││││││   │     │ │     ││            0x00007fcc2d260d55: je     0x00007fcc2d2612f5  ;*aload
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::step@211 (line 317)
                   ││││││   │     │ │     ││                                                          ; - com.google.re2j.Machine::match@359 (line 246)
  0.85%    0.89%   │││↘││   │     │ │     ││         ↗  0x00007fcc2d260d5b: inc    %r10d              ;*iinc
                   │││ ││   │     │ │     ││         │                                                ; - com.google.re2j.Machine::step@222 (line 283)
                   │││ ││   │     │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.98%    1.03%   │││ ││   │     │ │     ││         │  0x00007fcc2d260d5e: cmp    %r11d,%r10d
                   │││ ││   ╰     │ │     ││         │  0x00007fcc2d260d61: jl     0x00007fcc2d260cf0  ;*if_icmpge
                   │││ ││         │ │     ││         │                                                ; - com.google.re2j.Machine::step@28 (line 283)
                   │││ ││         │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.27%   │││ ↘│         │ │     ││         │  0x00007fcc2d260d63: mov    0x2c(%rsp),%r11d
  0.12%    0.11%   │││  │         │ │     ││         │  0x00007fcc2d260d68: movzbl 0x18(%r12,%r11,8),%r11d
  0.22%    0.27%   │││  │         │ │     ││         │  0x00007fcc2d260d6e: test   %r11d,%r11d
                   │││  │    ╭    │ │     ││         │  0x00007fcc2d260d71: jne    0x00007fcc2d260d95  ;*ifeq
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.43%    0.48%   │││  │    │    │ │     ││         │  0x00007fcc2d260d73: mov    0x2c(%rsp),%r10d
  0.06%    0.09%   │││  │    │    │ │     ││         │  0x00007fcc2d260d78: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.13%   │││  │    │    │ │     ││         │  0x00007fcc2d260d7d: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.49%    0.62%   │││  │    │    │ │     ││         │  0x00007fcc2d260d83: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.85%    1.06%   │││  │    │    │ │     ││         │  0x00007fcc2d260d88: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.48%   │││  │    │    │ │     ││         │  0x00007fcc2d260d8d: test   %ebp,%ebp
                   │││  │    │    │ │     ││         │  0x00007fcc2d260d8f: jne    0x00007fcc2d2615dd  ;*invokevirtual clear
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││         │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.03%    0.04%   │││  │    ↘    │ │     ││         │  0x00007fcc2d260d95: mov    0x60(%rsp),%r10
  0.17%    0.19%   │││  │         │ │     ││         │  0x00007fcc2d260d9a: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││  │         │ │     ││         │                                                ; - com.google.re2j.Machine::match@378 (line 250)
  0.39%    0.53%   │││  │         │ │     ││         │  0x00007fcc2d260d9f: mov    0x60(%rsp),%r10
  0.18%    0.23%   │││  │         │ │     ││         │  0x00007fcc2d260da4: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │││  │         │ │     ││         │                                                ; - com.google.re2j.Machine::match@371 (line 250)
  0.05%    0.06%   │││  │         │ │     ││         │  0x00007fcc2d260da9: mov    0x20(%rsp),%r10d
  0.16%    0.20%   │││  │         │ │     ││         │  0x00007fcc2d260dae: test   %r10d,%r10d
                   │││  │     ╭   │ │     ││         │  0x00007fcc2d260db1: je     0x00007fcc2d260fed  ;*ifne
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@364 (line 247)
  0.30%    0.51%   │││  │     │   │ │     ││         │  0x00007fcc2d260db7: test   %ebp,%ebp
                   │││  │     │   │ │     ││         │  0x00007fcc2d260db9: jne    0x00007fcc2d261501  ;*ifne
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.14%    0.26%   │││  │     │   │ │     ││         │  0x00007fcc2d260dbf: test   %eax,%eax
                   │││  │     │   │ │     ││         │  0x00007fcc2d260dc1: jne    0x00007fcc2d261615  ;*ifeq
                   │││  │     │   │ │     ││         │                                                ; - com.google.re2j.Machine::match@381 (line 250)
  0.03%    0.03%   │││  │     │   │ │     ││         │  0x00007fcc2d260dc7: cmp    $0xffffffff,%r13d
                   │││  │     │╭  │ │     ││         │  0x00007fcc2d260dcb: je     0x00007fcc2d26102c  ;*if_icmpeq
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@403 (line 258)
  0.12%    0.17%   │││  │     ││  │ │     ││         │  0x00007fcc2d260dd1: mov    %r13d,0x24(%rsp)
  0.30%    0.50%   │││  │     ││  │ │     ││         │  0x00007fcc2d260dd6: mov    0x70(%rsp),%r10
  0.10%    0.18%   │││  │     ││  │ │     ││         │  0x00007fcc2d260ddb: mov    0x10(%r10),%r10d   ;*getfield end
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.10%    0.12%   │││  │     ││  │ │     ││         │  0x00007fcc2d260ddf: mov    0x34(%rsp),%ecx
  0.17%    0.22%   │││  │     ││  │ │     ││         │  0x00007fcc2d260de3: add    %r8d,%ecx
  0.34%    0.49%   │││  │     ││  │ │     ││         │  0x00007fcc2d260de6: mov    0x70(%rsp),%r11
  0.15%    0.21%   │││  │     ││  │ │     ││         │  0x00007fcc2d260deb: add    0xc(%r11),%ecx     ;*iadd
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││  │     ││  │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.09%    0.12%   │││  │     ││  │ │     ││         │  0x00007fcc2d260def: cmp    %r10d,%ecx
                   │││  │     ││╭ │ │     ││         │  0x00007fcc2d260df2: jge    0x00007fcc2d261040  ;*if_icmpge
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.28%    0.25%   │││  │     │││ │ │     ││         │  0x00007fcc2d260df8: mov    0x14(%r11),%ebp    ;*getfield str
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.31%    0.42%   │││  │     │││ │ │     ││         │  0x00007fcc2d260dfc: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcc2d261fe5
  0.26%    0.43%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e01: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e08: jne    0x00007fcc2d2613fd
  0.21%    0.24%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e0e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.17%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e12: test   %ecx,%ecx
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e14: jl     0x00007fcc2d261545  ;*iflt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@1 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.26%    0.38%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e1a: mov    0xc(%rbx),%edi     ;*getfield value
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@6 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.11%    0.22%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e1d: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@9 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
                   │││  │     │││ │ │     ││         │                                                ; implicit exception: dispatches to 0x00007fcc2d261ff9
  1.92%    2.48%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e22: cmp    %ebp,%ecx
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e24: jge    0x00007fcc2d261655  ;*if_icmplt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@10 (line 657)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.75%    0.87%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e2a: cmp    %ebp,%ecx
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e2c: jae    0x00007fcc2d2613b9
  0.04%    0.02%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e32: lea    (%r12,%rdi,8),%r10
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e36: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.String::charAt@27 (line 660)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.03%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e3c: cmp    $0xd800,%r10d
                   │││  │     │││ │ │     ││         │  0x00007fcc2d260e43: jge    0x00007fcc2d2616a1  ;*if_icmplt
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││  │     │││ │ │     ││         │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.61%    0.92%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e49: shl    $0x3,%r10d         ;*ishl
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.04%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e4d: mov    %r10d,%ebx
  0.01%    0.00%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e50: and    $0x7,%ebx
  0.76%    0.92%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e53: or     $0x1,%r10d
  0.06%    0.03%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e57: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.78%    0.95%   │││  │     │││ │ │     ││         │  0x00007fcc2d260e5a: sar    $0x3,%r10d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1310}
                   │││  │     │││ │ │     ││         │                                                ;*goto
                   │││  │     │││ │ │     ││         │                                                ; - com.google.re2j.Machine::match@441 (line 266)
  0.00%    0.03%   │││  │     │││ │ │     ││ ↗↗      │  0x00007fcc2d260e5e: test   %eax,0x177b419c(%rip)        # 0x00007fcc44a15000
                   │││  │     │││ │ │     ││ ││      │                                                ;*goto
                   │││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@441 (line 266)
                   │││  │     │││ │ │     ││ ││      │                                                ;   {poll}
  0.01%    0.02%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e64: mov    0x60(%rsp),%r11
  0.03%    0.02%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e69: mov    0x14(%r11),%ecx    ;*getfield re2
                   │││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.66%    0.90%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e6d: vmovd  %ecx,%xmm4
  0.00%    0.03%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e71: mov    0x28(%r11),%ecx    ;*getfield matchcap
                   │││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.00%    0.01%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e75: mov    0x50(%rsp),%r11
  0.02%    0.02%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e7a: shr    $0x3,%r11
  0.62%    0.65%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e7e: mov    %r11d,0x2c(%rsp)
  0.01%    0.02%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e83: mov    0x34(%rsp),%r11d
  0.00%            │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e88: mov    %r11d,0x20(%rsp)
  0.01%    0.06%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e8d: mov    %r8d,0x3c(%rsp)
  0.57%    0.59%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e92: mov    %ebx,0x34(%rsp)
  0.01%    0.01%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e96: mov    %r10d,0x28(%rsp)
  0.00%            │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260e9b: mov    0x10(%rsp),%r10
  0.01%    0.02%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260ea0: mov    %r10,0x50(%rsp)
  0.71%    0.50%   │││  │     │││ │ │     ││ ││      │  0x00007fcc2d260ea5: vmovd  %ecx,%xmm1         ;*aload
                   │││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.01%   ↘││  │     │││ │ │     ││ ││      │  0x00007fcc2d260ea9: mov    0x2c(%rsp),%r11d
  0.01%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260eae: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fcc2d261f95
  0.07%    0.10%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260eb4: test   %r10d,%r10d
                    ││  │     │││╭│ │     ││ ││      │  0x00007fcc2d260eb7: je     0x00007fcc2d260eeb  ;*ifeq
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.60%    0.28%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260eb9: mov    0x38(%rsp),%r10d
  0.01%             ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ebe: test   %r10d,%r10d
                    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ec1: jne    0x00007fcc2d261739  ;*ifeq
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.00%    0.00%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ec7: test   %eax,%eax
                    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ec9: jne    0x00007fcc2d261785  ;*ifeq
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.01%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ecf: vmovd  %xmm4,%r10d
  0.54%    0.68%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ed4: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@172 (line 220)
                    ││  │     │││││ │     ││ ││      │                                                ; implicit exception: dispatches to 0x00007fcc2d262009
           0.01%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ed9: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    ││  │     │││││ │     ││ ││      │                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     ││ ││      │                                                ; implicit exception: dispatches to 0x00007fcc2d262019
  0.07%    0.07%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ede: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││  │     │││││ │     ││ ││      │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     ││ ││      │                                                ; implicit exception: dispatches to 0x00007fcc2d262029
  1.11%    1.21%    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ee3: test   %ebp,%ebp
                    ││  │     │││││ │     ││ ││      │  0x00007fcc2d260ee5: jne    0x00007fcc2d2616f1  ;*iload_3
                    ││  │     │││││ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.83%    0.83%    ││  │     │││↘│ │     ││ ││      │  0x00007fcc2d260eeb: test   %eax,%eax
                    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260eed: jne    0x00007fcc2d2614b1  ;*ifne
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.01%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260ef3: mov    0x60(%rsp),%r10
           0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260ef8: movzbl 0x11(%r10),%ebx    ;*getfield captures
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@283 (line 240)
  0.03%    0.03%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260efd: test   %ebx,%ebx
                    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260eff: jne    0x00007fcc2d26158d  ;*ifeq
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.66%    0.63%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f05: mov    0x18(%r10),%r10d   ;*getfield prog
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f09: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield startInst
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││  │     │││ │ │     ││ ││      │                                                ; implicit exception: dispatches to 0x00007fcc2d261fa5
  0.01%    0.02%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f0e: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fcc2d261fb5
  0.46%    0.42%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f13: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f1a: jne    0x00007fcc2d26135d  ;*ifeq
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.71%    0.57%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f20: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f24: mov    0x2c(%rsp),%r11d
  0.01%    0.00%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f29: lea    (%r12,%r11,8),%r10  ;*aload
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%    0.02%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f2d: mov    %r10,0x10(%rsp)
  0.61%    0.41%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f32: vmovd  %xmm1,%r11d
           0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f37: mov    %r11,%r8
  0.00%             ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f3a: shl    $0x3,%r8           ;*getfield matchcap
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.02%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f3e: mov    %r10,%rdx
  0.69%    0.31%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f41: mov    0x3c(%rsp),%ecx
           0.00%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f45: xor    %edi,%edi
  0.00%             ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f47: mov    0x60(%rsp),%r10
  0.01%    0.00%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f4c: mov    %r10,(%rsp)
  0.67%    0.40%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f50: mov    %ebx,0x8(%rsp)
  0.00%    0.01%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f54: data16 xchg %ax,%ax
  0.00%             ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f57: callq  0x00007fcc2d046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1564}
                    ││  │     │││ │ │     ││ ││      │                                                ;*invokevirtual add
                    ││  │     │││ │ │     ││ ││      │                                                ; - com.google.re2j.Machine::match@318 (line 243)
                    ││  │     │││ │ │     ││ ││      │                                                ;   {optimized virtual_call}
  0.33%    0.42%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f5c: mov    0x24(%rsp),%eax
  0.62%    0.67%    ││  │     │││ │ │     ││ ││      │  0x00007fcc2d260f60: test   %eax,%eax
                    ││  │     │││ ╰ │     ││ ││      │  0x00007fcc2d260f62: jl     0x00007fcc2d260b7f  ;*ifge
                    ││  │     │││   │     ││ ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││  │     │││   │     ││ ││      │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.18%    ││  │     │││   │     ││ ││      │  0x00007fcc2d260f68: xor    %r9d,%r9d          ;*iload_0
                    ││  │     │││   │     ││ ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││  │     │││   │     ││ ││      │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.34%    0.32%    │↘  │     │││   │     ││ ││      │  0x00007fcc2d260f6b: cmp    $0xa,%eax
                    │   │     │││  ╭│     ││ ││      │  0x00007fcc2d260f6e: je     0x00007fcc2d26104d  ;*iload_1
                    │   │     │││  ││     ││ ││      │                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │     │││  ││     ││ ││      │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.17%    │   │     │││  ││     ││ ││↗     │  0x00007fcc2d260f74: mov    0x28(%rsp),%r13d
  0.11%    0.17%    │   │     │││  ││     ││ │││     │  0x00007fcc2d260f79: test   %r13d,%r13d
                    │   │     │││  │╰     ││ │││     │  0x00007fcc2d260f7c: jl     0x00007fcc2d260b76  ;*iload_1
                    │   │     │││  │      ││ │││     │                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │   │     │││  │      ││ │││     │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.23%    ↘   │     │││  │      ││ │││     │  0x00007fcc2d260f82: cmp    $0xa,%r13d
                        │     │││  │ ╭    ││ │││     │  0x00007fcc2d260f86: je     0x00007fcc2d261056  ;*iload_0
                        │     │││  │ │    ││ │││     │                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                        │     │││  │ │    ││ │││     │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.30%    0.41%        │     │││  │ │    ││ │││↗    │  0x00007fcc2d260f8c: mov    0x24(%rsp),%r11d
  0.13%    0.13%        │     │││  │ │    ││ ││││    │  0x00007fcc2d260f91: add    $0xffffffbf,%r11d
  0.12%    0.10%        │     │││  │ │    ││ ││││    │  0x00007fcc2d260f95: cmp    $0x1a,%r11d
                        │     │││  │ │╭   ││ ││││    │  0x00007fcc2d260f99: jb     0x00007fcc2d260fae  ;*if_icmple
                        │     │││  │ ││   ││ ││││    │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ ││   ││ ││││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ ││   ││ ││││    │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.23%        │     │││  │ ││   ││ ││││    │  0x00007fcc2d260f9b: mov    0x24(%rsp),%r10d
  0.33%    0.29%        │     │││  │ ││   ││ ││││    │  0x00007fcc2d260fa0: add    $0xffffff9f,%r10d
  0.04%    0.09%        │     │││  │ ││   ││ ││││    │  0x00007fcc2d260fa4: cmp    $0x1a,%r10d
                        │     │││  │ ││╭  ││ ││││    │  0x00007fcc2d260fa8: jae    0x00007fcc2d26105f  ;*iconst_1
                        │     │││  │ │││  ││ ││││    │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │││  ││ ││││    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │││  ││ ││││    │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.14%        │     │││  │ │↘│  ││ ││││↗   │  0x00007fcc2d260fae: mov    $0x1,%ebp          ;*ireturn
                        │     │││  │ │ │  ││ │││││   │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │  ││ │││││   │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │ │  ││ │││││   │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.17%        │     │││  │ │ │  ││ │││││↗  │  0x00007fcc2d260fb3: mov    0x28(%rsp),%r11d
  0.29%    0.45%        │     │││  │ │ │  ││ ││││││  │  0x00007fcc2d260fb8: add    $0xffffffbf,%r11d
  0.08%    0.12%        │     │││  │ │ │  ││ ││││││  │  0x00007fcc2d260fbc: cmp    $0x1a,%r11d
  0.18%    0.15%        │     │││  │ │ │╭ ││ ││││││  │  0x00007fcc2d260fc0: jb     0x00007fcc2d260fd5  ;*if_icmple
                        │     │││  │ │ ││ ││ ││││││  │                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ │ ││ ││ ││││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││ ││ ││││││  │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.15%        │     │││  │ │ ││ ││ ││││││  │  0x00007fcc2d260fc2: mov    0x28(%rsp),%r10d
  0.28%    0.26%        │     │││  │ │ ││ ││ ││││││  │  0x00007fcc2d260fc7: add    $0xffffff9f,%r10d
  0.15%    0.06%        │     │││  │ │ ││ ││ ││││││  │  0x00007fcc2d260fcb: cmp    $0x1a,%r10d
                        │     │││  │ │ ││╭││ ││││││  │  0x00007fcc2d260fcf: jae    0x00007fcc2d261088  ;*iconst_1
                        │     │││  │ │ │││││ ││││││  │                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │ │││││ ││││││  │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │││││ ││││││  │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.13%        │     │││  │ │ │↘│││ ││││││↗ │  0x00007fcc2d260fd5: mov    $0x1,%r11d         ;*ireturn
                        │     │││  │ │ │ │││ │││││││ │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │ │││ │││││││ │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │ │││ │││││││ │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.23%        │     │││  │ │ │ │││ │││││││↗│  0x00007fcc2d260fdb: cmp    %r11d,%ebp
                        │     │││  │ │ │ │╰│ │││││││││  0x00007fcc2d260fde: je     0x00007fcc2d260c64  ;*if_icmpeq
                        │     │││  │ │ │ │ │ │││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │     │││  │ │ │ │ │ │││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.02%        │     │││  │ │ │ │ │ │││││││││  0x00007fcc2d260fe4: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │     │││  │ │ │ │ │ │││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.04%        │     │││  │ │ │ │ ╰ │││││││││  0x00007fcc2d260fe8: jmpq   0x00007fcc2d260c68
  0.01%    0.00%        │     ↘││  │ │ │ │   │││││││││  0x00007fcc2d260fed: test   %ebp,%ebp
                        │      ││  │ │ │ │   │││││││││  0x00007fcc2d260fef: jne    0x00007fcc2d261dc5  ;*ifeq
                        │      ││  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                        │      ││  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │   │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%    0.00%        │      ││  │ │ │ │   │││││││││  0x00007fcc2d260ff5: mov    0x50(%rsp),%r10
  0.00%                 │      ││  │ │ │ │   │││││││││  0x00007fcc2d260ffa: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007fcc2d2620d9
           0.00%        │      ││  │ │ │ │   │││││││││  0x00007fcc2d260fff: test   %r11d,%r11d
                        │      ││  │ │ │ │  ╭│││││││││  0x00007fcc2d261002: jne    0x00007fcc2d26101d  ;*ifeq
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d261004: mov    0x1c(%r10),%ebp    ;*getfield pcs
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d261008: movb   $0x1,0x18(%r10)    ;*putfield empty
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d26100d: mov    %r12,0x10(%r10)    ;*putfield pcsl
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d261011: mov    %r12d,0xc(%r10)    ;*putfield size
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d261015: test   %ebp,%ebp
                        │      ││  │ │ │ │  ││││││││││  0x00007fcc2d261017: jne    0x00007fcc2d261e69  ;*if_icmpne
                        │      ││  │ │ │ │  ││││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.01%                 │      ││  │ │ │ │  ↘│││││││││  0x00007fcc2d26101d: add    $0xb0,%rsp
  0.00%                 │      ││  │ │ │ │   │││││││││  0x00007fcc2d261024: pop    %rbp
  0.00%                 │      ││  │ │ │ │   │││││││││  0x00007fcc2d261025: test   %eax,0x177b3fd5(%rip)        # 0x00007fcc44a15000
                        │      ││  │ │ │ │   │││││││││                                                ;   {poll_return}
                        │      ││  │ │ │ │   │││││││││  0x00007fcc2d26102b: retq   
           0.00%        │      ↘│  │ │ │ │   │││││││││  0x00007fcc2d26102c: mov    %r13d,0x24(%rsp)
  0.03%                 │       │  │ │ │ │   │││││││││  0x00007fcc2d261031: mov    0x34(%rsp),%ebx
           0.00%        │       │  │ │ │ │   │││││││││  0x00007fcc2d261035: mov    $0xffffffff,%r10d
                        │       │  │ │ │ │   ╰││││││││  0x00007fcc2d26103b: jmpq   0x00007fcc2d260e5e
  0.02%    0.02%        │       ↘  │ │ │ │    ││││││││  0x00007fcc2d261040: mov    $0xffffffff,%r10d
  0.01%    0.01%        │          │ │ │ │    ││││││││  0x00007fcc2d261046: xor    %ebx,%ebx
  0.00%                 │          │ │ │ │    ╰│││││││  0x00007fcc2d261048: jmpq   0x00007fcc2d260e5e
  0.01%    0.02%        │          ↘ │ │ │     │││││││  0x00007fcc2d26104d: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                        │            │ │ │     │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                        │            │ │ │     ╰││││││  0x00007fcc2d261051: jmpq   0x00007fcc2d260f74
                        │            ↘ │ │      ││││││  0x00007fcc2d261056: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                        │              │ │      ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%        │              │ │      ╰│││││  0x00007fcc2d26105a: jmpq   0x00007fcc2d260f8c
  0.01%    0.03%        │              ↘ │       │││││  0x00007fcc2d26105f: mov    0x24(%rsp),%r11d
  0.06%    0.06%        │                │       │││││  0x00007fcc2d261064: add    $0xffffffd0,%r11d
  0.06%    0.05%        │                │       │││││  0x00007fcc2d261068: cmp    $0xa,%r11d
                        │                │       ╰││││  0x00007fcc2d26106c: jb     0x00007fcc2d260fae  ;*if_icmple
                        │                │        ││││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                │        ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.02%        │                │        ││││  0x00007fcc2d261072: mov    0x24(%rsp),%r10d
  0.01%    0.02%        │                │        ││││  0x00007fcc2d261077: cmp    $0x5f,%r10d
                        │                │        ││││  0x00007fcc2d26107b: je     0x00007fcc2d261e79  ;*if_icmpne
                        │                │        ││││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                │        ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.04%        │                │        ││││  0x00007fcc2d261081: xor    %ebp,%ebp
  0.04%    0.07%        │                │        ╰│││  0x00007fcc2d261083: jmpq   0x00007fcc2d260fb3
  0.06%    0.06%        │                ↘         │││  0x00007fcc2d261088: mov    0x28(%rsp),%r11d
  0.10%    0.09%        │                          │││  0x00007fcc2d26108d: add    $0xffffffd0,%r11d
  0.06%    0.04%        │                          │││  0x00007fcc2d261091: cmp    $0xa,%r11d
                        │                          ╰││  0x00007fcc2d261095: jb     0x00007fcc2d260fd5  ;*if_icmple
                        │                           ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                           ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.03%        │                           ││  0x00007fcc2d26109b: cmp    $0x5f,%r13d
                        │                           ││  0x00007fcc2d26109f: je     0x00007fcc2d261eb5  ;*if_icmpne
                        │                           ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                           ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.03%        │                           ││  0x00007fcc2d2610a5: xor    %r11d,%r11d
  0.02%    0.03%        │                           ╰│  0x00007fcc2d2610a8: jmpq   0x00007fcc2d260fdb
           0.01%        ↘                            │  0x00007fcc2d2610ad: mov    0x60(%rsp),%rcx
                                                     │  0x00007fcc2d2610b2: movb   $0x1,0x10(%rcx)    ;*putfield matched
                                                     │                                                ; - com.google.re2j.Machine::step@163 (line 306)
                                                     │                                                ; - com.google.re2j.Machine::match@359 (line 246)
                                                     │  0x00007fcc2d2610b6: test   %r14d,%r14d
                                                     ╰  0x00007fcc2d2610b9: jne    0x00007fcc2d260d5b  ;*ifne
                                                                                                      ; - com.google.re2j.Machine::step@168 (line 307)
                                                                                                      ; - com.google.re2j.Machine::match@359 (line 246)
                                                        0x00007fcc2d2610bf: mov    0x2c(%rsp),%r10d
                                                        0x00007fcc2d2610c4: movzbl 0x18(%r12,%r10,8),%r11d
                                                        0x00007fcc2d2610ca: test   %r11d,%r11d
....................................................................................................
 58.18%   60.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 559 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007fcc2d244b40: mov    0x8(%rsi),%r10d
                     0x00007fcc2d244b44: shl    $0x3,%r10
                     0x00007fcc2d244b48: cmp    %r10,%rax
                     0x00007fcc2d244b4b: jne    0x00007fcc2d045e20  ;   {runtime_call}
                     0x00007fcc2d244b51: data16 xchg %ax,%ax
                     0x00007fcc2d244b54: nopl   0x0(%rax,%rax,1)
                     0x00007fcc2d244b5c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.77%    0.66%     0x00007fcc2d244b60: mov    %eax,-0x14000(%rsp)
           0.01%     0x00007fcc2d244b67: push   %rbp
  0.01%    0.00%     0x00007fcc2d244b68: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.70%    0.66%     0x00007fcc2d244b6c: vmovq  %r8,%xmm5
  0.00%              0x00007fcc2d244b71: vmovq  %rsi,%xmm4
  0.01%              0x00007fcc2d244b76: mov    %ecx,%r14d
  0.69%    0.51%     0x00007fcc2d244b79: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.16%    0.08%     0x00007fcc2d244b7c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007fcc2d245499
  0.23%    0.23%     0x00007fcc2d244b80: cmp    $0x40,%ecx
                     0x00007fcc2d244b83: jg     0x00007fcc2d245041  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.11%    0.12%     0x00007fcc2d244b89: mov    $0x1,%esi
  0.39%    0.46%     0x00007fcc2d244b8e: mov    $0x1,%r8d
                     0x00007fcc2d244b94: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.86%    0.87%     0x00007fcc2d244b97: mov    %r11,%r10
  0.00%    0.00%     0x00007fcc2d244b9a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.07%    0.11%     0x00007fcc2d244b9d: xor    %r13d,%r13d
  0.02%    0.02%     0x00007fcc2d244ba0: test   %r10,%r10
                     0x00007fcc2d244ba3: jne    0x00007fcc2d245075  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.54%    0.56%     0x00007fcc2d244ba9: cmp    $0x40,%ecx
                     0x00007fcc2d244bac: jge    0x00007fcc2d2450b5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%              0x00007fcc2d244bb2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.07%    0.05%     0x00007fcc2d244bb6: vmovq  %xmm4,%r10
  0.00%    0.00%     0x00007fcc2d244bbb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.64%    0.67%     0x00007fcc2d244bbf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                     0x00007fcc2d244bc2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.07%    0.07%     0x00007fcc2d244bc6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcc2d2454ad
  0.39%    0.28%     0x00007fcc2d244bcb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fcc2d244bd2: jne    0x00007fcc2d244f25
  0.70%    0.62%     0x00007fcc2d244bd8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007fcc2d244bdc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.16%    0.09%     0x00007fcc2d244be0: cmp    $0x40,%ecx
                     0x00007fcc2d244be3: jg     0x00007fcc2d2450e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.14%     0x00007fcc2d244be9: mov    $0x1,%r10d
  0.46%    0.57%     0x00007fcc2d244bef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.46%    0.39%     0x00007fcc2d244bf2: mov    %r8,%rbx
  0.50%    0.39%     0x00007fcc2d244bf5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007fcc2d244bf8: test   %rbx,%rbx
                     0x00007fcc2d244bfb: jne    0x00007fcc2d245125  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.25%     0x00007fcc2d244c01: cmp    $0x40,%ecx
                     0x00007fcc2d244c04: jge    0x00007fcc2d24516d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007fcc2d244c0a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.45%    0.23%     0x00007fcc2d244c0d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%     0x00007fcc2d244c11: mov    0x88(%rsp),%ecx
  0.18%    0.19%     0x00007fcc2d244c18: test   %ecx,%ecx
                     0x00007fcc2d244c1a: jne    0x00007fcc2d2451a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.06%     0x00007fcc2d244c20: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.50%    0.30%     0x00007fcc2d244c23: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.02%     0x00007fcc2d244c26: mov    %edi,%r10d
  0.24%    0.18%     0x00007fcc2d244c29: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007fcc2d244c2c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.40%    0.52%     0x00007fcc2d244c30: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007fcc2d2454d5
  0.02%    0.01%     0x00007fcc2d244c35: cmp    %ebx,%edi
                  ╭  0x00007fcc2d244c37: jae    0x00007fcc2d244ea8
  0.20%    0.17%  │  0x00007fcc2d244c3d: vmovd  %r10d,%xmm2
  0.04%    0.04%  │  0x00007fcc2d244c42: vmovd  %eax,%xmm0
  0.48%    0.45%  │  0x00007fcc2d244c46: mov    %edi,%eax
  0.01%    0.02%  │  0x00007fcc2d244c48: vmovd  %xmm0,%r10d
  0.18%    0.15%  │  0x00007fcc2d244c4d: mov    0x8(%r12,%r10,8),%r10d
  0.04%    0.02%  │  0x00007fcc2d244c52: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fcc2d244c59: jne    0x00007fcc2d244f55  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.36%    0.60%  │  0x00007fcc2d244c5f: vmovq  %xmm4,%r10
  0.02%    0.01%  │  0x00007fcc2d244c64: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.21%    0.12%  │  0x00007fcc2d244c68: mov    %r11,%rcx
  0.05%    0.03%  │  0x00007fcc2d244c6b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.46%    0.57%  │  0x00007fcc2d244c6f: vmovd  %xmm0,%r10d
  0.02%    0.01%  │  0x00007fcc2d244c74: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.17%    0.13%  │  0x00007fcc2d244c78: lea    0x10(%r11,%rdi,4),%r10
  0.05%    0.05%  │  0x00007fcc2d244c7d: mov    %ecx,(%r10)
  0.49%    0.50%  │  0x00007fcc2d244c80: shr    $0x9,%r10
  0.01%    0.01%  │  0x00007fcc2d244c84: movabs $0x7fcc3d41d000,%rdi
  0.20%    0.16%  │  0x00007fcc2d244c8e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.19%  │  0x00007fcc2d244c92: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcc2d2454f1
  0.48%    0.30%  │  0x00007fcc2d244c97: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fcc2d244c9e: jne    0x00007fcc2d244f95
  0.02%    0.01%  │  0x00007fcc2d244ca4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.16%  │  0x00007fcc2d244ca8: vmovq  %r10,%xmm1
  0.10%    0.16%  │  0x00007fcc2d244cad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  1.06%    0.87%  │  0x00007fcc2d244cb1: vmovd  %ecx,%xmm3
  0.23%    0.10%  │  0x00007fcc2d244cb5: cmp    $0x40,%ecx
                  │  0x00007fcc2d244cb8: jg     0x00007fcc2d2451e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.15%    0.13%  │  0x00007fcc2d244cbe: mov    $0x1,%r10d
  0.09%    0.12%  │  0x00007fcc2d244cc4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.71%    0.55%  │  0x00007fcc2d244cc7: mov    %r8,%rcx
  0.09%    0.11%  │  0x00007fcc2d244cca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.37%    0.37%  │  0x00007fcc2d244ccd: test   %rcx,%rcx
                  │  0x00007fcc2d244cd0: jne    0x00007fcc2d245221  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.17%  │  0x00007fcc2d244cd6: vmovd  %xmm3,%ecx
  0.14%    0.08%  │  0x00007fcc2d244cda: cmp    $0x40,%ecx
                  │  0x00007fcc2d244cdd: jge    0x00007fcc2d245265  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.26%    0.19%  │  0x00007fcc2d244ce3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.33%    0.17%  │  0x00007fcc2d244ce6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.04%  │  0x00007fcc2d244cea: mov    %eax,%ecx
  0.18%    0.05%  │  0x00007fcc2d244cec: add    $0x2,%ecx
  0.19%    0.16%  │  0x00007fcc2d244cef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.41%    0.28%  │  0x00007fcc2d244cf2: mov    %eax,%r10d
  0.03%    0.04%  │  0x00007fcc2d244cf5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.12%  │  0x00007fcc2d244cf9: cmp    %ebx,%r10d
                  │  0x00007fcc2d244cfc: jae    0x00007fcc2d244ee5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.18%    0.25%  │  0x00007fcc2d244d02: vmovd  %r9d,%xmm3
  0.33%    0.41%  │  0x00007fcc2d244d07: vmovq  %xmm4,%r9
  0.05%    0.06%  │  0x00007fcc2d244d0c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.19%    0.06%  │  0x00007fcc2d244d10: vmovq  %xmm1,%r9
  0.21%    0.19%  │  0x00007fcc2d244d15: mov    %r9,%rcx
  0.40%    0.32%  │  0x00007fcc2d244d18: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.07%  │  0x00007fcc2d244d1c: movslq %eax,%r9
  0.16%    0.12%  │  0x00007fcc2d244d1f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.20%  │  0x00007fcc2d244d23: mov    %r9,%rbx
  0.27%    0.50%  │  0x00007fcc2d244d26: add    $0x14,%rbx
  0.06%    0.05%  │  0x00007fcc2d244d2a: mov    %ecx,(%rbx)
  0.16%    0.06%  │  0x00007fcc2d244d2c: mov    %rbx,%rcx
  0.17%    0.18%  │  0x00007fcc2d244d2f: shr    $0x9,%rcx
  0.36%    0.20%  │  0x00007fcc2d244d33: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.05%  │  0x00007fcc2d244d37: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcc2d245515
  0.16%    0.08%  │  0x00007fcc2d244d3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fcc2d244d42: jne    0x00007fcc2d244fc1
  0.20%    0.21%  │  0x00007fcc2d244d48: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.33%    0.48%  │  0x00007fcc2d244d4c: vmovq  %rcx,%xmm0
  0.06%    0.05%  │  0x00007fcc2d244d51: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.16%  │  0x00007fcc2d244d54: vmovd  %ecx,%xmm2
  0.21%    0.18%  │  0x00007fcc2d244d58: cmp    $0x40,%ecx
                  │  0x00007fcc2d244d5b: jg     0x00007fcc2d2452a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.30%    0.36%  │  0x00007fcc2d244d61: mov    $0x1,%ebx
  0.09%    0.04%  │  0x00007fcc2d244d66: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.58%    0.73%  │  0x00007fcc2d244d69: mov    %r8,%rcx
  0.08%    0.03%  │  0x00007fcc2d244d6c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.17%  │  0x00007fcc2d244d6f: test   %rcx,%rcx
                  │  0x00007fcc2d244d72: jne    0x00007fcc2d2452dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.23%    0.17%  │  0x00007fcc2d244d78: vmovd  %xmm2,%ecx
  0.37%    0.38%  │  0x00007fcc2d244d7c: cmp    $0x40,%ecx
                  │  0x00007fcc2d244d7f: jge    0x00007fcc2d245325  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.04%  │  0x00007fcc2d244d85: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.14%  │  0x00007fcc2d244d88: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.15%  │  0x00007fcc2d244d8c: vmovq  %xmm4,%rcx
  0.35%    0.32%  │  0x00007fcc2d244d91: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.10%    0.06%  │  0x00007fcc2d244d94: mov    %r9,%rbx
  0.14%    0.17%  │  0x00007fcc2d244d97: add    $0x18,%rbx
  0.18%    0.09%  │  0x00007fcc2d244d9b: vmovq  %xmm0,%rcx
  0.27%    0.35%  │  0x00007fcc2d244da0: shr    $0x3,%rcx
  0.07%    0.04%  │  0x00007fcc2d244da4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.13%    0.14%  │  0x00007fcc2d244da6: mov    %eax,%ecx
  0.20%    0.04%  │  0x00007fcc2d244da8: add    $0x3,%ecx
  0.32%    0.27%  │  0x00007fcc2d244dab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.05%  │  0x00007fcc2d244dae: shr    $0x9,%rbx
  0.11%    0.10%  │  0x00007fcc2d244db2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.25%    0.14%  │  0x00007fcc2d244db6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fcc2d24553d
  0.27%    0.32%  │  0x00007fcc2d244dbb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fcc2d244dc1: jne    0x00007fcc2d244fed
  0.11%    0.04%  │  0x00007fcc2d244dc7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.19%  │  0x00007fcc2d244dcb: vmovq  %rcx,%xmm0
  0.18%    0.19%  │  0x00007fcc2d244dd0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.42%  │  0x00007fcc2d244dd3: vmovd  %ecx,%xmm1
  0.08%    0.03%  │  0x00007fcc2d244dd7: cmp    $0x40,%ecx
                  │  0x00007fcc2d244dda: jg     0x00007fcc2d245361  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.16%  │  0x00007fcc2d244de0: mov    $0x1,%ebx
  0.22%    0.15%  │  0x00007fcc2d244de5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.54%    0.60%  │  0x00007fcc2d244de8: mov    %r8,%rcx
  0.17%    0.13%  │  0x00007fcc2d244deb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.34%    0.20%  │  0x00007fcc2d244dee: test   %rcx,%rcx
                  │  0x00007fcc2d244df1: jne    0x00007fcc2d24539d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.04%  │  0x00007fcc2d244df7: vmovd  %xmm1,%ecx
  0.15%    0.20%  │  0x00007fcc2d244dfb: cmp    $0x40,%ecx
                  │  0x00007fcc2d244dfe: jge    0x00007fcc2d2453e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.17%    0.19%  │  0x00007fcc2d244e04: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.26%    0.47%  │  0x00007fcc2d244e08: vmovq  %xmm4,%r10
  0.11%    0.07%  │  0x00007fcc2d244e0d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.14%    0.19%  │  0x00007fcc2d244e11: mov    %r9,%rcx
  0.18%    0.29%  │  0x00007fcc2d244e14: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.31%    0.29%  │  0x00007fcc2d244e18: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.05%  │  0x00007fcc2d244e1b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.19%  │  0x00007fcc2d244e1f: vmovq  %xmm0,%r10
  0.18%    0.22%  │  0x00007fcc2d244e24: shr    $0x3,%r10
  0.27%    0.42%  │  0x00007fcc2d244e28: mov    %r10d,(%rcx)
  0.08%    0.09%  │  0x00007fcc2d244e2b: mov    %rcx,%r10
  0.13%    0.16%  │  0x00007fcc2d244e2e: shr    $0x9,%r10
  0.15%    0.27%  │  0x00007fcc2d244e32: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.31%    0.36%  │  0x00007fcc2d244e36: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fcc2d245565
  0.06%    0.09%  │  0x00007fcc2d244e3b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fcc2d244e42: jne    0x00007fcc2d245019
  0.16%    0.13%  │  0x00007fcc2d244e48: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.21%    0.22%  │  0x00007fcc2d244e4c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.34%    0.31%  │  0x00007fcc2d244e50: cmp    $0x40,%ecx
                  │  0x00007fcc2d244e53: jg     0x00007fcc2d245421  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.05%  │  0x00007fcc2d244e59: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.73%    0.68%  │  0x00007fcc2d244e5c: mov    %r8,%rbx
  0.05%    0.06%  │  0x00007fcc2d244e5f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.18%    0.12%  │  0x00007fcc2d244e62: test   %rbx,%rbx
                  │  0x00007fcc2d244e65: jne    0x00007fcc2d245445  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.20%  │  0x00007fcc2d244e6b: cmp    $0x40,%ecx
                  │  0x00007fcc2d244e6e: jge    0x00007fcc2d245475  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.31%    0.47%  │  0x00007fcc2d244e74: or     %rsi,%r8
  0.07%    0.07%  │  0x00007fcc2d244e77: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.18%  │  0x00007fcc2d244e7b: add    $0x20,%r9
  0.17%    0.27%  │  0x00007fcc2d244e7f: mov    %r10,%r11
  0.32%    0.37%  │  0x00007fcc2d244e82: shr    $0x3,%r11
  0.03%    0.06%  │  0x00007fcc2d244e86: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.21%  │  0x00007fcc2d244e89: mov    %r9,%r10
  0.19%    0.17%  │  0x00007fcc2d244e8c: add    $0x5,%eax
  0.41%    0.29%  │  0x00007fcc2d244e8f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.03%  │  0x00007fcc2d244e92: shr    $0x9,%r10
  0.17%    0.10%  │  0x00007fcc2d244e96: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.20%    0.10%  │  0x00007fcc2d244e9a: xor    %eax,%eax
  0.36%    0.44%  │  0x00007fcc2d244e9c: add    $0x70,%rsp
  0.09%    0.07%  │  0x00007fcc2d244ea0: pop    %rbp
  0.12%    0.19%  │  0x00007fcc2d244ea1: test   %eax,0x177d0159(%rip)        # 0x00007fcc44a15000
                  │                                                ;   {poll_return}
  0.20%    0.24%  │  0x00007fcc2d244ea7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007fcc2d244ea8: mov    $0xffffffe4,%esi
                     0x00007fcc2d244ead: vmovq  %xmm4,%rbp
                     0x00007fcc2d244eb2: mov    %rdx,(%rsp)
                     0x00007fcc2d244eb6: mov    %r14d,0x88(%rsp)
                     0x00007fcc2d244ebe: vmovsd %xmm5,0x8(%rsp)
                     0x00007fcc2d244ec4: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.37%   35.80%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.18%   60.64%         C2, level 4  com.google.re2j.Machine::match, version 589 (1862 bytes) 
 37.37%   35.80%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 559 (839 bytes) 
  1.44%    1.43%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.25%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 598 (180 bytes) 
  0.15%    0.09%         C2, level 4  java.util.Collections::shuffle, version 605 (135 bytes) 
  0.15%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 598 (28 bytes) 
  0.12%    0.15%         C2, level 4  com.google.re2j.RE2::match, version 598 (20 bytes) 
  0.10%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 598 (195 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 598 (8 bytes) 
  0.06%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 598 (0 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 598 (39 bytes) 
  0.04%    0.03%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 605 (16 bytes) 
  0.04%                  C2, level 4  com.google.re2j.RE2::match, version 598 (34 bytes) 
  0.04%                       [vdso]  [unknown] (2 bytes) 
  0.03%    0.01%         C2, level 4  java.util.Collections::shuffle, version 605 (8 bytes) 
  0.03%                  C2, level 4  com.google.re2j.RE2::match, version 598 (0 bytes) 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 638 (58 bytes) 
  1.66%    1.52%  <...other 359 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.19%   60.65%         C2, level 4  com.google.re2j.Machine::match, version 589 
 37.37%   35.80%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 559 
  2.41%    2.23%   [kernel.kallsyms]  [unknown] 
  0.94%    0.44%         C2, level 4  com.google.re2j.RE2::match, version 598 
  0.29%    0.15%         C2, level 4  java.util.Collections::shuffle, version 605 
  0.14%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 638 
  0.06%    0.01%              [vdso]  __vdso_clock_gettime 
  0.04%                       [vdso]  [unknown] 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.06%           libjvm.so  RelocIterator::initialize 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.02%    0.01%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.02%    0.02%           libjvm.so  outputStream::update_position 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 599 
  0.01%                    libjvm.so  ObjArrayKlass::oop_push_contents 
  0.01%    0.01%           libjvm.so  fileStream::write 
  0.01%           libpthread-2.26.so  __libc_write 
  0.01%    0.01%           libjvm.so  defaultStream::write 
  0.01%    0.06%        libc-2.26.so  vfprintf 
  0.01%    0.01%           libjvm.so  InstanceKlass::oop_push_contents 
  0.32%    0.23%  <...other 53 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 96.94%   97.10%         C2, level 4
  2.41%    2.23%   [kernel.kallsyms]
  0.36%    0.37%           libjvm.so
  0.10%    0.01%              [vdso]
  0.07%    0.21%        libc-2.26.so
  0.04%    0.03%      hsdis-amd64.so
  0.03%    0.02%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.01%    0.01%         C1, level 3
  0.00%    0.01%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                 Mode  Cnt      Score     Error  Units
Re2jRegex.testExp2       thrpt   20  25983.673 ± 341.179  ops/s
Re2jRegex.testExp2:·asm  thrpt             NaN              ---
