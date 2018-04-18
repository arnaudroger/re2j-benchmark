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
# Warmup Iteration   1: 3421.612 ops/s
# Warmup Iteration   2: 9214.636 ops/s
# Warmup Iteration   3: 9266.575 ops/s
# Warmup Iteration   4: 9266.686 ops/s
# Warmup Iteration   5: 9266.488 ops/s
# Warmup Iteration   6: 9265.533 ops/s
# Warmup Iteration   7: 9262.777 ops/s
# Warmup Iteration   8: 9187.816 ops/s
# Warmup Iteration   9: 9233.015 ops/s
# Warmup Iteration  10: 9313.870 ops/s
# Warmup Iteration  11: 9318.363 ops/s
# Warmup Iteration  12: 9008.314 ops/s
# Warmup Iteration  13: 9315.568 ops/s
# Warmup Iteration  14: 9296.202 ops/s
# Warmup Iteration  15: 9295.572 ops/s
# Warmup Iteration  16: 9296.214 ops/s
# Warmup Iteration  17: 9327.534 ops/s
# Warmup Iteration  18: 8761.738 ops/s
# Warmup Iteration  19: 7456.400 ops/s
# Warmup Iteration  20: 9299.653 ops/s
Iteration   1: 9299.630 ops/s
Iteration   2: 9298.574 ops/s
Iteration   3: 9302.378 ops/s
Iteration   4: 9304.161 ops/s
Iteration   5: 9301.039 ops/s
Iteration   6: 9302.907 ops/s
Iteration   7: 9301.188 ops/s
Iteration   8: 9301.096 ops/s
Iteration   9: 9266.368 ops/s
Iteration  10: 9278.805 ops/s
Iteration  11: 8253.764 ops/s
Iteration  12: 9283.972 ops/s
Iteration  13: 9282.390 ops/s
Iteration  14: 9283.751 ops/s
Iteration  15: 9283.293 ops/s
Iteration  16: 9285.805 ops/s
Iteration  17: 9276.439 ops/s
Iteration  18: 9279.542 ops/s
Iteration  19: 9282.784 ops/s
Iteration  20: 9315.554 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9239.172 ±(99.9%) 201.694 ops/s [Average]
  (min, avg, max) = (8253.764, 9239.172, 9315.554), stdev = 232.271
  CI (99.9%): [9037.478, 9440.866] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 196559 total address lines.
Perf output processed (skipped 23.349 seconds):
 Column 1: cycles (20617 events)
 Column 2: instructions (20617 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 541 (1534 bytes) 

                                       0x00007fc83d244fcb: cmp    $0x1,%r8d
                                       0x00007fc83d244fcf: je     0x00007fc83d246651  ;*if_icmpeq
                                                                                     ; - com.google.re2j.Machine::match@19 (line 186)
                                       0x00007fc83d244fd5: cmp    $0x2,%r8d
                                       0x00007fc83d244fd9: je     0x00007fc83d246679  ;*if_icmpne
                                                                                     ; - com.google.re2j.Machine::match@24 (line 186)
                                       0x00007fc83d244fdf: mov    %r12b,0x10(%r10)   ;*putfield matched
                                                                                     ; - com.google.re2j.Machine::match@35 (line 190)
                                       0x00007fc83d244fe3: mov    0x28(%r10),%r14d   ;*getfield matchcap
                                                                                     ; - com.google.re2j.Machine::match@39 (line 191)
  0.01%                                0x00007fc83d244fe7: mov    0xc(%r12,%r14,8),%ebp  ;*arraylength
                                                                                     ; - java.util.Arrays::fill@3 (line 2881)
                                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                                                                     ; implicit exception: dispatches to 0x00007fc83d246ed1
                                       0x00007fc83d244fec: test   %ebp,%ebp
                                       0x00007fc83d244fee: jg     0x00007fc83d2466a1  ;*if_icmpge
                                                                                     ; - java.util.Arrays::fill@7 (line 2881)
                                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                       0x00007fc83d244ff4: mov    0x8(%rdx),%r8d     ; implicit exception: dispatches to 0x00007fc83d246ee1
                                       0x00007fc83d244ff8: mov    0x20(%r10),%ecx    ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
  0.00%                                0x00007fc83d244ffc: mov    0x1c(%r10),%edi    ;*getfield q0
                                                                                     ; - com.google.re2j.Machine::match@47 (line 192)
                                       0x00007fc83d245000: cmp    $0xf8019b8e,%r8d   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                       0x00007fc83d245007: jne    0x00007fc83d246381
                                       0x00007fc83d24500d: mov    %rdx,%rbx          ;*invokevirtual step
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
           0.00%                       0x00007fc83d245010: mov    0xc(%rbx),%edx     ;*getfield start
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d245013: mov    0x10(%rbx),%eax    ;*getfield end
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d245016: vmovd  %xmm0,%r8d
                                       0x00007fc83d24501b: add    %edx,%r8d          ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d24501e: cmp    %eax,%r8d
                                       0x00007fc83d245021: jge    0x00007fc83d2461a5  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.01%                                0x00007fc83d245027: mov    0x14(%rbx),%r13d   ;*getfield str
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d24502b: mov    0x8(%r12,%r13,8),%ebp  ; implicit exception: dispatches to 0x00007fc83d246ef5
                                       0x00007fc83d245030: cmp    $0xf80002da,%ebp   ;   {metadata(&apos;java/lang/String&apos;)}
                                       0x00007fc83d245036: jne    0x00007fc83d2463b1
           0.00%                       0x00007fc83d24503c: lea    (%r12,%r13,8),%rbp  ;*invokeinterface charAt
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                0x00007fc83d245040: test   %r8d,%r8d
                                       0x00007fc83d245043: jl     0x00007fc83d24654d  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d245049: mov    %eax,0x64(%rsp)
                                       0x00007fc83d24504d: mov    %edx,0x60(%rsp)
           0.00%                       0x00007fc83d245051: mov    0xc(%rbp),%edx     ;*getfield value
                                                                                     ; - java.lang.String::charAt@6 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                0x00007fc83d245054: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                                     ; - java.lang.String::charAt@9 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                                                                     ; implicit exception: dispatches to 0x00007fc83d246f09
                                       0x00007fc83d245059: cmp    %eax,%r8d
                                       0x00007fc83d24505c: jge    0x00007fc83d2466cd  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d245062: cmp    %eax,%r8d
                                       0x00007fc83d245065: jae    0x00007fc83d246209
                                       0x00007fc83d24506b: mov    %eax,0x1c(%rsp)
  0.00%                                0x00007fc83d24506f: vmovd  %edx,%xmm1
                                       0x00007fc83d245073: mov    %rbp,%rax
                                       0x00007fc83d245076: mov    %rbx,0x48(%rsp)
                                       0x00007fc83d24507b: mov    %edi,0x34(%rsp)
  0.00%    0.01%                       0x00007fc83d24507f: mov    %ecx,%edx
                                       0x00007fc83d245081: mov    %r9d,0x40(%rsp)
                                       0x00007fc83d245086: mov    %r11d,0x3c(%rsp)
                                       0x00007fc83d24508b: mov    %r10,%rbx
           0.00%                       0x00007fc83d24508e: vmovd  %xmm1,%r10d
                                       0x00007fc83d245093: lea    (%r12,%r10,8),%r9
                                       0x00007fc83d245097: movzwl 0x10(%r9,%r8,2),%r10d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
           0.00%                       0x00007fc83d24509d: cmp    $0xd800,%r10d
                                       0x00007fc83d2450a4: jge    0x00007fc83d24670d  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.01%                       0x00007fc83d2450aa: shl    $0x3,%r10d         ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d2450ae: mov    %r10d,%r11d
                                       0x00007fc83d2450b1: and    $0x7,%r11d
                                       0x00007fc83d2450b5: or     $0x1,%r10d
  0.01%    0.01%                       0x00007fc83d2450b9: mov    %r10d,%ebp
                                       0x00007fc83d2450bc: or     $0x1,%r11d         ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                       0x00007fc83d2450c0: mov    %r11d,0x28(%rsp)
  0.00%                                0x00007fc83d2450c5: mov    %r10d,%r8d
  0.00%    0.01%                       0x00007fc83d2450c8: sar    $0x3,%r8d          ;*ishr
                                                                                     ; - com.google.re2j.Machine::match@68 (line 194)
                                       0x00007fc83d2450cc: cmp    $0xfffffff8,%r10d
                                       0x00007fc83d2450d0: je     0x00007fc83d2461b4  ;*if_icmpeq
                                                                                     ; - com.google.re2j.Machine::match@88 (line 198)
                                       0x00007fc83d2450d6: vmovd  %xmm0,%r10d
                                       0x00007fc83d2450db: add    %r11d,%r10d
  0.00%    0.00%                       0x00007fc83d2450de: add    0x60(%rsp),%r10d   ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007fc83d2450e3: mov    %r10d,%edi
                                       0x00007fc83d2450e6: cmp    0x64(%rsp),%r10d
                                       0x00007fc83d2450eb: jge    0x00007fc83d245a63  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007fc83d2450f1: test   %r10d,%r10d
                                       0x00007fc83d2450f4: jl     0x00007fc83d2465d1  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                                0x00007fc83d2450fa: cmp    0x1c(%rsp),%r10d
                                       0x00007fc83d2450ff: jge    0x00007fc83d246761  ;*if_icmplt
                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007fc83d245105: cmp    0x1c(%rsp),%r10d
                                       0x00007fc83d24510a: jae    0x00007fc83d246249
  0.00%                                0x00007fc83d245110: movzwl 0x10(%r9,%r10,2),%r9d  ;*caload
                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007fc83d245116: cmp    $0xd800,%r9d
                                       0x00007fc83d24511d: jge    0x00007fc83d2467b9  ;*if_icmplt
                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.00%                       0x00007fc83d245123: shl    $0x3,%r9d          ;*ishl
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                       0x00007fc83d245127: mov    %r9d,%r10d
                                       0x00007fc83d24512a: or     $0x1,%r10d
                                       0x00007fc83d24512e: and    $0x7,%r9d
  0.00%                                0x00007fc83d245132: sar    $0x3,%r10d
  0.00%                                0x00007fc83d245136: or     $0x1,%r9d          ;*ishr
                                                                                     ; - com.google.re2j.Machine::match@104 (line 200)
                                       0x00007fc83d24513a: vmovd  %xmm0,%ecx
                                       0x00007fc83d24513e: test   %ecx,%ecx
                                       0x00007fc83d245140: jne    0x00007fc83d246589  ;*ifne
                                                                                     ; - com.google.re2j.Machine::match@115 (line 204)
           0.01%                       0x00007fc83d245146: test   %r8d,%r8d
                                       0x00007fc83d245149: jl     0x00007fc83d245a4b  ;*ifge
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007fc83d24514f: mov    %r10d,0x2c(%rsp)
                                       0x00007fc83d245154: mov    %r9d,0x30(%rsp)
                                       0x00007fc83d245159: mov    $0x5,%r9d          ;*iload_1
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.00%                       0x00007fc83d24515f: cmp    $0xa,%r8d
                                       0x00007fc83d245163: je     0x00007fc83d245a71  ;*iload_0
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007fc83d245169: mov    %r8d,%r10d
                                       0x00007fc83d24516c: add    $0xffffffbf,%r10d
                                       0x00007fc83d245170: cmp    $0x1a,%r10d
                  ╭                    0x00007fc83d245174: jb     0x00007fc83d245187  ;*if_icmple
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%  │                    0x00007fc83d245176: mov    %r8d,%r11d
                  │                    0x00007fc83d245179: add    $0xffffff9f,%r11d
                  │                    0x00007fc83d24517d: cmp    $0x1a,%r11d
                  │                    0x00007fc83d245181: jae    0x00007fc83d245a80  ;*iconst_1
                  │                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.01%  ↘                    0x00007fc83d245187: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                0x00007fc83d24518b: mov    %r9d,0x38(%rsp)    ;*iload_2
                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                       0x00007fc83d245190: mov    0x3c(%rsp),%r10d
                                       0x00007fc83d245195: test   %r10d,%r10d
                                       0x00007fc83d245198: jne    0x00007fc83d2463f1  ;*aload
                                                                                     ; - com.google.re2j.Machine::match@136 (line 211)
  0.00%                                0x00007fc83d24519e: movzbl 0x11(%rbx),%r10d   ;*getfield captures
                                                                                     ; - com.google.re2j.Machine::match@283 (line 240)
  0.00%                                0x00007fc83d2451a3: mov    0x40(%rsp),%r9d
  0.00%                                0x00007fc83d2451a8: and    $0x4,%r9d          ;*iand
                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
                                       0x00007fc83d2451ac: mov    %r9d,0x44(%rsp)
  0.00%                                0x00007fc83d2451b1: mov    %rdx,%r11
  0.00%                                0x00007fc83d2451b4: shl    $0x3,%r11          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                       0x00007fc83d2451b8: mov    %r11,0x20(%rsp)
                                       0x00007fc83d2451bd: vmovd  %r10d,%xmm4
           0.01%                       0x00007fc83d2451c2: xor    %eax,%eax
  0.00%    0.00%                       0x00007fc83d2451c4: mov    $0x1,%r10d
                                       0x00007fc83d2451ca: xor    %r11d,%r11d
  0.00%                                0x00007fc83d2451cd: mov    %r10d,0x14(%rsp)
                                       0x00007fc83d2451d2: mov    %r11d,0x5c(%rsp)
  0.00%            ╭                   0x00007fc83d2451d7: jmpq   0x00007fc83d245423  ;*ifeq
                   │                                                                 ; - com.google.re2j.Machine::match@286 (line 240)
           0.01%   │           ↗       0x00007fc83d2451dc: mov    %r14,%r8
  0.07%    0.00%   │           │       0x00007fc83d2451df: shl    $0x3,%r8           ;*getfield matchcap
                   │           │                                                     ; - com.google.re2j.Machine::match@307 (line 243)
  0.25%    0.03%   │           │       0x00007fc83d2451e3: mov    %r10,%rsi
           0.01%   │           │       0x00007fc83d2451e6: mov    0x18(%rsp),%rdx
  0.03%    0.01%   │           │       0x00007fc83d2451eb: mov    0x5c(%rsp),%ecx
  0.06%    0.03%   │           │       0x00007fc83d2451ef: mov    0x38(%rsp),%r9d
  0.27%    0.06%   │           │       0x00007fc83d2451f4: xor    %edi,%edi
  0.01%            │           │       0x00007fc83d2451f6: mov    0x50(%rsp),%r10
  0.02%            │           │       0x00007fc83d2451fb: mov    %r10,(%rsp)
  0.08%    0.01%   │           │       0x00007fc83d2451ff: vmovss %xmm4,0x8(%rsp)
  0.19%    0.12%   │           │       0x00007fc83d245205: xchg   %ax,%ax
           0.01%   │           │       0x00007fc83d245207: callq  0x00007fc83d046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [72]=Oop [80]=Oop off=652}
                   │           │                                                     ;*invokevirtual add
                   │           │                                                     ; - com.google.re2j.Machine::match@318 (line 243)
                   │           │                                                     ;   {optimized virtual_call}
  0.21%    0.24%   │           │↗      0x00007fc83d24520c: mov    0x58(%rsp),%ebx
  0.08%    0.09%   │           ││      0x00007fc83d245210: test   %ebx,%ebx
                   │╭          ││      0x00007fc83d245212: jl     0x00007fc83d245583  ;*ifge
                   ││          ││                                                    ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                   ││          ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.21%   ││          ││      0x00007fc83d245218: xor    %r10d,%r10d        ;*iload_0
                   ││          ││                                                    ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                   ││          ││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.32%   ││          ││↗     0x00007fc83d24521b: cmp    $0xa,%ebx
                   ││          │││     0x00007fc83d24521e: je     0x00007fc83d245727  ;*iload_1
                   ││          │││                                                   ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                   ││          │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.12%    0.12%   ││          │││     0x00007fc83d245224: mov    0x2c(%rsp),%r11d
  0.03%    0.05%   ││          │││     0x00007fc83d245229: test   %r11d,%r11d
                   ││╭         │││     0x00007fc83d24522c: jl     0x00007fc83d24558e  ;*iload_1
                   │││         │││                                                   ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                   │││         │││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.16%   │││         │││↗    0x00007fc83d245232: cmp    $0xa,%r11d
                   │││         ││││    0x00007fc83d245236: je     0x00007fc83d245730  ;*iload_0
                   │││         ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │││         ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.29%    0.26%   │││         ││││    0x00007fc83d24523c: mov    0x58(%rsp),%r8d
  0.13%    0.16%   │││         ││││    0x00007fc83d245241: add    $0xffffffbf,%r8d
  0.05%    0.04%   │││         ││││    0x00007fc83d245245: cmp    $0x1a,%r8d
                   │││╭        ││││    0x00007fc83d245249: jb     0x00007fc83d24525e  ;*if_icmple
                   ││││        ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   ││││        ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││        ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.15%   ││││        ││││    0x00007fc83d24524b: mov    0x58(%rsp),%r9d
  0.22%    0.39%   ││││        ││││    0x00007fc83d245250: add    $0xffffff9f,%r9d
  0.11%    0.14%   ││││        ││││    0x00007fc83d245254: cmp    $0x1a,%r9d
                   ││││        ││││    0x00007fc83d245258: jae    0x00007fc83d2459da  ;*iconst_1
                   ││││        ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   ││││        ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││││        ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.05%   │││↘        ││││    0x00007fc83d24525e: mov    $0x1,%ebp          ;*ireturn
                   │││         ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││         ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││         ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.21%   │││         ││││    0x00007fc83d245263: mov    0x2c(%rsp),%r8d
  0.30%    0.32%   │││         ││││    0x00007fc83d245268: add    $0xffffffbf,%r8d
  0.09%    0.13%   │││         ││││    0x00007fc83d24526c: cmp    $0x1a,%r8d
                   │││ ╭       ││││    0x00007fc83d245270: jb     0x00007fc83d245285  ;*if_icmple
                   │││ │       ││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                   │││ │       ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │       ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.06%   │││ │       ││││    0x00007fc83d245272: mov    0x2c(%rsp),%r9d
  0.19%    0.16%   │││ │       ││││    0x00007fc83d245277: add    $0xffffff9f,%r9d
  0.25%    0.26%   │││ │       ││││    0x00007fc83d24527b: cmp    $0x1a,%r9d
                   │││ │       ││││    0x00007fc83d24527f: jae    0x00007fc83d2459fd  ;*iconst_1
                   │││ │       ││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                   │││ │       ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││ │       ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.19%   │││ ↘       ││││    0x00007fc83d245285: mov    $0x1,%r8d          ;*ireturn
                   │││         ││││                                                  ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │││         ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││         ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.18%   │││         ││││    0x00007fc83d24528b: cmp    %r8d,%ebp
                   │││  ╭      ││││    0x00007fc83d24528e: je     0x00007fc83d24529b  ;*if_icmpeq
                   │││  │      ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                   │││  │      ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.13%    0.16%   │││  │      ││││    0x00007fc83d245290: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                   │││  │      ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%   │││  │      ││││    0x00007fc83d245294: mov    %r10d,0x38(%rsp)
  0.13%    0.16%   │││  │╭     ││││    0x00007fc83d245299: jmp    0x00007fc83d2452a4
  0.16%    0.24%   │││  ↘│     ││││    0x00007fc83d24529b: or     $0x20,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                   │││   │     ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.27%   │││   │     ││││    0x00007fc83d24529f: mov    %r10d,0x38(%rsp)   ;*iload_2
                   │││   │     ││││                                                  ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │││   │     ││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.23%   │││   ↘     ││││    0x00007fc83d2452a4: mov    0x48(%rsp),%r8
  0.08%    0.13%   │││         ││││    0x00007fc83d2452a9: mov    0x10(%r8),%r10d    ;*getfield end
                   │││         ││││                                                  ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                   │││         ││││                                                  ; - com.google.re2j.Machine::match@348 (line 246)
  0.50%    0.31%   │││         ││││    0x00007fc83d2452ad: mov    0x5c(%rsp),%ecx
  0.16%    0.22%   │││         ││││    0x00007fc83d2452b1: cmp    %r10d,%ecx
                   │││    ╭    ││││    0x00007fc83d2452b4: je     0x00007fc83d245597  ;*if_icmpne
                   │││    │    ││││                                                  ; - com.google.re2j.Machine::match@351 (line 246)
  0.38%    0.32%   │││    │    ││││    0x00007fc83d2452ba: xor    %r10d,%r10d        ;*invokespecial step
                   │││    │    ││││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.06%   │││    │    ││││↗   0x00007fc83d2452bd: mov    %rax,-0x8(%rsp)
  0.10%    0.15%   │││    │    │││││   0x00007fc83d2452c2: mov    0x5c(%rsp),%eax
  0.11%    0.17%   │││    │    │││││   0x00007fc83d2452c6: mov    %eax,0x58(%rsp)
  0.28%    0.18%   │││    │    │││││   0x00007fc83d2452ca: mov    -0x8(%rsp),%rax    ;*invokevirtual endPos
                   │││    │    │││││                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.42%    0.15%   │││    │    │││││   0x00007fc83d2452cf: add    0x28(%rsp),%ecx    ;*iadd
                   │││    │    │││││                                                 ; - com.google.re2j.Machine::match@340 (line 246)
  0.16%    0.10%   │││    │    │││││   0x00007fc83d2452d3: mov    %ecx,0x5c(%rsp)
  0.18%    0.18%   │││    │    │││││   0x00007fc83d2452d7: mov    0x50(%rsp),%rsi
  0.19%    0.21%   │││    │    │││││   0x00007fc83d2452dc: mov    0x18(%rsp),%rdx
  0.14%    0.06%   │││    │    │││││   0x00007fc83d2452e1: mov    0x20(%rsp),%rcx
  0.10%    0.11%   │││    │    │││││   0x00007fc83d2452e6: mov    0x58(%rsp),%r8d
  0.20%    0.18%   │││    │    │││││   0x00007fc83d2452eb: mov    0x5c(%rsp),%r9d
  0.46%    0.34%   │││    │    │││││   0x00007fc83d2452f0: mov    %ebx,%edi
  0.05%    0.03%   │││    │    │││││   0x00007fc83d2452f2: mov    0x38(%rsp),%ebx
  0.09%    0.19%   │││    │    │││││   0x00007fc83d2452f6: mov    %ebx,(%rsp)
  0.14%    0.20%   │││    │    │││││   0x00007fc83d2452f9: xor    %ebx,%ebx
  0.20%    0.21%   │││    │    │││││   0x00007fc83d2452fb: mov    %ebx,0x8(%rsp)
  0.07%    0.08%   │││    │    │││││   0x00007fc83d2452ff: mov    %r10d,0x10(%rsp)
  0.08%    0.09%   │││    │    │││││   0x00007fc83d245304: data16 xchg %ax,%ax
  0.16%    0.17%   │││    │    │││││   0x00007fc83d245307: callq  0x00007fc83d046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [72]=Oop [80]=Oop off=908}
                   │││    │    │││││                                                 ;*invokespecial step
                   │││    │    │││││                                                 ; - com.google.re2j.Machine::match@359 (line 246)
                   │││    │    │││││                                                 ;   {optimized virtual_call}
  0.05%    0.08%   │││    │    │││││   0x00007fc83d24530c: mov    0x50(%rsp),%r10
  0.55%    0.80%   │││    │    │││││   0x00007fc83d245311: movzbl 0x11(%r10),%ecx    ;*getfield captures
                   │││    │    │││││                                                 ; - com.google.re2j.Machine::match@371 (line 250)
  0.05%    0.01%   │││    │    │││││   0x00007fc83d245316: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││    │    │││││                                                 ; - com.google.re2j.Machine::match@378 (line 250)
  0.03%    0.03%   │││    │    │││││   0x00007fc83d24531b: mov    0x28(%rsp),%r8d
  0.52%    0.61%   │││    │    │││││   0x00007fc83d245320: test   %r8d,%r8d
                   │││    │╭   │││││   0x00007fc83d245323: je     0x00007fc83d2455b1  ;*ifne
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@364 (line 247)
                   │││    ││   │││││   0x00007fc83d245329: test   %ecx,%ecx
                   │││    ││   │││││   0x00007fc83d24532b: jne    0x00007fc83d245c05  ;*ifne
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@374 (line 250)
  0.00%    0.02%   │││    ││   │││││   0x00007fc83d245331: test   %eax,%eax
                   │││    ││   │││││   0x00007fc83d245333: jne    0x00007fc83d245e3d  ;*ifeq
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@381 (line 250)
  0.06%    0.05%   │││    ││   │││││   0x00007fc83d245339: mov    %r10,%rbx
  0.61%    0.65%   │││    ││   │││││   0x00007fc83d24533c: mov    0x48(%rsp),%r10
  0.00%            │││    ││   │││││   0x00007fc83d245341: mov    0x10(%r10),%r11d   ;*getfield end
                   │││    ││   │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.04%   │││    ││   │││││   0x00007fc83d245345: mov    0xc(%r10),%r9d     ;*getfield start
                   │││    ││   │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.04%   │││    ││   │││││   0x00007fc83d245349: mov    0x14(%r10),%r13d   ;*getfield str
                   │││    ││   │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││    ││   │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.81%   │││    ││   │││││   0x00007fc83d24534d: mov    0x2c(%rsp),%r8d
                   │││    ││   │││││   0x00007fc83d245352: cmp    $0xffffffff,%r8d
                   │││    ││╭  │││││   0x00007fc83d245356: je     0x00007fc83d2455a2  ;*if_icmpeq
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@403 (line 258)
  0.00%            │││    │││  │││││   0x00007fc83d24535c: mov    0x30(%rsp),%r8d
  0.03%    0.08%   │││    │││  │││││   0x00007fc83d245361: add    0x5c(%rsp),%r8d
  0.53%    0.76%   │││    │││  │││││   0x00007fc83d245366: add    %r9d,%r8d          ;*iadd
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │││    │││  │││││   0x00007fc83d245369: cmp    %r11d,%r8d
                   │││    │││  │││││   0x00007fc83d24536c: jge    0x00007fc83d24571a  ;*if_icmpge
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
           0.04%   │││    │││  │││││   0x00007fc83d245372: mov    0x8(%r12,%r13,8),%r10d  ; implicit exception: dispatches to 0x00007fc83d246e59
  0.67%    0.71%   │││    │││  │││││   0x00007fc83d245377: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││    │││  │││││   0x00007fc83d24537e: jne    0x00007fc83d245b49
  0.54%    0.68%   │││    │││  │││││   0x00007fc83d245384: lea    (%r12,%r13,8),%rdx  ;*invokeinterface charAt
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │││    │││  │││││   0x00007fc83d245388: test   %r8d,%r8d
                   │││    │││  │││││   0x00007fc83d24538b: jl     0x00007fc83d245c59  ;*iflt
                   │││    │││  │││││                                                 ; - java.lang.String::charAt@1 (line 657)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.02%   │││    │││  │││││   0x00007fc83d245391: mov    0xc(%rdx),%r10d    ;*getfield value
                   │││    │││  │││││                                                 ; - java.lang.String::charAt@6 (line 657)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.07%   │││    │││  │││││   0x00007fc83d245395: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                   │││    │││  │││││                                                 ; - java.lang.String::charAt@9 (line 657)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
                   │││    │││  │││││                                                 ; implicit exception: dispatches to 0x00007fc83d246e6d
  2.31%    2.68%   │││    │││  │││││   0x00007fc83d24539a: cmp    %ebp,%r8d
                   │││    │││  │││││   0x00007fc83d24539d: jge    0x00007fc83d245e91  ;*if_icmplt
                   │││    │││  │││││                                                 ; - java.lang.String::charAt@10 (line 657)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.55%    0.72%   │││    │││  │││││   0x00007fc83d2453a3: cmp    %ebp,%r8d
                   │││    │││  │││││   0x00007fc83d2453a6: jae    0x00007fc83d245ad7
  0.21%    0.25%   │││    │││  │││││   0x00007fc83d2453ac: shl    $0x3,%r10
           0.01%   │││    │││  │││││   0x00007fc83d2453b0: movzwl 0x10(%r10,%r8,2),%edi  ;*caload
                   │││    │││  │││││                                                 ; - java.lang.String::charAt@27 (line 660)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.26%    0.32%   │││    │││  │││││   0x00007fc83d2453b6: cmp    $0xd800,%edi
                   │││    │││  │││││   0x00007fc83d2453bc: jge    0x00007fc83d245ef1  ;*if_icmplt
                   │││    │││  │││││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││    │││  │││││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.40%    0.67%   │││    │││  │││││   0x00007fc83d2453c2: shl    $0x3,%edi          ;*ishl
                   │││    │││  │││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@411 (line 259)
  0.30%    0.37%   │││    │││  │││││   0x00007fc83d2453c5: mov    %edi,%r10d
  0.00%    0.00%   │││    │││  │││││   0x00007fc83d2453c8: or     $0x1,%r10d
  0.51%    0.65%   │││    │││  │││││   0x00007fc83d2453cc: and    $0x7,%edi
  0.01%    0.02%   │││    │││  │││││   0x00007fc83d2453cf: sar    $0x3,%r10d         ;*ishr
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@419 (line 260)
  0.56%    0.72%   │││    │││  │││││   0x00007fc83d2453d3: or     $0x1,%edi          ; OopMap{rbx=Oop r13=NarrowOop [24]=Oop [32]=Oop [72]=Oop off=1110}
                   │││    │││  │││││                                                 ;*goto
                   │││    │││  │││││                                                 ; - com.google.re2j.Machine::match@441 (line 266)
  0.01%    0.00%   │││    │││  │││││↗  0x00007fc83d2453d6: test   %eax,0x18549c24(%rip)        # 0x00007fc85578f000
                   │││    │││  ││││││                                                ;*goto
                   │││    │││  ││││││                                                ; - com.google.re2j.Machine::match@441 (line 266)
                   │││    │││  ││││││                                                ;   {poll}
  0.04%    0.04%   │││    │││  ││││││  0x00007fc83d2453dc: mov    0x28(%rbx),%r14d   ;*getfield matchcap
                   │││    │││  ││││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.02%   │││    │││  ││││││  0x00007fc83d2453e0: mov    0x14(%rbx),%esi    ;*getfield re2
                   │││    │││  ││││││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.57%    0.74%   │││    │││  ││││││  0x00007fc83d2453e3: mov    0x20(%rsp),%r8
                   │││    │││  ││││││  0x00007fc83d2453e8: mov    %r8,%rdx
  0.02%    0.01%   │││    │││  ││││││  0x00007fc83d2453eb: shr    $0x3,%rdx
  0.01%    0.01%   │││    │││  ││││││  0x00007fc83d2453ef: mov    %edx,0x34(%rsp)
  0.67%    0.65%   │││    │││  ││││││  0x00007fc83d2453f3: mov    0x2c(%rsp),%r8d
  0.00%            │││    │││  ││││││  0x00007fc83d2453f8: mov    %r10d,0x2c(%rsp)
  0.01%    0.03%   │││    │││  ││││││  0x00007fc83d2453fd: mov    0x18(%rsp),%r10
  0.01%    0.01%   │││    │││  ││││││  0x00007fc83d245402: mov    %r10,0x20(%rsp)
  0.50%    0.72%   │││    │││  ││││││  0x00007fc83d245407: vmovd  %ecx,%xmm4
           0.00%   │││    │││  ││││││  0x00007fc83d24540b: mov    0x30(%rsp),%r10d
  0.02%    0.02%   │││    │││  ││││││  0x00007fc83d245410: mov    %r10d,0x28(%rsp)
  0.01%    0.01%   │││    │││  ││││││  0x00007fc83d245415: mov    %edi,0x30(%rsp)
  0.55%    0.80%   │││    │││  ││││││  0x00007fc83d245419: mov    %r9d,0x60(%rsp)
                   │││    │││  ││││││  0x00007fc83d24541e: mov    %r11d,0x64(%rsp)
  0.02%    0.02%   ↘││    │││  ││││││  0x00007fc83d245423: mov    0x34(%rsp),%r11d
  0.20%    0.07%    ││    │││  ││││││  0x00007fc83d245428: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fc83d246e1e
  0.59%    0.70%    ││    │││  ││││││  0x00007fc83d24542e: mov    0x34(%rsp),%r10d
  0.02%    0.00%    ││    │││  ││││││  0x00007fc83d245433: shl    $0x3,%r10          ;*aload
                    ││    │││  ││││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%             ││    │││  ││││││  0x00007fc83d245437: mov    %r10,0x18(%rsp)
  0.01%    0.01%    ││    │││  ││││││  0x00007fc83d24543c: test   %r11d,%r11d
                    ││    │││╭ ││││││  0x00007fc83d24543f: je     0x00007fc83d245483  ;*ifeq
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.21%    0.20%    ││    ││││ ││││││  0x00007fc83d245441: mov    0x44(%rsp),%r11d
  0.01%    0.00%    ││    ││││ ││││││  0x00007fc83d245446: test   %r11d,%r11d
                    ││    ││││ ││││││  0x00007fc83d245449: jne    0x00007fc83d246071  ;*ifeq
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@148 (line 212)
                    ││    ││││ ││││││  0x00007fc83d24544f: test   %eax,%eax
                    ││    ││││ ││││││  0x00007fc83d245451: jne    0x00007fc83d2460d1  ;*ifeq
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.01%    0.01%    ││    ││││ ││││││  0x00007fc83d245457: mov    0x24(%r12,%rsi,8),%r10d  ;*getfield prefix
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                    ││    ││││ ││││││                                                ; implicit exception: dispatches to 0x00007fc83d246e91
  0.19%    0.26%    ││    ││││ ││││││  0x00007fc83d24545c: mov    %r10d,%r9d
  0.00%             ││    ││││ ││││││  0x00007fc83d24545f: mov    0xc(%r12,%r10,8),%r10d  ;*getfield value
                    ││    ││││ ││││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││    ││││ ││││││                                                ; implicit exception: dispatches to 0x00007fc83d246ea1
                    ││    ││││ ││││││  0x00007fc83d245464: vmovd  %r10d,%xmm0
  0.02%    0.01%    ││    ││││ ││││││  0x00007fc83d245469: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                    ││    ││││ ││││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                    ││    ││││ ││││││                                                ; implicit exception: dispatches to 0x00007fc83d246eb1
  0.26%    0.24%    ││    ││││ ││││││  0x00007fc83d24546e: mov    %r10d,0x50(%rsp)
  0.03%    0.00%    ││    ││││ ││││││  0x00007fc83d245473: test   %r10d,%r10d
                    ││    ││││ ││││││  0x00007fc83d245476: jne    0x00007fc83d2457e4  ;*ifne
                    ││    ││││ ││││││                                                ; - com.google.re2j.Machine::match@178 (line 220)
                    ││    ││││ ││││││  0x00007fc83d24547c: mov    %r8d,0x58(%rsp)
  0.02%    0.00%    ││    ││││╭││││││  0x00007fc83d245481: jmp    0x00007fc83d245488
  0.32%    0.38%    ││    │││↘│││││││  0x00007fc83d245483: mov    %r8d,0x58(%rsp)    ;*iload_3
                    ││    │││ │││││││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.31%    0.19%    ││    │││ ↘││││││  0x00007fc83d245488: test   %eax,%eax
                    ││    │││  ││││││  0x00007fc83d24548a: jne    0x00007fc83d245bad  ;*ifne
                    ││    │││  ││││││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.01%    0.02%    ││    │││  ││││││  0x00007fc83d245490: vmovd  %xmm4,%r10d
  0.02%    0.00%    ││    │││  ││││││  0x00007fc83d245495: test   %r10d,%r10d
                    ││    │││  ││││││  0x00007fc83d245498: jne    0x00007fc83d245d25  ;*ifeq
                    ││    │││  ││││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.32%    0.30%    ││    │││  ││││││  0x00007fc83d24549e: mov    %rbx,%r11
  0.23%    0.09%    ││    │││  ││││││  0x00007fc83d2454a1: mov    0x18(%rbx),%r8d    ;*getfield prog
                    ││    │││  ││││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.04%    0.01%    ││    │││  ││││││  0x00007fc83d2454a5: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                    ││    │││  ││││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                    ││    │││  ││││││                                                ; implicit exception: dispatches to 0x00007fc83d246e2d
  0.01%             ││    │││  ││││││  0x00007fc83d2454aa: mov    %r11,0x50(%rsp)
  0.36%    0.31%    ││    │││  ││││││  0x00007fc83d2454af: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc83d246e3d
  0.23%    0.06%    ││    │││  ││││││  0x00007fc83d2454b4: lea    (%r12,%rbp,8),%r10
  0.01%    0.01%    ││    │││  ││││││  0x00007fc83d2454b8: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││    │││  ╰│││││  0x00007fc83d2454bf: je     0x00007fc83d2451dc
           0.00%    ││    │││   │││││  0x00007fc83d2454c5: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    ││    │││   │││││  0x00007fc83d2454cc: jne    0x00007fc83d245d81  ;*invokevirtual add
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.28%    0.24%    ││    │││   │││││  0x00007fc83d2454d2: mov    0x18(%r10),%ecx    ;*getfield pc
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
                    ││    │││   │││││  0x00007fc83d2454d6: cmp    $0x40,%ecx
                    ││    │││   │││││  0x00007fc83d2454d9: jg     0x00007fc83d245f4d  ;*if_icmpgt
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%    ││    │││   │││││  0x00007fc83d2454df: mov    %r10,%r9
  0.00%    0.00%    ││    │││   │││││  0x00007fc83d2454e2: mov    $0x1,%r8d
  0.25%    0.23%    ││    │││   │││││  0x00007fc83d2454e8: shl    %cl,%r8            ;*lshl
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.04%    ││    │││   │││││  0x00007fc83d2454eb: mov    0x34(%rsp),%r11d
  0.25%    0.16%    ││    │││   │││││  0x00007fc83d2454f0: mov    0x10(%r12,%r11,8),%r10  ;*getfield pcsl
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
           0.01%    ││    │││   │││││  0x00007fc83d2454f5: mov    %r10,%r11
  0.01%             ││    │││   │││││  0x00007fc83d2454f8: and    %r8,%r11           ;*land
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%    ││    │││   │││││  0x00007fc83d2454fb: test   %r11,%r11
                    ││    │││   │││││  0x00007fc83d2454fe: jne    0x00007fc83d245fa5  ;*ifeq
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.32%    0.15%    ││    │││   │││││  0x00007fc83d245504: cmp    $0x40,%ecx
                    ││    │││   │││││  0x00007fc83d245507: jge    0x00007fc83d246019  ;*if_icmpge
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
           0.00%    ││    │││   │││││  0x00007fc83d24550d: mov    0x34(%rsp),%r11d
  0.01%    0.01%    ││    │││   │││││  0x00007fc83d245512: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.02%    ││    │││   │││││  0x00007fc83d245517: mov    0x20(%r12,%r11,8),%ebx  ;*getfield denseThreadsInstructions
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.26%    0.19%    ││    │││   │││││  0x00007fc83d24551c: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
                    ││    │││   │││││  0x00007fc83d245521: or     %r10,%r8
  0.01%    0.01%    ││    │││   │││││  0x00007fc83d245524: mov    %r8,0x10(%r12,%r11,8)  ;*putfield pcsl
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.01%    ││    │││   │││││  0x00007fc83d245529: mov    %ebp,%r11d
  0.29%    0.25%    ││    │││   │││││  0x00007fc83d24552c: inc    %r11d
                    ││    │││   │││││  0x00007fc83d24552f: mov    0x34(%rsp),%r10d
  0.01%    0.02%    ││    │││   │││││  0x00007fc83d245534: mov    %r11d,0xc(%r12,%r10,8)  ;*putfield size
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.01%    ││    │││   │││││  0x00007fc83d245539: mov    0xc(%r12,%rbx,8),%r11d  ; implicit exception: dispatches to 0x00007fc83d246e7d
  0.23%    0.31%    ││    │││   │││││  0x00007fc83d24553e: cmp    %r11d,%ebp
                    ││    │││   │││││  0x00007fc83d245541: jae    0x00007fc83d245cc9
  0.09%    0.04%    ││    │││   │││││  0x00007fc83d245547: mov    0x8(%r12,%rbx,8),%r11d
           0.01%    ││    │││   │││││  0x00007fc83d24554c: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    ││    │││   │││││  0x00007fc83d245553: jne    0x00007fc83d245de1
  0.04%    0.04%    ││    │││   │││││  0x00007fc83d245559: mov    %r9,%r11
  0.24%    0.15%    ││    │││   │││││  0x00007fc83d24555c: shr    $0x3,%r11          ;*aastore
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.03%    0.01%    ││    │││   │││││  0x00007fc83d245560: lea    (%r12,%rbx,8),%r10  ;*getfield denseThreadsInstructions
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.00%    ││    │││   │││││  0x00007fc83d245564: lea    0x10(%r10,%rbp,4),%r10
  0.07%    0.03%    ││    │││   │││││  0x00007fc83d245569: mov    %r11d,(%r10)
  0.33%    0.27%    ││    │││   │││││  0x00007fc83d24556c: shr    $0x9,%r10
  0.02%    0.00%    ││    │││   │││││  0x00007fc83d245570: movabs $0x7fc84e197000,%r11
  0.00%    0.00%    ││    │││   │││││  0x00007fc83d24557a: mov    %r12b,(%r11,%r10,1)  ;*aastore
                    ││    │││   │││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                    ││    │││   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                    ││    │││   │││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.31%    0.33%    ││    │││   ╰││││  0x00007fc83d24557e: jmpq   0x00007fc83d24520c
           0.00%    ↘│    │││    ││││  0x00007fc83d245583: mov    $0x5,%r10d
                     │    │││    ╰│││  0x00007fc83d245589: jmpq   0x00007fc83d24521b
           0.01%     ↘    │││     │││  0x00007fc83d24558e: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                          │││     │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                          │││     ╰││  0x00007fc83d245592: jmpq   0x00007fc83d245232
           0.00%          ↘││      ││  0x00007fc83d245597: mov    $0x1,%r10d
                           ││      ╰│  0x00007fc83d24559d: jmpq   0x00007fc83d2452bd
                           │↘       │  0x00007fc83d2455a2: mov    0x30(%rsp),%edi
  0.01%    0.00%           │        │  0x00007fc83d2455a6: mov    $0xffffffff,%r10d
                           │        ╰  0x00007fc83d2455ac: jmpq   0x00007fc83d2453d6
                           ↘           0x00007fc83d2455b1: test   %ecx,%ecx
                                       0x00007fc83d2455b3: jne    0x00007fc83d2468e8  ;*ifeq
                                                                                     ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%                                0x00007fc83d2455b9: jmpq   0x00007fc83d2456e3
                                       0x00007fc83d2455be: test   %edi,%edi
                                       0x00007fc83d2455c0: jl     0x00007fc83d2456d2  ;*ifge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                                       0x00007fc83d2455c6: mov    %edi,%r10d
                                       0x00007fc83d2455c9: sub    0x2c(%rsp),%r10d   ;*isub
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@31 (line 205)
                                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                                       0x00007fc83d2455ce: test   %r10d,%r10d
                                       0x00007fc83d2455d1: jl     0x00007fc83d2456d2  ;*ifge
                                                                                     ; - com.google.re2j.Machine::match@213 (line 225)
           0.00%                       0x00007fc83d2455d7: mov    0x5c(%rsp),%r8d
                                       0x00007fc83d2455dc: add    %r10d,%r8d         ;*iadd
                                                                                     ; - com.google.re2j.Machine::match@222 (line 228)
                                       0x00007fc83d2455df: mov    %r8d,%edi
                                       0x00007fc83d2455e2: mov    %r8d,%r10d
  0.00%                                0x00007fc83d2455e5: add    0x60(%rsp),%r10d   ;*iadd
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                     ; - com.google.re2j.Machine::match@226 (line 229)
                                       0x00007fc83d2455ea: mov    %r10d,%r9d
                                       0x00007fc83d2455ed: cmp    0x64(%rsp),%r10d
                                       0x00007fc83d2455f2: jge    0x00007fc83d245aac  ;*if_icmpge
                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                     ; - com.google.re2j.Machine::match@226 (line 229)
                                       0x00007fc83d2455f8: test   %r10d,%r10d
                                       0x00007fc83d2455fb: jl     0x00007fc83d246b09  ;*iflt
                                                                                     ; - java.lang.String::charAt@1 (line 657)
....................................................................................................
 28.59%   29.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 494 (195 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@214 (line 317)
                                                                   ;   {optimized virtual_call}
                     0x00007fc83d21fe60: test   %rax,%rax
                     0x00007fc83d21fe63: jne    0x00007fc83d2212fd
                     0x00007fc83d21fe69: mov    0x48(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.07%     0x00007fc83d21fe6e: mov    0x28(%rsp),%r14
  0.05%    0.07%     0x00007fc83d21fe73: mov    0xac(%rsp),%eax
  0.16%    0.22%     0x00007fc83d21fe7a: mov    0x30(%rsp),%r13
  0.08%    0.16%     0x00007fc83d21fe7f: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.11%     0x00007fc83d21fe87: mov    0xa8(%rsp),%r8d
  0.05%    0.07%     0x00007fc83d21fe8f: mov    0xb0(%rsp),%ebx    ;*aload
                                                                   ; - com.google.re2j.Machine::step@219 (line 320)
  1.39%    1.30%     0x00007fc83d21fe96: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@230 (line 286)
  0.18%    0.19%     0x00007fc83d21fe99: cmp    %eax,%r10d
                     0x00007fc83d21fe9c: jge    0x00007fc83d21ff7d
  0.97%    1.01%     0x00007fc83d21fea2: mov    %r11,%r9
  0.10%    0.09%     0x00007fc83d21fea5: mov    %r8d,0xa8(%rsp)
  1.02%    1.14%     0x00007fc83d21fead: mov    %ebx,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@43 (line 289)
  0.20%    0.27%     0x00007fc83d21feb4: mov    0x10(%r13,%r10,4),%r8d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@99 (line 299)
  1.16%    1.32%     0x00007fc83d21feb9: mov    0xc(%r12,%r8,8),%r11d  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@104 (line 301)
                                                                   ; implicit exception: dispatches to 0x00007fc83d221369
  1.72%    1.86%     0x00007fc83d21febe: cmp    $0x6,%r11d
                     0x00007fc83d21fec2: je     0x00007fc83d21ffc5  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@109 (line 301)
  1.70%    1.70%     0x00007fc83d21fec8: cmp    $0xa,%r11d
                     0x00007fc83d21fecc: je     0x00007fc83d21f9dd  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.61%    0.66%     0x00007fc83d21fed2: cmp    $0xb,%r11d
                     0x00007fc83d21fed6: je     0x00007fc83d22006a  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  1.25%    1.15%     0x00007fc83d21fedc: mov    0x1c(%r12,%r8,8),%ecx  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.08%    0.07%     0x00007fc83d21fee1: cmp    $0x9,%r11d
                  ╭  0x00007fc83d21fee5: jne    0x00007fc83d21fef9  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 316)
  0.36%    0.16%  │  0x00007fc83d21fee7: cmp    0x18(%rsp),%ecx
                  │  0x00007fc83d21feeb: je     0x00007fc83d21ffba  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@191 (line 316)
  0.05%    0.04%  │  0x00007fc83d21fef1: xor    %r11d,%r11d
  0.27%    0.12%  │  0x00007fc83d21fef4: jmpq   0x00007fc83d21f933
  0.91%    1.02%  ↘  0x00007fc83d21fef9: cmp    $0xc,%r11d
                     0x00007fc83d21fefd: jne    0x00007fc83d220099  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.88%    1.02%     0x00007fc83d21ff03: cmp    0x18(%rsp),%ecx
                     0x00007fc83d21ff07: je     0x00007fc83d21ffaf  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.94%    0.97%     0x00007fc83d21ff0d: mov    0x20(%r12,%r8,8),%r11d  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.03%    0.04%     0x00007fc83d21ff12: cmp    0x18(%rsp),%r11d
                     0x00007fc83d21ff17: je     0x00007fc83d21ffaf  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  1.56%    1.60%     0x00007fc83d21ff1d: mov    0x24(%r12,%r8,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.21%    0.16%     0x00007fc83d21ff22: cmp    0x18(%rsp),%ebp
                     0x00007fc83d21ff26: je     0x00007fc83d2200c9  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  1.43%    1.47%     0x00007fc83d21ff2c: mov    0x28(%r12,%r8,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
  0.01%    0.05%     0x00007fc83d21ff31: cmp    0x18(%rsp),%ebp
                     0x00007fc83d21ff35: jne    0x00007fc83d21f930  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@191 (line 316)
                     0x00007fc83d21ff3b: mov    $0xffffff65,%esi
                     0x00007fc83d21ff40: mov    %r10d,0xa4(%rsp)
                     0x00007fc83d21ff48: mov    %r8d,0xac(%rsp)
                     0x00007fc83d21ff50: mov    %r14,0x28(%rsp)
                     0x00007fc83d21ff55: mov    %r9,0x30(%rsp)
....................................................................................................
 17.51%   18.10%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 494 (1013 bytes) 

                     0x00007fc83d21f9c0: mov    %r11d,(%rdx)
                     0x00007fc83d21f9c3: shr    $0x9,%r10
                     0x00007fc83d21f9c7: movabs $0x7fc84e197000,%r11
                     0x00007fc83d21f9d1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21f9d5: mov    %r13,%r11
                     0x00007fc83d21f9d8: jmpq   0x00007fc83d21fe6e
  0.20%    0.15%     0x00007fc83d21f9dd: mov    0x2c(%r12,%r8,8),%r11d  ;*getfield outInst
                                                                   ; - com.google.re2j.Machine::step@199 (line 317)
  0.23%    0.15%     0x00007fc83d21f9e2: mov    0x8(%r12,%r11,8),%ebx  ; implicit exception: dispatches to 0x00007fc83d221379
  1.01%    0.74%     0x00007fc83d21f9e7: lea    (%r12,%r11,8),%r8
  0.01%    0.01%     0x00007fc83d21f9eb: cmp    $0xf8019843,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                  ╭  0x00007fc83d21f9f1: je     0x00007fc83d21faa7
  0.10%    0.04%  │  0x00007fc83d21f9f7: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007fc83d21f9fd: jne    0x00007fc83d2207e9  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.04%    0.02%  │  0x00007fc83d21fa03: mov    0x18(%r8),%edx     ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
                  │  0x00007fc83d21fa07: mov    %r9,%r11
                  │  0x00007fc83d21fa0a: mov    0x10(%r9),%r9      ;*getfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
                  │                                                ; implicit exception: dispatches to 0x00007fc83d221441
  0.03%           │  0x00007fc83d21fa0e: cmp    $0x40,%edx
                  │  0x00007fc83d21fa11: jg     0x00007fc83d220ec9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.06%    0.00%  │  0x00007fc83d21fa17: mov    $0x1,%ebx
                  │  0x00007fc83d21fa1c: mov    %edx,%ecx
                  │  0x00007fc83d21fa1e: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.14%    0.05%  │  0x00007fc83d21fa21: mov    %r9,%rcx
                  │  0x00007fc83d21fa24: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.00%           │  0x00007fc83d21fa27: test   %rcx,%rcx
                  │  0x00007fc83d21fa2a: jne    0x00007fc83d220047  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.02%    0.03%  │  0x00007fc83d21fa30: xor    %ebp,%ebp          ;*ireturn
                  │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.03%    0.01%  │  0x00007fc83d21fa32: test   %rcx,%rcx
                  │  0x00007fc83d21fa35: jne    0x00007fc83d220f51  ;*ifeq
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.02%    0.02%  │  0x00007fc83d21fa3b: cmp    $0x40,%edx
                  │  0x00007fc83d21fa3e: jge    0x00007fc83d220fc1  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.01%    0.01%  │  0x00007fc83d21fa44: mov    %r12b,0x18(%r11)   ;*putfield empty
                  │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.00%           │  0x00007fc83d21fa48: or     %r9,%rbx
  0.04%    0.00%  │  0x00007fc83d21fa4b: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.01%    0.03%  │  0x00007fc83d21fa4f: mov    0x20(%r11),%edx    ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.01%    0.00%  │  0x00007fc83d21fa53: mov    0xc(%r11),%ebp     ;*getfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.04%           │  0x00007fc83d21fa57: mov    %ebp,%ecx
  0.03%    0.00%  │  0x00007fc83d21fa59: inc    %ecx
  0.09%    0.04%  │  0x00007fc83d21fa5b: mov    %ecx,0xc(%r11)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.05%    0.01%  │  0x00007fc83d21fa5f: mov    0xc(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007fc83d221455
  0.01%    0.01%  │  0x00007fc83d21fa64: cmp    %ecx,%ebp
                  │  0x00007fc83d21fa66: jae    0x00007fc83d220761
  0.02%    0.00%  │  0x00007fc83d21fa6c: mov    0x8(%r12,%rdx,8),%ecx
  0.02%    0.02%  │  0x00007fc83d21fa71: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007fc83d21fa77: jne    0x00007fc83d22085d  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.03%    0.01%  │  0x00007fc83d21fa7d: lea    (%r12,%rdx,8),%r9  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
                  │  0x00007fc83d21fa81: lea    0x10(%r9,%rbp,4),%r9
  0.05%    0.01%  │  0x00007fc83d21fa86: shr    $0x3,%r8
  0.02%    0.00%  │  0x00007fc83d21fa8a: mov    %r8d,(%r9)
  0.31%    0.11%  │  0x00007fc83d21fa8d: mov    %r9,%r8
                  │  0x00007fc83d21fa90: shr    $0x9,%r8
                  │  0x00007fc83d21fa94: movabs $0x7fc84e197000,%r9
  0.01%    0.02%  │  0x00007fc83d21fa9e: mov    %r12b,(%r9,%r8,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.13%    0.12%  │  0x00007fc83d21faa2: jmpq   0x00007fc83d21fe87  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Machine::step@214 (line 317)
  0.20%    0.30%  ↘  0x00007fc83d21faa7: mov    0x18(%r8),%edx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%     0x00007fc83d21faab: mov    %r9,%r11
  0.02%    0.01%     0x00007fc83d21faae: mov    0x10(%r9),%r9      ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fc83d2213ad
                     0x00007fc83d21fab2: cmp    $0x40,%edx
                     0x00007fc83d21fab5: jg     0x00007fc83d2204e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.26%     0x00007fc83d21fabb: mov    $0x1,%ebx
  0.00%              0x00007fc83d21fac0: mov    %edx,%ecx
  0.01%    0.00%     0x00007fc83d21fac2: shl    %cl,%rbx           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.50%    0.46%     0x00007fc83d21fac5: mov    %r9,%rcx
  0.00%              0x00007fc83d21fac8: and    %rbx,%rcx
                     0x00007fc83d21facb: test   %rcx,%rcx
                     0x00007fc83d21face: jne    0x00007fc83d21fe87  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.08%     0x00007fc83d21fad4: cmp    $0x40,%edx
                     0x00007fc83d21fad7: jge    0x00007fc83d220565  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.14%     0x00007fc83d21fadd: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.00%     0x00007fc83d21fae1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fc83d21fae5: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.06%     0x00007fc83d21fae8: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.13%     0x00007fc83d21faec: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007fc83d2213c1
  0.38%    0.18%     0x00007fc83d21faf1: cmp    $0xf8019909,%esi   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fc83d21faf7: jne    0x00007fc83d220175
  0.33%    0.18%     0x00007fc83d21fafd: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fc83d21fb01: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.09%     0x00007fc83d21fb05: cmp    $0x40,%ecx
                     0x00007fc83d21fb08: jg     0x00007fc83d2205e1  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.22%     0x00007fc83d21fb0e: mov    $0x1,%edi
  0.05%    0.05%     0x00007fc83d21fb13: shl    %cl,%rdi           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.49%    0.42%     0x00007fc83d21fb16: mov    %rbx,%rdx
  0.01%    0.03%     0x00007fc83d21fb19: and    %rdi,%rdx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fb1c: test   %rdx,%rdx
                     0x00007fc83d21fb1f: jne    0x00007fc83d220017  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.19%     0x00007fc83d21fb25: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.07%     0x00007fc83d21fb27: test   %rdx,%rdx
                     0x00007fc83d21fb2a: jne    0x00007fc83d220661  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.15%     0x00007fc83d21fb30: cmp    $0x40,%ecx
                     0x00007fc83d21fb33: jge    0x00007fc83d2206e1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fc83d21fb39: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%     0x00007fc83d21fb3c: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.08%     0x00007fc83d21fb40: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.16%     0x00007fc83d21fb44: mov    0xc(%r11),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fb48: mov    %ecx,%edx
  0.01%    0.02%     0x00007fc83d21fb4a: inc    %edx               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.05%     0x00007fc83d21fb4c: mov    %edx,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.13%     0x00007fc83d21fb50: mov    0xc(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fc83d2213d5
  0.01%    0.01%     0x00007fc83d21fb55: cmp    %esi,%ecx
                     0x00007fc83d21fb57: jae    0x00007fc83d2200f5
  0.09%    0.06%     0x00007fc83d21fb5d: vmovd  %edx,%xmm2
  0.08%    0.06%     0x00007fc83d21fb61: mov    %ecx,0xc(%rsp)
  0.24%    0.10%     0x00007fc83d21fb65: vmovd  %edi,%xmm0
                     0x00007fc83d21fb69: mov    %r10d,0xa4(%rsp)
  0.03%    0.07%     0x00007fc83d21fb71: mov    %r13,0x30(%rsp)
  0.06%    0.04%     0x00007fc83d21fb76: mov    %eax,0xac(%rsp)
  0.18%    0.13%     0x00007fc83d21fb7d: mov    %r11,%r13
                     0x00007fc83d21fb80: mov    %r14,0x28(%rsp)
  0.02%    0.06%     0x00007fc83d21fb85: mov    0x8(%r12,%rdi,8),%r11d
  0.06%    0.07%     0x00007fc83d21fb8a: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                     0x00007fc83d21fb91: jne    0x00007fc83d2201f1  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.16%     0x00007fc83d21fb97: mov    0x34(%r8),%r10d    ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%     0x00007fc83d21fb9b: mov    %r10d,%ecx
  0.05%    0.07%     0x00007fc83d21fb9e: mov    %r9,%r10
  0.10%    0.05%     0x00007fc83d21fba1: shr    $0x3,%r10          ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.18%     0x00007fc83d21fba5: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fba9: mov    0xc(%rsp),%r11d
  0.03%    0.03%     0x00007fc83d21fbae: lea    0x10(%r9,%r11,4),%r11
  0.09%    0.11%     0x00007fc83d21fbb3: mov    %r10d,(%r11)
  0.16%    0.16%     0x00007fc83d21fbb6: mov    %r11,%r10
                     0x00007fc83d21fbb9: shr    $0x9,%r10
  0.07%    0.03%     0x00007fc83d21fbbd: movabs $0x7fc84e197000,%r11
  0.07%    0.08%     0x00007fc83d21fbc7: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.24%    0.10%     0x00007fc83d21fbcb: mov    %ecx,%r10d
           0.00%     0x00007fc83d21fbce: mov    0x8(%r12,%r10,8),%r8d  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                   ; implicit exception: dispatches to 0x00007fc83d2213f1
  0.03%    0.03%     0x00007fc83d21fbd3: movslq 0xc(%rsp),%r10
  0.08%    0.03%     0x00007fc83d21fbd8: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.14%     0x00007fc83d21fbdc: mov    %rdi,%rdx
                     0x00007fc83d21fbdf: add    $0x14,%rdx         ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.02%     0x00007fc83d21fbe3: mov    %ecx,%r10d
  0.11%    0.09%     0x00007fc83d21fbe6: lea    (%r12,%r10,8),%rax
  0.14%    0.19%     0x00007fc83d21fbea: mov    0xc(%rsp),%r10d
                     0x00007fc83d21fbef: add    $0x2,%r10d         ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.03%     0x00007fc83d21fbf3: cmp    $0xf8019885,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fc83d21fbfa: jne    0x00007fc83d21f953  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%     0x00007fc83d21fc00: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.09%     0x00007fc83d21fc04: mov    %r11d,%r14d
                     0x00007fc83d21fc07: cmp    $0x40,%r11d
                     0x00007fc83d21fc0b: jg     0x00007fc83d2209a9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%     0x00007fc83d21fc11: mov    $0x1,%r8d
  0.05%    0.02%     0x00007fc83d21fc17: mov    %r11d,%ecx
  0.19%    0.05%     0x00007fc83d21fc1a: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.14%    0.02%     0x00007fc83d21fc1d: mov    %rbx,%r11
  0.21%    0.10%     0x00007fc83d21fc20: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fc23: test   %r11,%r11
                     0x00007fc83d21fc26: jne    0x00007fc83d220021  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%     0x00007fc83d21fc2c: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.05%     0x00007fc83d21fc2e: test   %r11,%r11
                     0x00007fc83d21fc31: jne    0x00007fc83d220a29  ;*ifeq
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.12%     0x00007fc83d21fc37: mov    %ecx,%r11d
                     0x00007fc83d21fc3a: cmp    $0x40,%r11d
                     0x00007fc83d21fc3e: jge    0x00007fc83d220a79  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%     0x00007fc83d21fc44: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007fc83d21fc47: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.07%     0x00007fc83d21fc4b: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fc83d21fc4e: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fc83d221405
  0.05%    0.02%     0x00007fc83d21fc53: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                     0x00007fc83d21fc5a: jne    0x00007fc83d220435
  0.05%    0.00%     0x00007fc83d21fc60: lea    (%r12,%rbp,8),%rax  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.16%     0x00007fc83d21fc64: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fc68: mov    %r11d,%ecx
  0.05%    0.07%     0x00007fc83d21fc6b: cmp    $0x40,%r11d
                     0x00007fc83d21fc6f: jg     0x00007fc83d220c61  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.08%    0.07%     0x00007fc83d21fc75: mov    $0x1,%r8d
  0.15%    0.19%     0x00007fc83d21fc7b: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.13%    0.19%     0x00007fc83d21fc7e: mov    %rbx,%r11
  0.21%    0.26%     0x00007fc83d21fc81: and    %r8,%r11
                     0x00007fc83d21fc84: test   %r11,%r11
                     0x00007fc83d21fc87: jne    0x00007fc83d220035  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.04%     0x00007fc83d21fc8d: mov    %ecx,%r11d
  0.07%    0.09%     0x00007fc83d21fc90: cmp    $0x40,%r11d
                     0x00007fc83d21fc94: jge    0x00007fc83d220ce1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.16%     0x00007fc83d21fc9a: mov    0x2c(%rax),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%              0x00007fc83d21fc9d: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%     0x00007fc83d21fca0: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.13%     0x00007fc83d21fca4: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fc83d221419
  0.19%    0.29%     0x00007fc83d21fca9: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fc83d21fcb0: jne    0x00007fc83d220481
                     0x00007fc83d21fcb6: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.03%     0x00007fc83d21fcba: mov    0x18(%r14),%r11d   ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007fc83d21fcbe: vmovd  %r11d,%xmm1
  0.21%    0.16%     0x00007fc83d21fcc3: cmp    $0x40,%r11d
                     0x00007fc83d21fcc7: jg     0x00007fc83d220d61  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fccd: mov    $0x1,%r8d
  0.03%    0.05%     0x00007fc83d21fcd3: mov    %r11d,%ecx
  0.08%    0.08%     0x00007fc83d21fcd6: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.32%     0x00007fc83d21fcd9: mov    %rbx,%r11
  0.07%    0.11%     0x00007fc83d21fcdc: and    %r8,%r11           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.25%     0x00007fc83d21fcdf: test   %r11,%r11
                     0x00007fc83d21fce2: jne    0x00007fc83d22003d  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%              0x00007fc83d21fce8: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%     0x00007fc83d21fcea: test   %r11,%r11
                     0x00007fc83d21fced: jne    0x00007fc83d220de9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.05%     0x00007fc83d21fcf3: mov    %ecx,%r11d
  0.14%    0.18%     0x00007fc83d21fcf6: cmp    $0x40,%r11d
                     0x00007fc83d21fcfa: jge    0x00007fc83d220e45  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fd00: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.07%    0.06%     0x00007fc83d21fd04: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%     0x00007fc83d21fd07: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.21%     0x00007fc83d21fd0b: cmp    %esi,%r10d
                     0x00007fc83d21fd0e: jae    0x00007fc83d220339  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
                     0x00007fc83d21fd14: mov    0x34(%rax),%r10d   ;*getfield inst2
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%     0x00007fc83d21fd18: mov    %rdx,%r8
  0.08%    0.07%     0x00007fc83d21fd1b: mov    %r14,%r11
  0.25%    0.18%     0x00007fc83d21fd1e: shr    $0x3,%r11
  0.00%              0x00007fc83d21fd22: mov    %r11d,(%rdx)
  0.03%    0.05%     0x00007fc83d21fd25: shr    $0x9,%r8
  0.06%    0.09%     0x00007fc83d21fd29: movabs $0x7fc84e197000,%r11
  0.18%    0.22%     0x00007fc83d21fd33: mov    %r12b,(%r11,%r8,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fc83d21fd37: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fc83d22142d
  0.05%    0.08%     0x00007fc83d21fd3c: lea    (%r12,%r10,8),%r8
  0.04%    0.06%     0x00007fc83d21fd40: cmp    $0xf8019885,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                     0x00007fc83d21fd47: je     0x00007fc83d21fdd7
  0.16%    0.23%     0x00007fc83d21fd4d: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007fc83d21fd54: jne    0x00007fc83d2208e5  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%     0x00007fc83d21fd5a: mov    0x18(%r8),%ecx     ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.07%     0x00007fc83d21fd5e: cmp    $0x40,%ecx
                     0x00007fc83d21fd61: jg     0x00007fc83d221199  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.15%     0x00007fc83d21fd67: mov    $0x1,%r11d
  0.18%    0.23%     0x00007fc83d21fd6d: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.17%     0x00007fc83d21fd70: mov    %rbx,%r10
  0.15%    0.06%     0x00007fc83d21fd73: and    %r11,%r10          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fc83d21fd76: test   %r10,%r10
                     0x00007fc83d21fd79: jne    0x00007fc83d22005b  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%     0x00007fc83d21fd7f: mov    %ecx,%edx
  0.03%    0.08%     0x00007fc83d21fd81: mov    %r8,%rcx
  0.16%    0.19%     0x00007fc83d21fd84: xor    %ebp,%ebp          ;*ireturn
                                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%     0x00007fc83d21fd86: test   %r10,%r10
                     0x00007fc83d21fd89: jne    0x00007fc83d221211  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.14%     0x00007fc83d21fd8f: cmp    $0x40,%edx
                     0x00007fc83d21fd92: jge    0x00007fc83d221285  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.11%     0x00007fc83d21fd98: or     %r11,%rbx
  0.14%    0.23%     0x00007fc83d21fd9b: mov    %r13,%r11
  0.01%              0x00007fc83d21fd9e: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.14%     0x00007fc83d21fda2: add    $0x18,%rdi
  0.03%    0.05%     0x00007fc83d21fda6: mov    %rcx,%r10
  0.16%    0.19%     0x00007fc83d21fda9: shr    $0x3,%r10
  0.01%              0x00007fc83d21fdad: mov    %r10d,(%rdi)       ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.13%     0x00007fc83d21fdb0: mov    %rdi,%r10
  0.04%    0.05%     0x00007fc83d21fdb3: mov    0xc(%rsp),%r8d
  0.16%    0.15%     0x00007fc83d21fdb8: add    $0x3,%r8d
  0.00%              0x00007fc83d21fdbc: mov    %r8d,0xc(%r11)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.12%    0.09%     0x00007fc83d21fdc0: shr    $0x9,%r10
  0.06%    0.07%     0x00007fc83d21fdc4: movabs $0x7fc84e197000,%r8
  0.17%    0.06%     0x00007fc83d21fdce: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.03%     0x00007fc83d21fdd2: jmpq   0x00007fc83d21fe6e  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 17.38%   14.97%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 511 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007fc83d223cc0: mov    0x8(%rsi),%r10d
                            0x00007fc83d223cc4: shl    $0x3,%r10
                            0x00007fc83d223cc8: cmp    %r10,%rax
                            0x00007fc83d223ccb: jne    0x00007fc83d045e20  ;   {runtime_call}
                            0x00007fc83d223cd1: data16 xchg %ax,%ax
                            0x00007fc83d223cd4: nopl   0x0(%rax,%rax,1)
                            0x00007fc83d223cdc: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.08%    0.03%            0x00007fc83d223ce0: mov    %eax,-0x14000(%rsp)
  0.28%    0.22%            0x00007fc83d223ce7: push   %rbp
  0.02%                     0x00007fc83d223ce8: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.29%    0.31%            0x00007fc83d223cec: vmovd  %r9d,%xmm4
  0.01%    0.02%            0x00007fc83d223cf1: vmovq  %r8,%xmm3
  0.00%    0.00%            0x00007fc83d223cf6: vmovq  %rsi,%xmm2
  0.04%    0.06%            0x00007fc83d223cfb: mov    %ecx,%r13d
  0.23%    0.14%            0x00007fc83d223cfe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.02%    0.03%            0x00007fc83d223d01: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007fc83d224605
  0.01%    0.01%            0x00007fc83d223d05: cmp    $0x40,%ecx
                            0x00007fc83d223d08: jg     0x00007fc83d224215  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.05%    0.07%            0x00007fc83d223d0e: mov    $0x1,%esi
  0.24%    0.29%            0x00007fc83d223d13: mov    $0x1,%r9d
  0.00%    0.01%            0x00007fc83d223d19: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.29%    0.33%            0x00007fc83d223d1c: mov    %r11,%r10
  0.01%    0.01%            0x00007fc83d223d1f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%            0x00007fc83d223d22: test   %r10,%r10
                  ╭         0x00007fc83d223d25: jne    0x00007fc83d224044  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.08%    0.04%  │         0x00007fc83d223d2b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.22%    0.28%  │   ↗     0x00007fc83d223d2d: test   %r10,%r10
                  │   │     0x00007fc83d223d30: jne    0x00007fc83d224249  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.03%    0.00%  │   │     0x00007fc83d223d36: cmp    $0x40,%ecx
                  │   │     0x00007fc83d223d39: jge    0x00007fc83d224279  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%           │   │     0x00007fc83d223d3f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.06%    0.07%  │   │     0x00007fc83d223d43: vmovq  %xmm2,%r10
  0.22%    0.26%  │   │     0x00007fc83d223d48: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.02%    0.01%  │   │     0x00007fc83d223d4c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%  │   │     0x00007fc83d223d4f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.06%    0.07%  │   │     0x00007fc83d223d53: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc83d224619
  0.23%    0.26%  │   │     0x00007fc83d223d58: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007fc83d223d5f: jne    0x00007fc83d2240f9
  0.02%    0.01%  │   │     0x00007fc83d223d65: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%           │   │     0x00007fc83d223d69: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.10%  │   │     0x00007fc83d223d6d: cmp    $0x40,%ecx
                  │   │     0x00007fc83d223d70: jg     0x00007fc83d2242ad  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.33%    0.23%  │   │     0x00007fc83d223d76: mov    $0x1,%r10d
           0.00%  │   │     0x00007fc83d223d7c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.32%    0.48%  │   │     0x00007fc83d223d7f: mov    %r9,%r8
  0.02%    0.02%  │   │     0x00007fc83d223d82: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.02%  │   │     0x00007fc83d223d85: test   %r8,%r8
                  │╭  │     0x00007fc83d223d88: jne    0x00007fc83d22404e  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.09%  ││  │     0x00007fc83d223d8e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.26%    0.19%  ││  │↗    0x00007fc83d223d90: test   %r8,%r8
                  ││  ││    0x00007fc83d223d93: jne    0x00007fc83d2242e9  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.00%  ││  ││    0x00007fc83d223d99: cmp    $0x40,%ecx
                  ││  ││    0x00007fc83d223d9c: jge    0x00007fc83d22431d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%  ││  ││    0x00007fc83d223da2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.07%  ││  ││    0x00007fc83d223da5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.27%    0.37%  ││  ││    0x00007fc83d223da9: mov    0x88(%rsp),%r8d
  0.02%    0.01%  ││  ││    0x00007fc83d223db1: test   %r8d,%r8d
                  ││  ││    0x00007fc83d223db4: jne    0x00007fc83d22435d  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.03%  ││  ││    0x00007fc83d223dba: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.09%  ││  ││    0x00007fc83d223dbd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.26%    0.41%  ││  ││    0x00007fc83d223dc0: mov    %ecx,%edi
  0.03%    0.02%  ││  ││    0x00007fc83d223dc2: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.00%  ││  ││    0x00007fc83d223dc4: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.06%  ││  ││    0x00007fc83d223dc7: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fc83d224641
  0.20%    0.24%  ││  ││    0x00007fc83d223dcc: cmp    %r10d,%ecx
                  ││  ││    0x00007fc83d223dcf: jae    0x00007fc83d22407d
  0.02%    0.01%  ││  ││    0x00007fc83d223dd5: vmovd  %edi,%xmm0
  0.01%    0.01%  ││  ││    0x00007fc83d223dd9: mov    %ebx,%edi
  0.07%    0.07%  ││  ││    0x00007fc83d223ddb: mov    %ecx,%eax
  0.18%    0.30%  ││  ││    0x00007fc83d223ddd: mov    %r11,%rcx
  0.01%    0.01%  ││  ││    0x00007fc83d223de0: mov    0x88(%rsp),%r11d
  0.01%    0.01%  ││  ││    0x00007fc83d223de8: mov    0x8(%r12,%rbx,8),%r8d
  0.06%    0.04%  ││  ││    0x00007fc83d223ded: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007fc83d223df4: jne    0x00007fc83d224129  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.26%    0.27%  ││  ││    0x00007fc83d223dfa: vmovq  %xmm2,%r11
  0.00%    0.03%  ││  ││    0x00007fc83d223dff: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
           0.00%  ││  ││    0x00007fc83d223e03: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.05%  ││  ││    0x00007fc83d223e07: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.23%  ││  ││    0x00007fc83d223e0b: lea    0x10(%r11,%rax,4),%r8
  0.01%    0.02%  ││  ││    0x00007fc83d223e10: mov    %ecx,(%r8)
  0.01%    0.01%  ││  ││    0x00007fc83d223e13: mov    %r8,%rcx
  0.06%    0.06%  ││  ││    0x00007fc83d223e16: shr    $0x9,%rcx
  0.25%    0.16%  ││  ││    0x00007fc83d223e1a: movabs $0x7fc84e197000,%r8
  0.01%    0.01%  ││  ││    0x00007fc83d223e24: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%  ││  ││    0x00007fc83d223e28: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fc83d22465d
  0.05%    0.04%  ││  ││    0x00007fc83d223e2d: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007fc83d223e33: jne    0x00007fc83d224169
  0.21%    0.10%  ││  ││    0x00007fc83d223e39: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.00%  ││  ││    0x00007fc83d223e3d: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.19%    0.27%  ││  ││    0x00007fc83d223e41: vmovd  %ecx,%xmm1
  0.15%    0.10%  ││  ││    0x00007fc83d223e45: cmp    $0x40,%ecx
                  ││  ││    0x00007fc83d223e48: jg     0x00007fc83d224399  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.15%    0.19%  ││  ││    0x00007fc83d223e4e: mov    $0x1,%ebx
  0.01%           ││  ││    0x00007fc83d223e53: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.40%    0.56%  ││  ││    0x00007fc83d223e56: mov    %r9,%rcx
  0.01%           ││  ││    0x00007fc83d223e59: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  ││  ││    0x00007fc83d223e5c: test   %rcx,%rcx
                  ││╭ ││    0x00007fc83d223e5f: jne    0x00007fc83d224058  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.17%  │││ ││    0x00007fc83d223e65: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.07%  │││ ││↗   0x00007fc83d223e67: test   %rcx,%rcx
                  │││ │││   0x00007fc83d223e6a: jne    0x00007fc83d2243d5  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.10%  │││ │││   0x00007fc83d223e70: vmovd  %xmm1,%ecx
  0.03%    0.05%  │││ │││   0x00007fc83d223e74: cmp    $0x40,%ecx
                  │││ │││   0x00007fc83d223e77: jge    0x00007fc83d224409  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.18%  │││ │││   0x00007fc83d223e7d: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.13%  │││ │││   0x00007fc83d223e80: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  │││ │││   0x00007fc83d223e84: mov    %eax,%ebx
  0.01%    0.03%  │││ │││   0x00007fc83d223e86: add    $0x2,%ebx
  0.17%    0.20%  │││ │││   0x00007fc83d223e89: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.14%    0.19%  │││ │││   0x00007fc83d223e8c: mov    %eax,%ebx
  0.02%    0.03%  │││ │││   0x00007fc83d223e8e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.02%  │││ │││   0x00007fc83d223e91: cmp    %r10d,%ebx
                  │││ │││   0x00007fc83d223e94: jae    0x00007fc83d2240bd  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.13%    0.16%  │││ │││   0x00007fc83d223e9a: vmovq  %xmm2,%r10
  0.10%    0.12%  │││ │││   0x00007fc83d223e9f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.01%    0.01%  │││ │││   0x00007fc83d223ea3: mov    %r14,%rcx
  0.02%    0.02%  │││ │││   0x00007fc83d223ea6: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.16%    0.20%  │││ │││   0x00007fc83d223eaa: movslq %eax,%r10
  0.21%    0.15%  │││ │││   0x00007fc83d223ead: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.00%    0.03%  │││ │││   0x00007fc83d223eb1: mov    %rdi,%r10
  0.03%    0.03%  │││ │││   0x00007fc83d223eb4: add    $0x14,%r10
  0.17%    0.23%  │││ │││   0x00007fc83d223eb8: mov    %ecx,(%r10)
  0.14%    0.07%  │││ │││   0x00007fc83d223ebb: shr    $0x9,%r10
  0.02%    0.00%  │││ │││   0x00007fc83d223ebf: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.05%  │││ │││   0x00007fc83d223ec3: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc83d224685
  0.13%    0.17%  │││ │││   0x00007fc83d223ec8: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007fc83d223ece: jne    0x00007fc83d224195
  0.11%    0.16%  │││ │││   0x00007fc83d223ed4: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  │││ │││   0x00007fc83d223ed8: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │││ │││   0x00007fc83d223edc: vmovd  %ecx,%xmm1
  0.16%    0.21%  │││ │││   0x00007fc83d223ee0: cmp    $0x40,%ecx
                  │││ │││   0x00007fc83d223ee3: jg     0x00007fc83d224445  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.13%    0.16%  │││ │││   0x00007fc83d223ee9: mov    $0x1,%r10d
  0.02%    0.02%  │││ │││   0x00007fc83d223eef: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.38%    0.38%  │││ │││   0x00007fc83d223ef2: mov    %r9,%rcx
  0.00%    0.01%  │││ │││   0x00007fc83d223ef5: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │││ │││   0x00007fc83d223ef8: test   %rcx,%rcx
                  │││╭│││   0x00007fc83d223efb: jne    0x00007fc83d224062  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.17%  │││││││   0x00007fc83d223f01: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.13%  │││││││↗  0x00007fc83d223f03: test   %rcx,%rcx
                  ││││││││  0x00007fc83d223f06: jne    0x00007fc83d224481  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.03%  ││││││││  0x00007fc83d223f0c: vmovd  %xmm1,%ecx
  0.03%    0.04%  ││││││││  0x00007fc83d223f10: cmp    $0x40,%ecx
                  ││││││││  0x00007fc83d223f13: jge    0x00007fc83d2244b5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.10%  ││││││││  0x00007fc83d223f19: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.16%  ││││││││  0x00007fc83d223f1c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  ││││││││  0x00007fc83d223f20: vmovq  %xmm2,%r10
  0.01%    0.02%  ││││││││  0x00007fc83d223f25: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.16%    0.17%  ││││││││  0x00007fc83d223f29: mov    %rdi,%r10
  0.10%    0.09%  ││││││││  0x00007fc83d223f2c: add    $0x18,%r10
  0.02%    0.02%  ││││││││  0x00007fc83d223f30: mov    %r14,%rcx
  0.02%    0.03%  ││││││││  0x00007fc83d223f33: shr    $0x3,%rcx
  0.18%    0.12%  ││││││││  0x00007fc83d223f37: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.11%    0.18%  ││││││││  0x00007fc83d223f3a: mov    %eax,%ecx
  0.01%    0.01%  ││││││││  0x00007fc83d223f3c: add    $0x3,%ecx
  0.03%    0.04%  ││││││││  0x00007fc83d223f3f: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.12%  ││││││││  0x00007fc83d223f42: shr    $0x9,%r10
  0.12%    0.12%  ││││││││  0x00007fc83d223f46: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.01%  ││││││││  0x00007fc83d223f4a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc83d2246ad
  0.03%    0.04%  ││││││││  0x00007fc83d223f4f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc83d223f55: jne    0x00007fc83d2241c1
  0.16%    0.17%  ││││││││  0x00007fc83d223f5b: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.14%  ││││││││  0x00007fc83d223f5f: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.02%  ││││││││  0x00007fc83d223f63: vmovd  %ecx,%xmm0
  0.07%    0.05%  ││││││││  0x00007fc83d223f67: cmp    $0x40,%ecx
                  ││││││││  0x00007fc83d223f6a: jg     0x00007fc83d2244f1  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.12%  ││││││││  0x00007fc83d223f70: mov    $0x1,%r10d
  0.13%    0.15%  ││││││││  0x00007fc83d223f76: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.26%    0.17%  ││││││││  0x00007fc83d223f79: mov    %r9,%rcx
  0.10%    0.11%  ││││││││  0x00007fc83d223f7c: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.02%  ││││││││  0x00007fc83d223f7f: test   %rcx,%rcx
                  ││││││││  0x00007fc83d223f82: jne    0x00007fc83d22406c  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.05%  ││││││││  0x00007fc83d223f88: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.11%  ││││││││  0x00007fc83d223f8a: test   %rcx,%rcx
                  ││││││││  0x00007fc83d223f8d: jne    0x00007fc83d22452d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.17%  ││││││││  0x00007fc83d223f93: vmovd  %xmm0,%ecx
  0.02%    0.03%  ││││││││  0x00007fc83d223f97: cmp    $0x40,%ecx
                  ││││││││  0x00007fc83d223f9a: jge    0x00007fc83d224561  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.08%  ││││││││  0x00007fc83d223fa0: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.17%  ││││││││  0x00007fc83d223fa3: vmovq  %xmm2,%rcx
  0.13%    0.23%  ││││││││  0x00007fc83d223fa8: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.02%    0.03%  ││││││││  0x00007fc83d223fab: mov    %rdi,%rcx
  0.03%    0.05%  ││││││││  0x00007fc83d223fae: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.13%    0.22%  ││││││││  0x00007fc83d223fb2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.16%  ││││││││  0x00007fc83d223fb5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007fc83d223fb9: mov    %r14,%r10
  0.05%    0.05%  ││││││││  0x00007fc83d223fbc: shr    $0x3,%r10
  0.16%    0.16%  ││││││││  0x00007fc83d223fc0: mov    %r10d,(%rcx)
  0.13%    0.16%  ││││││││  0x00007fc83d223fc3: mov    %rcx,%r10
  0.01%    0.04%  ││││││││  0x00007fc83d223fc6: shr    $0x9,%r10
  0.02%    0.03%  ││││││││  0x00007fc83d223fca: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.21%  ││││││││  0x00007fc83d223fce: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fc83d2246d5
  0.08%    0.17%  ││││││││  0x00007fc83d223fd3: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc83d223fda: jne    0x00007fc83d2241ed
  0.01%    0.01%  ││││││││  0x00007fc83d223fe0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.03%  ││││││││  0x00007fc83d223fe4: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.21%  ││││││││  0x00007fc83d223fe8: cmp    $0x40,%ecx
                  ││││││││  0x00007fc83d223feb: jg     0x00007fc83d22459d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.16%  ││││││││  0x00007fc83d223ff1: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.24%    0.29%  ││││││││  0x00007fc83d223ff4: mov    %r9,%rbx
  0.12%    0.11%  ││││││││  0x00007fc83d223ff7: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.01%  ││││││││  0x00007fc83d223ffa: test   %rbx,%rbx
                  ││││││││  0x00007fc83d223ffd: jne    0x00007fc83d224076  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.06%  ││││││││  0x00007fc83d223fff: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.18%  ││││││││  0x00007fc83d224001: test   %rbx,%rbx
                  ││││││││  0x00007fc83d224004: jne    0x00007fc83d2245c1  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.19%  ││││││││  0x00007fc83d22400a: cmp    $0x40,%ecx
                  ││││││││  0x00007fc83d22400d: jge    0x00007fc83d2245e1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.02%  ││││││││  0x00007fc83d224013: or     %rsi,%r9
  0.04%    0.03%  ││││││││  0x00007fc83d224016: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.13%  ││││││││  0x00007fc83d22401a: add    $0x20,%rdi
  0.09%    0.14%  ││││││││  0x00007fc83d22401e: shr    $0x3,%r10
  0.02%    0.01%  ││││││││  0x00007fc83d224022: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.02%  ││││││││  0x00007fc83d224025: mov    %rdi,%r10
  0.11%    0.14%  ││││││││  0x00007fc83d224028: add    $0x5,%eax
  0.18%    0.17%  ││││││││  0x00007fc83d22402b: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.02%  ││││││││  0x00007fc83d22402e: shr    $0x9,%r10
  0.03%    0.07%  ││││││││  0x00007fc83d224032: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.14%    0.22%  ││││││││  0x00007fc83d224036: xor    %eax,%eax
  0.12%    0.18%  ││││││││  0x00007fc83d224038: add    $0x70,%rsp
  0.02%    0.02%  ││││││││  0x00007fc83d22403c: pop    %rbp
  0.03%    0.05%  ││││││││  0x00007fc83d22403d: test   %eax,0x1856afbd(%rip)        # 0x00007fc85578f000
                  ││││││││                                                ;   {poll_return}
  0.16%    0.14%  ││││││││  0x00007fc83d224043: retq   
                  ↘│││││││  0x00007fc83d224044: mov    $0x1,%ebp
                   │││╰│││  0x00007fc83d224049: jmpq   0x00007fc83d223d2d
                   ↘││ │││  0x00007fc83d22404e: mov    $0x1,%ebp
                    ││ ╰││  0x00007fc83d224053: jmpq   0x00007fc83d223d90
                    ↘│  ││  0x00007fc83d224058: mov    $0x1,%ebp
                     │  ╰│  0x00007fc83d22405d: jmpq   0x00007fc83d223e67
                     ↘   │  0x00007fc83d224062: mov    $0x1,%ebp
                         ╰  0x00007fc83d224067: jmpq   0x00007fc83d223f03
                            0x00007fc83d22406c: mov    $0x1,%ebp
....................................................................................................
 16.60%   18.57%  <total for region 4>

....[Hottest Region 5]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 494 (174 bytes) 

                    # parm6:    [sp+0xa8]   = int
                    # parm7:    [sp+0xb0]   = boolean
                    0x00007fc83d21f880: mov    0x8(%rsi),%r10d
                    0x00007fc83d21f884: shl    $0x3,%r10
                    0x00007fc83d21f888: cmp    %r10,%rax
                    0x00007fc83d21f88b: jne    0x00007fc83d045e20  ;   {runtime_call}
                    0x00007fc83d21f891: data16 xchg %ax,%ax
                    0x00007fc83d21f894: nopl   0x0(%rax,%rax,1)
                    0x00007fc83d21f89c: data16 data16 xchg %ax,%ax
                  [Verified Entry Point]
  0.34%    0.29%    0x00007fc83d21f8a0: mov    %eax,-0x14000(%rsp)
  0.24%    0.28%    0x00007fc83d21f8a7: push   %rbp
  0.29%    0.21%    0x00007fc83d21f8a8: sub    $0x90,%rsp         ;*synchronization entry
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.20%    0x00007fc83d21f8af: mov    %edi,0x18(%rsp)
  0.23%    0.22%    0x00007fc83d21f8b3: mov    %r9d,0x14(%rsp)
  0.35%    0.20%    0x00007fc83d21f8b8: mov    %r8d,0x10(%rsp)
  0.22%    0.16%    0x00007fc83d21f8bd: mov    %rcx,%r9
  0.07%    0.06%    0x00007fc83d21f8c0: mov    %rsi,0x20(%rsp)
  0.22%    0.17%    0x00007fc83d21f8c5: mov    0x14(%rsi),%r10d   ;*getfield re2
                                                                  ; - com.google.re2j.Machine::step@1 (line 280)
  0.10%    0.18%    0x00007fc83d21f8c9: movzbl 0x18(%r12,%r10,8),%r10d  ;*getfield longest
                                                                  ; - com.google.re2j.Machine::step@4 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007fc83d22138d
  1.39%    1.38%    0x00007fc83d21f8cf: mov    %r10d,0x1c(%rsp)
  0.29%    0.28%    0x00007fc83d21f8d4: mov    %rdx,%r14
  0.14%    0.12%    0x00007fc83d21f8d7: mov    0xc(%rdx),%eax     ;*getfield size
                                                                  ; - com.google.re2j.Machine::step@10 (line 281)
                                                                  ; implicit exception: dispatches to 0x00007fc83d22139d
  0.11%    0.09%    0x00007fc83d21f8da: test   %eax,%eax
                    0x00007fc83d21f8dc: jle    0x00007fc83d21ff7d  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine::step@40 (line 286)
  0.09%    0.10%    0x00007fc83d21f8e2: mov    0x24(%rdx),%r11d   ;*getfield denseThreadsCapture
                                                                  ; - com.google.re2j.Machine::step@28 (line 284)
  0.79%    0.81%    0x00007fc83d21f8e6: mov    %r11d,0x40(%rsp)
  0.24%    0.13%    0x00007fc83d21f8eb: movzbl 0x11(%rsi),%r11d   ;*getfield captures
                                                                  ; - com.google.re2j.Machine::step@16 (line 282)
  0.08%    0.16%    0x00007fc83d21f8f0: mov    0x20(%rdx),%r10d   ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine::step@22 (line 283)
  0.16%    0.21%    0x00007fc83d21f8f4: mov    %r10d,0x3c(%rsp)
  0.27%    0.32%    0x00007fc83d21f8f9: test   %r11d,%r11d
                    0x00007fc83d21f8fc: jne    0x00007fc83d22024d  ;*iload
                                                                  ; - com.google.re2j.Machine::step@43 (line 289)
  0.11%    0.13%    0x00007fc83d21f902: mov    0xc(%r12,%r10,8),%r8d  ;*aaload
                                                                  ; - com.google.re2j.Machine::step@99 (line 299)
                                                                  ; implicit exception: dispatches to 0x00007fc83d22024d
  0.62%    0.60%    0x00007fc83d21f907: test   %r8d,%r8d
                    0x00007fc83d21f90a: jbe    0x00007fc83d22024d
  0.11%    0.07%    0x00007fc83d21f910: mov    %eax,%ecx
  0.33%    0.30%    0x00007fc83d21f912: dec    %ecx
  0.08%    0.14%    0x00007fc83d21f914: cmp    %r8d,%ecx
                    0x00007fc83d21f917: jae    0x00007fc83d22024d  ;*iload
                                                                  ; - com.google.re2j.Machine::step@43 (line 289)
  0.10%    0.13%    0x00007fc83d21f91d: lea    (%r12,%r10,8),%r13  ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine::step@22 (line 283)
  0.12%    0.11%    0x00007fc83d21f921: xor    %r10d,%r10d
  0.27%    0.32%    0x00007fc83d21f924: jmpq   0x00007fc83d21feb4
                    0x00007fc83d21f929: nopl   0x0(%rax)
  1.07%    1.05%    0x00007fc83d21f930: xor    %r11d,%r11d
  0.19%    0.09%    0x00007fc83d21f933: test   %r11d,%r11d
                    0x00007fc83d21f936: jne    0x00007fc83d21f9dd
  1.39%    0.91%    0x00007fc83d21f93c: mov    0xa8(%rsp),%r8d
  0.08%    0.08%    0x00007fc83d21f944: mov    0xb0(%rsp),%ebx    ;*ifnull
                                                                  ; - com.google.re2j.Machine::step@221 (line 320)
  1.02%    1.02%    0x00007fc83d21f94b: mov    %r9,%r11
  0.05%    0.05%    0x00007fc83d21f94e: jmpq   0x00007fc83d21fe96
                    0x00007fc83d21f953: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007fc83d21f95a: jne    0x00007fc83d2203c1  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007fc83d21f960: mov    0x18(%rax),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007fc83d21f964: cmp    $0x40,%r11d
                    0x00007fc83d21f968: jg     0x00007fc83d220af9  ;*if_icmpgt
....................................................................................................
 11.37%   10.57%  <total for region 5>

....[Hottest Regions]...............................................................................
 28.59%   29.86%         C2, level 4  com.google.re2j.Machine::match, version 541 (1534 bytes) 
 17.51%   18.10%         C2, level 4  com.google.re2j.Machine::step, version 494 (195 bytes) 
 17.38%   14.97%         C2, level 4  com.google.re2j.Machine::step, version 494 (1013 bytes) 
 16.60%   18.57%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 511 (867 bytes) 
 11.37%   10.57%         C2, level 4  com.google.re2j.Machine::step, version 494 (174 bytes) 
  2.77%    2.53%         C2, level 4  com.google.re2j.Machine::step, version 494 (61 bytes) 
  1.54%    1.53%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.39%    1.52%         C2, level 4  com.google.re2j.Machine::match, version 541 (163 bytes) 
  0.15%    0.11%         C2, level 4  com.google.re2j.Pattern::find, version 546 (12 bytes) 
  0.13%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 546 (28 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 546 (8 bytes) 
  0.10%            [kernel.kallsyms]  [unknown] (45 bytes) 
  0.10%    0.00%   [kernel.kallsyms]  [unknown] (18 bytes) 
  0.09%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 546 (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 541 (185 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Machine::match, version 541 (185 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 541 (89 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Pattern::find, version 546 (36 bytes) 
  0.03%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  1.85%    1.84%  <...other 413 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 49.06%   46.18%         C2, level 4  com.google.re2j.Machine::step, version 494 
 30.17%   31.54%         C2, level 4  com.google.re2j.Machine::match, version 541 
 16.60%   18.57%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 511 
  2.59%    2.32%   [kernel.kallsyms]  [unknown] 
  0.65%    0.32%         C2, level 4  com.google.re2j.Pattern::find, version 546 
  0.06%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 620 
  0.06%    0.05%         C2, level 4  java.util.Collections::shuffle, version 567 
  0.06%    0.02%              [vdso]  [unknown] 
  0.04%    0.02%      hsdis-amd64.so  [unknown] 
  0.03%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.03%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.01%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.02%    0.01%        libc-2.26.so  __clock_gettime 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.01%    0.05%        libc-2.26.so  _IO_fwrite 
  0.45%    0.23%  <...other 75 warm methods...>
....................................................................................................
100.00%   99.69%  <totals>

....[Distribution by Source]........................................................................
 96.63%   96.67%         C2, level 4
  2.59%    2.32%   [kernel.kallsyms]
  0.39%    0.59%           libjvm.so
  0.18%    0.29%        libc-2.26.so
  0.06%    0.02%              [vdso]
  0.05%    0.03%      hsdis-amd64.so
  0.05%    0.06%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.01%                  C1, level 3
  0.00%                 runtime stub
  0.00%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  9239.172 ± 201.694  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
