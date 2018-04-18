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
# Warmup Iteration   1: 4009.649 ops/s
# Warmup Iteration   2: 8405.618 ops/s
# Warmup Iteration   3: 8390.061 ops/s
# Warmup Iteration   4: 8411.709 ops/s
# Warmup Iteration   5: 8386.725 ops/s
# Warmup Iteration   6: 8280.627 ops/s
# Warmup Iteration   7: 8427.885 ops/s
# Warmup Iteration   8: 8431.637 ops/s
# Warmup Iteration   9: 8354.126 ops/s
# Warmup Iteration  10: 7885.973 ops/s
# Warmup Iteration  11: 8334.215 ops/s
# Warmup Iteration  12: 8563.957 ops/s
# Warmup Iteration  13: 8554.781 ops/s
# Warmup Iteration  14: 7593.389 ops/s
# Warmup Iteration  15: 8599.041 ops/s
# Warmup Iteration  16: 8591.723 ops/s
# Warmup Iteration  17: 8595.239 ops/s
# Warmup Iteration  18: 8594.315 ops/s
# Warmup Iteration  19: 8611.338 ops/s
# Warmup Iteration  20: 8593.377 ops/s
Iteration   1: 8525.366 ops/s
Iteration   2: 8519.373 ops/s
Iteration   3: 8523.245 ops/s
Iteration   4: 8527.944 ops/s
Iteration   5: 8526.902 ops/s
Iteration   6: 8527.105 ops/s
Iteration   7: 8529.408 ops/s
Iteration   8: 8530.244 ops/s
Iteration   9: 8414.582 ops/s
Iteration  10: 8394.682 ops/s
Iteration  11: 8504.460 ops/s
Iteration  12: 8511.493 ops/s
Iteration  13: 8509.147 ops/s
Iteration  14: 8513.513 ops/s
Iteration  15: 8511.755 ops/s
Iteration  16: 8510.994 ops/s
Iteration  17: 8512.950 ops/s
Iteration  18: 8512.586 ops/s
Iteration  19: 8509.167 ops/s
Iteration  20: 8508.415 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  8506.166 ±(99.9%) 31.095 ops/s [Average]
  (min, avg, max) = (8394.682, 8506.166, 8530.244), stdev = 35.809
  CI (99.9%): [8475.071, 8537.262] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 197657 total address lines.
Perf output processed (skipped 23.499 seconds):
 Column 1: cycles (20372 events)
 Column 2: instructions (20339 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 533 (1211 bytes) 

                                   0x00007f1f812431a3: or     $0x1,%r8d          ;*invokevirtual add
                                                                                 ; - com.google.re2j.Machine::match@314 (line 243)
                                   0x00007f1f812431a7: mov    %r8d,0x40(%rsp)    ;*invokestatic codePointAt
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                 ; - com.google.re2j.Machine::match@96 (line 199)
                                   0x00007f1f812431ac: test   %r14d,%r14d
                                   0x00007f1f812431af: jne    0x00007f1f81244a51  ;*if_icmpgt
                                                                                 ; - com.google.re2j.Utils::isWordRune@27 (line 149)
                                                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                            0x00007f1f812431b5: mov    0x3c(%rsp),%r8d
                                   0x00007f1f812431ba: test   %r8d,%r8d
                                   0x00007f1f812431bd: jl     0x00007f1f81243d7e  ;*caload
                                                                                 ; - java.lang.String::indexOf@133 (line 1779)
                                                                                 ; - java.lang.String::indexOf@21 (line 1718)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                                   0x00007f1f812431c3: mov    $0x5,%r9d          ;*if_icmple
                                                                                 ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                                                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                                   0x00007f1f812431c9: cmp    $0xa,%r8d
                                   0x00007f1f812431cd: je     0x00007f1f81243da1  ;*invokestatic codePointAt
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                 ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%                   0x00007f1f812431d3: mov    %r8d,%r10d
                                   0x00007f1f812431d6: add    $0xffffffbf,%r10d
                                   0x00007f1f812431da: mov    0x20(%rsp),%edi
                                   0x00007f1f812431de: and    $0x4,%edi          ;*invokeinterface charAt
                                                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                 ; - com.google.re2j.Machine::match@96 (line 199)
                                   0x00007f1f812431e1: mov    %edi,0x4c(%rsp)
                                   0x00007f1f812431e5: mov    %rdx,%rdi
                                   0x00007f1f812431e8: shl    $0x3,%rdi
                                   0x00007f1f812431ec: cmp    $0x1a,%r10d
                  ╭                0x00007f1f812431f0: jb     0x00007f1f81243200
  0.01%    0.00%  │                0x00007f1f812431f2: add    $0xffffff9f,%r8d
                  │                0x00007f1f812431f6: cmp    $0x1a,%r8d
                  │                0x00007f1f812431fa: jae    0x00007f1f81243daa  ;*invokevirtual index
                  │                                                              ; - com.google.re2j.Machine::match@206 (line 224)
                  ↘                0x00007f1f81243200: or     $0x10,%r9d         ;*invokeinterface charAt
                                                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                 ; - com.google.re2j.Machine::match@96 (line 199)
                                   0x00007f1f81243204: mov    %rdi,0x68(%rsp)
  0.01%    0.01%                   0x00007f1f81243209: xor    %r10d,%r10d
                                   0x00007f1f8124320c: xor    %eax,%eax
           0.00%                   0x00007f1f8124320e: mov    $0x1,%edi
                                   0x00007f1f81243213: mov    %edi,0x7c(%rsp)
           0.00%   ╭               0x00007f1f81243217: jmpq   0x00007f1f8124338d
  0.00%    0.01%   │       ↗       0x00007f1f8124321c: or     $0xa,%r8d          ;*invokestatic indexOf
                   │       │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │       │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │       │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │       │                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                   │╭      │       0x00007f1f81243220: jmpq   0x00007f1f8124354d  ;*caload
                   ││      │                                                     ; - java.lang.String::charAt@27 (line 660)
                   ││      │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │                                                     ; - com.google.re2j.Machine::match@226 (line 229)
  0.54%    0.49%   ││      │       0x00007f1f81243225: mov    $0x1,%r11d
  0.25%    0.20%   ││      │       0x00007f1f8124322b: jmpq   0x00007f1f812436e4  ;*arraylength
                   ││      │                                                     ; - java.lang.String::charAt@9 (line 657)
                   ││      │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.27%    0.15%   ││      │    ↗  0x00007f1f81243230: mov    0x48(%rsp),%r8d
  0.01%    0.02%   ││      │    │  0x00007f1f81243235: movzbl 0x18(%r12,%r8,8),%r10d
  0.31%    0.31%   ││      │    │  0x00007f1f8124323b: test   %r10d,%r10d
                   ││╭     │    │  0x00007f1f8124323e: jne    0x00007f1f8124325d  ;*aload_0
                   │││     │    │                                                ; - java.lang.String::indexOf@79 (line 1772)
                   │││     │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   │││     │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │││     │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││     │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.05%    0.05%   │││     │    │  0x00007f1f81243240: mov    %r12d,0xc(%r12,%r8,8)  ;*invokevirtual isEmpty
                   │││     │    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.30%    0.33%   │││     │    │  0x00007f1f81243245: mov    0x1c(%r12,%r8,8),%ebp
  0.01%    0.01%   │││     │    │  0x00007f1f8124324a: movb   $0x1,0x18(%r12,%r8,8)
  0.22%    0.35%   │││     │    │  0x00007f1f81243250: mov    %r12,0x10(%r12,%r8,8)
  0.07%    0.07%   │││     │    │  0x00007f1f81243255: test   %ebp,%ebp
                   │││     │    │  0x00007f1f81243257: jne    0x00007f1f812444a9  ;*instanceof
                   │││     │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   │││     │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │││     │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.28%    0.33%   ││↘     │    │  0x00007f1f8124325d: mov    0x50(%rsp),%r11
  0.03%            ││      │    │  0x00007f1f81243262: movzbl 0x10(%r11),%eax    ;*invokeinterface charAt
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.26%    0.32%   ││      │    │  0x00007f1f81243267: movzbl 0x11(%r11),%edx    ;*arraylength
                   ││      │    │                                                ; - java.lang.String::charAt@9 (line 657)
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@60 (line 193)
  0.09%    0.08%   ││      │    │  0x00007f1f8124326c: mov    0x38(%rsp),%r10d
  0.25%    0.26%   ││      │    │  0x00007f1f81243271: test   %r10d,%r10d
                   ││      │    │  0x00007f1f81243274: je     0x00007f1f81243860  ;*invokestatic emptyOpContext
                   ││      │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.02%    0.01%   ││      │    │  0x00007f1f8124327a: test   %edx,%edx
                   ││      │    │  0x00007f1f8124327c: jne    0x00007f1f812441ed
  0.20%    0.29%   ││      │    │  0x00007f1f81243282: test   %eax,%eax
                   ││      │    │  0x00007f1f81243284: jne    0x00007f1f812443b9  ;*ireturn
                   ││      │    │                                                ; - java.lang.String::isEmpty@13 (line 635)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.05%    0.06%   ││      │    │  0x00007f1f8124328a: mov    0x30(%rsp),%r10
  0.25%    0.36%   ││      │    │  0x00007f1f8124328f: mov    0x10(%r10),%r9d    ;*invokestatic codePointAt
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.02%    0.03%   ││      │    │  0x00007f1f81243293: mov    %r9d,0x14(%rsp)
  0.25%    0.22%   ││      │    │  0x00007f1f81243298: mov    0xc(%r10),%ecx     ;*ifne
                   ││      │    │                                                ; - com.google.re2j.Machine::match@271 (line 237)
  0.05%    0.09%   ││      │    │  0x00007f1f8124329c: mov    %ecx,0x10(%rsp)
  0.29%    0.40%   ││      │    │  0x00007f1f812432a0: mov    0x14(%r10),%ecx    ;*invokestatic indexOf
                   ││      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.02%    0.02%   ││      │    │  0x00007f1f812432a4: mov    0x44(%rsp),%r9d
  0.20%    0.29%   ││      │    │  0x00007f1f812432a9: cmp    $0xffffffff,%r9d
                   ││      │    │  0x00007f1f812432ad: je     0x00007f1f812439af  ;*caload
                   ││      │    │                                                ; - java.lang.String::indexOf@133 (line 1779)
                   ││      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.05%    0.06%   ││      │    │  0x00007f1f812432b3: mov    %rax,-0x8(%rsp)
  0.22%    0.35%   ││      │    │  0x00007f1f812432b8: mov    0x44(%rsp),%eax
  0.02%            ││      │    │  0x00007f1f812432bc: mov    %eax,0x3c(%rsp)
  0.23%    0.20%   ││      │    │  0x00007f1f812432c0: mov    -0x8(%rsp),%rax
  0.03%    0.06%   ││      │    │  0x00007f1f812432c5: mov    %r11,0x50(%rsp)
  0.21%    0.23%   ││      │    │  0x00007f1f812432ca: mov    0x40(%rsp),%r9d
  0.01%    0.02%   ││      │    │  0x00007f1f812432cf: add    0x58(%rsp),%r9d
  0.27%    0.34%   ││      │    │  0x00007f1f812432d4: add    0x10(%rsp),%r9d    ;*if_icmplt
                   ││      │    │                                                ; - java.lang.String::charAt@10 (line 657)
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.21%    0.23%   ││      │    │  0x00007f1f812432d9: cmp    0x14(%rsp),%r9d
                   ││      │    │  0x00007f1f812432de: jge    0x00007f1f81243848  ;*caload
                   ││      │    │                                                ; - java.lang.String::indexOf@129 (line 1779)
                   ││      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.30%    0.29%   ││      │    │  0x00007f1f812432e4: mov    0x8(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f1f81245275
  0.01%    0.04%   ││      │    │  0x00007f1f812432e9: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                   ││      │    │  0x00007f1f812432f0: jne    0x00007f1f81244109  ;*ifne
                   ││      │    │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.22%    0.22%   ││      │    │  0x00007f1f812432f6: lea    (%r12,%rcx,8),%rbx  ;*if_icmplt
                   ││      │    │                                                ; - java.lang.String::charAt@10 (line 657)
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.03%    0.02%   ││      │    │  0x00007f1f812432fa: test   %r9d,%r9d
                   ││      │    │  0x00007f1f812432fd: jl     0x00007f1f81244239  ;*ifne
                   ││      │    │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.35%    0.32%   ││      │    │  0x00007f1f81243303: mov    0xc(%rbx),%edi     ;*aload_0
                   ││      │    │                                                ; - java.lang.String::indexOf@60 (line 1771)
                   ││      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%            ││      │    │  0x00007f1f81243306: mov    0xc(%r12,%rdi,8),%ebp  ;*invokestatic isWordRune
                   ││      │    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                   ││      │    │                                                ; implicit exception: dispatches to 0x00007f1f81245289
  0.47%    0.58%   ││      │    │  0x00007f1f8124330b: cmp    %ebp,%r9d
                   ││      │    │  0x00007f1f8124330e: jge    0x00007f1f81244405
  0.61%    0.53%   ││      │    │  0x00007f1f81243314: cmp    %ebp,%r9d
                   ││      │    │  0x00007f1f81243317: jae    0x00007f1f812440b5  ;*ifne
                   ││      │    │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.17%    0.25%   ││      │    │  0x00007f1f8124331d: lea    (%r12,%rdi,8),%r10
           0.00%   ││      │    │  0x00007f1f81243321: movzwl 0x10(%r10,%r9,2),%edi  ;*if_icmplt
                   ││      │    │                                                ; - java.lang.String::charAt@10 (line 657)
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.26%    0.30%   ││      │    │  0x00007f1f81243327: cmp    $0xd800,%edi
                   ││      │    │  0x00007f1f8124332d: jge    0x00007f1f81244455  ;*aload
                   ││      │    │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.46%    0.46%   ││      │    │  0x00007f1f81243333: shl    $0x3,%edi          ;*invokeinterface charAt
                   ││      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.17%    0.14%   ││      │    │  0x00007f1f81243336: mov    %edi,%r8d
                   ││      │    │  0x00007f1f81243339: and    $0x7,%r8d
  0.41%    0.48%   ││      │    │  0x00007f1f8124333d: or     $0x1,%edi
  0.09%    0.06%   ││      │    │  0x00007f1f81243340: or     $0x1,%r8d
  0.45%    0.55%   ││      │    │  0x00007f1f81243344: sar    $0x3,%edi          ; OopMap{rcx=NarrowOop [8]=Oop [48]=Oop [80]=Oop [104]=Oop off=871}
                   ││      │    │                                                ;*goto
                   ││      │    │                                                ; - com.google.re2j.Machine::match@437 (line 266)
  0.00%    0.01%   ││      │    │  0x00007f1f81243347: test   %eax,0x18d37cb3(%rip)        # 0x00007f1f99f7b000
                   ││      │    │                                                ;*goto
                   ││      │    │                                                ; - com.google.re2j.Machine::match@126 (line 205)
                   ││      │    │                                                ;   {poll}
  0.03%    0.03%   ││      │    │  0x00007f1f8124334d: mov    0x50(%rsp),%r10
  0.06%    0.08%   ││      │    │  0x00007f1f81243352: mov    0x14(%r10),%ebx    ;*getfield matched
                   ││      │    │                                                ; - com.google.re2j.Machine::match@268 (line 237)
  0.51%    0.61%   ││      │    │  0x00007f1f81243356: mov    0x28(%r10),%r11d   ;*ifeq
                   ││      │    │                                                ; - com.google.re2j.Machine::match@275 (line 237)
                   ││      │    │  0x00007f1f8124335a: mov    0x68(%rsp),%r10
  0.03%    0.03%   ││      │    │  0x00007f1f8124335f: shr    $0x3,%r10          ;*ireturn
                   ││      │    │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   ││      │    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││      │    │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.09%    0.09%   ││      │    │  0x00007f1f81243363: mov    %r10d,0x48(%rsp)
  0.44%    0.66%   ││      │    │  0x00007f1f81243368: mov    0x60(%rsp),%r9d
  0.01%            ││      │    │  0x00007f1f8124336d: mov    %edi,0x44(%rsp)
  0.02%    0.02%   ││      │    │  0x00007f1f81243371: mov    0x58(%rsp),%r10d
  0.04%    0.09%   ││      │    │  0x00007f1f81243376: mov    0x40(%rsp),%edi
  0.44%    0.59%   ││      │    │  0x00007f1f8124337a: mov    %edi,0x38(%rsp)
  0.01%    0.01%   ││      │    │  0x00007f1f8124337e: mov    %r8d,0x40(%rsp)
  0.03%    0.04%   ││      │    │  0x00007f1f81243383: mov    0x8(%rsp),%r8
  0.09%    0.05%   ││      │    │  0x00007f1f81243388: mov    %r8,0x68(%rsp)     ;*ifeq
                   ││      │    │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.45%    0.67%   ↘│      │    │  0x00007f1f8124338d: mov    0x48(%rsp),%edi
  0.02%    0.00%    │      │    │  0x00007f1f81243391: movzbl 0x18(%r12,%rdi,8),%edi  ; implicit exception: dispatches to 0x00007f1f81245221
  0.05%    0.08%    │      │    │  0x00007f1f81243397: mov    0x50(%rsp),%r8
  0.05%    0.08%    │      │    │  0x00007f1f8124339c: movzbl 0x11(%r8),%edx     ;*ishl
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                    │      │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.44%    0.60%    │      │    │  0x00007f1f812433a1: mov    0x48(%rsp),%r8d
  0.01%    0.00%    │      │    │  0x00007f1f812433a6: shl    $0x3,%r8           ;*getfield end
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                    │      │    │                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.05%    0.10%    │      │    │  0x00007f1f812433aa: mov    %r8,0x8(%rsp)
  0.06%    0.07%    │      │    │  0x00007f1f812433af: test   %edi,%edi
                    │ ╭    │    │  0x00007f1f812433b1: je     0x00007f1f812433f3  ;*iinc
                    │ │    │    │                                                ; - java.lang.String::indexOf@69 (line 1772)
                    │ │    │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.26%    0.32%    │ │    │    │  0x00007f1f812433b3: mov    0x4c(%rsp),%edi
  0.01%    0.00%    │ │    │    │  0x00007f1f812433b7: test   %edi,%edi
                    │ │    │    │  0x00007f1f812433b9: jne    0x00007f1f8124462d  ;*if_icmpne
                    │ │    │    │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                    │ │    │    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.03%    0.03%    │ │    │    │  0x00007f1f812433bf: test   %eax,%eax
                    │ │    │    │  0x00007f1f812433c1: jne    0x00007f1f81244671  ;*invokestatic isWordRune
                    │ │    │    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.01%    │ │    │    │  0x00007f1f812433c7: mov    0x24(%r12,%rbx,8),%r8d  ;*if_icmpeq
                    │ │    │    │                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                    │ │    │    │                                                ; implicit exception: dispatches to 0x00007f1f812452b1
  0.17%    0.24%    │ │    │    │  0x00007f1f812433cc: mov    %r8d,%r13d
  0.01%    0.01%    │ │    │    │  0x00007f1f812433cf: mov    0xc(%r12,%r8,8),%r8d  ;*ifeq
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                    │ │    │    │                                                ; implicit exception: dispatches to 0x00007f1f812452c1
  0.03%    0.02%    │ │    │    │  0x00007f1f812433d4: vmovd  %r8d,%xmm0
  0.01%    0.01%    │ │    │    │  0x00007f1f812433d9: mov    0xc(%r12,%r8,8),%r8d  ;*caload
                    │ │    │    │                                                ; - java.lang.String::charAt@27 (line 660)
                    │ │    │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
                    │ │    │    │                                                ; implicit exception: dispatches to 0x00007f1f812452d1
  0.61%    0.85%    │ │    │    │  0x00007f1f812433de: mov    %r8d,0x58(%rsp)
  0.23%    0.25%    │ │    │    │  0x00007f1f812433e3: test   %r8d,%r8d
                    │ │    │    │  0x00007f1f812433e6: jne    0x00007f1f81243aac  ;*aload_0
                    │ │    │    │                                                ; - java.lang.String::indexOf@79 (line 1772)
                    │ │    │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │ │    │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │ │    │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                    │ │    │    │  0x00007f1f812433ec: mov    %r10d,0x18(%rsp)
                    │ │╭   │    │  0x00007f1f812433f1: jmp    0x00007f1f812433f8
  0.23%    0.29%    │ ↘│   │    │  0x00007f1f812433f3: mov    %r10d,0x18(%rsp)   ;*if_icmplt
                    │  │   │    │                                                ; - java.lang.String::charAt@10 (line 657)
                    │  │   │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │  │   │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │  │   │    │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.02%    │  ↘   │    │  0x00007f1f812433f8: test   %eax,%eax
                    │      │    │  0x00007f1f812433fa: jne    0x00007f1f81244155  ;*ifeq
                    │      │    │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.25%    0.18%    │      │    │  0x00007f1f81243400: mov    0x18(%rsp),%r8d
  0.28%    0.15%    │      │    │  0x00007f1f81243405: test   %r8d,%r8d
                    │   ╭  │    │  0x00007f1f81243408: je     0x00007f1f81243418  ;*if_icmpgt
                    │   │  │    │                                                ; - java.lang.String::indexOf@95 (line 1776)
                    │   │  │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │   │  │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │   │  │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │   │  │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.25%    │   │  │    │  0x00007f1f8124340a: mov    0x64(%rsp),%r10d
  0.01%    0.01%    │   │  │    │  0x00007f1f8124340f: test   %r10d,%r10d
                    │   │  │    │  0x00007f1f81243412: jne    0x00007f1f812441a1  ;*arraylength
                    │   │  │    │                                                ; - java.lang.String::indexOf@19 (line 1718)
                    │   │  │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │   │  │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │   │  │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.23%    0.30%    │   ↘  │    │  0x00007f1f81243418: test   %edx,%edx
                    │      │    │  0x00007f1f8124341a: jne    0x00007f1f812442d1  ;*ifeq
                    │      │    │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.03%    0.07%    │      │    │  0x00007f1f81243420: mov    0x50(%rsp),%r10
  0.27%    0.27%    │      │    │  0x00007f1f81243425: mov    0x18(%r10),%r8d    ;*getfield value
                    │      │    │                                                ; - java.lang.String::charAt@6 (line 657)
                    │      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │      │    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.02%    0.01%    │      │    │  0x00007f1f81243429: mov    0x1c(%r12,%r8,8),%ebp  ;*invokestatic indexOf
                    │      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                    │      │    │                                                ; implicit exception: dispatches to 0x00007f1f81245231
  0.65%    0.55%    │      │    │  0x00007f1f8124342e: mov    0x8(%r12,%rbp,8),%r8d  ;*arraylength
                    │      │    │                                                ; - java.lang.String::charAt@9 (line 657)
                    │      │    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │      │    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
                    │      │    │                                                ; implicit exception: dispatches to 0x00007f1f81245241
  2.38%    2.39%    │      │    │  0x00007f1f81243433: lea    (%r12,%rbp,8),%r10
  0.02%    0.06%    │      │    │  0x00007f1f81243437: cmp    $0xf8019a53,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    │    ╭ │    │  0x00007f1f8124343e: je     0x00007f1f812434fe  ;*invokespecial indexOf
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.29%    0.26%    │    │ │    │  0x00007f1f81243444: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    │    │ │    │  0x00007f1f8124344b: jne    0x00007f1f81244319  ;*ifeq
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.03%    0.01%    │    │ │    │  0x00007f1f81243451: mov    0x18(%r10),%ecx    ;*ifne
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@115 (line 204)
           0.00%    │    │ │    │  0x00007f1f81243455: cmp    $0x40,%ecx
                    │    │ │    │  0x00007f1f81243458: jg     0x00007f1f812444d9  ;*ifeq
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.18%    0.16%    │    │ │    │  0x00007f1f8124345e: mov    %r10,%rbx
  0.03%    0.03%    │    │ │    │  0x00007f1f81243461: mov    $0x1,%edi
  0.01%    0.00%    │    │ │    │  0x00007f1f81243466: shl    %cl,%rdi           ;*isub
                    │    │ │    │                                                ; - java.lang.String::indexOf@110 (line 1778)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.49%    0.44%    │    │ │    │  0x00007f1f81243469: mov    0x48(%rsp),%r10d
                    │    │ │    │  0x00007f1f8124346e: mov    0x10(%r12,%r10,8),%r10  ;*iadd
                    │    │ │    │                                                ; - java.lang.String::indexOf@116 (line 1779)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                    │    │ │    │  0x00007f1f81243473: mov    %rdi,%r8
  0.01%    0.00%    │    │ │    │  0x00007f1f81243476: and    %r10,%r8           ;*ireturn
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@32 (line 205)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.18%    │    │ │    │  0x00007f1f81243479: test   %r8,%r8
                    │    │ │    │  0x00007f1f8124347c: jne    0x00007f1f81244541
                    │    │ │    │  0x00007f1f81243482: cmp    $0x40,%ecx
                    │    │ │    │  0x00007f1f81243485: jge    0x00007f1f812445c5
  0.01%             │    │ │    │  0x00007f1f8124348b: mov    0x48(%rsp),%r8d
  0.01%    0.01%    │    │ │    │  0x00007f1f81243490: mov    %r12b,0x18(%r12,%r8,8)  ;*ifeq
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.24%    0.16%    │    │ │    │  0x00007f1f81243495: mov    0xc(%r12,%r8,8),%r8d  ;*invokestatic emptyOpContext
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%    │    │ │    │  0x00007f1f8124349a: mov    0x48(%rsp),%r9d
                    │    │ │    │  0x00007f1f8124349f: mov    0x20(%r12,%r9,8),%ebp  ;*if_icmplt
                    │    │ │    │                                                ; - java.lang.String::indexOf@3 (line 1756)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.01%    │    │ │    │  0x00007f1f812434a4: or     %r10,%rdi
  0.21%    0.21%    │    │ │    │  0x00007f1f812434a7: mov    %rdi,0x10(%r12,%r9,8)
                    │    │ │    │  0x00007f1f812434ac: mov    %r8d,%r11d
  0.00%             │    │ │    │  0x00007f1f812434af: inc    %r11d
           0.01%    │    │ │    │  0x00007f1f812434b2: mov    %r11d,0xc(%r12,%r9,8)  ;*ifeq
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.20%    0.28%    │    │ │    │  0x00007f1f812434b7: mov    0xc(%r12,%rbp,8),%r11d  ;*ifge
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@213 (line 225)
                    │    │ │    │                                                ; implicit exception: dispatches to 0x00007f1f81245299
                    │    │ │    │  0x00007f1f812434bc: cmp    %r11d,%r8d
                    │    │ │    │  0x00007f1f812434bf: jae    0x00007f1f81244289
  0.02%             │    │ │    │  0x00007f1f812434c5: mov    0x8(%r12,%rbp,8),%r11d
  0.00%    0.02%    │    │ │    │  0x00007f1f812434ca: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    │    │ │    │  0x00007f1f812434d1: jne    0x00007f1f81244371  ;*ifeq
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.24%    0.30%    │    │ │    │  0x00007f1f812434d7: mov    %rbx,%r11
                    │    │ │    │  0x00007f1f812434da: shr    $0x3,%r11          ;*aload_0
                    │    │ │    │                                                ; - java.lang.String::indexOf@126 (line 1779)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%             │    │ │    │  0x00007f1f812434de: lea    (%r12,%rbp,8),%r10  ;*invokevirtual endPos
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@344 (line 246)
  0.00%    0.01%    │    │ │    │  0x00007f1f812434e2: lea    0x10(%r10,%r8,4),%r10  ;*iload
                    │    │ │    │                                                ; - java.lang.String::indexOf@146 (line 1782)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.24%    0.29%    │    │ │    │  0x00007f1f812434e7: mov    %r11d,(%r10)       ;*invokestatic indexOf
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
           0.00%    │    │ │    │  0x00007f1f812434ea: shr    $0x9,%r10
           0.00%    │    │ │    │  0x00007f1f812434ee: movabs $0x7f1f92983000,%r11
  0.02%    0.01%    │    │ │    │  0x00007f1f812434f8: mov    %r12b,(%r11,%r10,1)  ;*ifne
                    │    │ │    │                                                ; - java.lang.String::indexOf@8 (line 1757)
                    │    │ │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │    │ │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │    │ │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.50%    0.62%    │    │╭│    │  0x00007f1f812434fc: jmp    0x00007f1f81243524  ;*ireturn
                    │    │││    │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    │    │││    │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    │    │││    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.32%    0.39%    │    ↘││    │  0x00007f1f812434fe: mov    %r11,%r8
                    │     ││    │  0x00007f1f81243501: shl    $0x3,%r8           ;*iload_2
                    │     ││    │                                                ; - com.google.re2j.Machine::match@114 (line 204)
                    │     ││    │  0x00007f1f81243505: mov    %r10,%rsi
  0.01%    0.01%    │     ││    │  0x00007f1f81243508: mov    0x8(%rsp),%rdx
  0.27%    0.36%    │     ││    │  0x00007f1f8124350d: mov    0x18(%rsp),%ecx
                    │     ││    │  0x00007f1f81243511: xor    %edi,%edi
                    │     ││    │  0x00007f1f81243513: mov    0x50(%rsp),%r10
                    │     ││    │  0x00007f1f81243518: mov    %r10,(%rsp)
  0.29%    0.25%    │     ││    │  0x00007f1f8124351c: data16 xchg %ax,%ax
           0.01%    │     ││    │  0x00007f1f8124351f: callq  0x00007f1f81046020  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1348}
                    │     ││    │                                                ;*invokevirtual add
                    │     ││    │                                                ; - com.google.re2j.Machine::match@314 (line 243)
                    │     ││    │                                                ;   {optimized virtual_call}
  0.01%    0.00%    │     ↘│    │  0x00007f1f81243524: mov    0x3c(%rsp),%r10d
  0.21%    0.23%    │      │    │  0x00007f1f81243529: test   %r10d,%r10d
                    │      │    │  0x00007f1f8124352c: jl     0x00007f1f8124383d  ;*invokestatic isHighSurrogate
                    │      │    │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │      │    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.10%    0.07%    │      │    │  0x00007f1f81243532: xor    %r8d,%r8d          ;*aload_0
                    │      │    │                                                ; - java.lang.String::indexOf@126 (line 1779)
                    │      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.27%    0.31%    │      │    │  0x00007f1f81243535: cmp    $0xa,%r10d
                    │      │    │  0x00007f1f81243539: je     0x00007f1f812439e0  ;*ifge
                    │      │    │                                                ; - java.lang.String::indexOf@19 (line 1759)
                    │      │    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │      │    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │      │    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.02%    0.03%    │      │    │  0x00007f1f8124353f: mov    0x44(%rsp),%r9d
  0.24%    0.25%    │      │    │  0x00007f1f81243544: test   %r9d,%r9d
                    │      ╰    │  0x00007f1f81243547: jl     0x00007f1f8124321c  ;*getfield prefix
                    │           │                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.12%    0.09%    ↘           │  0x00007f1f8124354d: cmp    $0xa,%r9d
                                │  0x00007f1f81243551: je     0x00007f1f812439e9  ;*ifge
                                │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                                │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.28%    0.37%                │  0x00007f1f81243557: mov    %rax,-0x8(%rsp)
  0.03%    0.03%                │  0x00007f1f8124355c: mov    0x3c(%rsp),%eax
  0.17%    0.28%                │  0x00007f1f81243560: mov    %eax,0x5c(%rsp)
  0.06%    0.12%                │  0x00007f1f81243564: mov    -0x8(%rsp),%rax
  0.26%    0.29%                │  0x00007f1f81243569: mov    0x30(%rsp),%r10
  0.03%    0.03%                │  0x00007f1f8124356e: mov    0x10(%r10),%ecx    ;*if_icmplt
                                │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.21%    0.21%                │  0x00007f1f81243572: mov    0x50(%rsp),%r10
  0.11%    0.16%                │  0x00007f1f81243577: mov    0x14(%r10),%edi    ;*getfield start
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.25%    0.26%                │  0x00007f1f8124357b: mov    0x3c(%rsp),%r10d
  0.03%    0.02%                │  0x00007f1f81243580: add    $0xffffffbf,%r10d
  0.24%    0.18%                │  0x00007f1f81243584: mov    0x44(%rsp),%r11d
  0.06%    0.08%                │  0x00007f1f81243589: add    $0xffffffbf,%r11d
  0.23%    0.18%                │  0x00007f1f8124358d: cmp    $0x1a,%r10d
                            ╭   │  0x00007f1f81243591: jb     0x00007f1f812435a6  ;*invokevirtual step
                            │   │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.03%    0.00%            │   │  0x00007f1f81243593: mov    0x3c(%rsp),%r9d
  0.24%    0.12%            │   │  0x00007f1f81243598: add    $0xffffff9f,%r9d
  0.07%    0.11%            │   │  0x00007f1f8124359c: cmp    $0x1a,%r9d
                            │   │  0x00007f1f812435a0: jae    0x00007f1f81243cd8  ;*ifge
                            │   │                                                ; - java.lang.String::indexOf@19 (line 1759)
                            │   │                                                ; - java.lang.String::indexOf@21 (line 1718)
                            │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │   │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │   │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.21%    0.17%            ↘   │  0x00007f1f812435a6: mov    $0x1,%ebp          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@8 (line 174)
                                │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.03%    0.06%                │  0x00007f1f812435ab: cmp    $0x1a,%r11d
                             ╭  │  0x00007f1f812435af: jb     0x00007f1f812435c4  ;*iload_0
                             │  │                                                ; - java.lang.Character::charCount@0 (line 4818)
                             │  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                             │  │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.22%    0.31%             │  │  0x00007f1f812435b1: mov    0x44(%rsp),%r11d
  0.13%    0.12%             │  │  0x00007f1f812435b6: add    $0xffffff9f,%r11d
  0.23%    0.21%             │  │  0x00007f1f812435ba: cmp    $0x1a,%r11d
                             │  │  0x00007f1f812435be: jae    0x00007f1f81243cae  ;*invokeinterface charAt
                             │  │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             │  │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             │  │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.04%    0.08%             ↘  │  0x00007f1f812435c4: mov    $0x1,%r10d         ;*synchronization entry
                                │                                                ; - java.lang.Character::codePointAt@-1 (line 4866)
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.36%    0.42%                │  0x00007f1f812435ca: cmp    %r10d,%ebp
                              ╭ │  0x00007f1f812435cd: je     0x00007f1f812435da  ;*aload_0
                              │ │                                                ; - java.lang.String::indexOf@79 (line 1772)
                              │ │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │ │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │ │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │ │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.01%              │ │  0x00007f1f812435cf: or     $0x10,%r8d
  0.06%    0.07%              │ │  0x00007f1f812435d3: mov    %r8d,0x60(%rsp)
  0.08%    0.09%              │╭│  0x00007f1f812435d8: jmp    0x00007f1f812435e3
  0.09%    0.08%              ↘││  0x00007f1f812435da: or     $0x20,%r8d
  0.20%    0.14%               ││  0x00007f1f812435de: mov    %r8d,0x60(%rsp)    ;*invokeinterface charAt
                               ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                               ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                               ││                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.14%    0.14%               ↘│  0x00007f1f812435e3: mov    0x18(%rsp),%r10d
  0.12%    0.16%                │  0x00007f1f812435e8: cmp    %ecx,%r10d
                                │  0x00007f1f812435eb: je     0x00007f1f81243855  ;*aload_0
                                │                                                ; - java.lang.String::indexOf@126 (line 1779)
                                │                                                ; - java.lang.String::indexOf@21 (line 1718)
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.13%    0.09%                │  0x00007f1f812435f1: xor    %r9d,%r9d
  0.32%    0.24%                │  0x00007f1f812435f4: movzbl 0x18(%r12,%rdi,8),%r11d  ; implicit exception: dispatches to 0x00007f1f81245265
  0.06%    0.08%                │  0x00007f1f812435fa: mov    %r11d,0x74(%rsp)
  0.55%    0.51%                │  0x00007f1f812435ff: mov    %r9d,0x70(%rsp)
  0.12%    0.15%                │  0x00007f1f81243604: mov    0x48(%rsp),%r11d
  0.18%    0.12%                │  0x00007f1f81243609: mov    0xc(%r12,%r11,8),%r11d  ;*if_icmpne
                                │                                                ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.07%    0.08%                │  0x00007f1f8124360e: mov    %r11d,0x78(%rsp)
  0.23%    0.22%                │  0x00007f1f81243613: add    0x38(%rsp),%r10d   ;*if_icmplt
                                │                                                ; - java.lang.String::charAt@10 (line 657)
                                │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                                │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                │                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.08%    0.14%                │  0x00007f1f81243618: mov    %r10d,0x58(%rsp)
  0.19%    0.23%                │  0x00007f1f8124361d: test   %r11d,%r11d
                                ╰  0x00007f1f81243620: jle    0x00007f1f81243230  ;*aload_0
                                                                                 ; - java.lang.String::indexOf@79 (line 1772)
                                                                                 ; - java.lang.String::indexOf@21 (line 1718)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.10%    0.04%                   0x00007f1f81243626: xor    %ebp,%ebp
  0.27%    0.18%                   0x00007f1f81243628: jmpq   0x00007f1f812436f9
  0.24%    0.16%                   0x00007f1f8124362d: mov    0x1c(%r10),%r11d
  0.26%    0.13%                   0x00007f1f81243631: mov    %r11,%rsi
                                   0x00007f1f81243634: shl    $0x3,%rsi          ;*if_icmpeq
                                                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.06%    0.03%                   0x00007f1f81243638: mov    0x68(%rsp),%rdx
  0.12%    0.17%                   0x00007f1f8124363d: mov    0x58(%rsp),%ecx
  0.16%    0.11%                   0x00007f1f81243641: xor    %r8d,%r8d
                                   0x00007f1f81243644: mov    0x60(%rsp),%r9d
  0.10%    0.05%                   0x00007f1f81243649: xor    %edi,%edi
  0.20%    0.21%                   0x00007f1f8124364b: mov    0x50(%rsp),%r10
  0.14%    0.15%                   0x00007f1f81243650: mov    %r10,(%rsp)
  0.12%                            0x00007f1f81243654: mov    0x64(%rsp),%r11d
  0.04%    0.01%                   0x00007f1f81243659: mov    %r11d,0x3c(%rsp)
  0.17%    0.27%                   0x00007f1f8124365e: data16 xchg %ax,%ax
  0.12%    0.16%                   0x00007f1f81243661: movabs $0xffffffffffffffff,%rax
  0.01%                            0x00007f1f8124366b: callq  0x00007f1f81046220  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [80]=Oop [104]=Oop off=1680}
                                                                                 ;*invokevirtual add
                                                                                 ; - com.google.re2j.Machine::step@202 (line 313)
                                                                                 ; - com.google.re2j.Machine::match@355 (line 246)
                                                                                 ;   {virtual_call}
  0.39%    0.33%                   0x00007f1f81243670: test   %rax,%rax
                                   0x00007f1f81243673: je     0x00007f1f812436ed  ;*arraylength
                                                                                 ; - java.lang.String::charAt@9 (line 657)
                                                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                 ; - com.google.re2j.Machine::match@249 (line 232)
                                   0x00007f1f81243679: mov    $0xffffff65,%esi   ;*invokespecial step
....................................................................................................
 32.05%   34.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 533 (220 bytes) 

                       0x00007f1f812436ce: mov    %rax,0x80(%rsp)
                       0x00007f1f812436d6: nop
                       0x00007f1f812436d7: callq  0x00007f1f810051a0  ; OopMap{[16]=Oop [64]=Oop [72]=NarrowOop [80]=Oop [128]=Oop off=1788}
                                                                     ;*ifnull
                                                                     ; - com.google.re2j.Machine::step@209 (line 315)
                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                                                                     ;   {runtime_call}
                       0x00007f1f812436dc: callq  0x00007f1f98c68c50  ;*invokestatic fill
                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                                                     ;   {runtime_call}
  0.89%    0.87%    ↗  0x00007f1f812436e1: xor    %r11d,%r11d        ;*caload
                    │                                                ; - java.lang.String::charAt@27 (line 660)
                    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.31%    0.30%   ↗│  0x00007f1f812436e4: test   %r11d,%r11d
                   ││  0x00007f1f812436e7: jne    0x00007f1f8124362d  ;*if_icmplt
                   ││                                                ; - java.lang.String::charAt@10 (line 657)
                   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  1.28%    1.46%   ││  0x00007f1f812436ed: inc    %ebp
  0.19%    0.19%   ││  0x00007f1f812436ef: cmp    0x78(%rsp),%ebp
                   ││  0x00007f1f812436f3: jge    0x00007f1f81243230  ;*arraylength
                   ││                                                ; - java.lang.String::charAt@9 (line 657)
                   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@96 (line 199)
  0.84%    0.87%   ││  0x00007f1f812436f9: mov    0x50(%rsp),%r10
  0.66%    0.77%   ││  0x00007f1f812436fe: movzbl 0x11(%r10),%edx    ;*ifge
                   ││                                                ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                   ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.78%    0.96%   ││  0x00007f1f81243703: test   %edx,%edx
                   ││  0x00007f1f81243705: jne    0x00007f1f81243eb5  ;*getfield prefix
                   ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.43%    0.19%   ││  0x00007f1f8124370b: mov    0x48(%rsp),%r10d
  0.81%    0.97%   ││  0x00007f1f81243710: mov    0x20(%r12,%r10,8),%r10d  ;*ifne
                   ││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.84%    0.74%   ││  0x00007f1f81243715: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f1f81245202
  1.68%    1.33%   ││  0x00007f1f8124371a: cmp    %r11d,%ebp
                   ││  0x00007f1f8124371d: jae    0x00007f1f81243dd5  ;*invokevirtual isEmpty
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.81%    0.84%   ││  0x00007f1f81243723: shl    $0x3,%r10
  0.72%    0.80%   ││  0x00007f1f81243727: mov    0x10(%r10,%rbp,4),%r10d  ;*caload
                   ││                                                ; - java.lang.String::indexOf@36 (line 1766)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.86%    0.91%   ││  0x00007f1f8124372c: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f1f81245211
  4.30%    4.63%   ││  0x00007f1f81243731: cmp    $0x6,%r8d
                   ││  0x00007f1f81243735: je     0x00007f1f81243d2a  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.93%    1.72%   ││  0x00007f1f8124373b: mov    0x8(%r12,%r10,8),%r8d
  0.25%    0.14%   ││  0x00007f1f81243740: cmp    $0xf8019993,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││  0x00007f1f81243747: jne    0x00007f1f81243e45  ;*getfield value
                   ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.69%    1.73%   ││  0x00007f1f8124374d: shl    $0x3,%r10
  0.34%    0.43%   ││  0x00007f1f81243751: mov    0xc(%r10),%r11d    ;*invokestatic isWordRune
                   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.80%    0.93%   ││  0x00007f1f81243755: cmp    $0xa,%r11d
                   ││  0x00007f1f81243759: je     0x00007f1f8124362d  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.28%    1.36%   ││  0x00007f1f8124375f: cmp    $0xb,%r11d
                   ││  0x00007f1f81243763: je     0x00007f1f81243f19  ;*arraylength
                   ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.91%    0.97%   ││  0x00007f1f81243769: mov    0x20(%r10),%r8d    ;*invokevirtual step
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  1.04%    1.18%   ││  0x00007f1f8124376d: cmp    $0x9,%r11d
                  ╭││  0x00007f1f81243771: jne    0x00007f1f81243786  ;*invokestatic indexOf
                  │││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.36%  │││  0x00007f1f81243773: cmp    0x5c(%rsp),%r8d
                  │││  0x00007f1f81243778: je     0x00007f1f812439d5  ;*invokestatic charCount
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.12%    0.16%  │││  0x00007f1f8124377e: xor    %r11d,%r11d
  0.05%    0.08%  │╰│  0x00007f1f81243781: jmpq   0x00007f1f812436e4
  1.20%    0.93%  ↘ │  0x00007f1f81243786: cmp    $0xc,%r11d
                    │  0x00007f1f8124378a: jne    0x00007f1f81243fbf  ;*invokevirtual isEmpty
                    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.93%    0.81%    │  0x00007f1f81243790: cmp    0x5c(%rsp),%r8d
                    │  0x00007f1f81243795: je     0x00007f1f81243225  ;*if_icmplt
                    │                                                ; - java.lang.String::charAt@10 (line 657)
                    │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  1.15%    1.16%    │  0x00007f1f8124379b: mov    0x24(%r10),%r11d   ;*ifeq
                    │                                                ; - java.lang.Character::codePointAt@12 (line 4867)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.09%    0.04%    │  0x00007f1f8124379f: cmp    0x5c(%rsp),%r11d
                    │  0x00007f1f812437a4: je     0x00007f1f81243225  ;*caload
                    │                                                ; - java.lang.String::indexOf@129 (line 1779)
                    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.19%    0.95%    │  0x00007f1f812437aa: mov    0x28(%r10),%r9d    ;*if_icmpgt
                    │                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.45%    0.25%    │  0x00007f1f812437ae: cmp    0x5c(%rsp),%r9d
                    │  0x00007f1f812437b3: je     0x00007f1f81244039  ;*arraylength
                    │                                                ; - java.lang.String::isEmpty@4 (line 635)
                    │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.13%    1.01%    │  0x00007f1f812437b9: mov    0x2c(%r10),%r9d
  0.07%    0.06%    │  0x00007f1f812437bd: cmp    0x5c(%rsp),%r9d
                    ╰  0x00007f1f812437c2: jne    0x00007f1f812436e1  ;*if_icmpgt
                                                                     ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                     ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                       0x00007f1f812437c8: mov    $0xffffff65,%esi   ;*aload_0
                                                                     ; - com.google.re2j.Machine::step@25 (line 285)
                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                       0x00007f1f812437cd: mov    0x30(%rsp),%r11
                       0x00007f1f812437d2: mov    %r11,0x10(%rsp)
                       0x00007f1f812437d7: mov    0x38(%rsp),%r11d
....................................................................................................
 30.24%   30.11%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 500 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f1f8121d500: mov    0x8(%rsi),%r10d
                            0x00007f1f8121d504: shl    $0x3,%r10
                            0x00007f1f8121d508: cmp    %r10,%rax
                            0x00007f1f8121d50b: jne    0x00007f1f81045e20  ;   {runtime_call}
                            0x00007f1f8121d511: data16 xchg %ax,%ax
                            0x00007f1f8121d514: nopl   0x0(%rax,%rax,1)
                            0x00007f1f8121d51c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
           0.00%            0x00007f1f8121d520: mov    %eax,-0x14000(%rsp)
  0.30%    0.28%            0x00007f1f8121d527: push   %rbp
                            0x00007f1f8121d528: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.35%    0.25%            0x00007f1f8121d52c: vmovd  %r9d,%xmm5
  0.00%    0.00%            0x00007f1f8121d531: vmovq  %r8,%xmm4
                            0x00007f1f8121d536: vmovq  %rsi,%xmm3
                            0x00007f1f8121d53b: mov    %ecx,%r13d
  0.29%    0.17%            0x00007f1f8121d53e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
           0.00%            0x00007f1f8121d541: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                          ; implicit exception: dispatches to 0x00007f1f8121de99
                            0x00007f1f8121d545: cmp    $0x40,%ecx
                            0x00007f1f8121d548: jg     0x00007f1f8121da7d  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.03%    0.04%            0x00007f1f8121d54e: mov    $0x1,%esi
  0.27%    0.20%            0x00007f1f8121d553: mov    $0x1,%r9d
                            0x00007f1f8121d559: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.27%    0.21%            0x00007f1f8121d55c: mov    %r11,%r10
           0.00%            0x00007f1f8121d55f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.00%                     0x00007f1f8121d562: test   %r10,%r10
                  ╭         0x00007f1f8121d565: jne    0x00007f1f8121d89e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.03%    0.00%  │         0x00007f1f8121d56b: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.30%    0.21%  │   ↗     0x00007f1f8121d56d: test   %r10,%r10
                  │   │     0x00007f1f8121d570: jne    0x00007f1f8121dab1  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 275)
  0.03%           │   │     0x00007f1f8121d576: cmp    $0x40,%ecx
                  │   │     0x00007f1f8121d579: jge    0x00007f1f8121dae1  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                  │   │     0x00007f1f8121d57f: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.00%    0.00%  │   │     0x00007f1f8121d583: vmovq  %xmm3,%r10
  0.24%    0.20%  │   │     0x00007f1f8121d588: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.01%           │   │     0x00007f1f8121d58c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
                  │   │     0x00007f1f8121d58f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.01%    0.01%  │   │     0x00007f1f8121d593: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f1f8121dead
  0.31%    0.25%  │   │     0x00007f1f8121d598: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │   │     0x00007f1f8121d59f: jne    0x00007f1f8121d955
  0.02%    0.00%  │   │     0x00007f1f8121d5a5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  │   │     0x00007f1f8121d5a9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  │   │     0x00007f1f8121d5ad: cmp    $0x40,%ecx
                  │   │     0x00007f1f8121d5b0: jg     0x00007f1f8121db15  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.25%    0.10%  │   │     0x00007f1f8121d5b6: mov    $0x1,%r10d
  0.02%           │   │     0x00007f1f8121d5bc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.33%    0.10%  │   │     0x00007f1f8121d5bf: mov    %r9,%r8
  0.02%    0.00%  │   │     0x00007f1f8121d5c2: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  │   │     0x00007f1f8121d5c5: test   %r8,%r8
                  │╭  │     0x00007f1f8121d5c8: jne    0x00007f1f8121d8a8  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.04%           ││  │     0x00007f1f8121d5ce: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.19%    0.00%  ││  │↗    0x00007f1f8121d5d0: test   %r8,%r8
                  ││  ││    0x00007f1f8121d5d3: jne    0x00007f1f8121db51  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.01%  ││  ││    0x00007f1f8121d5d9: cmp    $0x40,%ecx
                  ││  ││    0x00007f1f8121d5dc: jge    0x00007f1f8121db85  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ││  ││    0x00007f1f8121d5e2: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.00%           ││  ││    0x00007f1f8121d5e5: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.29%    0.00%  ││  ││    0x00007f1f8121d5e9: mov    0x70(%rsp),%rax
  0.05%    0.00%  ││  ││    0x00007f1f8121d5ee: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f1f8121ded5
                  ││  ││    0x00007f1f8121d5f2: test   %ebp,%ebp
                  ││  ││    0x00007f1f8121d5f4: jne    0x00007f1f8121dbc5  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.01%  ││  ││    0x00007f1f8121d5fa: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.20%           ││  ││    0x00007f1f8121d5fd: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.02%  ││  ││    0x00007f1f8121d600: mov    %ecx,%r8d
                  ││  ││    0x00007f1f8121d603: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
           0.02%  ││  ││    0x00007f1f8121d606: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.21%    0.02%  ││  ││    0x00007f1f8121d60a: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f1f8121dee5
  0.06%    0.05%  ││  ││    0x00007f1f8121d60f: cmp    %r10d,%ecx
                  ││  ││    0x00007f1f8121d612: jae    0x00007f1f8121d8da
                  ││  ││    0x00007f1f8121d618: vmovd  %r8d,%xmm2
  0.01%    0.01%  ││  ││    0x00007f1f8121d61d: vmovd  %ebx,%xmm0
  0.20%    0.11%  ││  ││    0x00007f1f8121d621: mov    %ecx,%r14d
  0.07%    0.10%  ││  ││    0x00007f1f8121d624: mov    %r11,%r8
           0.00%  ││  ││    0x00007f1f8121d627: mov    0x8(%r12,%rbx,8),%r11d
           0.00%  ││  ││    0x00007f1f8121d62c: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f1f8121d633: jne    0x00007f1f8121d985  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.23%    0.30%  ││  ││    0x00007f1f8121d639: vmovq  %xmm3,%r11
  0.06%    0.06%  ││  ││    0x00007f1f8121d63e: mov    0x20(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
                  ││  ││    0x00007f1f8121d642: mov    %r8,%rcx
           0.00%  ││  ││    0x00007f1f8121d645: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.29%    0.26%  ││  ││    0x00007f1f8121d649: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.06%  ││  ││    0x00007f1f8121d64d: lea    0x10(%r11,%r14,4),%r8
                  ││  ││    0x00007f1f8121d652: mov    %ecx,(%r8)
  0.00%    0.01%  ││  ││    0x00007f1f8121d655: mov    %r8,%rcx
  0.25%    0.16%  ││  ││    0x00007f1f8121d658: shr    $0x9,%rcx
  0.08%    0.08%  ││  ││    0x00007f1f8121d65c: movabs $0x7f1f92983000,%r8
                  ││  ││    0x00007f1f8121d666: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.03%    0.02%  ││  ││    0x00007f1f8121d66a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1f8121defd
  0.26%    0.10%  ││  ││    0x00007f1f8121d66f: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││  ││    0x00007f1f8121d675: jne    0x00007f1f8121d9c1
  0.09%    0.05%  ││  ││    0x00007f1f8121d67b: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  ││  ││    0x00007f1f8121d67f: vmovq  %rcx,%xmm1
  0.02%    0.01%  ││  ││    0x00007f1f8121d684: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.27%    0.27%  ││  ││    0x00007f1f8121d687: mov    %ecx,%edi
  0.09%    0.08%  ││  ││    0x00007f1f8121d689: cmp    $0x40,%ecx
                  ││  ││    0x00007f1f8121d68c: jg     0x00007f1f8121dc01  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  ││  ││    0x00007f1f8121d692: mov    $0x1,%ebx
  0.00%    0.02%  ││  ││    0x00007f1f8121d697: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.29%    0.30%  ││  ││    0x00007f1f8121d69a: mov    %r9,%rcx
  0.00%    0.03%  ││  ││    0x00007f1f8121d69d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.22%    0.12%  ││  ││    0x00007f1f8121d6a0: test   %rcx,%rcx
                  ││╭ ││    0x00007f1f8121d6a3: jne    0x00007f1f8121d8b2  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.09%    0.10%  │││ ││    0x00007f1f8121d6a9: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%           │││ ││↗   0x00007f1f8121d6ab: test   %rcx,%rcx
                  │││ │││   0x00007f1f8121d6ae: jne    0x00007f1f8121dc41  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
           0.01%  │││ │││   0x00007f1f8121d6b4: mov    %edi,%ecx
  0.19%    0.36%  │││ │││   0x00007f1f8121d6b6: cmp    $0x40,%ecx
                  │││ │││   0x00007f1f8121d6b9: jge    0x00007f1f8121dc79  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.11%  │││ │││   0x00007f1f8121d6bf: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.00%  │││ │││   0x00007f1f8121d6c2: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.02%  │││ │││   0x00007f1f8121d6c6: mov    %r14d,%ecx
  0.21%    0.40%  │││ │││   0x00007f1f8121d6c9: add    $0x2,%ecx
  0.07%    0.03%  │││ │││   0x00007f1f8121d6cc: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │││ │││   0x00007f1f8121d6cf: mov    %r14d,%edi
  0.00%    0.01%  │││ │││   0x00007f1f8121d6d2: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.22%    0.21%  │││ │││   0x00007f1f8121d6d5: cmp    %r10d,%edi
                  │││ │││   0x00007f1f8121d6d8: jae    0x00007f1f8121d915  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.05%    0.09%  │││ │││   0x00007f1f8121d6de: vmovq  %xmm3,%r10
                  │││ │││   0x00007f1f8121d6e3: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
           0.01%  │││ │││   0x00007f1f8121d6e7: vmovq  %xmm1,%r10
  0.20%    0.31%  │││ │││   0x00007f1f8121d6ec: mov    %r10,%rcx
  0.08%    0.08%  │││ │││   0x00007f1f8121d6ef: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
                  │││ │││   0x00007f1f8121d6f3: movslq %r14d,%r10
  0.01%    0.02%  │││ │││   0x00007f1f8121d6f6: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.22%    0.16%  │││ │││   0x00007f1f8121d6fa: mov    %rbx,%r10
  0.05%    0.05%  │││ │││   0x00007f1f8121d6fd: add    $0x14,%r10
                  │││ │││   0x00007f1f8121d701: mov    %ecx,(%r10)
  0.02%    0.01%  │││ │││   0x00007f1f8121d704: shr    $0x9,%r10
  0.22%    0.29%  │││ │││   0x00007f1f8121d708: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.09%    0.07%  │││ │││   0x00007f1f8121d70c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1f8121df25
           0.00%  │││ │││   0x00007f1f8121d711: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││ │││   0x00007f1f8121d717: jne    0x00007f1f8121d9f1
  0.02%    0.02%  │││ │││   0x00007f1f8121d71d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.21%    0.33%  │││ │││   0x00007f1f8121d721: vmovq  %r10,%xmm0
  0.04%    0.10%  │││ │││   0x00007f1f8121d726: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │││ │││   0x00007f1f8121d72a: vmovd  %ecx,%xmm2
  0.01%    0.01%  │││ │││   0x00007f1f8121d72e: cmp    $0x40,%ecx
                  │││ │││   0x00007f1f8121d731: jg     0x00007f1f8121dcb9  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.19%    0.29%  │││ │││   0x00007f1f8121d737: mov    $0x1,%r10d
  0.06%    0.12%  │││ │││   0x00007f1f8121d73d: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.26%    0.28%  │││ │││   0x00007f1f8121d740: mov    %r9,%rcx
  0.07%    0.06%  │││ │││   0x00007f1f8121d743: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
                  │││ │││   0x00007f1f8121d746: test   %rcx,%rcx
                  │││╭│││   0x00007f1f8121d749: jne    0x00007f1f8121d8bc  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.03%  │││││││   0x00007f1f8121d74f: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.20%    0.31%  │││││││↗  0x00007f1f8121d751: test   %rcx,%rcx
                  ││││││││  0x00007f1f8121d754: jne    0x00007f1f8121dcf9  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.13%  ││││││││  0x00007f1f8121d75a: vmovd  %xmm2,%ecx
                  ││││││││  0x00007f1f8121d75e: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f8121d761: jge    0x00007f1f8121dd31  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.03%  ││││││││  0x00007f1f8121d767: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.21%    0.28%  ││││││││  0x00007f1f8121d76a: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.05%    0.08%  ││││││││  0x00007f1f8121d76e: vmovq  %xmm3,%r10
                  ││││││││  0x00007f1f8121d773: mov    0x28(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.01%    0.02%  ││││││││  0x00007f1f8121d777: mov    %rbx,%r10
  0.26%    0.34%  ││││││││  0x00007f1f8121d77a: add    $0x18,%r10
  0.07%    0.08%  ││││││││  0x00007f1f8121d77e: vmovq  %xmm0,%rcx
                  ││││││││  0x00007f1f8121d783: shr    $0x3,%rcx
  0.01%    0.03%  ││││││││  0x00007f1f8121d787: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.25%    0.25%  ││││││││  0x00007f1f8121d78a: mov    %r14d,%ecx
  0.08%    0.06%  ││││││││  0x00007f1f8121d78d: add    $0x3,%ecx
           0.00%  ││││││││  0x00007f1f8121d790: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.02%  ││││││││  0x00007f1f8121d793: shr    $0x9,%r10
  0.26%    0.23%  ││││││││  0x00007f1f8121d797: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.10%    0.08%  ││││││││  0x00007f1f8121d79b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f1f8121df4d
  0.00%           ││││││││  0x00007f1f8121d7a0: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f1f8121d7a6: jne    0x00007f1f8121da21
  0.04%    0.02%  ││││││││  0x00007f1f8121d7ac: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.19%    0.32%  ││││││││  0x00007f1f8121d7b0: vmovq  %r10,%xmm0
  0.04%    0.14%  ││││││││  0x00007f1f8121d7b5: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
                  ││││││││  0x00007f1f8121d7b9: vmovd  %ecx,%xmm1
  0.00%    0.03%  ││││││││  0x00007f1f8121d7bd: cmp    $0x40,%ecx
  0.19%    0.31%  ││││││││  0x00007f1f8121d7c0: jg     0x00007f1f8121dd71  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.08%    0.06%  ││││││││  0x00007f1f8121d7c6: mov    $0x1,%r10d
  0.00%    0.01%  ││││││││  0x00007f1f8121d7cc: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.32%    0.19%  ││││││││  0x00007f1f8121d7cf: mov    %r9,%rcx
  0.00%    0.00%  ││││││││  0x00007f1f8121d7d2: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%    0.01%  ││││││││  0x00007f1f8121d7d5: test   %rcx,%rcx
                  ││││││││  0x00007f1f8121d7d8: jne    0x00007f1f8121d8c6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.24%    0.34%  ││││││││  0x00007f1f8121d7de: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.06%    0.14%  ││││││││  0x00007f1f8121d7e0: test   %rcx,%rcx
                  ││││││││  0x00007f1f8121d7e3: jne    0x00007f1f8121ddad  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.01%    0.01%  ││││││││  0x00007f1f8121d7e9: vmovd  %xmm1,%ecx
  0.01%    0.00%  ││││││││  0x00007f1f8121d7ed: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f8121d7f0: jge    0x00007f1f8121dde5  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.26%    0.26%  ││││││││  0x00007f1f8121d7f6: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.07%  ││││││││  0x00007f1f8121d7f9: vmovq  %xmm3,%rcx
  0.01%           ││││││││  0x00007f1f8121d7fe: mov    0x2c(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.01%    0.02%  ││││││││  0x00007f1f8121d801: mov    %rbx,%rcx
  0.13%    0.26%  ││││││││  0x00007f1f8121d804: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.11%    0.07%  ││││││││  0x00007f1f8121d808: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%           ││││││││  0x00007f1f8121d80b: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.00%    0.02%  ││││││││  0x00007f1f8121d80f: vmovq  %xmm0,%r10
  0.18%    0.24%  ││││││││  0x00007f1f8121d814: shr    $0x3,%r10
  0.08%    0.11%  ││││││││  0x00007f1f8121d818: mov    %r10d,(%rcx)
  0.00%    0.00%  ││││││││  0x00007f1f8121d81b: mov    %rcx,%r10
           0.01%  ││││││││  0x00007f1f8121d81e: shr    $0x9,%r10
  0.23%    0.23%  ││││││││  0x00007f1f8121d822: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.08%    0.08%  ││││││││  0x00007f1f8121d826: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1f8121df75
                  ││││││││  0x00007f1f8121d82b: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f1f8121d832: jne    0x00007f1f8121da51
  0.01%    0.02%  ││││││││  0x00007f1f8121d838: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.22%    0.24%  ││││││││  0x00007f1f8121d83c: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.03%  ││││││││  0x00007f1f8121d840: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f8121d843: jg     0x00007f1f8121de25  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
           0.02%  ││││││││  0x00007f1f8121d849: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.38%    0.48%  ││││││││  0x00007f1f8121d84c: mov    %r9,%rdi
                  ││││││││  0x00007f1f8121d84f: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.00%    0.01%  ││││││││  0x00007f1f8121d852: test   %rdi,%rdi
                  ││││││││  0x00007f1f8121d855: jne    0x00007f1f8121d8d0  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.23%    0.29%  ││││││││  0x00007f1f8121d857: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.10%  ││││││││  0x00007f1f8121d859: test   %rdi,%rdi
                  ││││││││  0x00007f1f8121d85c: jne    0x00007f1f8121de4d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.00%  ││││││││  0x00007f1f8121d862: cmp    $0x40,%ecx
                  ││││││││  0x00007f1f8121d865: jge    0x00007f1f8121de71  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.01%    0.01%  ││││││││  0x00007f1f8121d86b: or     %rsi,%r9
  0.23%    0.18%  ││││││││  0x00007f1f8121d86e: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.06%  ││││││││  0x00007f1f8121d872: add    $0x20,%rbx
  0.00%    0.00%  ││││││││  0x00007f1f8121d876: shr    $0x3,%r10
  0.01%    0.01%  ││││││││  0x00007f1f8121d87a: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.21%    0.27%  ││││││││  0x00007f1f8121d87d: mov    %rbx,%r10
  0.07%    0.10%  ││││││││  0x00007f1f8121d880: add    $0x5,%r14d
           0.00%  ││││││││  0x00007f1f8121d884: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.02%    0.03%  ││││││││  0x00007f1f8121d888: shr    $0x9,%r10
  0.23%    0.29%  ││││││││  0x00007f1f8121d88c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.05%    0.13%  ││││││││  0x00007f1f8121d890: xor    %eax,%eax
  0.00%    0.02%  ││││││││  0x00007f1f8121d892: add    $0x60,%rsp
  0.01%    0.03%  ││││││││  0x00007f1f8121d896: pop    %rbp
  0.20%    0.20%  ││││││││  0x00007f1f8121d897: test   %eax,0x18d5d763(%rip)        # 0x00007f1f99f7b000
                  ││││││││                                                ;   {poll_return}
  0.07%    0.06%  ││││││││  0x00007f1f8121d89d: retq   
                  ↘│││││││  0x00007f1f8121d89e: mov    $0x1,%ebp
                   │││╰│││  0x00007f1f8121d8a3: jmpq   0x00007f1f8121d56d
                   ↘││ │││  0x00007f1f8121d8a8: mov    $0x1,%ebp
                    ││ ╰││  0x00007f1f8121d8ad: jmpq   0x00007f1f8121d5d0
                    ↘│  ││  0x00007f1f8121d8b2: mov    $0x1,%ebp
                     │  ╰│  0x00007f1f8121d8b7: jmpq   0x00007f1f8121d6ab
                     ↘   │  0x00007f1f8121d8bc: mov    $0x1,%ebp
                         ╰  0x00007f1f8121d8c1: jmpq   0x00007f1f8121d751
                            0x00007f1f8121d8c6: mov    $0x1,%ebp
....................................................................................................
 15.78%   15.50%  <total for region 3>

....[Hottest Regions]...............................................................................
 32.05%   34.21%         C2, level 4  com.google.re2j.Machine::match, version 533 (1211 bytes) 
 30.24%   30.11%         C2, level 4  com.google.re2j.Machine::match, version 533 (220 bytes) 
 15.78%   15.50%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 500 (893 bytes) 
  6.75%    3.61%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (362 bytes) 
  5.28%    6.78%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (365 bytes) 
  2.28%    2.68%         C1, level 3  sun.invoke.util.Wrapper::stackSlots, version 179 (14 bytes) 
  1.84%    2.46%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (104 bytes) 
  1.45%    0.66%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 488 (188 bytes) 
  1.10%    1.28%         C2, level 4  com.google.re2j.Machine::match, version 533 (78 bytes) 
  0.24%    0.23%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 547 (0 bytes) 
  0.10%                  C2, level 4  com.google.re2j.Pattern::find, version 547 (172 bytes) 
  0.08%    0.13%         C2, level 4  com.google.re2j.Pattern::find, version 547 (28 bytes) 
  0.08%    0.12%         C2, level 4  com.google.re2j.Pattern::find, version 547 (28 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.05%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 533 (81 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (7 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Pattern::find, version 547 (55 bytes) 
  2.24%    2.06%  <...other 401 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 63.69%   65.83%         C2, level 4  com.google.re2j.Machine::match, version 533 
 15.78%   15.50%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 500 
 13.87%   12.86%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 
  2.28%    2.68%         C1, level 3  sun.invoke.util.Wrapper::stackSlots, version 179 
  1.45%    0.66%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 488 
  1.36%    0.99%   [kernel.kallsyms]  [unknown] 
  0.61%    0.41%         C2, level 4  com.google.re2j.Pattern::find, version 547 
  0.10%    0.06%         C2, level 4  java.util.Collections::shuffle, version 564 
  0.07%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 623 
  0.06%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%           libpthread-2.26.so  __libc_write 
  0.03%    0.02%              [vdso]  [unknown] 
  0.03%    0.07%        libc-2.26.so  _IO_fwrite 
  0.03%    0.09%        libc-2.26.so  vfprintf 
  0.02%    0.01%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.03%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.03%        libc-2.26.so  __strchrnul_avx2 
  0.02%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.06%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.44%    0.29%  <...other 69 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 95.58%   95.33%         C2, level 4
  2.28%    2.68%         C1, level 3
  1.36%    0.99%   [kernel.kallsyms]
  0.37%    0.48%           libjvm.so
  0.17%    0.40%        libc-2.26.so
  0.11%    0.02%  libpthread-2.26.so
  0.07%    0.05%      hsdis-amd64.so
  0.03%    0.02%              [vdso]
  0.01%    0.01%         interpreter
  0.00%               perf-14563.map
  0.00%                 runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  8506.166 ± 31.095  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
