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
# Warmup Iteration   1: 3816.038 ops/s
# Warmup Iteration   2: 9901.169 ops/s
# Warmup Iteration   3: 9974.474 ops/s
# Warmup Iteration   4: 9957.069 ops/s
# Warmup Iteration   5: 9942.959 ops/s
# Warmup Iteration   6: 9768.913 ops/s
# Warmup Iteration   7: 9963.816 ops/s
# Warmup Iteration   8: 9931.640 ops/s
# Warmup Iteration   9: 10017.365 ops/s
# Warmup Iteration  10: 9996.174 ops/s
# Warmup Iteration  11: 9603.162 ops/s
# Warmup Iteration  12: 10023.508 ops/s
# Warmup Iteration  13: 10037.539 ops/s
# Warmup Iteration  14: 10039.786 ops/s
# Warmup Iteration  15: 9510.326 ops/s
# Warmup Iteration  16: 10032.176 ops/s
# Warmup Iteration  17: 10009.502 ops/s
# Warmup Iteration  18: 9995.994 ops/s
# Warmup Iteration  19: 10021.019 ops/s
# Warmup Iteration  20: 10022.455 ops/s
Iteration   1: 10020.466 ops/s
Iteration   2: 9982.389 ops/s
Iteration   3: 10020.148 ops/s
Iteration   4: 10020.605 ops/s
Iteration   5: 10014.913 ops/s
Iteration   6: 10018.075 ops/s
Iteration   7: 9981.226 ops/s
Iteration   8: 10011.445 ops/s
Iteration   9: 10021.475 ops/s
Iteration  10: 10022.507 ops/s
Iteration  11: 10024.452 ops/s
Iteration  12: 10022.807 ops/s
Iteration  13: 9156.239 ops/s
Iteration  14: 10022.764 ops/s
Iteration  15: 10024.870 ops/s
Iteration  16: 9985.238 ops/s
Iteration  17: 9987.158 ops/s
Iteration  18: 9991.602 ops/s
Iteration  19: 9067.650 ops/s
Iteration  20: 9990.218 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9919.312 ±(99.9%) 240.494 ops/s [Average]
  (min, avg, max) = (9067.650, 9919.312, 10024.870), stdev = 276.954
  CI (99.9%): [9678.818, 10159.807] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 198399 total address lines.
Perf output processed (skipped 23.401 seconds):
 Column 1: cycles (20327 events)
 Column 2: instructions (20331 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 542 (1515 bytes) 

                                              0x00007fb9945bca28: lea    (%r12,%r13,8),%rax  ;*invokeinterface charAt
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                              0x00007fb9945bca2c: test   %r10d,%r10d
                                              0x00007fb9945bca2f: jl     0x00007fb9945bdf99  ;*iflt
                                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
  0.01%    0.00%                              0x00007fb9945bca35: vmovd  %r10d,%xmm0
                                              0x00007fb9945bca3a: mov    %rdx,0x50(%rsp)
  0.00%                                       0x00007fb9945bca3f: mov    %edi,0x34(%rsp)
  0.00%                                       0x00007fb9945bca43: mov    %ebx,0x4c(%rsp)
           0.00%                              0x00007fb9945bca47: mov    %r8d,0x48(%rsp)
                                              0x00007fb9945bca4c: mov    %r9d,0x3c(%rsp)
                                              0x00007fb9945bca51: mov    %r11,0x40(%rsp)
                                              0x00007fb9945bca56: mov    0xc(%rax),%r10d    ;*getfield value
                                                                                            ; - java.lang.String::charAt@6 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
  0.02%    0.03%                              0x00007fb9945bca5a: mov    %r10d,%r9d
                                              0x00007fb9945bca5d: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                                                                                            ; - java.lang.String::charAt@9 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                                                                            ; implicit exception: dispatches to 0x00007fb9945be9e1
                                              0x00007fb9945bca62: mov    %r10d,%edi
                                              0x00007fb9945bca65: vmovd  %xmm0,%r10d
  0.01%    0.00%                              0x00007fb9945bca6a: cmp    %edi,%r10d
                                              0x00007fb9945bca6d: jge    0x00007fb9945be151  ;*if_icmplt
                                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                              0x00007fb9945bca73: cmp    %edi,%r10d
                                              0x00007fb9945bca76: jae    0x00007fb9945bdbfd
                                              0x00007fb9945bca7c: mov    %r9d,%r10d
                                              0x00007fb9945bca7f: lea    (%r12,%r10,8),%r8
  0.01%    0.01%                              0x00007fb9945bca83: vmovd  %xmm0,%r10d
                                              0x00007fb9945bca88: movzwl 0x10(%r8,%r10,2),%r10d  ;*caload
                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                              0x00007fb9945bca8e: cmp    $0xd800,%r10d
                                              0x00007fb9945bca95: jge    0x00007fb9945be1a1  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                              0x00007fb9945bca9b: shl    $0x3,%r10d         ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
  0.00%    0.01%                              0x00007fb9945bca9f: mov    %r10d,%r11d
                                              0x00007fb9945bcaa2: and    $0x7,%r11d
                                              0x00007fb9945bcaa6: or     $0x1,%r10d
                                              0x00007fb9945bcaaa: mov    %r10d,%ebp
           0.01%                              0x00007fb9945bcaad: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@69 (line 214)
                                              0x00007fb9945bcab1: mov    %r11d,0x28(%rsp)
           0.00%                              0x00007fb9945bcab6: sar    $0x3,%r10d         ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@77 (line 215)
                                              0x00007fb9945bcaba: cmp    $0xfffffff8,%ebp
                                              0x00007fb9945bcabd: je     0x00007fb9945bdba8  ;*if_icmpeq
                                                                                            ; - com.google.re2j.Machine::match@97 (line 219)
           0.01%                              0x00007fb9945bcac3: vmovd  %xmm1,%r11d
                                              0x00007fb9945bcac8: add    0x28(%rsp),%r11d
           0.01%                              0x00007fb9945bcacd: add    0x70(%rsp),%r11d   ;*iadd
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
           0.00%                              0x00007fb9945bcad2: mov    %r11d,%ebx
                                              0x00007fb9945bcad5: cmp    0x74(%rsp),%r11d
                                              0x00007fb9945bcada: jge    0x00007fb9945bd490  ;*if_icmpge
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                                              0x00007fb9945bcae0: test   %r11d,%r11d
                                              0x00007fb9945bcae3: jl     0x00007fb9945be03d  ;*iflt
                                                                                            ; - java.lang.String::charAt@1 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
  0.00%                                       0x00007fb9945bcae9: cmp    %edi,%r11d
                                              0x00007fb9945bcaec: jge    0x00007fb9945be1f5  ;*if_icmplt
                                                                                            ; - java.lang.String::charAt@10 (line 657)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                                              0x00007fb9945bcaf2: cmp    %edi,%r11d
                                              0x00007fb9945bcaf5: jae    0x00007fb9945bdc49
           0.00%                              0x00007fb9945bcafb: movzwl 0x10(%r8,%r11,2),%r9d  ;*caload
                                                                                            ; - java.lang.String::charAt@27 (line 660)
                                                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
           0.00%                              0x00007fb9945bcb01: cmp    $0xd800,%r9d
                                              0x00007fb9945bcb08: jge    0x00007fb9945be261  ;*if_icmplt
                                                                                            ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                            ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                                              0x00007fb9945bcb0e: shl    $0x3,%r9d          ;*ishl
                                                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
                                              0x00007fb9945bcb12: mov    %r9d,%r8d
  0.01%    0.00%                              0x00007fb9945bcb15: and    $0x7,%r8d
                                              0x00007fb9945bcb19: or     $0x1,%r9d
           0.00%                              0x00007fb9945bcb1d: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@105 (line 220)
  0.00%                                       0x00007fb9945bcb21: mov    %r8d,0x30(%rsp)
  0.00%    0.01%                              0x00007fb9945bcb26: sar    $0x3,%r9d          ;*ishr
                                                                                            ; - com.google.re2j.Machine::match@113 (line 221)
                                              0x00007fb9945bcb2a: mov    %r9d,0x2c(%rsp)    ;*iand
                                                                                            ; - com.google.re2j.Machine::match@120 (line 222)
  0.00%                                       0x00007fb9945bcb2f: vmovd  %xmm1,%r11d
                                              0x00007fb9945bcb34: test   %r11d,%r11d
                                              0x00007fb9945bcb37: jne    0x00007fb9945bdfdd  ;*ifne
                                                                                            ; - com.google.re2j.Machine::match@124 (line 225)
  0.02%    0.00%                              0x00007fb9945bcb3d: test   %r10d,%r10d
                                              0x00007fb9945bcb40: jl     0x00007fb9945bd482  ;*ifge
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
                                              0x00007fb9945bcb46: mov    $0x5,%r8d          ;*iload_1
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
  0.00%    0.00%                              0x00007fb9945bcb4c: cmp    $0xa,%r10d
                                              0x00007fb9945bcb50: je     0x00007fb9945bd4a8  ;*iload_0
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
                                              0x00007fb9945bcb56: mov    %r10d,%r11d
                                              0x00007fb9945bcb59: add    $0xffffffbf,%r11d
                                              0x00007fb9945bcb5d: cmp    $0x1a,%r11d
                  ╭                           0x00007fb9945bcb61: jb     0x00007fb9945bcb74  ;*if_icmple
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 226)
                  │                           0x00007fb9945bcb63: mov    %r10d,%r9d
           0.00%  │                           0x00007fb9945bcb66: add    $0xffffff9f,%r9d
           0.00%  │                           0x00007fb9945bcb6a: cmp    $0x1a,%r9d
                  │                           0x00007fb9945bcb6e: jae    0x00007fb9945bd4b7  ;*iconst_1
                  │                                                                         ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                         ; - com.google.re2j.Machine::match@130 (line 226)
                  ↘                           0x00007fb9945bcb74: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
  0.00%                                       0x00007fb9945bcb78: mov    %r8d,0x38(%rsp)    ;*iload_2
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@130 (line 226)
  0.00%                                       0x00007fb9945bcb7d: mov    0x3c(%rsp),%r8d
                                              0x00007fb9945bcb82: test   %r8d,%r8d
                                              0x00007fb9945bcb85: jne    0x00007fb9945bdd2d  ;*aload
                                                                                            ; - com.google.re2j.Machine::match@145 (line 232)
                                              0x00007fb9945bcb8b: mov    0x4c(%rsp),%r11d
           0.00%                              0x00007fb9945bcb90: mov    0x8(%r12,%r11,8),%r11d  ;*invokevirtual add
                                                                                            ; - com.google.re2j.Machine::match@322 (line 264)
                                                                                            ; implicit exception: dispatches to 0x00007fb9945bdd2d
  0.00%                                       0x00007fb9945bcb95: mov    %r11d,0x14(%rsp)
  0.00%                                       0x00007fb9945bcb9a: mov    0x40(%rsp),%r11
                                              0x00007fb9945bcb9f: movzbl 0x11(%r11),%ebx    ;*getfield captures
                                                                                            ; - com.google.re2j.Machine::match@292 (line 261)
                                              0x00007fb9945bcba4: mov    0x4c(%rsp),%r8d
                                              0x00007fb9945bcba9: lea    (%r12,%r8,8),%r11
  0.01%    0.02%                              0x00007fb9945bcbad: mov    %r11,0x18(%rsp)
                                              0x00007fb9945bcbb2: mov    0x48(%rsp),%r11d
  0.00%    0.00%                              0x00007fb9945bcbb7: and    $0x4,%r11d         ;*iand
                                                                                            ; - com.google.re2j.Machine::match@156 (line 233)
                                              0x00007fb9945bcbbb: mov    %r11d,0x58(%rsp)
           0.00%                              0x00007fb9945bcbc0: mov    %rcx,%r11
                                              0x00007fb9945bcbc3: shl    $0x3,%r11          ;*getfield q1
                                                                                            ; - com.google.re2j.Machine::match@62 (line 213)
  0.00%                                       0x00007fb9945bcbc7: vmovd  %ebx,%xmm3
           0.00%                              0x00007fb9945bcbcb: mov    %r11,0x68(%rsp)
           0.01%                              0x00007fb9945bcbd0: xor    %r11d,%r11d
                                              0x00007fb9945bcbd3: mov    %r11d,0x78(%rsp)
  0.00%    0.01%                              0x00007fb9945bcbd8: xor    %eax,%eax
  0.00%            ╭                          0x00007fb9945bcbda: jmpq   0x00007fb9945bce1f
  0.06%            │              ↗           0x00007fb9945bcbdf: mov    0x18(%rsp),%rbp    ;*ifeq
                   │              │                                                         ; - com.google.re2j.Machine::match@295 (line 261)
  0.28%    0.10%   │              │           0x00007fb9945bcbe4: mov    %r14,%r8
  0.01%    0.02%   │              │           0x00007fb9945bcbe7: shl    $0x3,%r8           ;*getfield matchcap
                   │              │                                                         ; - com.google.re2j.Machine::match@311 (line 264)
           0.00%   │              │           0x00007fb9945bcbeb: mov    %rbp,%rsi
  0.02%    0.02%   │              │           0x00007fb9945bcbee: mov    0x20(%rsp),%rdx
  0.27%    0.06%   │              │           0x00007fb9945bcbf3: mov    0x5c(%rsp),%ecx
  0.06%    0.02%   │              │           0x00007fb9945bcbf7: mov    0x38(%rsp),%r9d
           0.00%   │              │           0x00007fb9945bcbfc: xor    %edi,%edi
  0.04%    0.00%   │              │           0x00007fb9945bcbfe: mov    0x40(%rsp),%r10
  0.35%    0.08%   │              │           0x00007fb9945bcc03: mov    %r10,(%rsp)
  0.05%    0.02%   │              │           0x00007fb9945bcc07: vmovss %xmm3,0x8(%rsp)
                   │              │           0x00007fb9945bcc0d: xchg   %ax,%ax
  0.02%    0.01%   │              │           0x00007fb9945bcc0f: callq  0x00007fb9943be020  ; OopMap{rbp=Oop [24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop off=692}
                   │              │                                                         ;*invokevirtual add
                   │              │                                                         ; - com.google.re2j.Machine::match@322 (line 264)
                   │              │                                                         ;   {optimized virtual_call}
  0.21%    0.22%   │              │           0x00007fb9945bcc14: mov    %rbp,0x70(%rsp)    ;*synchronization entry
                   │              │                                                         ; - com.google.re2j.Machine::match@-1 (line 201)
  0.09%    0.15%   │              │↗          0x00007fb9945bcc19: mov    0x60(%rsp),%ebx
  0.13%    0.15%   │              ││          0x00007fb9945bcc1d: test   %ebx,%ebx
                   │╭             ││          0x00007fb9945bcc1f: jl     0x00007fb9945bcf86  ;*ifge
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 266)
  0.23%    0.21%   ││             ││          0x00007fb9945bcc25: xor    %r8d,%r8d          ;*iload_0
                   ││             ││                                                        ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││             ││                                                        ; - com.google.re2j.Machine::match@330 (line 266)
  0.17%    0.23%   ││             ││↗         0x00007fb9945bcc28: cmp    $0xa,%ebx
                   ││╭            │││         0x00007fb9945bcc2b: je     0x00007fb9945bd000  ;*iload_1
                   │││            │││                                                       ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   │││            │││                                                       ; - com.google.re2j.Machine::match@330 (line 266)
  0.10%    0.10%   │││            │││     ↗   0x00007fb9945bcc31: mov    0x2c(%rsp),%r10d
  0.17%    0.13%   │││            │││     │   0x00007fb9945bcc36: test   %r10d,%r10d
                   │││╭           │││     │   0x00007fb9945bcc39: jl     0x00007fb9945bcf91  ;*iload_1
                   ││││           │││     │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   ││││           │││     │                                                 ; - com.google.re2j.Machine::match@330 (line 266)
  0.25%    0.17%   ││││           │││↗    │   0x00007fb9945bcc3f: cmp    $0xa,%r10d
                   ││││╭          ││││    │   0x00007fb9945bcc43: je     0x00007fb9945bd009  ;*iload_0
                   │││││          ││││    │                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││││          ││││    │                                                 ; - com.google.re2j.Machine::match@330 (line 266)
  0.19%    0.25%   │││││          ││││    │↗  0x00007fb9945bcc49: mov    0x60(%rsp),%r11d
  0.06%    0.09%   │││││          ││││    ││  0x00007fb9945bcc4e: add    $0xffffffbf,%r11d
  0.11%    0.16%   │││││          ││││    ││  0x00007fb9945bcc52: cmp    $0x1a,%r11d
                   │││││╭         ││││    ││  0x00007fb9945bcc56: jb     0x00007fb9945bcc6b  ;*if_icmple
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.22%    0.33%   ││││││         ││││    ││  0x00007fb9945bcc58: mov    0x60(%rsp),%r10d
  0.26%    0.23%   ││││││         ││││    ││  0x00007fb9945bcc5d: add    $0xffffff9f,%r10d
  0.08%    0.09%   ││││││         ││││    ││  0x00007fb9945bcc61: cmp    $0x1a,%r10d
                   ││││││         ││││    ││  0x00007fb9945bcc65: jae    0x00007fb9945bd2c5  ;*iconst_1
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││││         ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.11%    0.12%   │││││↘         ││││    ││  0x00007fb9945bcc6b: mov    $0x1,%ebp          ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.19%    0.18%   │││││          ││││    ││  0x00007fb9945bcc70: mov    0x2c(%rsp),%r11d
  0.16%    0.19%   │││││          ││││    ││  0x00007fb9945bcc75: add    $0xffffffbf,%r11d
  0.08%    0.13%   │││││          ││││    ││  0x00007fb9945bcc79: cmp    $0x1a,%r11d
                   │││││ ╭        ││││    ││  0x00007fb9945bcc7d: jb     0x00007fb9945bcc92  ;*if_icmple
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.14%    0.19%   │││││ │        ││││    ││  0x00007fb9945bcc7f: mov    0x2c(%rsp),%r10d
  0.27%    0.20%   │││││ │        ││││    ││  0x00007fb9945bcc84: add    $0xffffff9f,%r10d
  0.20%    0.21%   │││││ │        ││││    ││  0x00007fb9945bcc88: cmp    $0x1a,%r10d
                   │││││ │        ││││    ││  0x00007fb9945bcc8c: jae    0x00007fb9945bd2e8  ;*iconst_1
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││ │        ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.17%    0.18%   │││││ ↘        ││││    ││  0x00007fb9945bcc92: mov    $0x1,%r11d         ;*ireturn
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││││          ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.37%    0.35%   │││││          ││││    ││  0x00007fb9945bcc98: cmp    %r11d,%ebp
                   │││││  ╭       ││││    ││  0x00007fb9945bcc9b: jne    0x00007fb9945bcca8  ;*if_icmpeq
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.12%    0.16%   │││││  │       ││││    ││  0x00007fb9945bcc9d: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││││  │       ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.11%    0.19%   │││││  │       ││││    ││  0x00007fb9945bcca1: mov    %r8d,0x38(%rsp)
  0.13%    0.15%   │││││  │╭      ││││    ││  0x00007fb9945bcca6: jmp    0x00007fb9945bccb1
  0.20%    0.13%   │││││  ↘│      ││││    ││  0x00007fb9945bcca8: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.04%    0.02%   │││││   │      ││││    ││  0x00007fb9945bccac: mov    %r8d,0x38(%rsp)    ;*iload_2
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││││   │      ││││    ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.35%    0.28%   │││││   ↘      ││││    ││  0x00007fb9945bccb1: mov    0x50(%rsp),%r10
  0.21%    0.19%   │││││          ││││    ││  0x00007fb9945bccb6: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││          ││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││││          ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 267)
  0.55%    0.41%   │││││          ││││    ││  0x00007fb9945bccba: mov    0x5c(%rsp),%r8d
  0.15%    0.13%   │││││          ││││    ││  0x00007fb9945bccbf: cmp    %r11d,%r8d
                   │││││    ╭     ││││    ││  0x00007fb9945bccc2: je     0x00007fb9945bcf9a  ;*if_icmpne
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@355 (line 267)
  0.34%    0.31%   │││││    │     ││││    ││  0x00007fb9945bccc8: xor    %r11d,%r11d        ;*invokevirtual endPos
                   │││││    │     ││││    ││                                                ; - com.google.re2j.Machine::match@352 (line 267)
  0.19%    0.22%   │││││    │     ││││↗   ││  0x00007fb9945bcccb: mov    0x5c(%rsp),%r10d
  0.20%    0.16%   │││││    │     │││││   ││  0x00007fb9945bccd0: add    0x28(%rsp),%r10d   ;*iadd
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@344 (line 267)
  0.15%    0.08%   │││││    │     │││││   ││  0x00007fb9945bccd5: mov    %r10d,0x78(%rsp)
  0.27%    0.13%   │││││    │     │││││   ││  0x00007fb9945bccda: mov    0x40(%rsp),%rsi
  0.14%    0.14%   │││││    │     │││││   ││  0x00007fb9945bccdf: mov    0x20(%rsp),%rdx
  0.19%    0.22%   │││││    │     │││││   ││  0x00007fb9945bcce4: mov    0x68(%rsp),%rcx
  0.05%    0.05%   │││││    │     │││││   ││  0x00007fb9945bcce9: mov    %r10d,%r9d
  0.28%    0.17%   │││││    │     │││││   ││  0x00007fb9945bccec: mov    0x60(%rsp),%edi
  0.18%    0.13%   │││││    │     │││││   ││  0x00007fb9945bccf0: mov    0x38(%rsp),%r10d
  0.21%    0.21%   │││││    │     │││││   ││  0x00007fb9945bccf5: mov    %r10d,(%rsp)
  0.08%    0.08%   │││││    │     │││││   ││  0x00007fb9945bccf9: xor    %r10d,%r10d
  0.26%    0.17%   │││││    │     │││││   ││  0x00007fb9945bccfc: mov    %r10d,0x8(%rsp)
  0.11%    0.14%   │││││    │     │││││   ││  0x00007fb9945bcd01: mov    %r11d,0x10(%rsp)
  0.18%    0.18%   │││││    │     │││││   ││  0x00007fb9945bcd06: nop
  0.10%    0.06%   │││││    │     │││││   ││  0x00007fb9945bcd07: callq  0x00007fb9943be020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=940}
                   │││││    │     │││││   ││                                                ;*invokespecial step
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@363 (line 267)
                   │││││    │     │││││   ││                                                ;   {optimized virtual_call}
  0.29%    0.31%   │││││    │     │││││   ││  0x00007fb9945bcd0c: mov    0x40(%rsp),%r10
  0.34%    0.39%   │││││    │     │││││   ││  0x00007fb9945bcd11: movzbl 0x11(%r10),%ebx    ;*getfield captures
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@375 (line 271)
  0.02%    0.04%   │││││    │     │││││   ││  0x00007fb9945bcd16: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││││    │     │││││   ││                                                ; - com.google.re2j.Machine::match@382 (line 271)
  0.26%    0.35%   │││││    │     │││││   ││  0x00007fb9945bcd1b: mov    0x28(%rsp),%r10d
  0.31%    0.37%   │││││    │     │││││   ││  0x00007fb9945bcd20: test   %r10d,%r10d
                   │││││    │╭    │││││   ││  0x00007fb9945bcd23: je     0x00007fb9945bcfa5  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@368 (line 268)
  0.00%            │││││    ││    │││││   ││  0x00007fb9945bcd29: test   %ebx,%ebx
                   │││││    ││    │││││   ││  0x00007fb9945bcd2b: jne    0x00007fb9945bd645  ;*ifne
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@378 (line 271)
  0.02%    0.01%   │││││    ││    │││││   ││  0x00007fb9945bcd31: test   %eax,%eax
                   │││││    ││    │││││   ││  0x00007fb9945bcd33: jne    0x00007fb9945bd881  ;*ifeq
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@385 (line 271)
  0.28%    0.32%   │││││    ││    │││││   ││  0x00007fb9945bcd39: mov    0x50(%rsp),%r10
  0.31%    0.41%   │││││    ││    │││││   ││  0x00007fb9945bcd3e: mov    0x10(%r10),%r11d   ;*getfield end
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.03%    0.04%   │││││    ││    │││││   ││  0x00007fb9945bcd42: mov    0xc(%r10),%r8d     ;*getfield start
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.01%    0.00%   │││││    ││    │││││   ││  0x00007fb9945bcd46: mov    0x14(%r10),%r13d   ;*getfield str
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││││    ││    │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.28%    0.37%   │││││    ││    │││││   ││  0x00007fb9945bcd4a: mov    0x2c(%rsp),%r9d
  0.41%    0.36%   │││││    ││    │││││   ││  0x00007fb9945bcd4f: cmp    $0xffffffff,%r9d
                   │││││    ││╭   │││││   ││  0x00007fb9945bcd53: je     0x00007fb9945bcfe4  ;*if_icmpeq
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@407 (line 279)
           0.01%   │││││    │││   │││││   ││  0x00007fb9945bcd59: mov    0x30(%rsp),%ecx
  0.01%    0.01%   │││││    │││   │││││   ││  0x00007fb9945bcd5d: add    0x78(%rsp),%ecx
  0.30%    0.46%   │││││    │││   │││││   ││  0x00007fb9945bcd61: add    %r8d,%ecx          ;*iadd
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││││    │││   │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.31%    0.56%   │││││    │││   │││││   ││  0x00007fb9945bcd64: cmp    %r11d,%ecx
                   │││││    │││╭  │││││   ││  0x00007fb9945bcd67: jge    0x00007fb9945bcff3  ;*if_icmpge
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.01%    0.02%   │││││    ││││  │││││   ││  0x00007fb9945bcd6d: mov    0x8(%r12,%r13,8),%r9d  ; implicit exception: dispatches to 0x00007fb9945be921
  0.36%    0.47%   │││││    ││││  │││││   ││  0x00007fb9945bcd72: cmp    $0xf80002da,%r9d   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││││    ││││  │││││   ││  0x00007fb9945bcd79: jne    0x00007fb9945bd57d
  0.47%    0.42%   │││││    ││││  │││││   ││  0x00007fb9945bcd7f: lea    (%r12,%r13,8),%r10  ;*invokeinterface charAt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.15%    0.30%   │││││    ││││  │││││   ││  0x00007fb9945bcd83: test   %ecx,%ecx
                   │││││    ││││  │││││   ││  0x00007fb9945bcd85: jl     0x00007fb9945bd699  ;*iflt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@1 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.00%    0.01%   │││││    ││││  │││││   ││  0x00007fb9945bcd8b: mov    0xc(%r10),%r14d    ;*getfield value
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@6 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.02%    0.02%   │││││    ││││  │││││   ││  0x00007fb9945bcd8f: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
                   │││││    ││││  │││││   ││                                                ; implicit exception: dispatches to 0x00007fb9945be935
  2.42%    2.68%   │││││    ││││  │││││   ││  0x00007fb9945bcd94: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007fb9945bcd96: jge    0x00007fb9945bd8d5  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.62%    0.96%   │││││    ││││  │││││   ││  0x00007fb9945bcd9c: cmp    %ebp,%ecx
                   │││││    ││││  │││││   ││  0x00007fb9945bcd9e: jae    0x00007fb9945bd511
  0.13%    0.20%   │││││    ││││  │││││   ││  0x00007fb9945bcda4: lea    (%r12,%r14,8),%r9
                   │││││    ││││  │││││   ││  0x00007fb9945bcda8: movzwl 0x10(%r9,%rcx,2),%r9d  ;*caload
                   │││││    ││││  │││││   ││                                                ; - java.lang.String::charAt@27 (line 660)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.05%    0.06%   │││││    ││││  │││││   ││  0x00007fb9945bcdae: cmp    $0xd800,%r9d
                   │││││    ││││  │││││   ││  0x00007fb9945bcdb5: jge    0x00007fb9945bd941  ;*if_icmplt
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││││    ││││  │││││   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.61%    0.82%   │││││    ││││  │││││   ││  0x00007fb9945bcdbb: shl    $0x3,%r9d          ;*ishl
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@415 (line 280)
  0.26%    0.37%   │││││    ││││  │││││   ││  0x00007fb9945bcdbf: mov    %r9d,%ecx
                   │││││    ││││  │││││   ││  0x00007fb9945bcdc2: or     $0x1,%ecx
  0.49%    0.64%   │││││    ││││  │││││   ││  0x00007fb9945bcdc5: and    $0x7,%r9d
  0.18%    0.23%   │││││    ││││  │││││   ││  0x00007fb9945bcdc9: sar    $0x3,%ecx          ;*ishr
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@423 (line 281)
  0.40%    0.55%   │││││    ││││  │││││   ││  0x00007fb9945bcdcc: or     $0x1,%r9d          ; OopMap{r13=NarrowOop [24]=Oop [32]=Oop [64]=Oop [76]=NarrowOop [80]=Oop [104]=Oop [112]=Oop off=1136}
                   │││││    ││││  │││││   ││                                                ;*goto
                   │││││    ││││  │││││   ││                                                ; - com.google.re2j.Machine::match@445 (line 287)
  0.05%    0.06%   │││││    ││││  │││││ ↗↗││  0x00007fb9945bcdd0: test   %eax,0x15e4922a(%rip)        # 0x00007fb9aa406000
                   │││││    ││││  │││││ ││││                                                ;*goto
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@445 (line 287)
                   │││││    ││││  │││││ ││││                                                ;   {poll}
  0.03%    0.02%   │││││    ││││  │││││ ││││  0x00007fb9945bcdd6: mov    0x40(%rsp),%r10
  0.14%    0.19%   │││││    ││││  │││││ ││││  0x00007fb9945bcddb: mov    0x28(%r10),%r14d   ;*getfield matchcap
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@311 (line 264)
  0.43%    0.59%   │││││    ││││  │││││ ││││  0x00007fb9945bcddf: mov    0x14(%r10),%esi    ;*getfield re2
                   │││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@178 (line 241)
  0.04%    0.09%   │││││    ││││  │││││ ││││  0x00007fb9945bcde3: mov    0x68(%rsp),%r10
  0.00%    0.00%   │││││    ││││  │││││ ││││  0x00007fb9945bcde8: shr    $0x3,%r10
  0.15%    0.21%   │││││    ││││  │││││ ││││  0x00007fb9945bcdec: mov    %r10d,0x34(%rsp)
  0.43%    0.60%   │││││    ││││  │││││ ││││  0x00007fb9945bcdf1: mov    0x2c(%rsp),%r10d
  0.05%    0.07%   │││││    ││││  │││││ ││││  0x00007fb9945bcdf6: vmovd  %ebx,%xmm3
  0.01%            │││││    ││││  │││││ ││││  0x00007fb9945bcdfa: mov    0x20(%rsp),%rbx
  0.16%    0.18%   │││││    ││││  │││││ ││││  0x00007fb9945bcdff: mov    %rbx,0x68(%rsp)
  0.57%    0.59%   │││││    ││││  │││││ ││││  0x00007fb9945bce04: mov    0x30(%rsp),%ebx
  0.06%    0.08%   │││││    ││││  │││││ ││││  0x00007fb9945bce08: mov    %ebx,0x28(%rsp)
  0.02%    0.01%   │││││    ││││  │││││ ││││  0x00007fb9945bce0c: mov    %r9d,0x30(%rsp)
  0.17%    0.20%   │││││    ││││  │││││ ││││  0x00007fb9945bce11: mov    %ecx,0x2c(%rsp)
  0.40%    0.48%   │││││    ││││  │││││ ││││  0x00007fb9945bce15: mov    %r8d,0x70(%rsp)
  0.07%    0.07%   │││││    ││││  │││││ ││││  0x00007fb9945bce1a: mov    %r11d,0x74(%rsp)
  0.02%    0.01%   ↘││││    ││││  │││││ ││││  0x00007fb9945bce1f: mov    0x34(%rsp),%r8d
  0.15%    0.13%    ││││    ││││  │││││ ││││  0x00007fb9945bce24: movzbl 0x18(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007fb9945be912
  0.53%    0.69%    ││││    ││││  │││││ ││││  0x00007fb9945bce2a: lea    (%r12,%r8,8),%r11  ;*aload
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@145 (line 232)
  0.05%    0.05%    ││││    ││││  │││││ ││││  0x00007fb9945bce2e: mov    %r11,0x20(%rsp)
           0.01%    ││││    ││││  │││││ ││││  0x00007fb9945bce33: test   %r9d,%r9d
                    ││││    ││││╭ │││││ ││││  0x00007fb9945bce36: je     0x00007fb9945bce84  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@150 (line 232)
  0.04%    0.03%    ││││    │││││ │││││ ││││  0x00007fb9945bce38: mov    0x58(%rsp),%r8d
  0.28%    0.28%    ││││    │││││ │││││ ││││  0x00007fb9945bce3d: test   %r8d,%r8d
           0.01%    ││││    │││││ │││││ ││││  0x00007fb9945bce40: jne    0x00007fb9945bda61  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@157 (line 233)
                    ││││    │││││ │││││ ││││  0x00007fb9945bce46: test   %eax,%eax
                    ││││    │││││ │││││ ││││  0x00007fb9945bce48: jne    0x00007fb9945bdabd  ;*ifeq
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@171 (line 237)
  0.05%    0.01%    ││││    │││││ │││││ ││││  0x00007fb9945bce4e: mov    0x24(%r12,%rsi,8),%r11d  ;*getfield prefix
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@181 (line 241)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007fb9945be959
  0.26%    0.27%    ││││    │││││ │││││ ││││  0x00007fb9945bce53: mov    %r11d,%r9d
  0.01%    0.00%    ││││    │││││ │││││ ││││  0x00007fb9945bce56: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 241)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007fb9945be969
  0.01%             ││││    │││││ │││││ ││││  0x00007fb9945bce5b: vmovd  %r11d,%xmm1
  0.05%    0.02%    ││││    │││││ │││││ ││││  0x00007fb9945bce60: mov    0xc(%r12,%r11,8),%r11d  ;*arraylength
                    ││││    │││││ │││││ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 241)
                    ││││    │││││ │││││ ││││                                                ; implicit exception: dispatches to 0x00007fb9945be979
  0.20%    0.25%    ││││    │││││ │││││ ││││  0x00007fb9945bce65: mov    %r11d,0x5c(%rsp)
  0.06%    0.02%    ││││    │││││ │││││ ││││  0x00007fb9945bce6a: test   %r11d,%r11d
                    ││││    │││││ │││││ ││││  0x00007fb9945bce6d: jne    0x00007fb9945bd0c9  ;*ifne
                    ││││    │││││ │││││ ││││                                                ; - com.google.re2j.Machine::match@187 (line 241)
                    ││││    │││││ │││││ ││││  0x00007fb9945bce73: mov    %r10d,0x60(%rsp)
  0.02%    0.01%    ││││    │││││ │││││ ││││  0x00007fb9945bce78: mov    0x78(%rsp),%r11d
  0.29%    0.16%    ││││    │││││ │││││ ││││  0x00007fb9945bce7d: mov    %r11d,0x5c(%rsp)
  0.03%    0.02%    ││││    │││││╭│││││ ││││  0x00007fb9945bce82: jmp    0x00007fb9945bce93
  0.16%    0.17%    ││││    ││││↘││││││ ││││  0x00007fb9945bce84: mov    %r10d,0x60(%rsp)
  0.21%    0.25%    ││││    ││││ ││││││ ││││  0x00007fb9945bce89: mov    0x78(%rsp),%r10d
  0.06%    0.01%    ││││    ││││ ││││││ ││││  0x00007fb9945bce8e: mov    %r10d,0x5c(%rsp)   ;*iload_3
                    ││││    ││││ ││││││ ││││                                                ; - com.google.re2j.Machine::match@276 (line 258)
  0.01%    0.00%    ││││    ││││ ↘│││││ ││││  0x00007fb9945bce93: test   %eax,%eax
                    ││││    ││││  │││││ ││││  0x00007fb9945bce95: jne    0x00007fb9945bd5e5  ;*ifne
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@288 (line 258)
  0.21%    0.12%    ││││    ││││  │││││ ││││  0x00007fb9945bce9b: vmovd  %xmm3,%r10d
  0.45%    0.30%    ││││    ││││  │││││ ││││  0x00007fb9945bcea0: test   %r10d,%r10d
                    ││││    ││││  │││││ ││││  0x00007fb9945bcea3: jne    0x00007fb9945bd76d  ;*ifeq
                    ││││    ││││  │││││ ││││                                                ; - com.google.re2j.Machine::match@295 (line 261)
  0.08%    0.08%    ││││    ││││  │││││ ││││  0x00007fb9945bcea9: mov    0x14(%rsp),%r11d
  0.00%    0.01%    ││││    ││││  │││││ ││││  0x00007fb9945bceae: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││││    ││││  ╰││││ ││││  0x00007fb9945bceb5: je     0x00007fb9945bcbdf
  0.07%    0.11%    ││││    ││││   ││││ ││││  0x00007fb9945bcebb: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││││    ││││   ││││ ││││  0x00007fb9945bcec2: jne    0x00007fb9945bd7cd
  0.16%    0.17%    ││││    ││││   ││││ ││││  0x00007fb9945bcec8: mov    0x18(%rsp),%r10    ;*invokevirtual add
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.05%    0.05%    ││││    ││││   ││││ ││││  0x00007fb9945bcecd: mov    %r10,0x70(%rsp)
                    ││││    ││││   ││││ ││││  0x00007fb9945bced2: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.15%    0.13%    ││││    ││││   ││││ ││││  0x00007fb9945bced6: cmp    $0x40,%ecx
                    ││││    ││││   ││││ ││││  0x00007fb9945bced9: jge    0x00007fb9945bd9a5  ;*if_icmpge
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.15%    0.17%    ││││    ││││   ││││ ││││  0x00007fb9945bcedf: mov    $0x1,%r10d
  0.02%    0.08%    ││││    ││││   ││││ ││││  0x00007fb9945bcee5: shl    %cl,%r10           ;*lshl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.22%    0.23%    ││││    ││││   ││││ ││││  0x00007fb9945bcee8: mov    0x34(%rsp),%r11d
  0.02%    0.03%    ││││    ││││   ││││ ││││  0x00007fb9945bceed: mov    0x10(%r12,%r11,8),%r11  ;*getfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.03%    0.03%    ││││    ││││   ││││ ││││  0x00007fb9945bcef2: mov    %r10,%r8
  0.13%    0.08%    ││││    ││││   ││││ ││││  0x00007fb9945bcef5: and    %r11,%r8           ;*land
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.13%    0.12%    ││││    ││││   ││││ ││││  0x00007fb9945bcef8: test   %r8,%r8
                    ││││    ││││   ││││ ││││  0x00007fb9945bcefb: jne    0x00007fb9945bd478  ;*ifne
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.06%    0.05%    ││││    ││││   ││││ ││││  0x00007fb9945bcf01: mov    0x34(%rsp),%ecx
                    ││││    ││││   ││││ ││││  0x00007fb9945bcf05: mov    %r12b,0x18(%r12,%rcx,8)  ;*putfield empty
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.13%    0.07%    ││││    ││││   ││││ ││││  0x00007fb9945bcf0a: or     %r11,%r10
  0.12%    0.10%    ││││    ││││   ││││ ││││  0x00007fb9945bcf0d: mov    %r10,0x10(%r12,%rcx,8)  ;*putfield pcsl
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.03%    0.02%    ││││    ││││   ││││ ││││  0x00007fb9945bcf12: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.00%             ││││    ││││   ││││ ││││  0x00007fb9945bcf14: test   %r8,%r8
                    ││││    ││││   ││││ ││││  0x00007fb9945bcf17: jne    0x00007fb9945bda01  ;*ifeq
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.08%    0.09%    ││││    ││││   ││││ ││││  0x00007fb9945bcf1d: mov    0x34(%rsp),%r11d
  0.13%    0.06%    ││││    ││││   ││││ ││││  0x00007fb9945bcf22: mov    0xc(%r12,%r11,8),%r8d  ;*getfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.04%    0.04%    ││││    ││││   ││││ ││││  0x00007fb9945bcf27: mov    0x20(%r12,%r11,8),%ebp  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.03%    0.02%    ││││    ││││   ││││ ││││  0x00007fb9945bcf2c: mov    %r8d,%r10d
  0.07%    0.06%    ││││    ││││   ││││ ││││  0x00007fb9945bcf2f: inc    %r10d
  0.14%    0.11%    ││││    ││││   ││││ ││││  0x00007fb9945bcf32: mov    %r10d,0xc(%r12,%r11,8)  ;*putfield size
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.07%    0.04%    ││││    ││││   ││││ ││││  0x00007fb9945bcf37: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb9945be945
  0.18%    0.13%    ││││    ││││   ││││ ││││  0x00007fb9945bcf3c: cmp    %r10d,%r8d
                    ││││    ││││   ││││ ││││  0x00007fb9945bcf3f: jae    0x00007fb9945bd701
  0.21%    0.19%    ││││    ││││   ││││ ││││  0x00007fb9945bcf45: mov    0x8(%r12,%rbp,8),%r10d
  0.07%    0.10%    ││││    ││││   ││││ ││││  0x00007fb9945bcf4a: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││││    ││││   ││││ ││││  0x00007fb9945bcf51: jne    0x00007fb9945bd815
  0.05%    0.04%    ││││    ││││   ││││ ││││  0x00007fb9945bcf57: mov    0x70(%rsp),%r10
                    ││││    ││││   ││││ ││││  0x00007fb9945bcf5c: shr    $0x3,%r10          ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.15%    0.12%    ││││    ││││   ││││ ││││  0x00007fb9945bcf60: lea    (%r12,%rbp,8),%r11  ;*getfield denseThreadsInstructions
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.09%    0.13%    ││││    ││││   ││││ ││││  0x00007fb9945bcf64: lea    0x10(%r11,%r8,4),%r11
  0.02%    0.02%    ││││    ││││   ││││ ││││  0x00007fb9945bcf69: mov    %r10d,(%r11)
  0.55%    0.56%    ││││    ││││   ││││ ││││  0x00007fb9945bcf6c: mov    %r11,%r10
  0.02%    0.03%    ││││    ││││   ││││ ││││  0x00007fb9945bcf6f: shr    $0x9,%r10
  0.05%    0.04%    ││││    ││││   ││││ ││││  0x00007fb9945bcf73: movabs $0x7fb98fda6000,%r11
  0.03%    0.03%    ││││    ││││   ││││ ││││  0x00007fb9945bcf7d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                    ││││    ││││   ││││ ││││                                                ; - com.google.re2j.Machine::match@322 (line 264)
  0.29%    0.39%    ││││    ││││   ╰│││ ││││  0x00007fb9945bcf81: jmpq   0x00007fb9945bcc19
                    ↘│││    ││││    │││ ││││  0x00007fb9945bcf86: mov    $0x5,%r8d
                     │││    ││││    ╰││ ││││  0x00007fb9945bcf8c: jmpq   0x00007fb9945bcc28
  0.00%    0.01%     │↘│    ││││     ││ ││││  0x00007fb9945bcf91: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │ │    ││││     ││ ││││                                                ; - com.google.re2j.Machine::match@330 (line 266)
           0.00%     │ │    ││││     ╰│ ││││  0x00007fb9945bcf95: jmpq   0x00007fb9945bcc3f
  0.00%              │ │    ↘│││      │ ││││  0x00007fb9945bcf9a: mov    $0x1,%r11d
                     │ │     │││      ╰ ││││  0x00007fb9945bcfa0: jmpq   0x00007fb9945bcccb
  0.00%    0.00%     │ │     ↘││        ││││  0x00007fb9945bcfa5: test   %ebx,%ebx
                     │ │      ││        ││││  0x00007fb9945bcfa7: jne    0x00007fb9945bd433  ;*getfield matched
                     │ │      ││        ││││                                                ; - com.google.re2j.Machine::match@455 (line 289)
  0.02%    0.01%     │ │      ││        ││││  0x00007fb9945bcfad: mov    0x68(%rsp),%r10
  0.00%    0.00%     │ │      ││        ││││  0x00007fb9945bcfb2: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007fb9945be9f1
  0.01%    0.01%     │ │      ││        ││││  0x00007fb9945bcfb7: test   %r11d,%r11d
                     │ │      ││       ╭││││  0x00007fb9945bcfba: jne    0x00007fb9945bcfd5  ;*ifeq
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 88)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                     │ │      ││       │││││  0x00007fb9945bcfbc: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 90)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                     │ │      ││       │││││  0x00007fb9945bcfc1: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@24 (line 92)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                     │ │      ││       │││││  0x00007fb9945bcfc5: mov    %r12d,0xc(%r10)    ;*putfield size
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 89)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                     │ │      ││       │││││  0x00007fb9945bcfc9: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine$Queue::clear@20 (line 91)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 175)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 165)
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@451 (line 288)
                     │ │      ││       │││││  0x00007fb9945bcfcd: test   %ebp,%ebp
                     │ │      ││       │││││  0x00007fb9945bcfcf: jne    0x00007fb9945be2c5  ;*if_icmpne
                     │ │      ││       │││││                                                ; - com.google.re2j.Machine::match@12 (line 202)
  0.01%              │ │      ││       ↘││││  0x00007fb9945bcfd5: add    $0x90,%rsp
                     │ │      ││        ││││  0x00007fb9945bcfdc: pop    %rbp
  0.01%              │ │      ││        ││││  0x00007fb9945bcfdd: test   %eax,0x15e4901d(%rip)        # 0x00007fb9aa406000
                     │ │      ││        ││││                                                ;   {poll_return}
           0.00%     │ │      ││        ││││  0x00007fb9945bcfe3: retq   
           0.01%     │ │      ↘│        ││││  0x00007fb9945bcfe4: mov    0x30(%rsp),%r9d
  0.01%    0.01%     │ │       │        ││││  0x00007fb9945bcfe9: mov    $0xffffffff,%ecx
                     │ │       │        ╰│││  0x00007fb9945bcfee: jmpq   0x00007fb9945bcdd0
  0.02%    0.06%     │ │       ↘         │││  0x00007fb9945bcff3: mov    $0xffffffff,%ecx
  0.01%    0.01%     │ │                 │││  0x00007fb9945bcff8: xor    %r9d,%r9d
                     │ │                 ╰││  0x00007fb9945bcffb: jmpq   0x00007fb9945bcdd0
                     ↘ │                  ││  0x00007fb9945bd000: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                       │                  ││                                                ; - com.google.re2j.Machine::match@330 (line 266)
  0.00%                │                  ╰│  0x00007fb9945bd004: jmpq   0x00007fb9945bcc31
           0.01%       ↘                   │  0x00007fb9945bd009: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                           │                                                ; - com.google.re2j.Machine::match@330 (line 266)
           0.01%                           ╰  0x00007fb9945bd00d: jmpq   0x00007fb9945bcc49
                                              0x00007fb9945bd012: data16 nopw 0x0(%rax,%rax,1)
                                              0x00007fb9945bd01c: data16 data16 xchg %ax,%ax
           0.00%                              0x00007fb9945bd020: mov    %r10d,%r11d
                                              0x00007fb9945bd023: jmpq   0x00007fb9945bd224
                                              0x00007fb9945bd028: add    $0x2,%r11d
                                              0x00007fb9945bd02c: mov    %r11d,%r10d
                                              0x00007fb9945bd02f: inc    %r10d
                                              0x00007fb9945bd032: jmp    0x00007fb9945bd044
                                              0x00007fb9945bd034: mov    %r11d,%r10d
                                              0x00007fb9945bd037: add    $0x2,%r10d
                                              0x00007fb9945bd03b: jmp    0x00007fb9945bd041
                                              0x00007fb9945bd03d: add    $0x2,%r11d
                                              0x00007fb9945bd041: inc    %r11d              ;*iinc
....................................................................................................
 29.42%   31.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (309 bytes) 

                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                    ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                    ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                    ; - com.google.re2j.Machine::step@214 (line 338)
                                                                    ;   {optimized virtual_call}
                      0x00007fb994597ec8: test   %rax,%rax
                      0x00007fb994597ecb: jne    0x00007fb994598d65  ;*ifnull
                                                                    ; - com.google.re2j.Machine::step@221 (line 341)
                      0x00007fb994597ed1: mov    0x30(%rsp),%r10
                  ╭   0x00007fb994597ed6: jmp    0x00007fb994597f4d
  0.14%    0.16%  │   0x00007fb994597ed8: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   0x00007fb994597ede: jne    0x00007fb9945988b1  ;*invokevirtual add
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.06%    0.07%  │   0x00007fb994597ee4: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%  │   0x00007fb994597ee8: cmp    $0x40,%ecx
                  │   0x00007fb994597eeb: jge    0x00007fb994598c81  ;*if_icmpge
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.11%    0.10%  │   0x00007fb994597ef1: mov    $0x1,%ebx
  0.16%    0.16%  │   0x00007fb994597ef6: shl    %cl,%rbx           ;*lshl
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.10%    0.14%  │   0x00007fb994597ef9: mov    %rbx,%rcx
  0.16%    0.17%  │   0x00007fb994597efc: and    %r9,%rcx           ;*land
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.08%    0.07%  │   0x00007fb994597eff: test   %rcx,%rcx
                  │   0x00007fb994597f02: jne    0x00007fb99459812e  ;*ifne
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.00%  │   0x00007fb994597f08: mov    0x30(%rsp),%r10
  0.06%    0.09%  │   0x00007fb994597f0d: mov    %r12b,0x18(%r10)   ;*putfield empty
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.23%    0.23%  │   0x00007fb994597f11: or     %r9,%rbx
  0.07%    0.06%  │   0x00007fb994597f14: mov    %rbx,0x10(%r10)    ;*putfield pcsl
                  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.05%    0.06%  │   0x00007fb994597f18: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.06%  │   0x00007fb994597f1a: test   %rcx,%rcx
                  │   0x00007fb994597f1d: jne    0x00007fb994598cf1  ;*ifeq
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.15%    0.17%  │   0x00007fb994597f23: add    $0x18,%r11
  0.05%    0.07%  │   0x00007fb994597f27: shr    $0x3,%r8
  0.03%    0.05%  │   0x00007fb994597f2b: mov    %r8d,(%r11)        ;*aastore
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.05%  │   0x00007fb994597f2e: mov    0xc(%rsp),%r9d
  0.18%    0.23%  │   0x00007fb994597f33: add    $0x3,%r9d
  0.05%    0.06%  │   0x00007fb994597f37: mov    %r9d,0xc(%r10)     ;*putfield size
                  │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                 ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                  │                                                 ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.04%  │   0x00007fb994597f3b: shr    $0x9,%r11
  0.03%    0.03%  │   0x00007fb994597f3f: movabs $0x7fb98fda6000,%r8
  0.11%    0.18%  │   0x00007fb994597f49: mov    %r12b,(%r8,%r11,1)  ;*synchronization entry
                  │                                                 ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                  │                                                 ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.10%  ↘   0x00007fb994597f4d: mov    0x28(%rsp),%r14
  0.03%    0.02%      0x00007fb994597f52: mov    0xac(%rsp),%eax
  0.03%    0.03%      0x00007fb994597f59: mov    0x48(%rsp),%r13
  0.21%    0.08%      0x00007fb994597f5e: mov    0xa4(%rsp),%r11d   ;*synchronization entry
                                                                    ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.07%      0x00007fb994597f66: mov    0xa8(%rsp),%r8d
  0.04%    0.08%      0x00007fb994597f6e: mov    0xb0(%rsp),%ecx    ;*aload
                                                                    ; - com.google.re2j.Machine::step@219 (line 341)
  0.27%    0.26%      0x00007fb994597f75: inc    %r11d              ;*iinc
                                                                    ; - com.google.re2j.Machine::step@230 (line 307)
  1.43%    1.37%      0x00007fb994597f78: cmp    %eax,%r11d
                      0x00007fb994597f7b: jge    0x00007fb994598059
  0.25%    0.33%      0x00007fb994597f81: mov    %r8d,0xa8(%rsp)
  0.81%    0.95%      0x00007fb994597f89: mov    %ecx,0xb0(%rsp)    ;*iload
                                                                    ; - com.google.re2j.Machine::step@43 (line 310)
  0.17%    0.25%      0x00007fb994597f90: mov    0x10(%r13,%r11,4),%r9d  ;*aaload
                                                                    ; - com.google.re2j.Machine::step@99 (line 320)
  1.41%    1.61%      0x00007fb994597f95: mov    0xc(%r12,%r9,8),%r8d  ;*getfield op
                                                                    ; - com.google.re2j.Machine::step@104 (line 322)
                                                                    ; implicit exception: dispatches to 0x00007fb994598dd1
  1.77%    2.10%      0x00007fb994597f9a: cmp    $0x6,%r8d
                      0x00007fb994597f9e: je     0x00007fb9945980c0  ;*if_icmpne
                                                                    ; - com.google.re2j.Machine::step@109 (line 322)
  2.11%    2.22%      0x00007fb994597fa4: cmp    $0xa,%r8d
                      0x00007fb994597fa8: je     0x00007fb994597b7b  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  0.36%    0.40%      0x00007fb994597fae: cmp    $0xb,%r8d
                      0x00007fb994597fb2: je     0x00007fb99459814e  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  1.91%    1.93%      0x00007fb994597fb8: mov    0x1c(%r12,%r9,8),%ecx  ;*getfield f0
                                                                    ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  0.18%    0.21%      0x00007fb994597fbd: cmp    $0x9,%r8d
                   ╭  0x00007fb994597fc1: jne    0x00007fb994597fd5  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 337)
  0.27%    0.24%   │  0x00007fb994597fc3: cmp    0x18(%rsp),%ecx
                   │  0x00007fb994597fc7: je     0x00007fb994598096  ;*if_icmpne
                   │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                   │                                                ; - com.google.re2j.Machine::step@191 (line 337)
  0.04%    0.01%   │  0x00007fb994597fcd: xor    %r8d,%r8d
  0.38%    0.14%   │  0x00007fb994597fd0: jmpq   0x00007fb994597ad3
  0.82%    0.96%   ↘  0x00007fb994597fd5: cmp    $0xc,%r8d
                      0x00007fb994597fd9: jne    0x00007fb99459817d  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  1.11%    1.06%      0x00007fb994597fdf: cmp    0x18(%rsp),%ecx
                      0x00007fb994597fe3: je     0x00007fb99459808b  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  1.20%    1.15%      0x00007fb994597fe9: mov    0x20(%r12,%r9,8),%r8d  ;*getfield f1
                                                                    ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  0.19%    0.17%      0x00007fb994597fee: cmp    0x18(%rsp),%r8d
                      0x00007fb994597ff3: je     0x00007fb99459808b  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  1.49%    1.35%      0x00007fb994597ff9: mov    0x24(%r12,%r9,8),%ebp  ;*getfield f2
                                                                    ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  0.31%    0.28%      0x00007fb994597ffe: cmp    0x18(%rsp),%ebp
                      0x00007fb994598002: je     0x00007fb9945981ad  ;*if_icmpeq
                                                                    ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  1.72%    1.85%      0x00007fb994598008: mov    0x28(%r12,%r9,8),%ebp  ;*getfield f3
                                                                    ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
  0.19%    0.11%      0x00007fb99459800d: cmp    0x18(%rsp),%ebp
                      0x00007fb994598011: jne    0x00007fb994597ad0  ;*if_icmpne
                                                                    ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                    ; - com.google.re2j.Machine::step@191 (line 337)
                      0x00007fb994598017: mov    $0xffffff65,%esi
                      0x00007fb99459801c: mov    %r11d,0xa4(%rsp)
                      0x00007fb994598024: mov    %r9d,0xac(%rsp)
                      0x00007fb99459802c: mov    %r14,0x28(%rsp)
                      0x00007fb994598031: mov    %r10,0x30(%rsp)
....................................................................................................
 20.82%   21.60%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 516 (849 bytes) 

                         # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                         # parm6:    [sp+0x88]   = boolean
                         0x00007fb99459d1a0: mov    0x8(%rsi),%r10d
                         0x00007fb99459d1a4: shl    $0x3,%r10
                         0x00007fb99459d1a8: cmp    %r10,%rax
                         0x00007fb99459d1ab: jne    0x00007fb9943bde20  ;   {runtime_call}
                         0x00007fb99459d1b1: data16 xchg %ax,%ax
                         0x00007fb99459d1b4: nopl   0x0(%rax,%rax,1)
                         0x00007fb99459d1bc: data16 data16 xchg %ax,%ax
                       [Verified Entry Point]
  0.33%    0.26%         0x00007fb99459d1c0: mov    %eax,-0x14000(%rsp)
  0.06%    0.02%         0x00007fb99459d1c7: push   %rbp
  0.35%    0.21%         0x00007fb99459d1c8: sub    $0x70,%rsp         ;*synchronization entry
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 256)
  0.03%    0.03%         0x00007fb99459d1cc: vmovd  %r9d,%xmm5
  0.02%    0.05%         0x00007fb99459d1d1: vmovq  %r8,%xmm4
  0.25%    0.15%         0x00007fb99459d1d6: vmovq  %rsi,%xmm3
  0.04%    0.02%         0x00007fb99459d1db: mov    %ecx,%r13d
  0.00%                  0x00007fb99459d1de: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 256)
  0.05%    0.06%         0x00007fb99459d1e1: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                       ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
                                                                       ; implicit exception: dispatches to 0x00007fb99459d9a5
  0.29%    0.16%         0x00007fb99459d1e5: cmp    $0x40,%ecx
                         0x00007fb99459d1e8: jge    0x00007fb99459d6fd  ;*if_icmpge
                                                                       ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.04%    0.03%         0x00007fb99459d1ee: mov    $0x1,%eax
  0.00%                  0x00007fb99459d1f3: mov    $0x1,%r10d
  0.03%    0.03%         0x00007fb99459d1f9: shl    %cl,%r10           ;*lshl
                                                                       ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.35%    0.29%         0x00007fb99459d1fc: mov    %r10,%r8
  0.05%    0.08%         0x00007fb99459d1ff: and    %r11,%r8           ;*land
                                                                       ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.32%    0.26%         0x00007fb99459d202: test   %r8,%r8
                  ╭      0x00007fb99459d205: jne    0x00007fb99459d512  ;*ifne
                  │                                                    ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.04%    0.03%  │      0x00007fb99459d20b: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                    ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
                  │      0x00007fb99459d20f: or     %r11,%r10          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.06%    0.06%  │      0x00007fb99459d212: mov    %r10,0x10(%rdx)    ;*putfield pcsl
                  │                                                    ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 256)
  0.33%    0.22%  │      0x00007fb99459d216: xor    %ebp,%ebp          ;*getfield pcsl
                  │                                                    ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                    ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.04%    0.03%  │  ↗   0x00007fb99459d218: test   %r8,%r8
                  │  │   0x00007fb99459d21b: jne    0x00007fb99459d731  ;*ifeq
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 256)
                  │  │   0x00007fb99459d221: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@15 (line 260)
  0.07%    0.06%  │  │   0x00007fb99459d224: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fb99459d9b9
  0.34%    0.24%  │  │   0x00007fb99459d229: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  │   0x00007fb99459d230: jne    0x00007fb99459d5e1
  0.03%    0.03%  │  │   0x00007fb99459d236: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
           0.00%  │  │   0x00007fb99459d23a: mov    0x18(%r11),%ecx    ;*getfield pc
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.06%    0.07%  │  │   0x00007fb99459d23e: cmp    $0x40,%ecx
                  │  │   0x00007fb99459d241: jge    0x00007fb99459d761  ;*if_icmpge
                  │  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.31%    0.21%  │  │   0x00007fb99459d247: mov    $0x1,%ebx
  0.03%    0.05%  │  │   0x00007fb99459d24c: shl    %cl,%rbx           ;*lshl
                  │  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.38%    0.43%  │  │   0x00007fb99459d24f: mov    %rbx,%r8
  0.06%    0.04%  │  │   0x00007fb99459d252: and    %r10,%r8           ;*land
                  │  │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │  │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.00%           │  │   0x00007fb99459d255: test   %r8,%r8
                  │╭ │   0x00007fb99459d258: jne    0x00007fb99459d51f  ;*ifne
                  ││ │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.06%    0.06%  ││ │   0x00007fb99459d25e: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  ││ │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.25%    0.29%  ││ │   0x00007fb99459d262: or     %r10,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.06%    0.01%  ││ │   0x00007fb99459d265: mov    %rbx,0x10(%rdx)    ;*putfield pcsl
                  ││ │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.01%           ││ │   0x00007fb99459d269: xor    %ebp,%ebp          ;*getfield pcsl
                  ││ │                                                 ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                  ││ │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ │                                                 ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.05%    0.07%  ││ │↗  0x00007fb99459d26b: test   %r8,%r8
                  ││ ││  0x00007fb99459d26e: jne    0x00007fb99459d79d  ;*ifeq
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.30%    0.29%  ││ ││  0x00007fb99459d274: mov    0x88(%rsp),%r10d
  0.08%    0.03%  ││ ││  0x00007fb99459d27c: test   %r10d,%r10d
                  ││ ││  0x00007fb99459d27f: jne    0x00007fb99459d7d1  ;*ifeq
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@16 (line 148)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.01%           ││ ││  0x00007fb99459d285: mov    0xc(%rdx),%r8d     ;*getfield size
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.03%    0.07%  ││ ││  0x00007fb99459d289: mov    0x20(%rdx),%r9d    ;*getfield denseThreadsInstructions
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.23%    0.35%  ││ ││  0x00007fb99459d28d: mov    %r8d,%edi
  0.02%    0.04%  ││ ││  0x00007fb99459d290: inc    %edi               ;*iadd
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.00%    0.01%  ││ ││  0x00007fb99459d292: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.05%    0.05%  ││ ││  0x00007fb99459d295: mov    0xc(%r12,%r9,8),%esi  ; implicit exception: dispatches to 0x00007fb99459d9e1
  0.32%    0.34%  ││ ││  0x00007fb99459d29a: cmp    %esi,%r8d
                  ││ ││  0x00007fb99459d29d: jae    0x00007fb99459d55e
  0.02%    0.04%  ││ ││  0x00007fb99459d2a3: vmovd  %edi,%xmm2
  0.00%    0.01%  ││ ││  0x00007fb99459d2a7: vmovd  %r9d,%xmm1
  0.04%    0.05%  ││ ││  0x00007fb99459d2ac: mov    %r8d,%r14d
  0.31%    0.38%  ││ ││  0x00007fb99459d2af: mov    %r11,%r8
  0.04%    0.07%  ││ ││  0x00007fb99459d2b2: mov    0x8(%r12,%r9,8),%r11d
  0.01%           ││ ││  0x00007fb99459d2b7: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││ ││  0x00007fb99459d2be: jne    0x00007fb99459d611  ;*aastore
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.05%    0.07%  ││ ││  0x00007fb99459d2c4: vmovq  %xmm3,%r10
  0.26%    0.24%  ││ ││  0x00007fb99459d2c9: mov    0x34(%r10),%ebp    ;*getfield inst2
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 261)
  0.05%    0.05%  ││ ││  0x00007fb99459d2cd: mov    %r8,%r10
  0.00%    0.00%  ││ ││  0x00007fb99459d2d0: shr    $0x3,%r10          ;*aastore
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.04%    0.04%  ││ ││  0x00007fb99459d2d4: lea    (%r12,%r9,8),%r11  ;*getfield denseThreadsInstructions
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.31%    0.27%  ││ ││  0x00007fb99459d2d8: lea    0x10(%r11,%r14,4),%r8
  0.02%    0.04%  ││ ││  0x00007fb99459d2dd: mov    %r10d,(%r8)
  0.10%    0.06%  ││ ││  0x00007fb99459d2e0: mov    %r8,%r10
  0.05%    0.04%  ││ ││  0x00007fb99459d2e3: shr    $0x9,%r10
  0.26%    0.26%  ││ ││  0x00007fb99459d2e7: movabs $0x7fb98fda6000,%r8
  0.03%    0.04%  ││ ││  0x00007fb99459d2f1: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@29 (line 260)
  0.07%    0.07%  ││ ││  0x00007fb99459d2f5: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fb99459d9fd
  0.05%    0.00%  ││ ││  0x00007fb99459d2fa: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││ ││  0x00007fb99459d301: jne    0x00007fb99459d651
  0.24%    0.14%  ││ ││  0x00007fb99459d307: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.03%    0.01%  ││ ││  0x00007fb99459d30b: vmovq  %r10,%xmm0
  0.04%    0.04%  ││ ││  0x00007fb99459d310: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.53%    0.42%  ││ ││  0x00007fb99459d314: cmp    $0x40,%ecx
                  ││ ││  0x00007fb99459d317: jge    0x00007fb99459d80d  ;*if_icmpge
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.23%    0.25%  ││ ││  0x00007fb99459d31d: mov    $0x1,%edi
  0.04%    0.01%  ││ ││  0x00007fb99459d322: shl    %cl,%rdi           ;*lshl
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.50%    0.48%  ││ ││  0x00007fb99459d325: mov    %rdi,%r10
  0.02%    0.02%  ││ ││  0x00007fb99459d328: and    %rbx,%r10          ;*land
                  ││ ││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  ││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││ ││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.03%    0.08%  ││ ││  0x00007fb99459d32b: test   %r10,%r10
                  ││╭││  0x00007fb99459d32e: jne    0x00007fb99459d52c  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.11%    0.08%  │││││  0x00007fb99459d334: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.15%    0.33%  │││││  0x00007fb99459d338: or     %rbx,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.03%    0.03%  │││││  0x00007fb99459d33b: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.04%    0.05%  │││││  0x00007fb99459d33f: xor    %ebp,%ebp          ;*getfield pcsl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.15%    0.06%  │││││  0x00007fb99459d341: test   %r10,%r10
                  │││││  0x00007fb99459d344: jne    0x00007fb99459d849  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.18%    0.09%  │││││  0x00007fb99459d34a: mov    %r14d,%r9d
  0.05%    0.01%  │││││  0x00007fb99459d34d: add    $0x4,%r9d          ;*iadd
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.04%    0.07%  │││││  0x00007fb99459d351: mov    %r14d,%r10d
  0.11%    0.08%  │││││  0x00007fb99459d354: add    $0x2,%r10d
  0.22%    0.27%  │││││  0x00007fb99459d358: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.01%    0.04%  │││││  0x00007fb99459d35c: cmp    %esi,%r9d
                  │││││  0x00007fb99459d35f: jae    0x00007fb99459d5a1  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.04%    0.04%  │││││  0x00007fb99459d365: vmovq  %xmm3,%r10
  0.10%    0.15%  │││││  0x00007fb99459d36a: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@55 (line 262)
  0.22%    0.24%  │││││  0x00007fb99459d36e: vmovq  %xmm0,%r10
  0.02%    0.00%  │││││  0x00007fb99459d373: mov    %r10,%rcx
  0.06%    0.03%  │││││  0x00007fb99459d376: shr    $0x3,%rcx          ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.09%    0.08%  │││││  0x00007fb99459d37a: movslq %r14d,%r10
  0.19%    0.23%  │││││  0x00007fb99459d37d: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.01%    0.04%  │││││  0x00007fb99459d381: mov    %rbx,%r10
  0.02%    0.04%  │││││  0x00007fb99459d384: add    $0x14,%r10
  0.10%    0.12%  │││││  0x00007fb99459d388: mov    %ecx,(%r10)
  0.22%    0.14%  │││││  0x00007fb99459d38b: shr    $0x9,%r10
  0.01%    0.01%  │││││  0x00007fb99459d38f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@49 (line 261)
  0.09%    0.08%  │││││  0x00007fb99459d393: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb99459da25
  0.05%    0.11%  │││││  0x00007fb99459d398: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fb99459d39e: jne    0x00007fb99459d67d
  0.18%    0.26%  │││││  0x00007fb99459d3a4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.02%    0.04%  │││││  0x00007fb99459d3a8: vmovq  %r10,%xmm0
  0.06%    0.11%  │││││  0x00007fb99459d3ad: mov    0x18(%r10),%r10d   ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.05%    0.08%  │││││  0x00007fb99459d3b1: mov    %r10d,%ecx
  0.17%    0.21%  │││││  0x00007fb99459d3b4: cmp    $0x40,%r10d
                  │││││  0x00007fb99459d3b8: jge    0x00007fb99459d87d  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.02%    0.04%  │││││  0x00007fb99459d3be: mov    $0x1,%esi
  0.07%    0.06%  │││││  0x00007fb99459d3c3: shl    %cl,%rsi           ;*lshl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.28%    0.43%  │││││  0x00007fb99459d3c6: mov    %rsi,%r10
  0.04%    0.07%  │││││  0x00007fb99459d3c9: and    %rdi,%r10          ;*land
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.08%    0.09%  │││││  0x00007fb99459d3cc: test   %r10,%r10
                  │││││  0x00007fb99459d3cf: jne    0x00007fb99459d539  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.17%    0.18%  │││││  0x00007fb99459d3d5: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.04%    0.04%  │││││  0x00007fb99459d3d9: or     %rdi,%rsi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.03%    0.05%  │││││  0x00007fb99459d3dc: mov    %rsi,0x10(%rdx)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.11%    0.10%  │││││  0x00007fb99459d3e0: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.15%    0.25%  │││││  0x00007fb99459d3e2: test   %r10,%r10
                  │││││  0x00007fb99459d3e5: jne    0x00007fb99459d8b9  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.01%    0.04%  │││││  0x00007fb99459d3eb: mov    %rbx,%r10
  0.03%    0.04%  │││││  0x00007fb99459d3ee: add    $0x18,%r10         ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.16%    0.04%  │││││  0x00007fb99459d3f2: vmovq  %xmm3,%rcx
  0.17%    0.27%  │││││  0x00007fb99459d3f7: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@75 (line 263)
  0.04%    0.04%  │││││  0x00007fb99459d3fa: vmovq  %xmm0,%rcx
  0.07%    0.05%  │││││  0x00007fb99459d3ff: shr    $0x3,%rcx
  0.11%    0.11%  │││││  0x00007fb99459d403: mov    %ecx,(%r10)        ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.15%    0.17%  │││││  0x00007fb99459d406: mov    %r14d,%ecx
  0.06%    0.03%  │││││  0x00007fb99459d409: add    $0x3,%ecx
  0.05%    0.02%  │││││  0x00007fb99459d40c: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.12%    0.06%  │││││  0x00007fb99459d40f: shr    $0x9,%r10
  0.23%    0.22%  │││││  0x00007fb99459d413: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@69 (line 262)
  0.03%    0.04%  │││││  0x00007fb99459d417: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb99459da4d
  0.06%    0.05%  │││││  0x00007fb99459d41c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fb99459d422: jne    0x00007fb99459d6a9
  0.13%    0.05%  │││││  0x00007fb99459d428: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.16%    0.13%  │││││  0x00007fb99459d42c: vmovq  %r10,%xmm0
  0.01%    0.00%  │││││  0x00007fb99459d431: mov    0x18(%r10),%r10d   ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.04%    0.05%  │││││  0x00007fb99459d435: mov    %r10d,%ecx
  0.09%    0.07%  │││││  0x00007fb99459d438: cmp    $0x40,%r10d
                  │││││  0x00007fb99459d43c: jge    0x00007fb99459d8ed  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.16%    0.26%  │││││  0x00007fb99459d442: mov    $0x1,%edi
  0.02%    0.04%  │││││  0x00007fb99459d447: shl    %cl,%rdi           ;*lshl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.43%    0.26%  │││││  0x00007fb99459d44a: mov    %rdi,%r10
  0.03%    0.02%  │││││  0x00007fb99459d44d: and    %rsi,%r10          ;*land
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.03%    0.04%  │││││  0x00007fb99459d450: test   %r10,%r10
                  │││││  0x00007fb99459d453: jne    0x00007fb99459d546  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.12%    0.07%  │││││  0x00007fb99459d459: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.22%    0.29%  │││││  0x00007fb99459d45d: or     %rsi,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.02%    0.03%  │││││  0x00007fb99459d460: mov    %rdi,0x10(%rdx)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.08%    0.09%  │││││  0x00007fb99459d464: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.13%    0.13%  │││││  0x00007fb99459d466: test   %r10,%r10
                  │││││  0x00007fb99459d469: jne    0x00007fb99459d929  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.18%    0.18%  │││││  0x00007fb99459d46f: mov    %r9d,0xc(%rdx)     ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.02%    0.06%  │││││  0x00007fb99459d473: vmovq  %xmm3,%r10
  0.07%    0.06%  │││││  0x00007fb99459d478: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 264)
  0.10%    0.12%  │││││  0x00007fb99459d47c: mov    %rbx,%r9
  0.30%    0.18%  │││││  0x00007fb99459d47f: add    $0x1c,%r9
  0.01%    0.01%  │││││  0x00007fb99459d483: vmovq  %xmm0,%r10
  0.08%    0.04%  │││││  0x00007fb99459d488: shr    $0x3,%r10
  0.09%    0.19%  │││││  0x00007fb99459d48c: mov    %r10d,(%r9)
  0.19%    0.25%  │││││  0x00007fb99459d48f: mov    %r9,%r10
  0.02%    0.04%  │││││  0x00007fb99459d492: shr    $0x9,%r10
  0.05%    0.04%  │││││  0x00007fb99459d496: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 263)
  0.11%    0.09%  │││││  0x00007fb99459d49a: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb99459da75
  0.23%    0.18%  │││││  0x00007fb99459d49f: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││││  0x00007fb99459d4a6: jne    0x00007fb99459d6d5
  0.03%    0.03%  │││││  0x00007fb99459d4ac: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.09%    0.04%  │││││  0x00007fb99459d4b0: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.11%    0.14%  │││││  0x00007fb99459d4b4: cmp    $0x40,%ecx
                  │││││  0x00007fb99459d4b7: jge    0x00007fb99459d95d  ;*if_icmpge
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.23%    0.24%  │││││  0x00007fb99459d4bd: shl    %cl,%rax           ;*lshl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.22%    0.23%  │││││  0x00007fb99459d4c0: mov    %rax,%rcx
  0.24%    0.15%  │││││  0x00007fb99459d4c3: and    %rdi,%rcx          ;*land
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.01%    0.02%  │││││  0x00007fb99459d4c6: test   %rcx,%rcx
                  │││││  0x00007fb99459d4c9: jne    0x00007fb99459d553  ;*ifne
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.04%    0.07%  │││││  0x00007fb99459d4cf: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.14%    0.15%  │││││  0x00007fb99459d4d3: or     %rdi,%rax
  0.18%    0.22%  │││││  0x00007fb99459d4d6: mov    %rax,0x10(%rdx)    ;*putfield pcsl
                  │││││                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.04%    0.03%  │││││  0x00007fb99459d4da: xor    %r9d,%r9d          ;*invokevirtual containsOrAdd
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.04%    0.06%  │││││  0x00007fb99459d4dd: test   %rcx,%rcx
                  │││││  0x00007fb99459d4e0: jne    0x00007fb99459d981  ;*ifeq
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.15%    0.14%  │││││  0x00007fb99459d4e6: add    $0x20,%rbx
  0.13%    0.17%  │││││  0x00007fb99459d4ea: shr    $0x3,%r10
  0.02%    0.01%  │││││  0x00007fb99459d4ee: mov    %r10d,(%rbx)       ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.03%    0.03%  │││││  0x00007fb99459d4f1: mov    %rbx,%r10
  0.08%    0.06%  │││││  0x00007fb99459d4f4: add    $0x5,%r14d
  0.19%    0.13%  │││││  0x00007fb99459d4f8: mov    %r14d,0xc(%rdx)    ;*putfield size
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.03%    0.03%  │││││  0x00007fb99459d4fc: shr    $0x9,%r10
  0.05%    0.03%  │││││  0x00007fb99459d500: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │││││                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@109 (line 264)
  0.16%    0.16%  │││││  0x00007fb99459d504: xor    %eax,%eax
  0.15%    0.22%  │││││  0x00007fb99459d506: add    $0x70,%rsp
  0.01%    0.01%  │││││  0x00007fb99459d50a: pop    %rbp
  0.06%    0.09%  │││││  0x00007fb99459d50b: test   %eax,0x15e68aef(%rip)        # 0x00007fb9aa406000
                  │││││                                                ;   {poll_return}
  0.06%    0.11%  │││││  0x00007fb99459d511: retq   
                  ↘││││  0x00007fb99459d512: mov    %r11,%r10
                   ││││  0x00007fb99459d515: mov    $0x1,%ebp
                   ││╰│  0x00007fb99459d51a: jmpq   0x00007fb99459d218
                   ↘│ │  0x00007fb99459d51f: mov    %r10,%rbx
                    │ │  0x00007fb99459d522: mov    $0x1,%ebp
                    │ ╰  0x00007fb99459d527: jmpq   0x00007fb99459d26b
                    ↘    0x00007fb99459d52c: mov    %rbx,%rdi
                         0x00007fb99459d52f: mov    $0x1,%ebp
                         0x00007fb99459d534: jmpq   0x00007fb99459d341
....................................................................................................
 19.62%   19.26%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 496 (765 bytes) 

                     0x00007fb994597b5d: shr    $0x3,%r8
                     0x00007fb994597b61: mov    %r8d,(%rbx)
                     0x00007fb994597b64: shr    $0x9,%r11
                     0x00007fb994597b68: movabs $0x7fb98fda6000,%r8
                     0x00007fb994597b72: mov    %r12b,(%r8,%r11,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007fb994597b76: jmpq   0x00007fb994597f4d
  0.16%    0.13%     0x00007fb994597b7b: mov    0x2c(%r12,%r9,8),%r9d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 338)
  0.26%    0.11%     0x00007fb994597b80: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007fb994598de1
  0.88%    0.56%     0x00007fb994597b85: lea    (%r12,%r9,8),%r8
  0.07%    0.09%     0x00007fb994597b89: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007fb994597b8f: je     0x00007fb994597c3e
  0.07%    0.07%  │  0x00007fb994597b95: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fb994597b9b: jne    0x00007fb9945987b5  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.03%    0.02%  │  0x00007fb994597ba1: mov    0x18(%r8),%ecx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.00%           │  0x00007fb994597ba5: mov    0x10(%r10),%r9     ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
                  │                                                ; implicit exception: dispatches to 0x00007fb994598ea9
                  │  0x00007fb994597ba9: cmp    $0x40,%ecx
                  │  0x00007fb994597bac: jge    0x00007fb994598b89  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.12%    0.03%  │  0x00007fb994597bb2: mov    $0x1,%ebx
           0.00%  │  0x00007fb994597bb7: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.19%    0.08%  │  0x00007fb994597bba: mov    %rbx,%rcx
           0.01%  │  0x00007fb994597bbd: and    %r9,%rcx           ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
                  │  0x00007fb994597bc0: test   %rcx,%rcx
                  │  0x00007fb994597bc3: jne    0x00007fb994598124  ;*ifne
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.06%    0.03%  │  0x00007fb994597bc9: mov    %r12b,0x18(%r10)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.03%    0.03%  │  0x00007fb994597bcd: or     %r9,%rbx
  0.01%    0.00%  │  0x00007fb994597bd0: mov    %rbx,0x10(%r10)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.00%    0.01%  │  0x00007fb994597bd4: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.04%    0.01%  │  0x00007fb994597bd6: test   %rcx,%rcx
                  │  0x00007fb994597bd9: jne    0x00007fb994598c11  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.08%    0.00%  │  0x00007fb994597bdf: mov    0xc(%r10),%edx     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
                  │  0x00007fb994597be3: mov    0x20(%r10),%ebp    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.00%    0.00%  │  0x00007fb994597be7: mov    %edx,%r9d
  0.01%    0.03%  │  0x00007fb994597bea: inc    %r9d
  0.07%    0.02%  │  0x00007fb994597bed: mov    %r9d,0xc(%r10)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
                  │  0x00007fb994597bf1: mov    0xc(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fb994598ebd
  0.09%    0.02%  │  0x00007fb994597bf6: cmp    %r9d,%edx
                  │  0x00007fb994597bf9: jae    0x00007fb99459872d
  0.11%    0.03%  │  0x00007fb994597bff: mov    0x8(%r12,%rbp,8),%r9d
  0.01%    0.02%  │  0x00007fb994597c04: cmp    $0xf8019807,%r9d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fb994597c0b: jne    0x00007fb994598829  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.03%    0.00%  │  0x00007fb994597c11: lea    (%r12,%rbp,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.00%           │  0x00007fb994597c15: lea    0x10(%r9,%rdx,4),%r9
  0.04%    0.01%  │  0x00007fb994597c1a: mov    %r8,%rcx
  0.01%    0.01%  │  0x00007fb994597c1d: shr    $0x3,%rcx
  0.00%           │  0x00007fb994597c21: mov    %ecx,(%r9)
  0.37%    0.04%  │  0x00007fb994597c24: mov    %r9,%r8
  0.01%    0.01%  │  0x00007fb994597c27: shr    $0x9,%r8
  0.02%    0.01%  │  0x00007fb994597c2b: movabs $0x7fb98fda6000,%r9
                  │  0x00007fb994597c35: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.10%    0.15%  │  0x00007fb994597c39: jmpq   0x00007fb994597f66  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 338)
  0.19%    0.22%  ↘  0x00007fb994597c3e: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007fb994597c42: mov    0x10(%r10),%r9     ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@11 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                                                                   ; implicit exception: dispatches to 0x00007fb994598e15
  0.00%              0x00007fb994597c46: cmp    $0x40,%ecx
                     0x00007fb994597c49: jge    0x00007fb9945985ad  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.31%    0.42%     0x00007fb994597c4f: mov    $0x1,%edi
  0.02%    0.01%     0x00007fb994597c54: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.50%    0.75%     0x00007fb994597c57: mov    %rdi,%rcx
  0.01%    0.00%     0x00007fb994597c5a: and    %r9,%rcx           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007fb994597c5d: test   %rcx,%rcx
                     0x00007fb994597c60: jne    0x00007fb9945980ab  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.15%    0.21%     0x00007fb994597c66: mov    %r12b,0x18(%r10)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.10%    0.15%     0x00007fb994597c6a: or     %r9,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%              0x00007fb994597c6d: mov    %rdi,0x10(%r10)    ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.03%     0x00007fb994597c71: test   %rcx,%rcx
                     0x00007fb994597c74: jne    0x00007fb994597f66  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@8 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.19%    0.16%     0x00007fb994597c7a: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@15 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.13%    0.08%     0x00007fb994597c7e: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007fb994598e29
  0.27%    0.29%     0x00007fb994597c83: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fb994597c8a: jne    0x00007fb994598259
  0.27%    0.22%     0x00007fb994597c90: lea    (%r12,%rbp,8),%rbx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007fb994597c94: mov    0x18(%rbx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.38%    0.42%     0x00007fb994597c97: cmp    $0x40,%ecx
                     0x00007fb994597c9a: jge    0x00007fb994598629  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.26%    0.26%     0x00007fb994597ca0: mov    $0x1,%r9d
  0.05%    0.06%     0x00007fb994597ca6: shl    %cl,%r9            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.47%    0.53%     0x00007fb994597ca9: mov    %r9,%rcx
  0.00%    0.02%     0x00007fb994597cac: and    %rdi,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%              0x00007fb994597caf: test   %rcx,%rcx
                     0x00007fb994597cb2: jne    0x00007fb9945980b3  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.23%    0.22%     0x00007fb994597cb8: mov    %r12b,0x18(%r10)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.10%    0.04%     0x00007fb994597cbc: or     %rdi,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.02%     0x00007fb994597cbf: mov    %r9,0x10(%r10)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
           0.01%     0x00007fb994597cc3: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.18%    0.19%     0x00007fb994597cc5: test   %rcx,%rcx
                     0x00007fb994597cc8: jne    0x00007fb9945986a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.02%     0x00007fb994597cce: mov    0xc(%r10),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007fb994597cd2: mov    0x20(%r10),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.01%     0x00007fb994597cd6: mov    %ecx,%edx
  0.16%    0.15%     0x00007fb994597cd8: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.09%    0.07%     0x00007fb994597cda: mov    %edx,0xc(%r10)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.01%     0x00007fb994597cde: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fb994598e3d
  0.01%    0.01%     0x00007fb994597ce3: cmp    %esi,%ecx
                     0x00007fb994597ce5: jae    0x00007fb9945981d9
  0.19%    0.14%     0x00007fb994597ceb: vmovd  %edx,%xmm0
  0.05%    0.05%     0x00007fb994597cef: vmovd  %edi,%xmm1
  0.00%    0.02%     0x00007fb994597cf3: mov    %ecx,0xc(%rsp)
  0.02%    0.02%     0x00007fb994597cf7: mov    %r11d,0xa4(%rsp)
  0.20%    0.20%     0x00007fb994597cff: mov    %r13,0x48(%rsp)
  0.03%    0.03%     0x00007fb994597d04: mov    %eax,0xac(%rsp)
  0.00%    0.01%     0x00007fb994597d0b: mov    %r10,0x30(%rsp)
           0.02%     0x00007fb994597d10: mov    %r14,0x28(%rsp)
  0.18%    0.19%     0x00007fb994597d15: mov    0x8(%r12,%rdi,8),%r11d
  0.08%    0.06%     0x00007fb994597d1a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fb994597d21: jne    0x00007fb9945982d5  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.00%     0x00007fb994597d27: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.00%     0x00007fb994597d2b: mov    %r10d,%eax
  0.16%    0.18%     0x00007fb994597d2e: mov    %rbx,%r10
  0.06%    0.05%     0x00007fb994597d31: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.01%     0x00007fb994597d35: shl    $0x3,%rdi          ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.02%     0x00007fb994597d39: lea    0x10(%rdi,%rcx,4),%r11
  0.14%    0.20%     0x00007fb994597d3e: mov    %r10d,(%r11)
  0.10%    0.06%     0x00007fb994597d41: mov    %r11,%r10
  0.01%    0.01%     0x00007fb994597d44: shr    $0x9,%r10
  0.00%    0.00%     0x00007fb994597d48: movabs $0x7fb98fda6000,%r11
  0.15%    0.16%     0x00007fb994597d52: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.09%    0.03%     0x00007fb994597d56: mov    %eax,%r10d
  0.03%    0.02%     0x00007fb994597d59: mov    0x8(%r12,%r10,8),%ecx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                                                                   ; implicit exception: dispatches to 0x00007fb994598e59
  0.00%              0x00007fb994597d5e: movslq 0xc(%rsp),%r10
  0.13%    0.10%     0x00007fb994597d63: lea    (%rdi,%r10,4),%r11  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.11%     0x00007fb994597d67: mov    %r11,%rbx
  0.02%    0.01%     0x00007fb994597d6a: add    $0x14,%rbx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.02%     0x00007fb994597d6e: mov    %eax,%r10d
  0.18%    0.14%     0x00007fb994597d71: lea    (%r12,%r10,8),%rdx
  0.07%    0.07%     0x00007fb994597d75: mov    0xc(%rsp),%r8d
  0.00%              0x00007fb994597d7a: add    $0x2,%r8d          ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007fb994597d7e: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fb994597d84: jne    0x00007fb994597af0  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.21%    0.20%     0x00007fb994597d8a: mov    0x2c(%rdx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@74 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.04%     0x00007fb994597d8d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fb994598e6d
  0.06%    0.01%     0x00007fb994597d92: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fb994597d99: jne    0x00007fb994598509
  0.02%    0.01%     0x00007fb994597d9f: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.19%    0.15%     0x00007fb994597da3: mov    0x18(%rdx),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.06%    0.02%     0x00007fb994597da6: cmp    $0x40,%ecx
                     0x00007fb994597da9: jge    0x00007fb994598a49  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%              0x00007fb994597daf: mov    $0x1,%r10d
  0.02%    0.01%     0x00007fb994597db5: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.33%    0.20%     0x00007fb994597db8: mov    %r10,%rax
  0.01%              0x00007fb994597dbb: and    %r9,%rax           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.17%    0.20%     0x00007fb994597dbe: test   %rax,%rax
                     0x00007fb994597dc1: jne    0x00007fb99459810f  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.09%    0.03%     0x00007fb994597dc7: mov    0x30(%rsp),%rcx
  0.02%    0.00%     0x00007fb994597dcc: mov    %r12b,0x18(%rcx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.03%     0x00007fb994597dd0: or     %r9,%r10           ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.12%    0.17%     0x00007fb994597dd3: mov    %r10,0x10(%rcx)    ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.09%    0.11%     0x00007fb994597dd7: test   %rax,%rax
                     0x00007fb994597dda: jne    0x00007fb9945980a1  ;*ifeq
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@8 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.00%     0x00007fb994597de0: mov    0x2c(%rdx),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@15 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
           0.00%     0x00007fb994597de3: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fb994598e81
  0.22%    0.03%     0x00007fb994597de8: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fb994597dee: jne    0x00007fb994598551
  0.08%    0.03%     0x00007fb994597df4: lea    (%r12,%rbp,8),%r13  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%              0x00007fb994597df8: mov    0x18(%r13),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.03%    0.01%     0x00007fb994597dfc: cmp    $0x40,%ecx
                     0x00007fb994597dff: jge    0x00007fb994598abd  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@3 (line 49)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.18%    0.15%     0x00007fb994597e05: mov    $0x1,%r9d
  0.07%    0.09%     0x00007fb994597e0b: shl    %cl,%r9            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@8 (line 50)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.24%    0.28%     0x00007fb994597e0e: mov    %r9,%rcx
  0.05%    0.04%     0x00007fb994597e11: and    %r10,%rcx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@15 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.01%     0x00007fb994597e14: test   %rcx,%rcx
                     0x00007fb994597e17: jne    0x00007fb994598117  ;*ifne
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@18 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.02%    0.07%     0x00007fb994597e1d: mov    0x30(%rsp),%rax
  0.14%    0.23%     0x00007fb994597e22: mov    %r12b,0x18(%rax)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@33 (line 53)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.14%     0x00007fb994597e26: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::containsOrAdd@27 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007fb994597e29: mov    %rax,%r10
  0.09%    0.05%     0x00007fb994597e2c: mov    %r9,0x10(%r10)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::containsOrAdd@28 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.18%    0.17%     0x00007fb994597e30: xor    %ebp,%ebp          ;*invokevirtual containsOrAdd
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.04%    0.09%     0x00007fb994597e32: test   %rcx,%rcx
                     0x00007fb994597e35: jne    0x00007fb994598b39  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.00%    0.01%     0x00007fb994597e3b: mov    0x30(%rsp),%r10
  0.09%    0.13%     0x00007fb994597e40: mov    %r8d,0xc(%r10)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.12%    0.17%     0x00007fb994597e44: cmp    %esi,%r8d
                     0x00007fb994597e47: jae    0x00007fb994598415  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.09%    0.06%     0x00007fb994597e4d: mov    0x34(%rdx),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@35 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.01%    0.01%     0x00007fb994597e51: mov    %rbx,%r8
  0.06%    0.07%     0x00007fb994597e54: mov    %r13,%rcx
  0.09%    0.16%     0x00007fb994597e57: shr    $0x3,%rcx
  0.10%    0.07%     0x00007fb994597e5b: mov    %ecx,(%rbx)
  0.00%    0.02%     0x00007fb994597e5d: shr    $0x9,%r8
  0.06%    0.09%     0x00007fb994597e61: movabs $0x7fb98fda6000,%rcx
  0.12%    0.30%     0x00007fb994597e6b: mov    %r12b,(%rcx,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 85)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@64 (line 157)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@29 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
  0.07%    0.11%     0x00007fb994597e6f: mov    0x8(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00007fb994598e95
  0.00%    0.00%     0x00007fb994597e74: lea    (%r12,%r10,8),%r8
  0.06%    0.09%     0x00007fb994597e78: cmp    $0xf8019885,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fb994597e7e: jne    0x00007fb994597ed8  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@49 (line 179)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 301)
                     0x00007fb994597e80: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@74 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@88 (line 450)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 174)
....................................................................................................
 13.04%   12.11%  <total for region 4>

....[Hottest Regions]...............................................................................
 29.42%   31.01%         C2, level 4  com.google.re2j.Machine::match, version 542 (1515 bytes) 
 20.82%   21.60%         C2, level 4  com.google.re2j.Machine::step, version 496 (309 bytes) 
 19.62%   19.26%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 516 (849 bytes) 
 13.04%   12.11%         C2, level 4  com.google.re2j.Machine::step, version 496 (765 bytes) 
  9.53%    9.06%         C2, level 4  com.google.re2j.Machine::step, version 496 (171 bytes) 
  3.05%    2.82%         C2, level 4  com.google.re2j.Machine::step, version 496 (61 bytes) 
  1.34%    1.46%         C2, level 4  com.google.re2j.Machine::match, version 542 (242 bytes) 
  0.28%    0.27%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.16%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 544 (28 bytes) 
  0.13%    0.00%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.12%                  C2, level 4  com.google.re2j.Pattern::find, version 544 (90 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 544 (28 bytes) 
  0.11%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 544 (0 bytes) 
  0.10%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 544 (8 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (17 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.11%         C2, level 4  com.google.re2j.Machine::match, version 542 (249 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 544 (113 bytes) 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 572 (62 bytes) 
  1.77%    1.84%  <...other 343 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 46.45%   45.61%         C2, level 4  com.google.re2j.Machine::step, version 496 
 30.92%   32.62%         C2, level 4  com.google.re2j.Machine::match, version 542 
 19.62%   19.26%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 516 
  1.24%    0.96%   [kernel.kallsyms]  [unknown] 
  0.81%    0.43%         C2, level 4  com.google.re2j.Pattern::find, version 544 
  0.12%    0.09%         C2, level 4  java.util.Collections::shuffle, version 572 
  0.07%    0.03%      hsdis-amd64.so  decode_instructions 
  0.05%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 545 
  0.04%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 627 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.03%                 libc-2.26.so  _IO_fflush 
  0.03%    0.07%        libc-2.26.so  _IO_fwrite 
  0.03%                       [vdso]  [unknown] 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.02%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%           libpthread-2.26.so  __libc_write 
  0.34%    0.44%  <...other 52 warm methods...>
....................................................................................................
100.00%   99.83%  <totals>

....[Distribution by Source]........................................................................
 98.02%   98.03%         C2, level 4
  1.24%    0.96%   [kernel.kallsyms]
  0.39%    0.56%           libjvm.so
  0.20%    0.37%        libc-2.26.so
  0.08%    0.03%      hsdis-amd64.so
  0.03%    0.04%  libpthread-2.26.so
  0.03%                       [vdso]
  0.00%                  interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  9919.312 ± 240.494  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
