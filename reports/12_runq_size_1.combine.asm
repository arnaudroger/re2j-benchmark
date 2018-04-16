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
# Warmup Iteration   1: 4976.656 ops/s
# Warmup Iteration   2: 9872.944 ops/s
# Warmup Iteration   3: 10107.215 ops/s
# Warmup Iteration   4: 10100.569 ops/s
# Warmup Iteration   5: 10102.096 ops/s
# Warmup Iteration   6: 10108.169 ops/s
# Warmup Iteration   7: 9988.815 ops/s
# Warmup Iteration   8: 10001.998 ops/s
# Warmup Iteration   9: 10212.789 ops/s
# Warmup Iteration  10: 10193.685 ops/s
# Warmup Iteration  11: 9977.263 ops/s
# Warmup Iteration  12: 10113.150 ops/s
# Warmup Iteration  13: 10230.487 ops/s
# Warmup Iteration  14: 10194.608 ops/s
# Warmup Iteration  15: 10237.803 ops/s
# Warmup Iteration  16: 10218.933 ops/s
# Warmup Iteration  17: 9878.775 ops/s
# Warmup Iteration  18: 10146.626 ops/s
# Warmup Iteration  19: 10178.036 ops/s
# Warmup Iteration  20: 10226.338 ops/s
Iteration   1: 10222.228 ops/s
Iteration   2: 10125.165 ops/s
Iteration   3: 10212.850 ops/s
Iteration   4: 10197.118 ops/s
Iteration   5: 10215.559 ops/s
Iteration   6: 10139.309 ops/s
Iteration   7: 10056.658 ops/s
Iteration   8: 10114.613 ops/s
Iteration   9: 10133.531 ops/s
Iteration  10: 10119.399 ops/s
Iteration  11: 10115.906 ops/s
Iteration  12: 10023.650 ops/s
Iteration  13: 10135.307 ops/s
Iteration  14: 10137.429 ops/s
Iteration  15: 10071.190 ops/s
Iteration  16: 10113.507 ops/s
Iteration  17: 6937.340 ops/s
Iteration  18: 8726.053 ops/s
Iteration  19: 10234.699 ops/s
Iteration  20: 10232.313 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  9913.191 ±(99.9%) 669.486 ops/s [Average]
  (min, avg, max) = (6937.340, 9913.191, 10234.699), stdev = 770.981
  CI (99.9%): [9243.705, 10582.677] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 213105 total address lines.
Perf output processed (skipped 23.084 seconds):
 Column 1: cycles (20350 events)
 Column 2: instructions (20436 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 581 (1176 bytes) 

                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
                                 0x00007f809126a4cd: cmp    $0xa,%r11d
                                 0x00007f809126a4d1: je     0x00007f809126b0e8  ;*invokestatic codePointAt
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 199)
                                 0x00007f809126a4d7: mov    %r11d,%r10d
                                 0x00007f809126a4da: add    $0xffffffbf,%r10d
                                 0x00007f809126a4de: cmp    $0x1a,%r10d
                  ╭              0x00007f809126a4e2: jb     0x00007f809126a4f2
                  │              0x00007f809126a4e4: add    $0xffffff9f,%r11d
  0.00%    0.00%  │              0x00007f809126a4e8: cmp    $0x1a,%r11d
                  │              0x00007f809126a4ec: jae    0x00007f809126b0f1  ;*invokevirtual index
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
                  ↘              0x00007f809126a4f2: or     $0x10,%r9d
  0.01%                          0x00007f809126a4f6: mov    0x24(%rsp),%r11d
           0.00%                 0x00007f809126a4fb: and    $0x4,%r11d         ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                          0x00007f809126a4ff: mov    %r11d,0x4c(%rsp)
                                 0x00007f809126a504: mov    %rax,%r10
           0.00%                 0x00007f809126a507: shl    $0x3,%r10
                                 0x00007f809126a50b: mov    %r10,0x68(%rsp)
  0.00%                          0x00007f809126a510: xor    %r10d,%r10d
                                 0x00007f809126a513: xor    %eax,%eax
           0.01%                 0x00007f809126a515: mov    $0x1,%r11d
  0.00%    0.00%                 0x00007f809126a51b: mov    %r11d,0x84(%rsp)
           0.00%   ╭             0x00007f809126a523: jmpq   0x00007f809126a681  ;*caload
                   │                                                           ; - java.lang.String::charAt@27 (line 660)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 229)
  0.47%    0.33%   │             0x00007f809126a528: mov    $0x1,%r8d
  0.13%    0.18%   │             0x00007f809126a52e: jmpq   0x00007f809126aa14  ;*arraylength
                   │                                                           ; - java.lang.String::charAt@9 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.27%    0.28%   │          ↗  0x00007f809126a533: mov    0x48(%rsp),%r8d
  0.00%    0.00%   │          │  0x00007f809126a538: movzbl 0x18(%r12,%r8,8),%r11d
  0.17%    0.20%   │          │  0x00007f809126a53e: test   %r11d,%r11d
                   │╭         │  0x00007f809126a541: jne    0x00007f809126a560  ;*aload_0
                   ││         │                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││         │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││         │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.09%    0.15%   ││         │  0x00007f809126a543: mov    %r12d,0xc(%r12,%r8,8)  ;*invokevirtual isEmpty
                   ││         │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.29%    0.38%   ││         │  0x00007f809126a548: mov    0x1c(%r12,%r8,8),%ebp
  0.02%    0.02%   ││         │  0x00007f809126a54d: movb   $0x1,0x18(%r12,%r8,8)
  0.19%    0.25%   ││         │  0x00007f809126a553: mov    %r12,0x10(%r12,%r8,8)
  0.11%    0.19%   ││         │  0x00007f809126a558: test   %ebp,%ebp
                   ││         │  0x00007f809126a55a: jne    0x00007f809126b705  ;*instanceof
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   ││         │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││         │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.31%    0.39%   │↘         │  0x00007f809126a560: mov    0x8(%rsp),%r11
  0.00%            │          │  0x00007f809126a565: movzbl 0x10(%r11),%eax    ;*invokeinterface charAt
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.20%    0.22%   │          │  0x00007f809126a56a: movzbl 0x11(%r11),%ecx    ;*arraylength
                   │          │                                                ; - java.lang.String::charAt@9 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@60 (line 193)
  0.14%    0.15%   │          │  0x00007f809126a56f: mov    0x38(%rsp),%r10d
  0.30%    0.23%   │          │  0x00007f809126a574: test   %r10d,%r10d
                   │          │  0x00007f809126a577: je     0x00007f809126abc1  ;*invokestatic emptyOpContext
                   │          │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.01%   │          │  0x00007f809126a57d: test   %ecx,%ecx
                   │          │  0x00007f809126a57f: jne    0x00007f809126b5d1
  0.15%    0.21%   │          │  0x00007f809126a585: test   %eax,%eax
                   │          │  0x00007f809126a587: jne    0x00007f809126b809  ;*ireturn
                   │          │                                                ; - java.lang.String::isEmpty@13 (line 635)
                   │          │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.08%    0.12%   │          │  0x00007f809126a58d: mov    0x18(%rsp),%r10
  1.01%    1.22%   │          │  0x00007f809126a592: mov    0x10(%r10),%ecx    ;*invokestatic codePointAt
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.29%    0.36%   │          │  0x00007f809126a596: mov    %ecx,0x18(%rsp)
  0.17%    0.22%   │          │  0x00007f809126a59a: mov    0xc(%r10),%r9d     ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.09%    0.12%   │          │  0x00007f809126a59e: mov    %r9d,0xc(%rsp)
  0.31%    0.40%   │          │  0x00007f809126a5a3: mov    0x14(%r10),%ebx    ;*invokestatic indexOf
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.04%    0.01%   │          │  0x00007f809126a5a7: mov    0x3c(%rsp),%r9d
  0.15%    0.12%   │          │  0x00007f809126a5ac: cmp    $0xffffffff,%r9d
                   │          │  0x00007f809126a5b0: je     0x00007f809126aba8  ;*caload
                   │          │                                                ; - java.lang.String::indexOf@133 (line 1779)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.10%    0.10%   │          │  0x00007f809126a5b6: mov    %r10,0x30(%rsp)
  0.32%    0.24%   │          │  0x00007f809126a5bb: mov    %r11,0x50(%rsp)
  0.00%    0.00%   │          │  0x00007f809126a5c0: mov    0x40(%rsp),%r9d
  0.13%    0.11%   │          │  0x00007f809126a5c5: add    0x60(%rsp),%r9d
  0.06%    0.08%   │          │  0x00007f809126a5ca: add    0xc(%rsp),%r9d     ;*if_icmplt
                   │          │                                                ; - java.lang.String::charAt@10 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.67%    0.58%   │          │  0x00007f809126a5cf: cmp    %ecx,%r9d
                   │          │  0x00007f809126a5d2: jge    0x00007f809126ad0e  ;*caload
                   │          │                                                ; - java.lang.String::indexOf@129 (line 1779)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.32%    0.38%   │          │  0x00007f809126a5d8: mov    0x8(%r12,%rbx,8),%r11d  ; implicit exception: dispatches to 0x00007f809126c695
  0.14%    0.17%   │          │  0x00007f809126a5dd: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │          │  0x00007f809126a5e4: jne    0x00007f809126b4e9  ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.09%    0.10%   │          │  0x00007f809126a5ea: lea    (%r12,%rbx,8),%rdi  ;*if_icmplt
                   │          │                                                ; - java.lang.String::charAt@10 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.16%    0.12%   │          │  0x00007f809126a5ee: test   %r9d,%r9d
                   │          │  0x00007f809126a5f1: jl     0x00007f809126b615  ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.28%    0.28%   │          │  0x00007f809126a5f7: mov    0xc(%rdi),%ecx     ;*aload_0
                   │          │                                                ; - java.lang.String::indexOf@60 (line 1771)
                   │          │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │          │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.15%    0.18%   │          │  0x00007f809126a5fa: mov    0xc(%r12,%rcx,8),%ebp  ;*invokestatic isWordRune
                   │          │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │          │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                   │          │                                                ; implicit exception: dispatches to 0x00007f809126c6a9
  0.82%    0.93%   │          │  0x00007f809126a5ff: cmp    %ebp,%r9d
                   │          │  0x00007f809126a602: jge    0x00007f809126b84d
  0.66%    0.66%   │          │  0x00007f809126a608: cmp    %ebp,%r9d
                   │          │  0x00007f809126a60b: jae    0x00007f809126b499  ;*ifne
                   │          │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.10%    0.07%   │          │  0x00007f809126a611: lea    (%r12,%rcx,8),%r10
  0.02%    0.01%   │          │  0x00007f809126a615: movzwl 0x10(%r10,%r9,2),%ecx  ;*if_icmplt
                   │          │                                                ; - java.lang.String::charAt@10 (line 657)
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.29%    0.40%   │          │  0x00007f809126a61b: cmp    $0xd800,%ecx
                   │          │  0x00007f809126a621: jge    0x00007f809126b8a5  ;*aload
                   │          │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.54%    0.46%   │          │  0x00007f809126a627: shl    $0x3,%ecx          ;*invokeinterface charAt
                   │          │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   │          │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │          │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.08%    0.07%   │          │  0x00007f809126a62a: mov    %ecx,%r11d
  0.02%    0.02%   │          │  0x00007f809126a62d: and    $0x7,%r11d
  0.34%    0.49%   │          │  0x00007f809126a631: or     $0x1,%ecx
  0.22%    0.36%   │          │  0x00007f809126a634: or     $0x1,%r11d
  0.35%    0.46%   │          │  0x00007f809126a638: sar    $0x3,%ecx          ; OopMap{rbx=NarrowOop [16]=Oop [48]=Oop [80]=Oop [104]=Oop off=859}
                   │          │                                                ;*goto
                   │          │                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.05%    0.05%   │          │  0x00007f809126a63b: test   %eax,0x17e6b9bf(%rip)        # 0x00007f80a90d6000
                   │          │                                                ;*goto
                   │          │                                                ; - com.google.re2j.Machine::match@126 (line 205)
                   │          │                                                ;   {poll}
  0.02%    0.01%   │          │  0x00007f809126a641: mov    0x50(%rsp),%r10
  0.16%    0.22%   │          │  0x00007f809126a646: mov    0x14(%r10),%edx    ;*getfield matched
                   │          │                                                ; - com.google.re2j.Machine::match@268 (line 237)
  0.31%    0.49%   │          │  0x00007f809126a64a: mov    0x28(%r10),%r8d    ;*ifeq
                   │          │                                                ; - com.google.re2j.Machine::match@275 (line 237)
  0.08%    0.10%   │          │  0x00007f809126a64e: mov    0x68(%rsp),%r10
           0.00%   │          │  0x00007f809126a653: shr    $0x3,%r10          ;*ireturn
                   │          │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │          │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │          │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.17%   │          │  0x00007f809126a657: mov    %r10d,0x48(%rsp)
  0.38%    0.44%   │          │  0x00007f809126a65c: mov    0x7c(%rsp),%r9d
  0.07%    0.09%   │          │  0x00007f809126a661: mov    %ecx,0x44(%rsp)
  0.01%    0.00%   │          │  0x00007f809126a665: mov    0x60(%rsp),%r10d
  0.13%    0.15%   │          │  0x00007f809126a66a: mov    0x40(%rsp),%edi
  0.35%    0.39%   │          │  0x00007f809126a66e: mov    %edi,0x38(%rsp)
  0.05%    0.06%   │          │  0x00007f809126a672: mov    %r11d,0x40(%rsp)
  0.01%    0.01%   │          │  0x00007f809126a677: mov    0x10(%rsp),%r11
  0.14%    0.13%   │          │  0x00007f809126a67c: mov    %r11,0x68(%rsp)    ;*ifeq
                   │          │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.33%    0.39%   ↘          │  0x00007f809126a681: mov    0x48(%rsp),%r11d
  0.09%    0.04%              │  0x00007f809126a686: movzbl 0x18(%r12,%r11,8),%edi  ; implicit exception: dispatches to 0x00007f809126c641
  0.09%    0.08%              │  0x00007f809126a68c: mov    0x50(%rsp),%r11
  0.20%    0.14%              │  0x00007f809126a691: movzbl 0x11(%r11),%ecx    ;*ishl
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                              │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.37%    0.41%              │  0x00007f809126a696: mov    0x48(%rsp),%r11d
  0.04%    0.08%              │  0x00007f809126a69b: shl    $0x3,%r11          ;*getfield end
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                              │                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.02%    0.04%              │  0x00007f809126a69f: mov    %r11,0x10(%rsp)
  0.13%    0.14%              │  0x00007f809126a6a4: test   %edi,%edi
                     ╭        │  0x00007f809126a6a6: je     0x00007f809126a6e8  ;*iinc
                     │        │                                                ; - java.lang.String::indexOf@69 (line 1772)
                     │        │                                                ; - java.lang.String::indexOf@21 (line 1718)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │        │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.17%    0.18%     │        │  0x00007f809126a6a8: mov    0x4c(%rsp),%edi
  0.00%    0.00%     │        │  0x00007f809126a6ac: test   %edi,%edi
                     │        │  0x00007f809126a6ae: jne    0x00007f809126ba51  ;*if_icmpne
                     │        │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │        │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.03%    0.06%     │        │  0x00007f809126a6b4: test   %eax,%eax
                     │        │  0x00007f809126a6b6: jne    0x00007f809126ba95  ;*invokestatic isWordRune
                     │        │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │        │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.05%    0.05%     │        │  0x00007f809126a6bc: mov    0x24(%r12,%rdx,8),%r11d  ;*if_icmpeq
                     │        │                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │        │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                     │        │                                                ; implicit exception: dispatches to 0x00007f809126c6d1
  0.07%    0.12%     │        │  0x00007f809126a6c1: mov    %r11d,%r13d
  0.01%    0.02%     │        │  0x00007f809126a6c4: mov    0xc(%r12,%r11,8),%r11d  ;*ifeq
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │        │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                     │        │                                                ; implicit exception: dispatches to 0x00007f809126c6e1
  0.03%    0.02%     │        │  0x00007f809126a6c9: vmovd  %r11d,%xmm1
  0.07%    0.06%     │        │  0x00007f809126a6ce: mov    0xc(%r12,%r11,8),%r11d  ;*caload
                     │        │                                                ; - java.lang.String::charAt@27 (line 660)
                     │        │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │        │                                                ; - com.google.re2j.Machine::match@96 (line 199)
                     │        │                                                ; implicit exception: dispatches to 0x00007f809126c6f1
  0.25%    0.24%     │        │  0x00007f809126a6d3: mov    %r11d,0x58(%rsp)
  0.09%    0.09%     │        │  0x00007f809126a6d8: test   %r11d,%r11d
                     │        │  0x00007f809126a6db: jne    0x00007f809126ade5  ;*aload_0
                     │        │                                                ; - java.lang.String::indexOf@79 (line 1772)
                     │        │                                                ; - java.lang.String::indexOf@21 (line 1718)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │        │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │        │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                     │        │  0x00007f809126a6e1: mov    %r10d,0x18(%rsp)
  0.01%    0.01%     │╭       │  0x00007f809126a6e6: jmp    0x00007f809126a6ed
  0.19%    0.20%     ↘│       │  0x00007f809126a6e8: mov    %r10d,0x18(%rsp)   ;*if_icmplt
                      │       │                                                ; - java.lang.String::charAt@10 (line 657)
                      │       │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                      │       │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                      │       │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.19%    0.13%      ↘       │  0x00007f809126a6ed: test   %eax,%eax
                              │  0x00007f809126a6ef: jne    0x00007f809126b535  ;*ifeq
                              │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.07%    0.13%              │  0x00007f809126a6f5: mov    0x18(%rsp),%r10d
  0.16%    0.11%              │  0x00007f809126a6fa: test   %r10d,%r10d
                       ╭      │  0x00007f809126a6fd: je     0x00007f809126a70d  ;*if_icmpgt
                       │      │                                                ; - java.lang.String::indexOf@95 (line 1776)
                       │      │                                                ; - java.lang.String::indexOf@21 (line 1718)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                       │      │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.18%    0.29%       │      │  0x00007f809126a6ff: mov    0x64(%rsp),%r11d
  0.19%    0.21%       │      │  0x00007f809126a704: test   %r11d,%r11d
                       │      │  0x00007f809126a707: jne    0x00007f809126b581  ;*arraylength
                       │      │                                                ; - java.lang.String::indexOf@19 (line 1718)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                       │      │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                       │      │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.08%       ↘      │  0x00007f809126a70d: test   %ecx,%ecx
                              │  0x00007f809126a70f: jne    0x00007f809126b6b9  ;*ifeq
                              │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.08%    0.08%              │  0x00007f809126a715: mov    0x50(%rsp),%r10
  0.22%    0.21%              │  0x00007f809126a71a: mov    0x18(%r10),%r10d   ;*getfield value
                              │                                                ; - java.lang.String::charAt@6 (line 657)
                              │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.22%    0.21%              │  0x00007f809126a71e: mov    0x1c(%r12,%r10,8),%ebp  ;*invokestatic indexOf
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                              │                                                ; implicit exception: dispatches to 0x00007f809126c651
  0.16%    0.20%              │  0x00007f809126a723: mov    0x8(%r12,%rbp,8),%ecx  ;*arraylength
                              │                                                ; - java.lang.String::charAt@9 (line 657)
                              │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
                              │                                                ; implicit exception: dispatches to 0x00007f809126c661
  0.57%    0.61%              │  0x00007f809126a728: lea    (%r12,%rbp,8),%r10
  0.08%    0.10%              │  0x00007f809126a72c: cmp    $0xf8019a53,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                        ╭     │  0x00007f809126a732: je     0x00007f809126a7ef  ;*invokespecial indexOf
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.18%    0.09%        │     │  0x00007f809126a738: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                        │     │  0x00007f809126a73e: jne    0x00007f809126b751  ;*ifeq
                        │     │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.04%    0.03%        │     │  0x00007f809126a744: mov    0x18(%r10),%ecx    ;*ifne
                        │     │                                                ; - com.google.re2j.Machine::match@115 (line 204)
  0.00%    0.03%        │     │  0x00007f809126a748: cmp    $0x40,%ecx
                        │     │  0x00007f809126a74b: jg     0x00007f809126b8f9  ;*ifeq
                        │     │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.21%    0.14%        │     │  0x00007f809126a751: mov    %r10,%rbx
  0.04%    0.00%        │     │  0x00007f809126a754: mov    $0x1,%edi
           0.00%        │     │  0x00007f809126a759: shl    %cl,%rdi           ;*isub
                        │     │                                                ; - java.lang.String::indexOf@110 (line 1778)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.42%    0.16%        │     │  0x00007f809126a75c: mov    0x48(%rsp),%r11d
                        │     │  0x00007f809126a761: mov    0x10(%r12,%r11,8),%r10  ;*iadd
                        │     │                                                ; - java.lang.String::indexOf@116 (line 1779)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.00%        │     │  0x00007f809126a766: mov    %rdi,%r11
  0.05%    0.01%        │     │  0x00007f809126a769: and    %r10,%r11          ;*ireturn
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@32 (line 205)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.15%    0.12%        │     │  0x00007f809126a76c: test   %r11,%r11
                        │     │  0x00007f809126a76f: jne    0x00007f809126b961
                        │     │  0x00007f809126a775: cmp    $0x40,%ecx
                        │     │  0x00007f809126a778: jge    0x00007f809126b9e9
  0.03%                 │     │  0x00007f809126a77e: mov    0x48(%rsp),%r11d
  0.06%    0.01%        │     │  0x00007f809126a783: mov    %r12b,0x18(%r12,%r11,8)  ;*ifeq
                        │     │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.12%    0.15%        │     │  0x00007f809126a788: mov    0xc(%r12,%r11,8),%r8d  ;*invokestatic emptyOpContext
                        │     │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                        │     │  0x00007f809126a78d: mov    0x20(%r12,%r11,8),%ebp  ;*if_icmplt
                        │     │                                                ; - java.lang.String::indexOf@3 (line 1756)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%    0.01%        │     │  0x00007f809126a792: or     %r10,%rdi
  0.07%    0.06%        │     │  0x00007f809126a795: mov    %rdi,0x10(%r12,%r11,8)
  0.16%    0.16%        │     │  0x00007f809126a79a: mov    %r8d,%r10d
                        │     │  0x00007f809126a79d: inc    %r10d
  0.02%    0.00%        │     │  0x00007f809126a7a0: mov    %r10d,0xc(%r12,%r11,8)  ;*ifeq
                        │     │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.03%    0.06%        │     │  0x00007f809126a7a5: mov    0xc(%r12,%rbp,8),%r10d  ;*ifge
                        │     │                                                ; - com.google.re2j.Machine::match@213 (line 225)
                        │     │                                                ; implicit exception: dispatches to 0x00007f809126c6b9
  0.21%    0.25%        │     │  0x00007f809126a7aa: cmp    %r10d,%r8d
                        │     │  0x00007f809126a7ad: jae    0x00007f809126b661
  0.09%    0.08%        │     │  0x00007f809126a7b3: mov    0x8(%r12,%rbp,8),%r10d
  0.05%    0.04%        │     │  0x00007f809126a7b8: cmp    $0xf8019808,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                        │     │  0x00007f809126a7bf: jne    0x00007f809126b7b1  ;*ifeq
                        │     │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.12%    0.06%        │     │  0x00007f809126a7c5: mov    %rbx,%r10
  0.16%    0.14%        │     │  0x00007f809126a7c8: shr    $0x3,%r10          ;*aload_0
                        │     │                                                ; - java.lang.String::indexOf@126 (line 1779)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.03%    0.04%        │     │  0x00007f809126a7cc: lea    (%r12,%rbp,8),%r11  ;*invokevirtual endPos
                        │     │                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.01%    0.01%        │     │  0x00007f809126a7d0: lea    0x10(%r11,%r8,4),%r11  ;*iload
                        │     │                                                ; - java.lang.String::indexOf@146 (line 1782)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.01%        │     │  0x00007f809126a7d5: mov    %r10d,(%r11)       ;*invokestatic indexOf
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.26%    0.21%        │     │  0x00007f809126a7d8: mov    %r11,%r10
  0.03%    0.04%        │     │  0x00007f809126a7db: shr    $0x9,%r10
  0.02%    0.04%        │     │  0x00007f809126a7df: movabs $0x7f80a1ade000,%r11
  0.04%    0.06%        │     │  0x00007f809126a7e9: mov    %r12b,(%r11,%r10,1)  ;*ifne
                        │     │                                                ; - java.lang.String::indexOf@8 (line 1757)
                        │     │                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │     │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.36%    0.38%        │╭    │  0x00007f809126a7ed: jmp    0x00007f809126a810  ;*ireturn
                        ││    │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        ││    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        ││    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.25%    0.21%        ↘│    │  0x00007f809126a7ef: shl    $0x3,%r8           ;*iload_2
                         │    │                                                ; - com.google.re2j.Machine::match@114 (line 204)
  0.02%    0.03%         │    │  0x00007f809126a7f3: mov    %r10,%rsi
  0.02%    0.04%         │    │  0x00007f809126a7f6: mov    0x10(%rsp),%rdx
  0.01%    0.00%         │    │  0x00007f809126a7fb: mov    0x18(%rsp),%ecx
  0.18%    0.15%         │    │  0x00007f809126a7ff: xor    %edi,%edi
  0.02%    0.04%         │    │  0x00007f809126a801: mov    0x50(%rsp),%r10
  0.03%    0.03%         │    │  0x00007f809126a806: mov    %r10,(%rsp)
  0.02%    0.01%         │    │  0x00007f809126a80a: nop
  0.22%    0.13%         │    │  0x00007f809126a80b: callq  0x00007f8091046020  ; OopMap{[16]=Oop [48]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1328}
                         │    │                                                ;*invokevirtual add
                         │    │                                                ; - com.google.re2j.Machine::match@314 (line 243)
                         │    │                                                ;   {optimized virtual_call}
  0.03%    0.04%         ↘    │  0x00007f809126a810: mov    0x3c(%rsp),%r10d
  0.15%    0.14%              │  0x00007f809126a815: test   %r10d,%r10d
                              │  0x00007f809126a818: jl     0x00007f809126ab89  ;*invokestatic isHighSurrogate
                              │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.20%    0.23%              │  0x00007f809126a81e: xor    %r11d,%r11d        ;*aload_0
                              │                                                ; - java.lang.String::indexOf@126 (line 1779)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.19%              │  0x00007f809126a821: cmp    $0xa,%r10d
                              │  0x00007f809126a825: je     0x00007f809126ad1b  ;*ifge
                              │                                                ; - java.lang.String::indexOf@19 (line 1759)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.13%    0.15%              │  0x00007f809126a82b: mov    0x44(%rsp),%r8d
  0.04%    0.06%              │  0x00007f809126a830: test   %r8d,%r8d
                              │  0x00007f809126a833: jl     0x00007f809126ab94  ;*getfield prefix
                              │                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.14%    0.26%              │  0x00007f809126a839: cmp    $0xa,%r8d
                              │  0x00007f809126a83d: je     0x00007f809126ad24  ;*ifge
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.17%    0.15%              │  0x00007f809126a843: mov    0x3c(%rsp),%ecx
  0.07%    0.14%              │  0x00007f809126a847: add    $0xffffffbf,%ecx
  0.06%    0.12%              │  0x00007f809126a84a: cmp    $0x1a,%ecx
                          ╭   │  0x00007f809126a84d: jb     0x00007f809126a862  ;*invokevirtual step
                          │   │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.20%    0.22%          │   │  0x00007f809126a84f: mov    0x3c(%rsp),%r9d
  0.21%    0.27%          │   │  0x00007f809126a854: add    $0xffffff9f,%r9d
  0.08%    0.12%          │   │  0x00007f809126a858: cmp    $0x1a,%r9d
                          │   │  0x00007f809126a85c: jae    0x00007f809126afea  ;*ifge
                          │   │                                                ; - java.lang.String::indexOf@19 (line 1759)
                          │   │                                                ; - java.lang.String::indexOf@21 (line 1718)
                          │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │   │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.04%          ↘   │  0x00007f809126a862: mov    $0x1,%ebp          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@8 (line 174)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.19%    0.25%              │  0x00007f809126a867: mov    %rax,-0x8(%rsp)
  0.18%    0.18%              │  0x00007f809126a86c: mov    0x44(%rsp),%eax
  0.12%    0.15%              │  0x00007f809126a870: mov    %eax,0x3c(%rsp)
  0.07%    0.14%              │  0x00007f809126a874: mov    -0x8(%rsp),%rax
  0.42%    0.24%              │  0x00007f809126a879: mov    %r10d,0x5c(%rsp)
  0.18%    0.23%              │  0x00007f809126a87e: add    $0xffffffbf,%r8d
  0.12%    0.09%              │  0x00007f809126a882: cmp    $0x1a,%r8d
                           ╭  │  0x00007f809126a886: jb     0x00007f809126a89b  ;*iload_0
                           │  │                                                ; - java.lang.Character::charCount@0 (line 4818)
                           │  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                           │  │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.14%    0.12%           │  │  0x00007f809126a888: mov    0x44(%rsp),%r10d
  0.21%    0.30%           │  │  0x00007f809126a88d: add    $0xffffff9f,%r10d
  0.19%    0.16%           │  │  0x00007f809126a891: cmp    $0x1a,%r10d
                           │  │  0x00007f809126a895: jae    0x00007f809126b00b  ;*invokeinterface charAt
                           │  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                           │  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                           │  │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.11%    0.17%           ↘  │  0x00007f809126a89b: mov    $0x1,%r8d          ;*synchronization entry
                              │                                                ; - java.lang.Character::codePointAt@-1 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.17%    0.28%              │  0x00007f809126a8a1: cmp    %r8d,%ebp
                            ╭ │  0x00007f809126a8a4: je     0x00007f809126a8b1  ;*aload_0
                            │ │                                                ; - java.lang.String::indexOf@79 (line 1772)
                            │ │                                                ; - java.lang.String::indexOf@21 (line 1718)
                            │ │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │ │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │ │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.04%    0.07%            │ │  0x00007f809126a8a6: or     $0x10,%r11d
  0.02%    0.03%            │ │  0x00007f809126a8aa: mov    %r11d,0x7c(%rsp)
  0.09%    0.07%            │╭│  0x00007f809126a8af: jmp    0x00007f809126a8ba
  0.22%    0.30%            ↘││  0x00007f809126a8b1: or     $0x20,%r11d
  0.09%    0.14%             ││  0x00007f809126a8b5: mov    %r11d,0x7c(%rsp)   ;*invokeinterface charAt
                             ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             ││                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.19%    0.20%             ↘│  0x00007f809126a8ba: mov    0x30(%rsp),%r10
  0.06%    0.11%              │  0x00007f809126a8bf: mov    0x10(%r10),%r11d   ;*if_icmplt
                              │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                              │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.54%    0.38%              │  0x00007f809126a8c3: mov    0x18(%rsp),%ecx
  0.10%    0.14%              │  0x00007f809126a8c7: cmp    %r11d,%ecx
                              │  0x00007f809126a8ca: je     0x00007f809126ab9d  ;*aload_0
                              │                                                ; - java.lang.String::indexOf@126 (line 1779)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.35%    0.26%              │  0x00007f809126a8d0: xor    %r9d,%r9d          ;*if_icmpne
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.10%    0.08%              │  0x00007f809126a8d3: mov    0x50(%rsp),%r8
  0.15%    0.26%              │  0x00007f809126a8d8: mov    0x14(%r8),%r11d    ;*getfield start
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.18%    0.21%              │  0x00007f809126a8dc: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f809126c685
  0.58%    0.49%              │  0x00007f809126a8e2: mov    %r11d,0x74(%rsp)
  0.25%    0.22%              │  0x00007f809126a8e7: mov    %r9d,0x70(%rsp)
  0.09%    0.17%              │  0x00007f809126a8ec: mov    %rax,-0x8(%rsp)
  0.12%    0.08%              │  0x00007f809126a8f1: mov    0x18(%rsp),%eax
  0.07%    0.09%              │  0x00007f809126a8f5: mov    %eax,0x58(%rsp)
  0.23%    0.20%              │  0x00007f809126a8f9: mov    -0x8(%rsp),%rax
  0.22%    0.19%              │  0x00007f809126a8fe: rex.W pushq 0x30(%rsp)
  0.20%    0.18%              │  0x00007f809126a903: rex.W popq 0x18(%rsp)
  1.23%    1.54%              │  0x00007f809126a908: rex.W pushq 0x50(%rsp)
  0.33%    0.41%              │  0x00007f809126a90d: rex.W popq 0x8(%rsp)
  1.39%    1.17%              │  0x00007f809126a912: mov    0x48(%rsp),%r11d
  0.27%    0.23%              │  0x00007f809126a917: mov    0xc(%r12,%r11,8),%r11d  ;*if_icmpne
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.43%    0.31%              │  0x00007f809126a91c: mov    %r11d,0x78(%rsp)
  0.27%    0.16%              │  0x00007f809126a921: mov    %ecx,%r10d
  0.08%    0.06%              │  0x00007f809126a924: add    0x38(%rsp),%r10d   ;*if_icmplt
                              │                                                ; - java.lang.String::charAt@10 (line 657)
                              │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.19%    0.13%              │  0x00007f809126a929: mov    %r10d,0x60(%rsp)
  0.09%    0.18%              │  0x00007f809126a92e: test   %r11d,%r11d
                              ╰  0x00007f809126a931: jle    0x00007f809126a533  ;*aload_0
                                                                               ; - java.lang.String::indexOf@79 (line 1772)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.23%    0.23%                 0x00007f809126a937: xor    %ebp,%ebp
  0.08%    0.11%                 0x00007f809126a939: jmpq   0x00007f809126aa29
  0.21%    0.10%                 0x00007f809126a93e: mov    0x1c(%r10),%r10d
  0.21%    0.12%                 0x00007f809126a942: mov    %r10,%rsi
  0.04%    0.02%                 0x00007f809126a945: shl    $0x3,%rsi          ;*if_icmpeq
                                                                               ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.06%                 0x00007f809126a949: mov    0x68(%rsp),%rdx
  0.16%    0.09%                 0x00007f809126a94e: mov    0x60(%rsp),%ecx
  0.06%    0.04%                 0x00007f809126a952: xor    %r8d,%r8d
  0.02%    0.04%                 0x00007f809126a955: mov    0x7c(%rsp),%r9d
  0.11%    0.05%                 0x00007f809126a95a: xor    %edi,%edi
  0.12%    0.11%                 0x00007f809126a95c: mov    0x8(%rsp),%r10
  0.07%    0.03%                 0x00007f809126a961: mov    %r10,(%rsp)
  0.17%    0.02%                 0x00007f809126a965: mov    0x58(%rsp),%r11d
  0.04%    0.05%                 0x00007f809126a96a: mov    %r11d,0x20(%rsp)
  0.26%    0.05%                 0x00007f809126a96f: xchg   %ax,%ax
  0.05%    0.04%                 0x00007f809126a971: movabs $0xffffffffffffffff,%rax
  0.04%                          0x00007f809126a97b: callq  0x00007f8091046220  ; OopMap{[8]=Oop [16]=Oop [24]=Oop [72]=NarrowOop [104]=Oop off=1696}
                                                                               ;*invokevirtual add
                                                                               ; - com.google.re2j.Machine::step@202 (line 313)
                                                                               ; - com.google.re2j.Machine::match@355 (line 246)
                                                                               ;   {virtual_call}
  0.38%    0.20%                 0x00007f809126a980: test   %rax,%rax
                                 0x00007f809126a983: je     0x00007f809126aa1d  ;*arraylength
                                                                               ; - java.lang.String::charAt@9 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 232)
                                 0x00007f809126a989: mov    $0xffffff65,%esi   ;*invokespecial step
....................................................................................................
 35.62%   36.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 581 (220 bytes) 

                       0x00007f809126a9fc: mov    %rax,0x80(%rsp)
                       0x00007f809126aa04: data16 xchg %ax,%ax
                       0x00007f809126aa07: callq  0x00007f80910051a0  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [80]=Oop [128]=Oop off=1836}
                                                                     ;*ifnull
                                                                     ; - com.google.re2j.Machine::step@209 (line 315)
                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                                                                     ;   {runtime_call}
                       0x00007f809126aa0c: callq  0x00007f80a7dc3c50  ;*invokestatic fill
                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                                                     ;   {runtime_call}
  0.94%    0.84%    ↗  0x00007f809126aa11: xor    %r8d,%r8d          ;*caload
                    │                                                ; - java.lang.String::charAt@27 (line 660)
                    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.20%    0.19%   ↗│  0x00007f809126aa14: test   %r8d,%r8d
                   ││  0x00007f809126aa17: jne    0x00007f809126a93e  ;*if_icmplt
                   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  1.01%    1.30%   ││  0x00007f809126aa1d: inc    %ebp
  0.13%    0.21%   ││  0x00007f809126aa1f: cmp    0x78(%rsp),%ebp
                   ││  0x00007f809126aa23: jge    0x00007f809126a533  ;*arraylength
                   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.95%    0.98%   ││  0x00007f809126aa29: mov    0x8(%rsp),%r10
  0.73%    0.83%   ││  0x00007f809126aa2e: movzbl 0x11(%r10),%ecx    ;*ifge
                   ││                                                ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                   ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  1.72%    2.06%   ││  0x00007f809126aa33: test   %ecx,%ecx
                   ││  0x00007f809126aa35: jne    0x00007f809126b22d  ;*getfield prefix
                   ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.49%    0.45%   ││  0x00007f809126aa3b: mov    0x48(%rsp),%r10d
  0.80%    0.66%   ││  0x00007f809126aa40: mov    0x20(%r12,%r10,8),%r8d  ;*ifne
                   ││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.48%    0.45%   ││  0x00007f809126aa45: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f809126c622
  1.38%    1.09%   ││  0x00007f809126aa4a: cmp    %r11d,%ebp
                   ││  0x00007f809126aa4d: jae    0x00007f809126b11c  ;*invokevirtual isEmpty
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.82%    0.77%   ││  0x00007f809126aa53: lea    (%r12,%r8,8),%r10
  0.58%    0.53%   ││  0x00007f809126aa57: mov    0x10(%r10,%rbp,4),%r8d  ;*caload
                   ││                                                ; - java.lang.String::indexOf@36 (line 1766)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.30%    0.45%   ││  0x00007f809126aa5c: mov    0xc(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x00007f809126c631
  4.98%    4.85%   ││  0x00007f809126aa61: cmp    $0x6,%r10d
                   ││  0x00007f809126aa65: je     0x00007f809126b071  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.61%    1.70%   ││  0x00007f809126aa6b: mov    0x8(%r12,%r8,8),%r10d
  0.48%    0.35%   ││  0x00007f809126aa70: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f809126aa77: jne    0x00007f809126b1a1  ;*getfield value
                   ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.36%    1.32%   ││  0x00007f809126aa7d: lea    (%r12,%r8,8),%r10
  0.18%    0.22%   ││  0x00007f809126aa81: mov    0xc(%r10),%r11d    ;*invokestatic isWordRune
                   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.59%    0.63%   ││  0x00007f809126aa85: cmp    $0xa,%r11d
                   ││  0x00007f809126aa89: je     0x00007f809126a93e  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.09%    1.11%   ││  0x00007f809126aa8f: cmp    $0xb,%r11d
                   ││  0x00007f809126aa93: je     0x00007f809126b2a5  ;*arraylength
                   ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.73%    1.03%   ││  0x00007f809126aa99: mov    0x20(%r10),%r9d    ;*invokevirtual step
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.13%    0.19%   ││  0x00007f809126aa9d: cmp    $0x9,%r11d
                  ╭││  0x00007f809126aaa1: jne    0x00007f809126aab6  ;*invokestatic indexOf
                  │││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.18%    0.22%  │││  0x00007f809126aaa3: cmp    0x5c(%rsp),%r9d
                  │││  0x00007f809126aaa8: je     0x00007f809126b059  ;*invokestatic charCount
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.14%    0.15%  │││  0x00007f809126aaae: xor    %r8d,%r8d
  0.11%    0.12%  │╰│  0x00007f809126aab1: jmpq   0x00007f809126aa14
  1.04%    0.69%  ↘ │  0x00007f809126aab6: cmp    $0xc,%r11d
                    │  0x00007f809126aaba: jne    0x00007f809126b367  ;*invokevirtual isEmpty
                    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.89%    0.79%    │  0x00007f809126aac0: cmp    0x5c(%rsp),%r9d
                    │  0x00007f809126aac5: je     0x00007f809126a528  ;*if_icmplt
                    │                                                ; - java.lang.String::charAt@10 (line 657)
                    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  1.25%    1.13%    │  0x00007f809126aacb: mov    0x24(%r10),%r8d    ;*ifeq
                    │                                                ; - java.lang.Character::codePointAt@12 (line 4867)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.02%    0.00%    │  0x00007f809126aacf: cmp    0x5c(%rsp),%r8d
                    │  0x00007f809126aad4: je     0x00007f809126a528  ;*caload
                    │                                                ; - java.lang.String::indexOf@129 (line 1779)
                    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.31%    0.90%    │  0x00007f809126aada: mov    0x28(%r10),%r9d    ;*if_icmpgt
                    │                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.12%    0.17%    │  0x00007f809126aade: cmp    0x5c(%rsp),%r9d
                    │  0x00007f809126aae3: je     0x00007f809126b401  ;*arraylength
                    │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.19%    1.13%    │  0x00007f809126aae9: mov    0x2c(%r10),%r9d
  0.01%    0.02%    │  0x00007f809126aaed: cmp    0x5c(%rsp),%r9d
                    ╰  0x00007f809126aaf2: jne    0x00007f809126aa11  ;*if_icmpgt
                                                                     ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                     ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                       0x00007f809126aaf8: mov    $0xffffff65,%esi   ;*aload_0
                                                                     ; - com.google.re2j.Machine::step@25 (line 285)
                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                       0x00007f809126aafd: mov    0x18(%rsp),%r11
                       0x00007f809126ab02: mov    %r11,0x10(%rsp)
                       0x00007f809126ab07: mov    0x58(%rsp),%r11d
....................................................................................................
 27.94%   27.48%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 547 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f809124d2c0: mov    0x8(%rsi),%r10d
                            0x00007f809124d2c4: shl    $0x3,%r10
                            0x00007f809124d2c8: cmp    %r10,%rax
                            0x00007f809124d2cb: jne    0x00007f8091045e20  ;   {runtime_call}
                            0x00007f809124d2d1: data16 xchg %ax,%ax
                            0x00007f809124d2d4: nopl   0x0(%rax,%rax,1)
                            0x00007f809124d2dc: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.05%    0.02%            0x00007f809124d2e0: mov    %eax,-0x14000(%rsp)
  0.17%    0.21%            0x00007f809124d2e7: push   %rbp
  0.01%    0.02%            0x00007f809124d2e8: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.06%    0.06%            0x00007f809124d2ec: vmovd  %r9d,%xmm5
  0.24%    0.27%            0x00007f809124d2f1: vmovq  %r8,%xmm4
  0.00%    0.03%            0x00007f809124d2f6: vmovq  %rsi,%xmm3
  0.01%    0.03%            0x00007f809124d2fb: mov    %ecx,%r13d
  0.01%    0.02%            0x00007f809124d2fe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.22%    0.24%            0x00007f809124d301: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                          ; implicit exception: dispatches to 0x00007f809124dc59
  0.00%    0.03%            0x00007f809124d305: cmp    $0x40,%ecx
                            0x00007f809124d308: jg     0x00007f809124d83d  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.02%            0x00007f809124d30e: mov    $0x1,%esi
  0.03%    0.01%            0x00007f809124d313: mov    $0x1,%r9d
  0.20%    0.23%            0x00007f809124d319: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.06%    0.05%            0x00007f809124d31c: mov    %r11,%r10
  0.25%    0.28%            0x00007f809124d31f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.02%            0x00007f809124d322: test   %r10,%r10
                  ╭         0x00007f809124d325: jne    0x00007f809124d65e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.01%    0.05%  │         0x00007f809124d32b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.03%    0.01%  │   ↗     0x00007f809124d32d: test   %r10,%r10
                  │   │     0x00007f809124d330: jne    0x00007f809124d871  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 275)
  0.22%    0.23%  │   │     0x00007f809124d336: cmp    $0x40,%ecx
                  │   │     0x00007f809124d339: jge    0x00007f809124d8a1  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.03%    0.03%  │   │     0x00007f809124d33f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.03%    0.02%  │   │     0x00007f809124d343: vmovq  %xmm3,%r10
  0.03%    0.02%  │   │     0x00007f809124d348: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.18%    0.30%  │   │     0x00007f809124d34c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.02%    0.02%  │   │     0x00007f809124d34f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.02%  │   │     0x00007f809124d353: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f809124dc6d
  0.02%    0.03%  │   │     0x00007f809124d358: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │   │     0x00007f809124d35f: jne    0x00007f809124d715
  0.21%    0.28%  │   │     0x00007f809124d365: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.03%  │   │     0x00007f809124d369: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.03%  │   │     0x00007f809124d36d: cmp    $0x40,%ecx
                  │   │     0x00007f809124d370: jg     0x00007f809124d8d5  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.02%  │   │     0x00007f809124d376: mov    $0x1,%r10d
  0.25%    0.26%  │   │     0x00007f809124d37c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.22%    0.21%  │   │     0x00007f809124d37f: mov    %r9,%r8
  0.18%    0.19%  │   │     0x00007f809124d382: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.01%  │   │     0x00007f809124d385: test   %r8,%r8
                  │╭  │     0x00007f809124d388: jne    0x00007f809124d668  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.07%    0.10%  ││  │     0x00007f809124d38e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.05%  ││  │↗    0x00007f809124d390: test   %r8,%r8
                  ││  ││    0x00007f809124d393: jne    0x00007f809124d911  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.16%    0.31%  ││  ││    0x00007f809124d399: cmp    $0x40,%ecx
                  ││  ││    0x00007f809124d39c: jge    0x00007f809124d945  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.01%  ││  ││    0x00007f809124d3a2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.02%  ││  ││    0x00007f809124d3a5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.07%  ││  ││    0x00007f809124d3a9: mov    0x70(%rsp),%rax
  0.21%    0.18%  ││  ││    0x00007f809124d3ae: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f809124dc95
  0.01%    0.03%  ││  ││    0x00007f809124d3b2: test   %ebp,%ebp
                  ││  ││    0x00007f809124d3b4: jne    0x00007f809124d985  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.04%  ││  ││    0x00007f809124d3ba: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.09%  ││  ││    0x00007f809124d3bd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.21%    0.19%  ││  ││    0x00007f809124d3c0: mov    %ecx,%r8d
  0.01%    0.03%  ││  ││    0x00007f809124d3c3: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.04%  ││  ││    0x00007f809124d3c6: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.03%  ││  ││    0x00007f809124d3ca: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f809124dca5
  0.21%    0.20%  ││  ││    0x00007f809124d3cf: cmp    %r10d,%ecx
                  ││  ││    0x00007f809124d3d2: jae    0x00007f809124d69a
  0.02%    0.01%  ││  ││    0x00007f809124d3d8: vmovd  %r8d,%xmm2
  0.04%    0.03%  ││  ││    0x00007f809124d3dd: vmovd  %ebx,%xmm0
  0.03%    0.04%  ││  ││    0x00007f809124d3e1: mov    %ecx,%r14d
  0.18%    0.16%  ││  ││    0x00007f809124d3e4: mov    %r11,%r8
  0.01%    0.02%  ││  ││    0x00007f809124d3e7: mov    0x8(%r12,%rbx,8),%r11d
  0.03%    0.07%  ││  ││    0x00007f809124d3ec: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f809124d3f3: jne    0x00007f809124d745  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.06%  ││  ││    0x00007f809124d3f9: vmovq  %xmm3,%r11
  0.22%    0.25%  ││  ││    0x00007f809124d3fe: mov    0x20(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
           0.03%  ││  ││    0x00007f809124d402: mov    %r8,%rcx
  0.04%    0.04%  ││  ││    0x00007f809124d405: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%    0.06%  ││  ││    0x00007f809124d409: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.19%    0.14%  ││  ││    0x00007f809124d40d: lea    0x10(%r11,%r14,4),%r8
  0.00%    0.01%  ││  ││    0x00007f809124d412: mov    %ecx,(%r8)
  0.06%    0.03%  ││  ││    0x00007f809124d415: mov    %r8,%rcx
  0.05%    0.02%  ││  ││    0x00007f809124d418: shr    $0x9,%rcx
  0.17%    0.13%  ││  ││    0x00007f809124d41c: movabs $0x7f80a1ade000,%r8
  0.03%    0.00%  ││  ││    0x00007f809124d426: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.09%    0.10%  ││  ││    0x00007f809124d42a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f809124dcbd
  0.06%    0.04%  ││  ││    0x00007f809124d42f: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││  ││    0x00007f809124d435: jne    0x00007f809124d781
  0.18%    0.19%  ││  ││    0x00007f809124d43b: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.01%  ││  ││    0x00007f809124d43f: vmovq  %rcx,%xmm1
  0.03%    0.07%  ││  ││    0x00007f809124d444: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.07%  ││  ││    0x00007f809124d447: mov    %ecx,%edi
  0.18%    0.16%  ││  ││    0x00007f809124d449: cmp    $0x40,%ecx
                  ││  ││    0x00007f809124d44c: jg     0x00007f809124d9c1  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.02%  ││  ││    0x00007f809124d452: mov    $0x1,%ebx
  0.07%    0.11%  ││  ││    0x00007f809124d457: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.18%    0.31%  ││  ││    0x00007f809124d45a: mov    %r9,%rcx
  0.08%    0.04%  ││  ││    0x00007f809124d45d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.04%  ││  ││    0x00007f809124d460: test   %rcx,%rcx
                  ││╭ ││    0x00007f809124d463: jne    0x00007f809124d672  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.15%    0.14%  │││ ││    0x00007f809124d469: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
           0.04%  │││ ││↗   0x00007f809124d46b: test   %rcx,%rcx
                  │││ │││   0x00007f809124d46e: jne    0x00007f809124da01  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.04%    0.10%  │││ │││   0x00007f809124d474: mov    %edi,%ecx
  0.03%    0.05%  │││ │││   0x00007f809124d476: cmp    $0x40,%ecx
                  │││ │││   0x00007f809124d479: jge    0x00007f809124da39  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.24%    0.23%  │││ │││   0x00007f809124d47f: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%           │││ │││   0x00007f809124d482: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.08%  │││ │││   0x00007f809124d486: mov    %r14d,%ecx
  0.04%    0.06%  │││ │││   0x00007f809124d489: add    $0x2,%ecx
  0.17%    0.21%  │││ │││   0x00007f809124d48c: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.01%  │││ │││   0x00007f809124d48f: mov    %r14d,%edi
  0.04%    0.08%  │││ │││   0x00007f809124d492: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.05%  │││ │││   0x00007f809124d495: cmp    %r10d,%edi
                  │││ │││   0x00007f809124d498: jae    0x00007f809124d6d5  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.14%    0.25%  │││ │││   0x00007f809124d49e: vmovq  %xmm3,%r10
  0.02%    0.00%  │││ │││   0x00007f809124d4a3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.10%    0.09%  │││ │││   0x00007f809124d4a7: vmovq  %xmm1,%r10
  0.00%    0.04%  │││ │││   0x00007f809124d4ac: mov    %r10,%rcx
  0.17%    0.18%  │││ │││   0x00007f809124d4af: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.01%  │││ │││   0x00007f809124d4b3: movslq %r14d,%r10
  0.03%    0.04%  │││ │││   0x00007f809124d4b6: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.03%  │││ │││   0x00007f809124d4ba: mov    %rbx,%r10
  0.19%    0.11%  │││ │││   0x00007f809124d4bd: add    $0x14,%r10
  0.01%    0.01%  │││ │││   0x00007f809124d4c1: mov    %ecx,(%r10)
  0.08%    0.11%  │││ │││   0x00007f809124d4c4: shr    $0x9,%r10
  0.05%    0.03%  │││ │││   0x00007f809124d4c8: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.16%    0.23%  │││ │││   0x00007f809124d4cc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f809124dce5
  0.04%    0.06%  │││ │││   0x00007f809124d4d1: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││ │││   0x00007f809124d4d7: jne    0x00007f809124d7b1
  0.11%    0.17%  │││ │││   0x00007f809124d4dd: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.03%  │││ │││   0x00007f809124d4e1: vmovq  %r10,%xmm0
  0.18%    0.27%  │││ │││   0x00007f809124d4e6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.00%    0.02%  │││ │││   0x00007f809124d4ea: vmovd  %ecx,%xmm2
  0.05%    0.12%  │││ │││   0x00007f809124d4ee: cmp    $0x40,%ecx
                  │││ │││   0x00007f809124d4f1: jg     0x00007f809124da79  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.05%  │││ │││   0x00007f809124d4f7: mov    $0x1,%r10d
  0.16%    0.22%  │││ │││   0x00007f809124d4fd: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.14%    0.29%  │││ │││   0x00007f809124d500: mov    %r9,%rcx
  0.14%    0.19%  │││ │││   0x00007f809124d503: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.00%  │││ │││   0x00007f809124d506: test   %rcx,%rcx
                  │││╭│││   0x00007f809124d509: jne    0x00007f809124d67c  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.12%  │││││││   0x00007f809124d50f: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.07%    0.06%  │││││││↗  0x00007f809124d511: test   %rcx,%rcx
                  ││││││││  0x00007f809124d514: jne    0x00007f809124dab9  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.19%    0.22%  ││││││││  0x00007f809124d51a: vmovd  %xmm2,%ecx
  0.01%    0.03%  ││││││││  0x00007f809124d51e: cmp    $0x40,%ecx
                  ││││││││  0x00007f809124d521: jge    0x00007f809124daf1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.07%    0.13%  ││││││││  0x00007f809124d527: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.03%    0.06%  ││││││││  0x00007f809124d52a: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.24%  ││││││││  0x00007f809124d52e: vmovq  %xmm3,%r10
  0.00%           ││││││││  0x00007f809124d533: mov    0x28(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.06%    0.15%  ││││││││  0x00007f809124d537: mov    %rbx,%r10
  0.01%    0.05%  ││││││││  0x00007f809124d53a: add    $0x18,%r10
  0.19%    0.14%  ││││││││  0x00007f809124d53e: vmovq  %xmm0,%rcx
  0.00%    0.00%  ││││││││  0x00007f809124d543: shr    $0x3,%rcx
  0.08%    0.09%  ││││││││  0x00007f809124d547: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.04%  ││││││││  0x00007f809124d54a: mov    %r14d,%ecx
  0.17%    0.21%  ││││││││  0x00007f809124d54d: add    $0x3,%ecx
  0.00%    0.00%  ││││││││  0x00007f809124d550: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.08%    0.09%  ││││││││  0x00007f809124d553: shr    $0x9,%r10
  0.05%    0.05%  ││││││││  0x00007f809124d557: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.20%    0.19%  ││││││││  0x00007f809124d55b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f809124dd0d
  0.01%    0.03%  ││││││││  0x00007f809124d560: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f809124d566: jne    0x00007f809124d7e1
  0.09%    0.10%  ││││││││  0x00007f809124d56c: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.06%  ││││││││  0x00007f809124d570: vmovq  %r10,%xmm0
  0.14%    0.17%  ││││││││  0x00007f809124d575: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.01%    0.00%  ││││││││  0x00007f809124d579: vmovd  %ecx,%xmm1
  0.06%    0.10%  ││││││││  0x00007f809124d57d: cmp    $0x40,%ecx
  0.02%    0.05%  ││││││││  0x00007f809124d580: jg     0x00007f809124db31  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.13%    0.19%  ││││││││  0x00007f809124d586: mov    $0x1,%r10d
  0.01%    0.01%  ││││││││  0x00007f809124d58c: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.32%    0.27%  ││││││││  0x00007f809124d58f: mov    %r9,%rcx
           0.01%  ││││││││  0x00007f809124d592: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.13%  ││││││││  0x00007f809124d595: test   %rcx,%rcx
                  ││││││││  0x00007f809124d598: jne    0x00007f809124d686  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.09%  ││││││││  0x00007f809124d59e: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.13%    0.24%  ││││││││  0x00007f809124d5a0: test   %rcx,%rcx
                  ││││││││  0x00007f809124d5a3: jne    0x00007f809124db6d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.02%  ││││││││  0x00007f809124d5a9: vmovd  %xmm1,%ecx
  0.07%    0.10%  ││││││││  0x00007f809124d5ad: cmp    $0x40,%ecx
                  ││││││││  0x00007f809124d5b0: jge    0x00007f809124dba5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.05%    0.03%  ││││││││  0x00007f809124d5b6: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.18%    0.19%  ││││││││  0x00007f809124d5b9: vmovq  %xmm3,%rcx
  0.02%    0.00%  ││││││││  0x00007f809124d5be: mov    0x2c(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.07%    0.10%  ││││││││  0x00007f809124d5c1: mov    %rbx,%rcx
  0.05%    0.04%  ││││││││  0x00007f809124d5c4: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.16%    0.19%  ││││││││  0x00007f809124d5c8: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%    0.02%  ││││││││  0x00007f809124d5cb: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.12%  ││││││││  0x00007f809124d5cf: vmovq  %xmm0,%r10
  0.02%    0.03%  ││││││││  0x00007f809124d5d4: shr    $0x3,%r10
  0.15%    0.18%  ││││││││  0x00007f809124d5d8: mov    %r10d,(%rcx)
  0.02%    0.02%  ││││││││  0x00007f809124d5db: mov    %rcx,%r10
  0.06%    0.09%  ││││││││  0x00007f809124d5de: shr    $0x9,%r10
  0.03%    0.04%  ││││││││  0x00007f809124d5e2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.20%    0.19%  ││││││││  0x00007f809124d5e6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f809124dd35
  0.02%    0.02%  ││││││││  0x00007f809124d5eb: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f809124d5f2: jne    0x00007f809124d811
  0.08%    0.11%  ││││││││  0x00007f809124d5f8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.07%  ││││││││  0x00007f809124d5fc: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.19%  ││││││││  0x00007f809124d600: cmp    $0x40,%ecx
                  ││││││││  0x00007f809124d603: jg     0x00007f809124dbe5  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.02%  ││││││││  0x00007f809124d609: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.30%    0.45%  ││││││││  0x00007f809124d60c: mov    %r9,%rdi
  0.00%    0.01%  ││││││││  0x00007f809124d60f: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.07%  ││││││││  0x00007f809124d612: test   %rdi,%rdi
                  ││││││││  0x00007f809124d615: jne    0x00007f809124d690  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.05%  ││││││││  0x00007f809124d617: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.15%    0.22%  ││││││││  0x00007f809124d619: test   %rdi,%rdi
                  ││││││││  0x00007f809124d61c: jne    0x00007f809124dc0d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.01%  ││││││││  0x00007f809124d622: cmp    $0x40,%ecx
                  ││││││││  0x00007f809124d625: jge    0x00007f809124dc31  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.08%    0.07%  ││││││││  0x00007f809124d62b: or     %rsi,%r9
  0.06%    0.01%  ││││││││  0x00007f809124d62e: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.12%    0.09%  ││││││││  0x00007f809124d632: add    $0x20,%rbx
  0.00%    0.01%  ││││││││  0x00007f809124d636: shr    $0x3,%r10
  0.06%    0.07%  ││││││││  0x00007f809124d63a: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.05%    0.05%  ││││││││  0x00007f809124d63d: mov    %rbx,%r10
  0.10%    0.23%  ││││││││  0x00007f809124d640: add    $0x5,%r14d
  0.01%    0.01%  ││││││││  0x00007f809124d644: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.10%    0.08%  ││││││││  0x00007f809124d648: shr    $0x9,%r10
  0.07%    0.06%  ││││││││  0x00007f809124d64c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.16%    0.23%  ││││││││  0x00007f809124d650: xor    %eax,%eax
  0.01%    0.02%  ││││││││  0x00007f809124d652: add    $0x60,%rsp
  0.06%    0.13%  ││││││││  0x00007f809124d656: pop    %rbp
  0.04%    0.03%  ││││││││  0x00007f809124d657: test   %eax,0x17e889a3(%rip)        # 0x00007f80a90d6000
                  ││││││││                                                ;   {poll_return}
  0.16%    0.17%  ││││││││  0x00007f809124d65d: retq   
                  ↘│││││││  0x00007f809124d65e: mov    $0x1,%ebp
                   │││╰│││  0x00007f809124d663: jmpq   0x00007f809124d32d
                   ↘││ │││  0x00007f809124d668: mov    $0x1,%ebp
                    ││ ╰││  0x00007f809124d66d: jmpq   0x00007f809124d390
                    ↘│  ││  0x00007f809124d672: mov    $0x1,%ebp
                     │  ╰│  0x00007f809124d677: jmpq   0x00007f809124d46b
                     ↘   │  0x00007f809124d67c: mov    $0x1,%ebp
                         ╰  0x00007f809124d681: jmpq   0x00007f809124d511
                            0x00007f809124d686: mov    $0x1,%ebp
....................................................................................................
 14.77%   17.85%  <total for region 3>

....[Hottest Regions]...............................................................................
 35.62%   36.07%         C2, level 4  com.google.re2j.Machine::match, version 581 (1176 bytes) 
 27.94%   27.48%         C2, level 4  com.google.re2j.Machine::match, version 581 (220 bytes) 
 14.77%   17.85%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 547 (893 bytes) 
  6.35%    3.71%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 538 (362 bytes) 
  5.15%    6.60%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 538 (365 bytes) 
  1.93%    1.14%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 204 (14 bytes) 
  1.81%    0.62%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 531 (188 bytes) 
  1.70%    2.36%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 538 (128 bytes) 
  1.13%    1.34%         C2, level 4  com.google.re2j.Machine::match, version 581 (171 bytes) 
  0.85%    0.84%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 587 (28 bytes) 
  0.11%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 587 (0 bytes) 
  0.11%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 587 (0 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 587 (28 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 581 (114 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.07%                  C2, level 4  com.google.re2j.Pattern::find, version 587 (72 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 581 (279 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 587 (105 bytes) 
  0.06%                  C2, level 4  com.google.re2j.Pattern::find, version 587 (24 bytes) 
  1.87%    1.60%  <...other 357 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 65.02%   65.13%         C2, level 4  com.google.re2j.Machine::match, version 581 
 14.77%   17.85%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 547 
 13.20%   12.66%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 538 
  1.93%    1.14%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 204 
  1.81%    0.62%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 531 
  1.50%    1.37%   [kernel.kallsyms]  [unknown] 
  0.79%    0.31%         C2, level 4  com.google.re2j.Pattern::find, version 587 
  0.08%    0.04%         C2, level 4  java.util.Collections::shuffle, version 600 
  0.07%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.04%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 654 
  0.05%    0.02%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%           libjvm.so  xmlTextStream::write 
  0.03%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.03%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.00%              [vdso]  [unknown] 
  0.02%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.03%           libjvm.so  fileStream::write 
  0.02%    0.00%           libjvm.so  decode_env::handle_event 
  0.02%    0.04%           libjvm.so  outputStream::update_position 
  0.44%    0.34%  <...other 59 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 95.77%   96.65%         C2, level 4
  1.93%    1.15%         C1, level 3
  1.50%    1.37%   [kernel.kallsyms]
  0.45%    0.49%           libjvm.so
  0.15%    0.23%        libc-2.26.so
  0.06%    0.02%      hsdis-amd64.so
  0.06%    0.05%  libpthread-2.26.so
  0.04%    0.01%              [vdso]
  0.02%    0.01%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt     Score     Error  Units
Re2jFindRegex.testCombine       thrpt   20  9913.191 ± 669.486  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN              ---
