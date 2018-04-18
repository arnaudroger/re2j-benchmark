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
# Warmup Iteration   1: 13193.237 ops/s
# Warmup Iteration   2: 21406.352 ops/s
# Warmup Iteration   3: 21436.082 ops/s
# Warmup Iteration   4: 21343.780 ops/s
# Warmup Iteration   5: 21095.394 ops/s
# Warmup Iteration   6: 21458.265 ops/s
# Warmup Iteration   7: 21422.452 ops/s
# Warmup Iteration   8: 21515.042 ops/s
# Warmup Iteration   9: 19773.115 ops/s
# Warmup Iteration  10: 21540.477 ops/s
# Warmup Iteration  11: 21553.559 ops/s
# Warmup Iteration  12: 21537.410 ops/s
# Warmup Iteration  13: 21525.260 ops/s
# Warmup Iteration  14: 21531.345 ops/s
# Warmup Iteration  15: 21493.528 ops/s
# Warmup Iteration  16: 21536.311 ops/s
# Warmup Iteration  17: 21535.482 ops/s
# Warmup Iteration  18: 21543.300 ops/s
# Warmup Iteration  19: 21547.024 ops/s
# Warmup Iteration  20: 21558.181 ops/s
Iteration   1: 21558.623 ops/s
Iteration   2: 21579.010 ops/s
Iteration   3: 21478.658 ops/s
Iteration   4: 21453.143 ops/s
Iteration   5: 21436.258 ops/s
Iteration   6: 21444.860 ops/s
Iteration   7: 21446.734 ops/s
Iteration   8: 21452.880 ops/s
Iteration   9: 21451.059 ops/s
Iteration  10: 21399.231 ops/s
Iteration  11: 21194.292 ops/s
Iteration  12: 21223.517 ops/s
Iteration  13: 21221.405 ops/s
Iteration  14: 19986.546 ops/s
Iteration  15: 21204.282 ops/s
Iteration  16: 21216.610 ops/s
Iteration  17: 21221.050 ops/s
Iteration  18: 21189.096 ops/s
Iteration  19: 21009.661 ops/s
Iteration  20: 21567.626 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  21286.727 ±(99.9%) 298.996 ops/s [Average]
  (min, avg, max) = (19986.546, 21286.727, 21579.010), stdev = 344.325
  CI (99.9%): [20987.731, 21585.724] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194236 total address lines.
Perf output processed (skipped 23.408 seconds):
 Column 1: cycles (20376 events)
 Column 2: instructions (20367 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 543 (1570 bytes) 

                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                       0x00007f319123af4b: test   %r10d,%r10d
                                       0x00007f319123af4e: jl     0x00007f319123c2e9  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                       0x00007f319123af54: vmovd  %r10d,%xmm0
                                       0x00007f319123af59: mov    %rdx,0x70(%rsp)
  0.00%                                0x00007f319123af5e: mov    %ebx,0x2c(%rsp)
                                       0x00007f319123af62: mov    %ecx,%ebx
                                       0x00007f319123af64: mov    %edi,0x30(%rsp)
                                       0x00007f319123af68: mov    %r8d,0x68(%rsp)
  0.00%                                0x00007f319123af6d: mov    %r9d,%ecx
                                       0x00007f319123af70: mov    %r11,0x60(%rsp)
                                       0x00007f319123af75: mov    0xc(%rax),%r10d    ;*getfield value
                                                                                     ; - java.lang.String::charAt@6 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                       0x00007f319123af79: mov    %r10d,%edx
           0.01%                       0x00007f319123af7c: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                                     ; - java.lang.String::charAt@9 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                                                                     ; implicit exception: dispatches to 0x00007f319123c859
  0.01%                                0x00007f319123af81: mov    %r10d,%edi
                                       0x00007f319123af84: vmovd  %xmm0,%r10d
                                       0x00007f319123af89: cmp    %edi,%r10d
                                       0x00007f319123af8c: jge    0x00007f319123c44d  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
  0.01%                                0x00007f319123af92: cmp    %edi,%r10d
                                       0x00007f319123af95: jae    0x00007f319123c1a9
  0.00%                                0x00007f319123af9b: mov    %edx,%r10d
                                       0x00007f319123af9e: lea    (%r12,%r10,8),%r9
                                       0x00007f319123afa2: vmovd  %xmm0,%r10d
                                       0x00007f319123afa7: movzwl 0x10(%r9,%r10,2),%r11d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
  0.00%                                0x00007f319123afad: cmp    $0xd800,%r11d
                                       0x00007f319123afb4: jge    0x00007f319123c491  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                       0x00007f319123afba: shl    $0x3,%r11d         ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
                                       0x00007f319123afbe: mov    %r11d,%r10d
                                       0x00007f319123afc1: and    $0x7,%r10d
  0.00%    0.01%                       0x00007f319123afc5: or     $0x1,%r11d
                                       0x00007f319123afc9: vmovd  %r11d,%xmm0
  0.01%    0.00%                       0x00007f319123afce: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@69 (line 195)
           0.00%                       0x00007f319123afd2: mov    %r10d,0x20(%rsp)
  0.00%    0.00%                       0x00007f319123afd7: mov    %r11d,%r10d
                                       0x00007f319123afda: sar    $0x3,%r10d         ;*ishr
                                                                                     ; - com.google.re2j.Machine::match@77 (line 196)
                                       0x00007f319123afde: vmovd  %r10d,%xmm2
                                       0x00007f319123afe3: cmp    $0xfffffff8,%r11d
                                       0x00007f319123afe7: je     0x00007f319123c144  ;*if_icmpeq
                                                                                     ; - com.google.re2j.Machine::match@97 (line 200)
           0.00%                       0x00007f319123afed: vmovd  %xmm1,%r8d
                                       0x00007f319123aff2: add    0x20(%rsp),%r8d
  0.04%    0.01%                       0x00007f319123aff7: add    %r13d,%r8d         ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
                                       0x00007f319123affa: cmp    %r14d,%r8d
                                       0x00007f319123affd: jge    0x00007f319123b67d  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
           0.00%                       0x00007f319123b003: test   %r8d,%r8d
                                       0x00007f319123b006: jl     0x00007f319123c365  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.00%                       0x00007f319123b00c: cmp    %edi,%r8d
                                       0x00007f319123b00f: jge    0x00007f319123c4ed  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
           0.02%                       0x00007f319123b015: cmp    %edi,%r8d
                                       0x00007f319123b018: jae    0x00007f319123c1ed
  0.00%                                0x00007f319123b01e: movzwl 0x10(%r9,%r8,2),%r10d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.01%    0.00%                       0x00007f319123b024: cmp    $0xd800,%r10d
                                       0x00007f319123b02b: jge    0x00007f319123c531  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%                       0x00007f319123b031: shl    $0x3,%r10d         ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
                                       0x00007f319123b035: mov    %r10d,%r11d
                                       0x00007f319123b038: and    $0x7,%r11d
  0.01%                                0x00007f319123b03c: or     $0x1,%r10d
                                       0x00007f319123b040: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@105 (line 201)
  0.00%    0.00%                       0x00007f319123b044: sar    $0x3,%r10d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@120 (line 203)
                                       0x00007f319123b048: vmovd  %xmm1,%r9d
                                       0x00007f319123b04d: test   %r9d,%r9d
                                       0x00007f319123b050: jne    0x00007f319123c32d  ;*ifne
                                                                                     ; - com.google.re2j.Machine::match@124 (line 206)
                                       0x00007f319123b056: vmovd  %xmm2,%r8d
  0.01%    0.01%                       0x00007f319123b05b: test   %r8d,%r8d
                                       0x00007f319123b05e: jl     0x00007f319123b672  ;*ifge
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                       0x00007f319123b064: mov    $0x5,%r9d          ;*iload_1
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                       0x00007f319123b06a: cmp    $0xa,%r8d
                                       0x00007f319123b06e: je     0x00007f319123b68b  ;*iload_0
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
                                       0x00007f319123b074: mov    %r11d,0x28(%rsp)
  0.00%                                0x00007f319123b079: mov    %r10d,0x34(%rsp)
                                       0x00007f319123b07e: mov    %r8d,%r10d
                                       0x00007f319123b081: add    $0xffffffbf,%r10d
                                       0x00007f319123b085: cmp    $0x1a,%r10d
                  ╭                    0x00007f319123b089: jb     0x00007f319123b09c  ;*if_icmple
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@130 (line 207)
  0.00%           │                    0x00007f319123b08b: mov    %r8d,%r11d
                  │                    0x00007f319123b08e: add    $0xffffff9f,%r11d
                  │                    0x00007f319123b092: cmp    $0x1a,%r11d
                  │                    0x00007f319123b096: jae    0x00007f319123b694  ;*iconst_1
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@130 (line 207)
                  ↘                    0x00007f319123b09c: or     $0x10,%r9d         ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@130 (line 207)
  0.02%                                0x00007f319123b0a0: test   %ecx,%ecx
                                       0x00007f319123b0a2: jne    0x00007f319123c2a5
  0.00%    0.00%                       0x00007f319123b0a8: mov    %r8d,0x24(%rsp)
  0.00%    0.00%                       0x00007f319123b0ad: mov    %ecx,0x38(%rsp)
  0.00%                                0x00007f319123b0b1: mov    0x30(%rsp),%r11d
  0.01%    0.01%                       0x00007f319123b0b6: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f319123c2a5
  0.00%                                0x00007f319123b0bb: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                                       0x00007f319123b0c2: jne    0x00007f319123c2a5  ;*aload
                                                                                     ; - com.google.re2j.Machine::match@145 (line 213)
                                       0x00007f319123b0c8: lea    (%r12,%r11,8),%r10  ;*invokevirtual add
                                                                                     ; - com.google.re2j.Machine::match@322 (line 245)
                                       0x00007f319123b0cc: mov    %r10,0x78(%rsp)
  0.00%                                0x00007f319123b0d1: mov    0x68(%rsp),%r10d
                                       0x00007f319123b0d6: and    $0x4,%r10d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@156 (line 214)
  0.00%                                0x00007f319123b0da: mov    %r10d,0x3c(%rsp)
                                       0x00007f319123b0df: mov    %rbx,%r10
  0.01%                                0x00007f319123b0e2: shl    $0x3,%r10          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@62 (line 194)
                                       0x00007f319123b0e6: mov    %r10,0x50(%rsp)
  0.00%                                0x00007f319123b0eb: xor    %eax,%eax
                                       0x00007f319123b0ed: xor    %r10d,%r10d
  0.00%                                0x00007f319123b0f0: mov    %r10d,0x40(%rsp)
                   ╭                   0x00007f319123b0f5: jmpq   0x00007f319123b43f
  0.27%    0.32%   │  ↗↗↗              0x00007f319123b0fa: mov    0x2c(%r12,%r8,8),%ebp  ;*getfield outInst
                   │  │││                                                            ; - com.google.re2j.Machine::step@199 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.21%    0.21%   │  │││              0x00007f319123b0ff: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f319123c7b9
  0.17%    0.09%   │  │││              0x00007f319123b104: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  │││              0x00007f319123b10a: jne    0x00007f319123be7d
  0.11%    0.11%   │  │││              0x00007f319123b110: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.03%   │  │││              0x00007f319123b114: vmovq  %r8,%xmm1
  0.03%    0.01%   │  │││              0x00007f319123b119: mov    0x18(%r8),%r8d     ;*getfield pc
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.03%   │  │││              0x00007f319123b11d: vmovd  %r8d,%xmm4
  0.11%    0.14%   │  │││              0x00007f319123b122: mov    0x50(%rsp),%r8
  0.02%    0.05%   │  │││              0x00007f319123b127: mov    0x10(%r8),%rdi     ;*getfield pcsl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
                   │  │││                                                            ; implicit exception: dispatches to 0x00007f319123c7d5
  0.02%    0.03%   │  │││              0x00007f319123b12b: vmovd  %xmm4,%r8d
  0.09%    0.10%   │  │││              0x00007f319123b130: cmp    $0x40,%r8d
                   │  │││              0x00007f319123b134: jg     0x00007f319123bf7d  ;*if_icmpgt
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.15%    0.15%   │  │││              0x00007f319123b13a: mov    $0x1,%r8d
  0.01%    0.02%   │  │││              0x00007f319123b140: vmovd  %xmm4,%ecx
  0.07%    0.15%   │  │││              0x00007f319123b144: shl    %cl,%r8            ;*lshl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.31%    0.30%   │  │││              0x00007f319123b147: mov    %rdi,%rcx
  0.00%    0.00%   │  │││              0x00007f319123b14a: and    %r8,%rcx           ;*land
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.02%    0.05%   │  │││              0x00007f319123b14d: test   %rcx,%rcx
                   │  │││              0x00007f319123b150: jne    0x00007f319123c015  ;*ifeq
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.18%    0.17%   │  │││              0x00007f319123b156: vmovd  %xmm4,%ecx
           0.02%   │  │││              0x00007f319123b15a: cmp    $0x40,%ecx
                   │  │││              0x00007f319123b15d: jge    0x00007f319123c09d  ;*if_icmpge
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.07%   │  │││              0x00007f319123b163: mov    0x50(%rsp),%rcx
           0.00%   │  │││              0x00007f319123b168: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.10%    0.09%   │  │││              0x00007f319123b16c: or     %rdi,%r8
  0.00%    0.00%   │  │││              0x00007f319123b16f: mov    %r8,0x10(%rcx)     ;*putfield pcsl
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.03%   │  │││              0x00007f319123b173: mov    0x20(%rcx),%r8d    ;*getfield denseThreadsInstructions
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.01%            │  │││              0x00007f319123b177: mov    %r8d,%edi
  0.08%    0.10%   │  │││              0x00007f319123b17a: mov    0xc(%rcx),%ebp     ;*getfield size
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.00%            │  │││              0x00007f319123b17d: mov    %ebp,%r8d
  0.09%    0.10%   │  │││              0x00007f319123b180: inc    %r8d
  0.03%    0.00%   │  │││              0x00007f319123b183: mov    %r8d,0xc(%rcx)     ;*putfield size
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.10%    0.06%   │  │││              0x00007f319123b187: mov    %edi,%r8d
  0.00%            │  │││              0x00007f319123b18a: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f319123c7e9
  0.09%    0.09%   │  │││              0x00007f319123b18f: cmp    %ecx,%ebp
                   │  │││              0x00007f319123b191: jae    0x00007f319123bde9
  0.07%    0.06%   │  │││              0x00007f319123b197: mov    0x8(%r12,%r8,8),%r8d
  0.07%    0.10%   │  │││              0x00007f319123b19c: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  │││              0x00007f319123b1a3: jne    0x00007f319123beed  ;*aastore
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
                   │  │││              0x00007f319123b1a9: mov    %edi,%r8d
  0.06%    0.03%   │  │││              0x00007f319123b1ac: shl    $0x3,%r8           ;*getfield denseThreadsInstructions
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.03%    0.01%   │  │││              0x00007f319123b1b0: lea    0x10(%r8,%rbp,4),%r8
  0.04%    0.04%   │  │││              0x00007f319123b1b5: vmovq  %xmm1,%rcx
                   │  │││              0x00007f319123b1ba: shr    $0x3,%rcx
  0.05%    0.06%   │  │││              0x00007f319123b1be: mov    %ecx,(%r8)
  0.27%    0.36%   │  │││              0x00007f319123b1c1: shr    $0x9,%r8
  0.04%    0.06%   │  │││              0x00007f319123b1c5: movabs $0x7f31a1e5c000,%rcx
  0.00%    0.00%   │  │││              0x00007f319123b1cf: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                   │  │││                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                            ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                            ; - com.google.re2j.Machine::step@214 (line 319)
                   │  │││                                                            ; - com.google.re2j.Machine::match@363 (line 248)
  0.18%    0.27%   │╭ │││              0x00007f319123b1d3: jmpq   0x00007f319123b2eb
  0.36%    0.16%   ││ │││        ↗     0x00007f319123b1d8: or     $0x20,%r9d         ;*iload_2
                   ││ │││        │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││ │││        │                                                   ; - com.google.re2j.Machine::match@330 (line 247)
  0.31%    0.18%   ││ │││        │↗    0x00007f319123b1dc: mov    0x60(%rsp),%r10
  0.10%    0.12%   ││ │││        ││    0x00007f319123b1e1: mov    0x14(%r10),%r11d   ;*getfield re2
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@1 (line 282)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.18%    0.17%   ││ │││        ││    0x00007f319123b1e5: movzbl 0x18(%r12,%r11,8),%r13d  ;*getfield longest
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@4 (line 282)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                   ││ │││        ││                                                  ; implicit exception: dispatches to 0x00007f319123c755
  0.39%    0.45%   ││ │││        ││    0x00007f319123b1eb: mov    0x2c(%rsp),%r10d
  0.29%    0.42%   ││ │││        ││    0x00007f319123b1f0: mov    0xc(%r12,%r10,8),%eax  ;*getfield size
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::step@10 (line 283)
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.08%   ││ │││        ││    0x00007f319123b1f5: mov    0x40(%rsp),%r11d
  0.06%    0.06%   ││ │││        ││    0x00007f319123b1fa: add    0x20(%rsp),%r11d   ;*iadd
                   ││ │││        ││                                                  ; - com.google.re2j.Machine::match@344 (line 248)
  0.38%    0.37%   ││ │││        ││    0x00007f319123b1ff: test   %eax,%eax
                   ││╭│││        ││    0x00007f319123b201: jle    0x00007f319123b2f3  ;*if_icmpge
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@40 (line 288)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.23%    0.28%   ││││││        ││    0x00007f319123b207: mov    0x24(%r12,%r10,8),%r14d  ;*getfield denseThreadsCapture
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@28 (line 286)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.07%   ││││││        ││    0x00007f319123b20c: mov    0x20(%r12,%r10,8),%r8d  ;*getfield denseThreadsInstructions
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@22 (line 285)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.08%    0.07%   ││││││        ││    0x00007f319123b211: vmovd  %r8d,%xmm0
  0.38%    0.36%   ││││││        ││    0x00007f319123b216: mov    0x60(%rsp),%r10
  0.27%    0.32%   ││││││        ││    0x00007f319123b21b: movzbl 0x11(%r10),%ecx    ;*getfield captures
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@16 (line 284)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.06%    0.07%   ││││││        ││    0x00007f319123b220: mov    0x70(%rsp),%r10
  0.10%    0.08%   ││││││        ││    0x00007f319123b225: mov    0x10(%r10),%r10d
  0.30%    0.27%   ││││││        ││    0x00007f319123b229: mov    0x40(%rsp),%ebx
  0.26%    0.27%   ││││││        ││    0x00007f319123b22d: mov    $0x1,%r8d
  0.05%    0.06%   ││││││        ││    0x00007f319123b233: xor    %esi,%esi
  0.07%    0.05%   ││││││        ││    0x00007f319123b235: cmp    %r10d,%ebx
  0.27%    0.32%   ││││││        ││    0x00007f319123b238: cmovne %esi,%r8d          ;*invokespecial step
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.33%    0.46%   ││││││        ││    0x00007f319123b23c: vmovd  %r8d,%xmm2
  0.14%    0.12%   ││││││        ││    0x00007f319123b241: test   %ecx,%ecx
                   ││││││        ││    0x00007f319123b243: jne    0x00007f319123ba05  ;*iload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@43 (line 291)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.32%    0.19%   ││││││        ││    0x00007f319123b249: vmovd  %xmm0,%r8d
  0.24%    0.24%   ││││││        ││    0x00007f319123b24e: mov    0xc(%r12,%r8,8),%r10d  ;*aaload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@99 (line 301)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                   ││││││        ││                                                  ; implicit exception: dispatches to 0x00007f319123ba05
  0.10%    0.11%   ││││││        ││    0x00007f319123b253: test   %r10d,%r10d
                   ││││││        ││    0x00007f319123b256: jbe    0x00007f319123ba05
  0.13%    0.14%   ││││││        ││    0x00007f319123b25c: mov    %eax,%r8d
  0.29%    0.27%   ││││││        ││    0x00007f319123b25f: dec    %r8d
  0.25%    0.35%   ││││││        ││    0x00007f319123b262: cmp    %r10d,%r8d
                   ││││││        ││    0x00007f319123b265: jae    0x00007f319123ba05
  0.09%    0.05%   ││││││        ││    0x00007f319123b26b: vmovd  %xmm0,%r10d
  0.15%    0.11%   ││││││        ││    0x00007f319123b270: lea    (%r12,%r10,8),%rbx
  0.29%    0.37%   ││││││        ││    0x00007f319123b274: xor    %r10d,%r10d
  0.28%    0.35%   ││││││        ││    0x00007f319123b277: nopw   0x0(%rax,%rax,1)   ;*iload
                   ││││││        ││                                                  ; - com.google.re2j.Machine::step@43 (line 291)
                   ││││││        ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.17%    1.45%   ││││││↗       ││    0x00007f319123b280: mov    0x10(%rbx,%r10,4),%r8d  ;*aaload
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@99 (line 301)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.52%    0.70%   │││││││       ││    0x00007f319123b285: mov    0xc(%r12,%r8,8),%edi  ;*getfield op
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@104 (line 303)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
                   │││││││       ││                                                  ; implicit exception: dispatches to 0x00007f319123c735
  1.47%    1.32%   │││││││       ││    0x00007f319123b28a: cmp    $0x6,%edi
                   │││││││       ││    0x00007f319123b28d: je     0x00007f319123b628  ;*if_icmpne
                   │││││││       ││                                                  ; - com.google.re2j.Machine::step@109 (line 303)
                   │││││││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.33%    1.18%   │││││││       ││    0x00007f319123b293: cmp    $0xa,%edi
                   │││╰│││       ││    0x00007f319123b296: je     0x00007f319123b0fa  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.25%    1.41%   │││ │││       ││    0x00007f319123b29c: cmp    $0xb,%edi
                   │││ │││       ││    0x00007f319123b29f: je     0x00007f319123b74d  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.24%    1.13%   │││ │││       ││    0x00007f319123b2a5: cmp    $0x9,%edi
                   │││ │││       ││    0x00007f319123b2a8: je     0x00007f319123b7e1  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.06%    1.23%   │││ │││       ││    0x00007f319123b2ae: cmp    $0xc,%edi
                   │││ │││       ││    0x00007f319123b2b1: jne    0x00007f319123b6b8  ;*if_icmpne
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.55%    1.52%   │││ │││       ││    0x00007f319123b2b7: mov    0x1c(%r12,%r8,8),%edi  ;*getfield f0
                   │││ │││       ││                                                  ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││ │││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.94%    1.13%   │││ │││       ││    0x00007f319123b2bc: cmp    %edx,%edi
                   │││ ╰││       ││    0x00007f319123b2be: je     0x00007f319123b0fa  ;*if_icmpeq
                   │││  ││       ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.51%    1.74%   │││  ││       ││    0x00007f319123b2c4: mov    0x20(%r12,%r8,8),%edi  ;*getfield f1
                   │││  ││       ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││  ││       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.80%    1.00%   │││  ││       ││    0x00007f319123b2c9: cmp    %edx,%edi
                   │││  ╰│       ││    0x00007f319123b2cb: je     0x00007f319123b0fa  ;*if_icmpeq
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.68%    1.38%   │││   │       ││    0x00007f319123b2d1: mov    0x24(%r12,%r8,8),%edi  ;*getfield f2
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.01%    0.97%   │││   │       ││    0x00007f319123b2d6: cmp    %edx,%edi
                   │││   │       ││    0x00007f319123b2d8: je     0x00007f319123b875  ;*if_icmpeq
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.38%    1.44%   │││   │       ││    0x00007f319123b2de: mov    0x28(%r12,%r8,8),%edi  ;*getfield f3
                   │││   │       ││                                                  ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@191 (line 318)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.68%    0.74%   │││   │       ││    0x00007f319123b2e3: cmp    %edx,%edi
                   │││   │       ││    0x00007f319123b2e5: je     0x00007f319123b8f5  ;*aload
                   │││   │       ││                                                  ; - com.google.re2j.Machine::step@219 (line 322)
                   │││   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  1.09%    1.12%   │↘│   │       ││    0x00007f319123b2eb: inc    %r10d              ;*iinc
                   │ │   │       ││                                                  ; - com.google.re2j.Machine::step@230 (line 288)
                   │ │   │       ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.91%    0.77%   │ │   │       ││    0x00007f319123b2ee: cmp    %eax,%r10d
                   │ │   ╰       ││    0x00007f319123b2f1: jl     0x00007f319123b280  ;*if_icmpge
                   │ │           ││                                                  ; - com.google.re2j.Machine::step@40 (line 288)
                   │ │           ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.27%    0.35%   │ ↘           ││    0x00007f319123b2f3: mov    0x2c(%rsp),%r8d
  0.20%    0.26%   │             ││    0x00007f319123b2f8: movzbl 0x18(%r12,%r8,8),%r8d
  0.16%    0.19%   │             ││    0x00007f319123b2fe: test   %r8d,%r8d
                   │      ╭      ││    0x00007f319123b301: jne    0x00007f319123b325  ;*ifeq
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.22%    0.39%   │      │      ││    0x00007f319123b303: mov    0x2c(%rsp),%r10d
  0.12%    0.23%   │      │      ││    0x00007f319123b308: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.17%    0.26%   │      │      ││    0x00007f319123b30d: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.54%    0.65%   │      │      ││    0x00007f319123b313: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.96%    1.46%   │      │      ││    0x00007f319123b318: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                   │      │      ││                                                  ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.57%    0.75%   │      │      ││    0x00007f319123b31d: test   %ebp,%ebp
                   │      │      ││    0x00007f319123b31f: jne    0x00007f319123bc0d  ;*invokevirtual clear
                   │      │      ││                                                  ; - com.google.re2j.Machine::step@237 (line 326)
                   │      │      ││                                                  ; - com.google.re2j.Machine::match@363 (line 248)
  0.05%    0.03%   │      ↘      ││    0x00007f319123b325: mov    0x60(%rsp),%r10
  0.13%    0.17%   │             ││    0x00007f319123b32a: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │             ││                                                  ; - com.google.re2j.Machine::match@382 (line 252)
  0.29%    0.37%   │             ││    0x00007f319123b32f: mov    0x60(%rsp),%r10
  0.23%    0.32%   │             ││    0x00007f319123b334: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │             ││                                                  ; - com.google.re2j.Machine::match@375 (line 252)
  0.05%    0.07%   │             ││    0x00007f319123b339: mov    0x20(%rsp),%r10d
  0.17%    0.18%   │             ││    0x00007f319123b33e: test   %r10d,%r10d
                   │       ╭     ││    0x00007f319123b341: je     0x00007f319123b56e  ;*ifne
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@368 (line 249)
  0.29%    0.53%   │       │     ││    0x00007f319123b347: test   %ebp,%ebp
                   │       │     ││    0x00007f319123b349: jne    0x00007f319123bae5  ;*ifne
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@378 (line 252)
  0.20%    0.47%   │       │     ││    0x00007f319123b34f: test   %eax,%eax
                   │       │     ││    0x00007f319123b351: jne    0x00007f319123bbc9  ;*ifeq
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@385 (line 252)
  0.07%    0.05%   │       │     ││    0x00007f319123b357: mov    0x34(%rsp),%r8d
  0.15%    0.19%   │       │     ││    0x00007f319123b35c: cmp    $0xffffffff,%r8d
                   │       │     ││    0x00007f319123b360: je     0x00007f319123b5ad  ;*if_icmpeq
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@407 (line 260)
  0.32%    0.48%   │       │     ││    0x00007f319123b366: mov    0x70(%rsp),%r10
  0.26%    0.33%   │       │     ││    0x00007f319123b36b: mov    0x10(%r10),%r10d   ;*getfield end
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.09%    0.09%   │       │     ││    0x00007f319123b36f: mov    0x28(%rsp),%ecx
  0.11%    0.18%   │       │     ││    0x00007f319123b373: add    %r11d,%ecx
  0.27%    0.48%   │       │     ││    0x00007f319123b376: mov    0x70(%rsp),%r8
  0.18%    0.27%   │       │     ││    0x00007f319123b37b: add    0xc(%r8),%ecx      ;*iadd
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.28%    0.44%   │       │     ││    0x00007f319123b37f: cmp    %r10d,%ecx
                   │       │     ││    0x00007f319123b382: jge    0x00007f319123b5bc  ;*if_icmpge
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.33%    0.49%   │       │     ││    0x00007f319123b388: mov    0x14(%r8),%ebp     ;*getfield str
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.22%    0.27%   │       │     ││    0x00007f319123b38c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f319123c765
  1.35%    2.08%   │       │     ││    0x00007f319123b391: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │       │     ││    0x00007f319123b398: jne    0x00007f319123b9c5
  0.48%    0.72%   │       │     ││    0x00007f319123b39e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.03%    0.06%   │       │     ││    0x00007f319123b3a2: test   %ecx,%ecx
                   │       │     ││    0x00007f319123b3a4: jl     0x00007f319123bb2d  ;*iflt
                   │       │     ││                                                  ; - java.lang.String::charAt@1 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.15%    0.17%   │       │     ││    0x00007f319123b3aa: mov    0xc(%rbx),%r8d     ;*getfield value
                   │       │     ││                                                  ; - java.lang.String::charAt@6 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.24%    0.27%   │       │     ││    0x00007f319123b3ae: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                   │       │     ││                                                  ; - java.lang.String::charAt@9 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
                   │       │     ││                                                  ; implicit exception: dispatches to 0x00007f319123c779
  3.43%    4.12%   │       │     ││    0x00007f319123b3b3: cmp    %ebp,%ecx
                   │       │     ││    0x00007f319123b3b5: jge    0x00007f319123bc49  ;*if_icmplt
                   │       │     ││                                                  ; - java.lang.String::charAt@10 (line 657)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.80%    0.58%   │       │     ││    0x00007f319123b3bb: cmp    %ebp,%ecx
                   │       │     ││    0x00007f319123b3bd: jae    0x00007f319123b971
  0.07%    0.03%   │       │     ││    0x00007f319123b3c3: lea    (%r12,%r8,8),%r10
  0.01%            │       │     ││    0x00007f319123b3c7: movzwl 0x10(%r10,%rcx,2),%r8d  ;*caload
                   │       │     ││                                                  ; - java.lang.String::charAt@27 (line 660)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.03%   │       │     ││    0x00007f319123b3cd: cmp    $0xd800,%r8d
                   │       │     ││    0x00007f319123b3d4: jge    0x00007f319123bca1  ;*if_icmplt
                   │       │     ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │       │     ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.76%    0.64%   │       │     ││    0x00007f319123b3da: shl    $0x3,%r8d          ;*ishl
                   │       │     ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.05%    0.04%   │       │     ││    0x00007f319123b3de: mov    %r8d,%ebx
           0.00%   │       │     ││    0x00007f319123b3e1: and    $0x7,%ebx
  0.51%    0.54%   │       │     ││    0x00007f319123b3e4: or     $0x1,%r8d
  0.20%    0.11%   │       │     ││    0x00007f319123b3e8: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@415 (line 261)
  0.49%    0.46%   │       │     ││    0x00007f319123b3eb: sar    $0x3,%r8d          ; OopMap{[16]=Oop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1391}
                   │       │     ││                                                  ;*goto
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
  0.01%    0.00%   │       │     ││    0x00007f319123b3ef: test   %eax,0x18218c0b(%rip)        # 0x00007f31a9454000
                   │       │     ││                                                  ;*goto
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@445 (line 268)
                   │       │     ││                                                  ;   {poll}
  0.01%    0.00%   │       │     ││    0x00007f319123b3f5: mov    0x60(%rsp),%r10
  0.23%    0.11%   │       │     ││    0x00007f319123b3fa: mov    0x14(%r10),%esi    ;*getfield re2
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@178 (line 222)
  0.52%    0.46%   │       │     ││    0x00007f319123b3fe: mov    0x28(%r10),%r10d   ;*getfield matchcap
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.01%    0.01%   │       │     ││    0x00007f319123b402: mov    0x50(%rsp),%rcx
                   │       │     ││    0x00007f319123b407: mov    %rcx,%rdi
  0.19%    0.12%   │       │     ││    0x00007f319123b40a: shr    $0x3,%rdi
  0.48%    0.40%   │       │     ││    0x00007f319123b40e: mov    %edi,0x2c(%rsp)
  0.01%    0.00%   │       │     ││    0x00007f319123b412: mov    0x28(%rsp),%ecx
                   │       │     ││    0x00007f319123b416: mov    %ecx,0x20(%rsp)
  0.21%    0.27%   │       │     ││    0x00007f319123b41a: mov    %r11d,0x40(%rsp)
  0.55%    0.45%   │       │     ││    0x00007f319123b41f: mov    %ebx,0x28(%rsp)
  0.00%    0.01%   │       │     ││    0x00007f319123b423: mov    0x34(%rsp),%ecx
           0.00%   │       │     ││    0x00007f319123b427: mov    %ecx,0x24(%rsp)
  0.20%    0.17%   │       │     ││    0x00007f319123b42b: mov    %r8d,0x34(%rsp)
  0.55%    0.42%   │       │     ││    0x00007f319123b430: mov    0x10(%rsp),%r11
  0.00%    0.00%   │       │     ││    0x00007f319123b435: mov    %r11,0x50(%rsp)
  0.01%    0.00%   │       │     ││    0x00007f319123b43a: vmovd  %r10d,%xmm3        ;*aload
                   │       │     ││                                                  ; - com.google.re2j.Machine::match@145 (line 213)
  0.21%    0.25%   ↘       │     ││    0x00007f319123b43f: mov    0x2c(%rsp),%r11d
  0.61%    0.38%           │     ││    0x00007f319123b444: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f319123c745
  0.04%    0.06%           │     ││    0x00007f319123b44a: test   %r11d,%r11d
                           │╭    ││    0x00007f319123b44d: je     0x00007f319123b47c  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@150 (line 213)
  0.00%    0.01%           ││    ││    0x00007f319123b44f: mov    0x3c(%rsp),%r11d
  0.22%    0.17%           ││    ││    0x00007f319123b454: test   %r11d,%r11d
                           ││    ││    0x00007f319123b457: jne    0x00007f319123bd3d  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@157 (line 214)
  0.35%    0.13%           ││    ││    0x00007f319123b45d: test   %eax,%eax
                           ││    ││    0x00007f319123b45f: jne    0x00007f319123bd91  ;*ifeq
                           ││    ││                                                  ; - com.google.re2j.Machine::match@171 (line 218)
  0.01%                    ││    ││    0x00007f319123b465: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                           ││    ││                                                  ; - com.google.re2j.Machine::match@181 (line 222)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f319123c789
  0.01%    0.00%           ││    ││    0x00007f319123b46a: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                           ││    ││                                                  ; - java.lang.String::isEmpty@1 (line 635)
                           ││    ││                                                  ; - com.google.re2j.Machine::match@184 (line 222)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f319123c799
  0.16%    0.16%           ││    ││    0x00007f319123b46f: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                           ││    ││                                                  ; - java.lang.String::isEmpty@4 (line 635)
                           ││    ││                                                  ; - com.google.re2j.Machine::match@184 (line 222)
                           ││    ││                                                  ; implicit exception: dispatches to 0x00007f319123c7a9
  0.58%    0.35%           ││    ││    0x00007f319123b474: test   %ebp,%ebp
                           ││    ││    0x00007f319123b476: jne    0x00007f319123bcf5  ;*iload_3
                           ││    ││                                                  ; - com.google.re2j.Machine::match@276 (line 239)
  0.06%    0.03%           │↘    ││    0x00007f319123b47c: test   %eax,%eax
                           │     ││    0x00007f319123b47e: jne    0x00007f319123ba95  ;*ifne
                           │     ││                                                  ; - com.google.re2j.Machine::match@288 (line 239)
  0.02%    0.00%           │     ││    0x00007f319123b484: mov    0x60(%rsp),%r10
  0.26%    0.20%           │     ││    0x00007f319123b489: movzbl 0x11(%r10),%r10d   ;*getfield captures
                           │     ││                                                  ; - com.google.re2j.Machine::match@292 (line 242)
  0.28%    0.27%           │     ││    0x00007f319123b48e: test   %r10d,%r10d
                           │     ││    0x00007f319123b491: jne    0x00007f319123bb79  ;*ifeq
                           │     ││                                                  ; - com.google.re2j.Machine::match@295 (line 242)
  0.01%    0.03%           │     ││    0x00007f319123b497: vmovd  %xmm3,%r8d
  0.03%    0.01%           │     ││    0x00007f319123b49c: shl    $0x3,%r8           ;*getfield matchcap
                           │     ││                                                  ; - com.google.re2j.Machine::match@311 (line 245)
  0.32%    0.19%           │     ││    0x00007f319123b4a0: mov    0x2c(%rsp),%ecx
  0.38%    0.20%           │     ││    0x00007f319123b4a4: lea    (%r12,%rcx,8),%r11  ;*aload
                           │     ││                                                  ; - com.google.re2j.Machine::match@145 (line 213)
  0.07%    0.02%           │     ││    0x00007f319123b4a8: mov    %r11,0x10(%rsp)
  0.03%    0.03%           │     ││    0x00007f319123b4ad: mov    0x78(%rsp),%rsi
  0.24%    0.14%           │     ││    0x00007f319123b4b2: mov    %r11,%rdx
  0.44%    0.12%           │     ││    0x00007f319123b4b5: mov    0x40(%rsp),%ecx
  0.07%                    │     ││    0x00007f319123b4b9: xor    %edi,%edi
  0.01%    0.01%           │     ││    0x00007f319123b4bb: mov    0x60(%rsp),%r11
  0.27%    0.12%           │     ││    0x00007f319123b4c0: mov    %r11,(%rsp)
  0.29%    0.07%           │     ││    0x00007f319123b4c4: mov    %r10d,0x8(%rsp)
  0.06%    0.01%           │     ││    0x00007f319123b4c9: xchg   %ax,%ax
  0.03%    0.01%           │     ││    0x00007f319123b4cb: callq  0x00007f3191046020  ; OopMap{[16]=Oop [44]=NarrowOop [48]=NarrowOop [80]=Oop [96]=Oop [112]=Oop [120]=Oop off=1616}
                           │     ││                                                  ;*invokevirtual add
                           │     ││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
                           │     ││                                                  ;   {optimized virtual_call}
  0.34%    0.34%           │     ││    0x00007f319123b4d0: mov    0x24(%rsp),%edx
  0.07%    0.06%           │     ││    0x00007f319123b4d4: test   %edx,%edx
                           │ ╭   ││    0x00007f319123b4d6: jl     0x00007f319123b55d  ;*ifge
                           │ │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                           │ │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.33%    0.33%           │ │   ││    0x00007f319123b4dc: xor    %r9d,%r9d          ;*iload_0
                           │ │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                           │ │   ││                                                  ; - com.google.re2j.Machine::match@330 (line 247)
  0.27%    0.33%           │ │   ││↗   0x00007f319123b4df: cmp    $0xa,%edx
                           │ │   │││   0x00007f319123b4e2: je     0x00007f319123b5c9  ;*iload_1
                           │ │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                           │ │   │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.04%           │ │   │││   0x00007f319123b4e8: mov    0x34(%rsp),%r11d
  0.03%    0.01%           │ │   │││   0x00007f319123b4ed: test   %r11d,%r11d
                           │ │╭  │││   0x00007f319123b4f0: jl     0x00007f319123b568  ;*iload_1
                           │ ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                           │ ││  │││                                                 ; - com.google.re2j.Machine::match@330 (line 247)
  0.32%    0.47%           │ ││  │││↗  0x00007f319123b4f2: cmp    $0xa,%r11d
                           │ ││  ││││  0x00007f319123b4f6: je     0x00007f319123b5d2  ;*iload_0
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.27%    0.28%           │ ││  ││││  0x00007f319123b4fc: mov    0x24(%rsp),%r11d
  0.05%    0.04%           │ ││  ││││  0x00007f319123b501: add    $0xffffffbf,%r11d
  0.04%    0.03%           │ ││  ││││  0x00007f319123b505: cmp    $0x1a,%r11d
                           │ ││╭ ││││  0x00007f319123b509: jb     0x00007f319123b51e  ;*if_icmple
                           │ │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │ │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ │││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.39%    0.35%           │ │││ ││││  0x00007f319123b50b: mov    0x24(%rsp),%r10d
  0.27%    0.24%           │ │││ ││││  0x00007f319123b510: add    $0xffffff9f,%r10d
  0.08%    0.04%           │ │││ ││││  0x00007f319123b514: cmp    $0x1a,%r10d
                           │ │││ ││││  0x00007f319123b518: jae    0x00007f319123b5db  ;*iconst_1
                           │ │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │ │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ │││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.02%    0.02%           │ ││↘ ││││  0x00007f319123b51e: mov    $0x1,%ebp          ;*ireturn
                           │ ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.32%    0.43%           │ ││  ││││  0x00007f319123b523: mov    0x34(%rsp),%r11d
  0.28%    0.25%           │ ││  ││││  0x00007f319123b528: add    $0xffffffbf,%r11d
  0.05%    0.03%           │ ││  ││││  0x00007f319123b52c: cmp    $0x1a,%r11d
                           │ ││ ╭││││  0x00007f319123b530: jb     0x00007f319123b545  ;*if_icmple
                           │ ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           │ ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││ │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.09%    0.05%           │ ││ │││││  0x00007f319123b532: mov    0x34(%rsp),%r10d
  0.36%    0.34%           │ ││ │││││  0x00007f319123b537: add    $0xffffff9f,%r10d
  0.25%    0.22%           │ ││ │││││  0x00007f319123b53b: cmp    $0x1a,%r10d
                           │ ││ │││││  0x00007f319123b53f: jae    0x00007f319123b5fe  ;*iconst_1
                           │ ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           │ ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││ │││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.05%    0.05%           │ ││ ↘││││  0x00007f319123b545: mov    $0x1,%r11d         ;*ireturn
                           │ ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           │ ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││  ││││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.17%    0.18%           │ ││  ││││  0x00007f319123b54b: cmp    %r11d,%ebp
                           │ ││  ╰│││  0x00007f319123b54e: je     0x00007f319123b1d8  ;*if_icmpeq
                           │ ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                           │ ││   │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.04%    0.04%           │ ││   │││  0x00007f319123b554: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                           │ ││   │││                                                ; - com.google.re2j.Machine::match@330 (line 247)
  0.00%    0.01%           │ ││   ╰││  0x00007f319123b558: jmpq   0x00007f319123b1dc
                           │ ↘│    ││  0x00007f319123b55d: mov    $0x5,%r9d
                           │  │    ╰│  0x00007f319123b563: jmpq   0x00007f319123b4df
  0.01%                    │  ↘     │  0x00007f319123b568: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           │        │                                                ; - com.google.re2j.Machine::match@330 (line 247)
                           │        ╰  0x00007f319123b56c: jmp    0x00007f319123b4f2
  0.01%    0.01%           ↘           0x00007f319123b56e: test   %ebp,%ebp
                                       0x00007f319123b570: jne    0x00007f319123c4d1  ;*ifeq
                                                                                     ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@451 (line 269)
  0.01%    0.00%                       0x00007f319123b576: mov    0x50(%rsp),%r10
  0.00%                                0x00007f319123b57b: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f319123c869
  0.00%                                0x00007f319123b580: test   %r11d,%r11d
                                       0x00007f319123b583: jne    0x00007f319123b59e  ;*ifeq
                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@451 (line 269)
                                       0x00007f319123b585: mov    0x1c(%r10),%ebp    ;*getfield pcs
                                                                                     ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@451 (line 269)
....................................................................................................
 57.89%   60.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 513 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f31912227c0: mov    0x8(%rsi),%r10d
                     0x00007f31912227c4: shl    $0x3,%r10
                     0x00007f31912227c8: cmp    %r10,%rax
                     0x00007f31912227cb: jne    0x00007f3191045e20  ;   {runtime_call}
                     0x00007f31912227d1: data16 xchg %ax,%ax
                     0x00007f31912227d4: nopl   0x0(%rax,%rax,1)
                     0x00007f31912227dc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.59%    0.13%     0x00007f31912227e0: mov    %eax,-0x14000(%rsp)
  0.12%    0.03%     0x00007f31912227e7: push   %rbp
  0.20%    0.06%     0x00007f31912227e8: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.36%    0.06%     0x00007f31912227ec: vmovq  %r8,%xmm5
  0.03%    0.02%     0x00007f31912227f1: vmovq  %rsi,%xmm4
  0.31%    0.03%     0x00007f31912227f6: mov    %ecx,%r14d
  0.37%    0.10%     0x00007f31912227f9: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.08%    0.02%     0x00007f31912227fc: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f3191223119
  0.03%    0.00%     0x00007f3191222800: cmp    $0x40,%ecx
                     0x00007f3191222803: jg     0x00007f3191222cc1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.28%    0.05%     0x00007f3191222809: mov    $0x1,%esi
  0.34%    0.63%     0x00007f319122280e: mov    $0x1,%r8d
  0.06%    0.04%     0x00007f3191222814: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.75%    0.71%     0x00007f3191222817: mov    %r11,%r10
  0.06%    0.03%     0x00007f319122281a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.01%     0x00007f319122281d: xor    %r13d,%r13d
  0.30%    0.30%     0x00007f3191222820: test   %r10,%r10
                     0x00007f3191222823: jne    0x00007f3191222cf5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.28%    0.14%     0x00007f3191222829: cmp    $0x40,%ecx
                     0x00007f319122282c: jge    0x00007f3191222d35  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.05%    0.05%     0x00007f3191222832: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.05%     0x00007f3191222836: vmovq  %xmm4,%r10
  0.28%    0.26%     0x00007f319122283b: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.42%    0.43%     0x00007f319122283f: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.07%    0.04%     0x00007f3191222842: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.05%    0.04%     0x00007f3191222846: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f319122312d
  0.29%    0.23%     0x00007f319122284b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f3191222852: jne    0x00007f3191222ba5
  0.44%    0.43%     0x00007f3191222858: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.07%     0x00007f319122285c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.03%     0x00007f3191222860: cmp    $0x40,%ecx
                     0x00007f3191222863: jg     0x00007f3191222d69  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.26%     0x00007f3191222869: mov    $0x1,%r10d
  0.36%    0.39%     0x00007f319122286f: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.50%    0.34%     0x00007f3191222872: mov    %r8,%rbx
  0.40%    0.33%     0x00007f3191222875: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.05%     0x00007f3191222878: test   %rbx,%rbx
                     0x00007f319122287b: jne    0x00007f3191222da5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%     0x00007f3191222881: cmp    $0x40,%ecx
                     0x00007f3191222884: jge    0x00007f3191222ded  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.23%     0x00007f319122288a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.36%    0.34%     0x00007f319122288d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.05%     0x00007f3191222891: mov    0x88(%rsp),%ecx
  0.61%    0.63%     0x00007f3191222898: test   %ecx,%ecx
                     0x00007f319122289a: jne    0x00007f3191222e29  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.37%    0.44%     0x00007f31912228a0: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.47%     0x00007f31912228a3: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.02%     0x00007f31912228a6: mov    %edi,%r10d
  0.03%    0.03%     0x00007f31912228a9: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.41%    0.47%     0x00007f31912228ac: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.49%     0x00007f31912228b0: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f3191223155
  0.02%              0x00007f31912228b5: cmp    %ebx,%edi
                  ╭  0x00007f31912228b7: jae    0x00007f3191222b28
  0.03%    0.04%  │  0x00007f31912228bd: vmovd  %r10d,%xmm2
  0.37%    0.49%  │  0x00007f31912228c2: vmovd  %eax,%xmm0
  0.29%    0.42%  │  0x00007f31912228c6: mov    %edi,%eax
  0.04%    0.11%  │  0x00007f31912228c8: vmovd  %xmm0,%r10d
  0.01%    0.05%  │  0x00007f31912228cd: mov    0x8(%r12,%r10,8),%r10d
  0.29%    0.39%  │  0x00007f31912228d2: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f31912228d9: jne    0x00007f3191222bd5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.37%    0.30%  │  0x00007f31912228df: vmovq  %xmm4,%r10
  0.03%    0.05%  │  0x00007f31912228e4: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.05%    0.03%  │  0x00007f31912228e8: mov    %r11,%rcx
  0.40%    0.32%  │  0x00007f31912228eb: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.28%    0.33%  │  0x00007f31912228ef: vmovd  %xmm0,%r10d
  0.06%    0.04%  │  0x00007f31912228f4: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.03%  │  0x00007f31912228f8: lea    0x10(%r11,%rdi,4),%r10
  0.32%    0.38%  │  0x00007f31912228fd: mov    %ecx,(%r10)
  0.42%    0.40%  │  0x00007f3191222900: shr    $0x9,%r10
  0.05%    0.03%  │  0x00007f3191222904: movabs $0x7f31a1e5c000,%rdi
  0.01%    0.01%  │  0x00007f319122290e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.34%    0.42%  │  0x00007f3191222912: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f3191223171
  0.31%    0.27%  │  0x00007f3191222917: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f319122291e: jne    0x00007f3191222c15
  0.06%    0.03%  │  0x00007f3191222924: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.00%  │  0x00007f3191222928: vmovq  %r10,%xmm1
  0.36%    0.27%  │  0x00007f319122292d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.42%    0.35%  │  0x00007f3191222931: vmovd  %ecx,%xmm3
  0.11%    0.11%  │  0x00007f3191222935: cmp    $0x40,%ecx
                  │  0x00007f3191222938: jg     0x00007f3191222e65  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │  0x00007f319122293e: mov    $0x1,%r10d
  0.36%    0.23%  │  0x00007f3191222944: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.49%    0.40%  │  0x00007f3191222947: mov    %r8,%rcx
  0.43%    0.35%  │  0x00007f319122294a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.27%    0.43%  │  0x00007f319122294d: test   %rcx,%rcx
                  │  0x00007f3191222950: jne    0x00007f3191222ea1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.11%  │  0x00007f3191222956: vmovd  %xmm3,%ecx
  0.05%    0.03%  │  0x00007f319122295a: cmp    $0x40,%ecx
                  │  0x00007f319122295d: jge    0x00007f3191222ee5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.45%    0.32%  │  0x00007f3191222963: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.27%    0.09%  │  0x00007f3191222966: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.04%  │  0x00007f319122296a: mov    %eax,%ecx
  0.03%    0.01%  │  0x00007f319122296c: add    $0x2,%ecx
  0.37%    0.28%  │  0x00007f319122296f: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.28%  │  0x00007f3191222972: mov    %eax,%r10d
  0.03%    0.12%  │  0x00007f3191222975: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  │  0x00007f3191222979: cmp    %ebx,%r10d
                  │  0x00007f319122297c: jae    0x00007f3191222b65  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.39%    0.53%  │  0x00007f3191222982: vmovd  %r9d,%xmm3
  0.23%    0.42%  │  0x00007f3191222987: vmovq  %xmm4,%r9
  0.07%    0.07%  │  0x00007f319122298c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.03%    0.02%  │  0x00007f3191222990: vmovq  %xmm1,%r9
  0.41%    0.38%  │  0x00007f3191222995: mov    %r9,%rcx
  0.28%    0.29%  │  0x00007f3191222998: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.04%  │  0x00007f319122299c: movslq %eax,%r9
  0.06%    0.04%  │  0x00007f319122299f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.38%    0.41%  │  0x00007f31912229a3: mov    %r9,%rbx
  0.32%    0.38%  │  0x00007f31912229a6: add    $0x14,%rbx
  0.04%    0.02%  │  0x00007f31912229aa: mov    %ecx,(%rbx)
  0.06%    0.02%  │  0x00007f31912229ac: mov    %rbx,%rcx
  0.33%    0.24%  │  0x00007f31912229af: shr    $0x9,%rcx
  0.35%    0.16%  │  0x00007f31912229b3: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.01%  │  0x00007f31912229b7: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f3191223195
  0.05%    0.02%  │  0x00007f31912229bc: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f31912229c2: jne    0x00007f3191222c41
  0.41%    0.41%  │  0x00007f31912229c8: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.23%    0.34%  │  0x00007f31912229cc: vmovq  %rcx,%xmm0
  0.05%    0.07%  │  0x00007f31912229d1: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.04%  │  0x00007f31912229d4: vmovd  %ecx,%xmm2
  0.44%    0.39%  │  0x00007f31912229d8: cmp    $0x40,%ecx
                  │  0x00007f31912229db: jg     0x00007f3191222f21  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.28%    0.36%  │  0x00007f31912229e1: mov    $0x1,%ebx
  0.06%    0.06%  │  0x00007f31912229e6: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.66%    0.85%  │  0x00007f31912229e9: mov    %r8,%rcx
  0.07%    0.04%  │  0x00007f31912229ec: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.05%  │  0x00007f31912229ef: test   %rcx,%rcx
                  │  0x00007f31912229f2: jne    0x00007f3191222f5d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.43%    0.44%  │  0x00007f31912229f8: vmovd  %xmm2,%ecx
  0.33%    0.37%  │  0x00007f31912229fc: cmp    $0x40,%ecx
                  │  0x00007f31912229ff: jge    0x00007f3191222fa5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.03%  │  0x00007f3191222a05: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.01%  │  0x00007f3191222a08: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.38%    0.36%  │  0x00007f3191222a0c: vmovq  %xmm4,%rcx
  0.31%    0.23%  │  0x00007f3191222a11: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.04%    0.05%  │  0x00007f3191222a14: mov    %r9,%rbx
  0.02%    0.04%  │  0x00007f3191222a17: add    $0x18,%rbx
  0.37%    0.44%  │  0x00007f3191222a1b: vmovq  %xmm0,%rcx
  0.32%    0.32%  │  0x00007f3191222a20: shr    $0x3,%rcx
  0.04%    0.03%  │  0x00007f3191222a24: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │  0x00007f3191222a26: mov    %eax,%ecx
  0.38%    0.39%  │  0x00007f3191222a28: add    $0x3,%ecx
  0.27%    0.26%  │  0x00007f3191222a2b: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.05%  │  0x00007f3191222a2e: shr    $0x9,%rbx
  0.03%    0.01%  │  0x00007f3191222a32: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.40%    0.34%  │  0x00007f3191222a36: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f31912231bd
  0.31%    0.22%  │  0x00007f3191222a3b: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f3191222a41: jne    0x00007f3191222c6d
  0.04%    0.02%  │  0x00007f3191222a47: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.04%  │  0x00007f3191222a4b: vmovq  %rcx,%xmm0
  0.49%    0.44%  │  0x00007f3191222a50: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.31%  │  0x00007f3191222a53: vmovd  %ecx,%xmm1
  0.07%    0.07%  │  0x00007f3191222a57: cmp    $0x40,%ecx
                  │  0x00007f3191222a5a: jg     0x00007f3191222fe1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.01%  │  0x00007f3191222a60: mov    $0x1,%ebx
  0.39%    0.49%  │  0x00007f3191222a65: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.32%    0.37%  │  0x00007f3191222a68: mov    %r8,%rcx
  0.39%    0.18%  │  0x00007f3191222a6b: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.14%  │  0x00007f3191222a6e: test   %rcx,%rcx
                  │  0x00007f3191222a71: jne    0x00007f319122301d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.03%  │  0x00007f3191222a77: vmovd  %xmm1,%ecx
  0.01%    0.03%  │  0x00007f3191222a7b: cmp    $0x40,%ecx
                  │  0x00007f3191222a7e: jge    0x00007f3191223065  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.47%    0.45%  │  0x00007f3191222a84: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.29%    0.41%  │  0x00007f3191222a88: vmovq  %xmm4,%r10
  0.05%    0.06%  │  0x00007f3191222a8d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.05%    0.04%  │  0x00007f3191222a91: mov    %r9,%rcx
  0.40%    0.43%  │  0x00007f3191222a94: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.30%  │  0x00007f3191222a98: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.05%  │  0x00007f3191222a9b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f3191222a9f: vmovq  %xmm0,%r10
  0.43%    0.33%  │  0x00007f3191222aa4: shr    $0x3,%r10
  0.30%    0.29%  │  0x00007f3191222aa8: mov    %r10d,(%rcx)
  0.05%    0.08%  │  0x00007f3191222aab: mov    %rcx,%r10
  0.02%    0.04%  │  0x00007f3191222aae: shr    $0x9,%r10
  0.40%    0.45%  │  0x00007f3191222ab2: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.31%    0.31%  │  0x00007f3191222ab6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f31912231e5
  0.06%    0.05%  │  0x00007f3191222abb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f3191222ac2: jne    0x00007f3191222c99
  0.05%    0.04%  │  0x00007f3191222ac8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.42%    0.36%  │  0x00007f3191222acc: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.24%    0.26%  │  0x00007f3191222ad0: cmp    $0x40,%ecx
                  │  0x00007f3191222ad3: jg     0x00007f31912230a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.06%  │  0x00007f3191222ad9: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.70%    0.65%  │  0x00007f3191222adc: mov    %r8,%rbx
  0.04%    0.04%  │  0x00007f3191222adf: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.04%  │  0x00007f3191222ae2: test   %rbx,%rbx
                  │  0x00007f3191222ae5: jne    0x00007f31912230c5  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.39%    0.42%  │  0x00007f3191222aeb: cmp    $0x40,%ecx
                  │  0x00007f3191222aee: jge    0x00007f31912230f5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.28%    0.39%  │  0x00007f3191222af4: or     %rsi,%r8
  0.07%    0.06%  │  0x00007f3191222af7: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.01%  │  0x00007f3191222afb: add    $0x20,%r9
  0.39%    0.43%  │  0x00007f3191222aff: mov    %r10,%r11
  0.27%    0.32%  │  0x00007f3191222b02: shr    $0x3,%r11
  0.02%    0.07%  │  0x00007f3191222b06: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.05%  │  0x00007f3191222b09: mov    %r9,%r10
  0.38%    0.39%  │  0x00007f3191222b0c: add    $0x5,%eax
  0.27%    0.22%  │  0x00007f3191222b0f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.02%  │  0x00007f3191222b12: shr    $0x9,%r10
  0.02%    0.01%  │  0x00007f3191222b16: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.43%    0.35%  │  0x00007f3191222b1a: xor    %eax,%eax
  0.25%    0.34%  │  0x00007f3191222b1c: add    $0x70,%rsp
  0.05%    0.07%  │  0x00007f3191222b20: pop    %rbp
  0.01%    0.04%  │  0x00007f3191222b21: test   %eax,0x182314d9(%rip)        # 0x00007f31a9454000
                  │                                                ;   {poll_return}
  0.46%    0.48%  │  0x00007f3191222b27: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f3191222b28: mov    $0xffffffe4,%esi
                     0x00007f3191222b2d: vmovq  %xmm4,%rbp
                     0x00007f3191222b32: mov    %rdx,(%rsp)
                     0x00007f3191222b36: mov    %r14d,0x88(%rsp)
                     0x00007f3191222b3e: vmovsd %xmm5,0x8(%rsp)
                     0x00007f3191222b44: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.69%   36.18%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.89%   60.48%         C2, level 4  com.google.re2j.Machine::match, version 543 (1570 bytes) 
 37.69%   36.18%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 513 (839 bytes) 
  0.63%    0.67%         C2, level 4  com.google.re2j.Machine::match, version 543 (148 bytes) 
  0.29%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 557 (160 bytes) 
  0.23%    0.22%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.14%    0.10%         C2, level 4  com.google.re2j.RE2::match, version 557 (33 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 557 (185 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 557 (8 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.RE2::match, version 557 (33 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (65 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Machine::match, version 543 (127 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 557 (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.08%    0.05%         C2, level 4  java.util.Collections::shuffle, version 563 (64 bytes) 
  0.08%    0.02%              [vdso]  [unknown] (9 bytes) 
  0.07%    0.01%         C2, level 4  java.util.Collections::shuffle, version 563 (153 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 557 (62 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 557 (32 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.96%    1.93%  <...other 429 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.64%   61.15%         C2, level 4  com.google.re2j.Machine::match, version 543 
 37.69%   36.18%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 513 
  1.30%    1.13%   [kernel.kallsyms]  [unknown] 
  1.05%    0.43%         C2, level 4  com.google.re2j.RE2::match, version 557 
  0.21%    0.08%         C2, level 4  java.util.Collections::shuffle, version 563 
  0.14%    0.04%              [vdso]  [unknown] 
  0.08%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 597 
  0.08%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.01%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 562 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.02%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.09%        libc-2.26.so  vfprintf 
  0.02%    0.00%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.02%        libc-2.26.so  __strchr_avx2 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%           libjvm.so  _ZN6Thread10muxAcquireEPVlPKc 
  0.02%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.49%    0.38%  <...other 73 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 97.70%   97.85%         C2, level 4
  1.30%    1.13%   [kernel.kallsyms]
  0.45%    0.59%           libjvm.so
  0.19%    0.28%        libc-2.26.so
  0.14%    0.04%              [vdso]
  0.10%    0.04%  libpthread-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.03%    0.00%         interpreter
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  21286.727 ± 298.996  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
