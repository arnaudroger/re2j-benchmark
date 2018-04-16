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
# Warmup Iteration   1: 15350.905 ops/s
# Warmup Iteration   2: 25360.116 ops/s
# Warmup Iteration   3: 25609.688 ops/s
# Warmup Iteration   4: 26099.411 ops/s
# Warmup Iteration   5: 26303.595 ops/s
# Warmup Iteration   6: 25903.366 ops/s
# Warmup Iteration   7: 25533.896 ops/s
# Warmup Iteration   8: 25628.924 ops/s
# Warmup Iteration   9: 25500.200 ops/s
# Warmup Iteration  10: 25608.585 ops/s
# Warmup Iteration  11: 25516.140 ops/s
# Warmup Iteration  12: 25480.527 ops/s
# Warmup Iteration  13: 26397.700 ops/s
# Warmup Iteration  14: 26409.322 ops/s
# Warmup Iteration  15: 26422.135 ops/s
# Warmup Iteration  16: 26354.231 ops/s
# Warmup Iteration  17: 26196.455 ops/s
# Warmup Iteration  18: 26424.845 ops/s
# Warmup Iteration  19: 26484.967 ops/s
# Warmup Iteration  20: 26633.667 ops/s
Iteration   1: 26676.998 ops/s
Iteration   2: 26287.064 ops/s
Iteration   3: 26506.311 ops/s
Iteration   4: 26396.879 ops/s
Iteration   5: 26414.758 ops/s
Iteration   6: 26625.097 ops/s
Iteration   7: 26340.504 ops/s
Iteration   8: 26581.194 ops/s
Iteration   9: 26423.352 ops/s
Iteration  10: 26475.307 ops/s
Iteration  11: 26604.698 ops/s
Iteration  12: 26396.591 ops/s
Iteration  13: 26608.559 ops/s
Iteration  14: 26326.524 ops/s
Iteration  15: 26580.796 ops/s
Iteration  16: 26468.810 ops/s
Iteration  17: 26443.839 ops/s
Iteration  18: 26411.209 ops/s
Iteration  19: 26496.357 ops/s
Iteration  20: 26494.553 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  26477.970 ±(99.9%) 93.691 ops/s [Average]
  (min, avg, max) = (26287.064, 26477.970, 26676.998), stdev = 107.895
  CI (99.9%): [26384.279, 26571.661] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 210134 total address lines.
Perf output processed (skipped 23.088 seconds):
 Column 1: cycles (20582 events)
 Column 2: instructions (20567 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 588 (1653 bytes) 

  0.00%                                                0x00007f0d21260de7: cmp    %eax,%r8d
                                                       0x00007f0d21260dea: jae    0x00007f0d21261e75
  0.01%                                                0x00007f0d21260df0: vmovd  %edx,%xmm0
                                                       0x00007f0d21260df4: mov    %rbx,%rdx
                                                       0x00007f0d21260df7: mov    %rdi,0x70(%rsp)
                                                       0x00007f0d21260dfc: mov    %ecx,0x2c(%rsp)
                                                       0x00007f0d21260e00: mov    %r9d,0x68(%rsp)
                                                       0x00007f0d21260e05: mov    %r11d,%ebx
                                                       0x00007f0d21260e08: mov    %r10,0x60(%rsp)
                                                       0x00007f0d21260e0d: vmovd  %xmm0,%r10d
  0.00%    0.00%                                       0x00007f0d21260e12: lea    (%r12,%r10,8),%r11
                                                       0x00007f0d21260e16: movzwl 0x10(%r11,%r8,2),%r10d  ;*caload
                                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                                       0x00007f0d21260e1c: cmp    $0xd800,%r10d
                                                       0x00007f0d21260e23: jge    0x00007f0d21262141  ;*if_icmplt
                                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                                       0x00007f0d21260e29: shl    $0x3,%r10d         ;*ishl
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.01%                                       0x00007f0d21260e2d: mov    %r10d,%r8d
                                                       0x00007f0d21260e30: and    $0x7,%r8d
                                                       0x00007f0d21260e34: or     $0x1,%r10d
                                                       0x00007f0d21260e38: mov    %r10d,%ebp
  0.01%                                                0x00007f0d21260e3b: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                                                       0x00007f0d21260e3f: mov    %r8d,0x20(%rsp)
           0.00%                                       0x00007f0d21260e44: sar    $0x3,%r10d         ;*ishr
                                                                                                     ; - com.google.re2j.Machine::match@68 (line 194)
                                                       0x00007f0d21260e48: vmovd  %r10d,%xmm3
           0.01%                                       0x00007f0d21260e4d: mov    %ebp,%r10d
                                                       0x00007f0d21260e50: cmp    $0xfffffff8,%r10d
                                                       0x00007f0d21260e54: je     0x00007f0d21261e24  ;*if_icmpeq
                                                                                                     ; - com.google.re2j.Machine::match@88 (line 198)
  0.01%                                                0x00007f0d21260e5a: vmovd  %xmm1,%r8d
                                                       0x00007f0d21260e5f: add    0x20(%rsp),%r8d
  0.04%    0.01%                                       0x00007f0d21260e64: add    %r14d,%r8d         ;*iadd
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%    0.01%                                       0x00007f0d21260e67: cmp    %esi,%r8d
                                                       0x00007f0d21260e6a: jge    0x00007f0d212614c4  ;*if_icmpge
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
           0.01%                                       0x00007f0d21260e70: test   %r8d,%r8d
                                                       0x00007f0d21260e73: jl     0x00007f0d2126201d  ;*iflt
                                                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                0x00007f0d21260e79: cmp    %eax,%r8d
                                                       0x00007f0d21260e7c: jge    0x00007f0d21262191  ;*if_icmplt
                                                                                                     ; - java.lang.String::charAt@10 (line 657)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                0x00007f0d21260e82: cmp    %eax,%r8d
                                                       0x00007f0d21260e85: jae    0x00007f0d21261eb9
  0.01%                                                0x00007f0d21260e8b: movzwl 0x10(%r11,%r8,2),%r11d  ;*caload
                                                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.01%                                                0x00007f0d21260e91: cmp    $0xd800,%r11d
                                                       0x00007f0d21260e98: jge    0x00007f0d212621d5  ;*if_icmplt
                                                                                                     ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                                0x00007f0d21260e9e: shl    $0x3,%r11d         ;*ishl
                                                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                                       0x00007f0d21260ea2: mov    %r11d,%r8d
                                                       0x00007f0d21260ea5: and    $0x7,%r8d
  0.00%    0.00%                                       0x00007f0d21260ea9: or     $0x1,%r11d
                                                       0x00007f0d21260ead: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%                                       0x00007f0d21260eb1: sar    $0x3,%r11d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@111 (line 201)
                                                       0x00007f0d21260eb5: vmovd  %xmm1,%r10d
                                                       0x00007f0d21260eba: test   %r10d,%r10d
                                                       0x00007f0d21260ebd: jne    0x00007f0d21261fe5  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::match@115 (line 204)
                                                       0x00007f0d21260ec3: vmovd  %xmm3,%ecx
  0.01%                                                0x00007f0d21260ec7: test   %ecx,%ecx
                                                       0x00007f0d21260ec9: jl     0x00007f0d212614b9  ;*ifge
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007f0d21260ecf: mov    $0x5,%r9d          ;*iload_1
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007f0d21260ed5: cmp    $0xa,%ecx
                                                       0x00007f0d21260ed8: je     0x00007f0d212614d2  ;*iload_0
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007f0d21260ede: mov    %ecx,%edi
  0.01%    0.01%                                       0x00007f0d21260ee0: add    $0xffffffbf,%edi
                                                       0x00007f0d21260ee3: cmp    $0x1a,%edi
                  ╭                                    0x00007f0d21260ee6: jb     0x00007f0d21260ef9  ;*if_icmple
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                    0x00007f0d21260ee8: mov    %ecx,%r10d
                  │                                    0x00007f0d21260eeb: add    $0xffffff9f,%r10d
  0.00%           │                                    0x00007f0d21260eef: cmp    $0x1a,%r10d
                  │                                    0x00007f0d21260ef3: jae    0x00007f0d212614db  ;*iconst_1
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                                    0x00007f0d21260ef9: or     $0x10,%r9d         ;*iload_2
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%                                                0x00007f0d21260efd: mov    %ebx,%r10d
           0.00%                                       0x00007f0d21260f00: test   %r10d,%r10d
                                                       0x00007f0d21260f03: jne    0x00007f0d21261f6d  ;*aload
                                                                                                     ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%                                                0x00007f0d21260f09: mov    %r8d,0x34(%rsp)
  0.01%    0.00%                                       0x00007f0d21260f0e: mov    %r11d,0x28(%rsp)
  0.01%    0.00%                                       0x00007f0d21260f13: mov    %ecx,0x24(%rsp)
  0.00%                                                0x00007f0d21260f17: mov    %r10d,0x30(%rsp)
  0.01%    0.00%                                       0x00007f0d21260f1c: mov    0x68(%rsp),%r11d
                                                       0x00007f0d21260f21: and    $0x4,%r11d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
           0.00%                                       0x00007f0d21260f25: mov    %r11d,0x38(%rsp)
                                                       0x00007f0d21260f2a: mov    %r13,%r10
                                                       0x00007f0d21260f2d: shl    $0x3,%r10          ;*getfield q1
                                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                                       0x00007f0d21260f31: mov    %r10,0x50(%rsp)
                                                       0x00007f0d21260f36: xor    %eax,%eax
                                                       0x00007f0d21260f38: xor    %r11d,%r11d
  0.01%                                                0x00007f0d21260f3b: mov    %r11d,0x3c(%rsp)
                   ╭                                   0x00007f0d21260f40: jmpq   0x00007f0d21261267
  0.00%    0.01%   │                ↗                  0x00007f0d21260f45: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │                │                                                                ; - com.google.re2j.Machine::match@326 (line 245)
                   │╭               │                  0x00007f0d21260f49: jmpq   0x00007f0d21261342
           0.00%   ││             ↗ │                  0x00007f0d21260f4e: mov    $0x5,%r9d
                   ││╭            │ │                  0x00007f0d21260f54: jmpq   0x00007f0d2126132b
  0.20%    0.25%   │││   ↗↗↗      │ │                  0x00007f0d21260f59: mov    0x2c(%r12,%rbx,8),%ebp  ;*getfield outInst
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@191 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.12%   │││   │││      │ │                  0x00007f0d21260f5e: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f0d21262459
  0.19%    0.16%   │││   │││      │ │                  0x00007f0d21260f63: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │││   │││      │ │                  0x00007f0d21260f69: jne    0x00007f0d21261c01
  0.15%    0.14%   │││   │││      │ │                  0x00007f0d21260f6f: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%    0.03%   │││   │││      │ │                  0x00007f0d21260f73: vmovq  %rcx,%xmm0
  0.01%    0.00%   │││   │││      │ │                  0x00007f0d21260f78: mov    0x18(%rcx),%ecx    ;*getfield pc
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.00%   │││   │││      │ │                  0x00007f0d21260f7b: vmovd  %ecx,%xmm3
  0.14%    0.15%   │││   │││      │ │                  0x00007f0d21260f7f: mov    0x50(%rsp),%rcx
  0.01%    0.00%   │││   │││      │ │                  0x00007f0d21260f84: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   │││   │││      │ │                                                                ; implicit exception: dispatches to 0x00007f0d21262475
  0.01%    0.01%   │││   │││      │ │                  0x00007f0d21260f88: vmovd  %xmm3,%ecx
  0.10%    0.14%   │││   │││      │ │                  0x00007f0d21260f8c: cmp    $0x40,%ecx
                   │││   │││      │ │                  0x00007f0d21260f8f: jg     0x00007f0d21261cc9  ;*if_icmpgt
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.13%   │││   │││      │ │                  0x00007f0d21260f95: mov    $0x1,%edx
           0.00%   │││   │││      │ │                  0x00007f0d21260f9a: shl    %cl,%rdx           ;*lshl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.35%    0.35%   │││   │││      │ │                  0x00007f0d21260f9d: mov    %rbx,%rcx
                   │││   │││      │ │                  0x00007f0d21260fa0: and    %rdx,%rcx          ;*land
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   │││   │││      │ │                  0x00007f0d21260fa3: test   %rcx,%rcx
                   │││   │││      │ │                  0x00007f0d21260fa6: jne    0x00007f0d21261d39  ;*ifeq
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.17%   │││   │││      │ │                  0x00007f0d21260fac: vmovd  %xmm3,%ecx
  0.04%    0.02%   │││   │││      │ │                  0x00007f0d21260fb0: cmp    $0x40,%ecx
                   │││   │││      │ │                  0x00007f0d21260fb3: jge    0x00007f0d21261da5  ;*if_icmpge
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.10%   │││   │││      │ │                  0x00007f0d21260fb9: mov    0x50(%rsp),%rcx
                   │││   │││      │ │                  0x00007f0d21260fbe: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.04%   │││   │││      │ │                  0x00007f0d21260fc2: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.03%   │││   │││      │ │                  0x00007f0d21260fc5: vmovd  %ecx,%xmm2
  0.13%    0.13%   │││   │││      │ │                  0x00007f0d21260fc9: mov    0x50(%rsp),%rcx
           0.00%   │││   │││      │ │                  0x00007f0d21260fce: mov    0xc(%rcx),%ebp     ;*getfield size
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.02%   │││   │││      │ │                  0x00007f0d21260fd1: or     %rbx,%rdx
  0.01%    0.01%   │││   │││      │ │                  0x00007f0d21260fd4: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.08%   │││   │││      │ │                  0x00007f0d21260fd8: mov    %ebp,%ebx
           0.01%   │││   │││      │ │                  0x00007f0d21260fda: inc    %ebx
  0.04%    0.04%   │││   │││      │ │                  0x00007f0d21260fdc: mov    %ebx,0xc(%rcx)     ;*putfield size
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%   │││   │││      │ │                  0x00007f0d21260fdf: vmovd  %xmm2,%ecx
  0.10%    0.10%   │││   │││      │ │                  0x00007f0d21260fe3: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f0d21262489
  0.17%    0.11%   │││   │││      │ │                  0x00007f0d21260fe8: cmp    %ecx,%ebp
                   │││   │││      │ │                  0x00007f0d21260fea: jae    0x00007f0d21261b91
  0.24%    0.18%   │││   │││      │ │                  0x00007f0d21260ff0: vmovd  %xmm2,%ecx
  0.00%            │││   │││      │ │                  0x00007f0d21260ff4: mov    0x8(%r12,%rcx,8),%ebx
  0.06%    0.06%   │││   │││      │ │                  0x00007f0d21260ff9: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │││   │││      │ │                  0x00007f0d21260fff: jne    0x00007f0d21261c59  ;*aastore
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.05%   │││   │││      │ │                  0x00007f0d21261005: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.05%   │││   │││      │ │                  0x00007f0d21261009: lea    0x10(%rcx,%rbp,4),%rcx
                   │││   │││      │ │                  0x00007f0d2126100e: vmovq  %xmm0,%rbx
  0.04%    0.04%   │││   │││      │ │                  0x00007f0d21261013: shr    $0x3,%rbx
  0.07%    0.08%   │││   │││      │ │                  0x00007f0d21261017: mov    %ebx,(%rcx)
  0.30%    0.38%   │││   │││      │ │                  0x00007f0d21261019: shr    $0x9,%rcx
                   │││   │││      │ │                  0x00007f0d2126101d: movabs $0x7f0d31cb5000,%rbx
  0.08%    0.04%   │││   │││      │ │                  0x00007f0d21261027: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@206 (line 314)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.23%   │││╭  │││      │ │                  0x00007f0d2126102b: jmpq   0x00007f0d2126111c
  0.16%    0.09%   ││││  │││      │ │     ↗            0x00007f0d21261030: or     $0x20,%r9d         ;*iload_2
                   ││││  │││      │ │     │                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││││  │││      │ │     │                                                          ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.15%   ││││  │││      │ │     │↗           0x00007f0d21261034: movzbl 0x18(%r12,%rbx,8),%r14d  ;*getfield longest
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@4 (line 280)
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││  │││      │ │     ││                                                         ; implicit exception: dispatches to 0x00007f0d212623f5
  0.15%    0.23%   ││││  │││      │ │     ││           0x00007f0d2126103a: mov    0x2c(%rsp),%r10d
  0.30%    0.35%   ││││  │││      │ │     ││           0x00007f0d2126103f: mov    0xc(%r12,%r10,8),%r11d  ;*getfield size
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@10 (line 281)
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.20%    0.21%   ││││  │││      │ │     ││           0x00007f0d21261044: mov    0x3c(%rsp),%r8d
  0.16%    0.18%   ││││  │││      │ │     ││           0x00007f0d21261049: add    0x20(%rsp),%r8d    ;*iadd
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@340 (line 246)
  0.11%    0.20%   ││││  │││      │ │     ││           0x00007f0d2126104e: test   %r11d,%r11d
                   ││││╭ │││      │ │     ││           0x00007f0d21261051: jle    0x00007f0d21261124  ;*if_icmpge
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@28 (line 283)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.30%    0.27%   │││││ │││      │ │     ││           0x00007f0d21261057: mov    0x70(%rsp),%r10
  0.12%    0.13%   │││││ │││      │ │     ││           0x00007f0d2126105c: mov    0x10(%r10),%ebx
  0.22%    0.13%   │││││ │││      │ │     ││           0x00007f0d21261060: mov    0x60(%rsp),%r10
  0.16%    0.14%   │││││ │││      │ │     ││           0x00007f0d21261065: movzbl 0x11(%r10),%r10d   ;*getfield captures
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@16 (line 282)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.24%   │││││ │││      │ │     ││           0x00007f0d2126106a: mov    0x3c(%rsp),%edi
  0.09%    0.16%   │││││ │││      │ │     ││           0x00007f0d2126106e: mov    $0x1,%ecx
  0.15%    0.15%   │││││ │││      │ │     ││           0x00007f0d21261073: xor    %esi,%esi
  0.17%    0.20%   │││││ │││      │ │     ││           0x00007f0d21261075: cmp    %ebx,%edi
  0.32%    0.34%   │││││ │││      │ │     ││           0x00007f0d21261077: cmovne %esi,%ecx          ;*invokespecial step
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.20%   │││││ │││      │ │     ││           0x00007f0d2126107a: vmovd  %ecx,%xmm1
  0.19%    0.22%   │││││ │││      │ │     ││           0x00007f0d2126107e: test   %r10d,%r10d
                   │││││ │││      │ │     ││           0x00007f0d21261081: jne    0x00007f0d212617fd  ;*iload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@31 (line 286)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.26%    0.32%   │││││ │││      │ │     ││           0x00007f0d21261087: mov    0x2c(%rsp),%ebx
  0.17%    0.15%   │││││ │││      │ │     ││           0x00007f0d2126108b: mov    0x20(%r12,%rbx,8),%ebx  ;*getfield denseThreadsInstructions
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@86 (line 296)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.20%    0.29%   │││││ │││      │ │     ││           0x00007f0d21261090: mov    0xc(%r12,%rbx,8),%ecx  ;*aaload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ │││      │ │     ││                                                         ; implicit exception: dispatches to 0x00007f0d212617fd
  0.51%    0.34%   │││││ │││      │ │     ││           0x00007f0d21261095: test   %ecx,%ecx
                   │││││ │││      │ │     ││           0x00007f0d21261097: jbe    0x00007f0d212617fd
  0.40%    0.38%   │││││ │││      │ │     ││           0x00007f0d2126109d: mov    %r11d,%edi
  0.09%    0.13%   │││││ │││      │ │     ││           0x00007f0d212610a0: dec    %edi
  0.12%    0.08%   │││││ │││      │ │     ││           0x00007f0d212610a2: cmp    %ecx,%edi
                   │││││ │││      │ │     ││           0x00007f0d212610a4: jae    0x00007f0d212617fd
  0.25%    0.17%   │││││ │││      │ │     ││           0x00007f0d212610aa: lea    (%r12,%rbx,8),%rdi
  0.36%    0.40%   │││││ │││      │ │     ││           0x00007f0d212610ae: xor    %r10d,%r10d        ;*iload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@31 (line 286)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.47%    1.69%   │││││ │││↗     │ │     ││           0x00007f0d212610b1: mov    0x10(%rdi,%r10,4),%ebx  ;*aaload
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.39%    0.53%   │││││ ││││     │ │     ││           0x00007f0d212610b6: mov    0xc(%r12,%rbx,8),%edx  ;*getfield op
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@96 (line 298)
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ ││││     │ │     ││                                                         ; implicit exception: dispatches to 0x00007f0d212623a5
  2.40%    2.44%   │││││ ││││     │ │     ││           0x00007f0d212610bb: cmp    $0x6,%edx
                   │││││╭││││     │ │     ││           0x00007f0d212610be: je     0x00007f0d21261470  ;*if_icmpne
                   ││││││││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@101 (line 298)
                   ││││││││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.30%    1.18%   ││││││││││     │ │     ││           0x00007f0d212610c4: cmp    $0xa,%edx
                   ││││││╰│││     │ │     ││           0x00007f0d212610c7: je     0x00007f0d21260f59  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.55%    1.51%   ││││││ │││     │ │     ││           0x00007f0d212610cd: cmp    $0xb,%edx
                   ││││││ │││     │ │     ││           0x00007f0d212610d0: je     0x00007f0d2126156d  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.07%    1.02%   ││││││ │││     │ │     ││           0x00007f0d212610d6: cmp    $0x9,%edx
                   ││││││ │││     │ │     ││           0x00007f0d212610d9: je     0x00007f0d212615dd  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.05%    0.96%   ││││││ │││     │ │     ││           0x00007f0d212610df: cmp    $0xc,%edx
                   ││││││ │││     │ │     ││           0x00007f0d212610e2: jne    0x00007f0d212614fb  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.76%    1.64%   ││││││ │││     │ │     ││           0x00007f0d212610e8: mov    0x1c(%r12,%rbx,8),%edx  ;*getfield f0
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.00%    0.99%   ││││││ │││     │ │     ││           0x00007f0d212610ed: cmp    %eax,%edx
                   ││││││ ╰││     │ │     ││           0x00007f0d212610ef: je     0x00007f0d21260f59  ;*if_icmpeq
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.76%    1.89%   ││││││  ││     │ │     ││           0x00007f0d212610f5: mov    0x20(%r12,%rbx,8),%edx  ;*getfield f1
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.54%    0.58%   ││││││  ││     │ │     ││           0x00007f0d212610fa: cmp    %eax,%edx
                   ││││││  ╰│     │ │     ││           0x00007f0d212610fc: je     0x00007f0d21260f59  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.57%    1.65%   ││││││   │     │ │     ││           0x00007f0d21261102: mov    0x24(%r12,%rbx,8),%edx  ;*getfield f2
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.96%    1.08%   ││││││   │     │ │     ││           0x00007f0d21261107: cmp    %eax,%edx
                   ││││││   │     │ │     ││           0x00007f0d21261109: je     0x00007f0d2126164d  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.55%    1.45%   ││││││   │     │ │     ││           0x00007f0d2126110f: mov    0x28(%r12,%rbx,8),%edx  ;*getfield f3
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@183 (line 313)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.43%    0.39%   ││││││   │     │ │     ││           0x00007f0d21261114: cmp    %eax,%edx
                   ││││││   │     │ │     ││           0x00007f0d21261116: je     0x00007f0d212616b9  ;*aload
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@211 (line 317)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.20%    1.39%   │││↘││   │     │ │     ││           0x00007f0d2126111c: inc    %r10d              ;*iinc
                   │││ ││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@222 (line 283)
                   │││ ││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.69%    0.79%   │││ ││   │     │ │     ││           0x00007f0d2126111f: cmp    %r11d,%r10d
                   │││ ││   ╰     │ │     ││           0x00007f0d21261122: jl     0x00007f0d212610b1  ;*if_icmpge
                   │││ ││         │ │     ││                                                         ; - com.google.re2j.Machine::step@28 (line 283)
                   │││ ││         │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.16%   │││ ↘│         │ │     ││           0x00007f0d21261124: mov    0x2c(%rsp),%r10d
  0.12%    0.15%   │││  │         │ │     ││           0x00007f0d21261129: movzbl 0x18(%r12,%r10,8),%r10d
  0.28%    0.48%   │││  │         │ │     ││           0x00007f0d2126112f: test   %r10d,%r10d
                   │││  │    ╭    │ │     ││           0x00007f0d21261132: jne    0x00007f0d21261156  ;*ifeq
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.35%   │││  │    │    │ │     ││           0x00007f0d21261134: mov    0x2c(%rsp),%r11d
  0.09%    0.14%   │││  │    │    │ │     ││           0x00007f0d21261139: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield pcs
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.12%   │││  │    │    │ │     ││           0x00007f0d2126113e: movb   $0x1,0x18(%r12,%r11,8)  ;*putfield empty
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.46%    0.65%   │││  │    │    │ │     ││           0x00007f0d21261144: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.81%    1.16%   │││  │    │    │ │     ││           0x00007f0d21261149: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.49%    0.70%   │││  │    │    │ │     ││           0x00007f0d2126114e: test   %ebp,%ebp
                   │││  │    │    │ │     ││           0x00007f0d21261150: jne    0x00007f0d212619dd  ;*invokevirtual clear
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@229 (line 321)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.03%   │││  │    ↘    │ │     ││           0x00007f0d21261156: mov    0x60(%rsp),%r10
  0.10%    0.25%   │││  │         │ │     ││           0x00007f0d2126115b: movzbl 0x10(%r10),%eax    ;*getfield matched
                   │││  │         │ │     ││                                                         ; - com.google.re2j.Machine::match@378 (line 250)
  0.39%    0.53%   │││  │         │ │     ││           0x00007f0d21261160: mov    0x60(%rsp),%r10
  0.18%    0.31%   │││  │         │ │     ││           0x00007f0d21261165: movzbl 0x11(%r10),%ebp    ;*getfield captures
                   │││  │         │ │     ││                                                         ; - com.google.re2j.Machine::match@371 (line 250)
  0.05%    0.06%   │││  │         │ │     ││           0x00007f0d2126116a: mov    0x20(%rsp),%r11d
  0.15%    0.15%   │││  │         │ │     ││           0x00007f0d2126116f: test   %r11d,%r11d
                   │││  │     ╭   │ │     ││           0x00007f0d21261172: je     0x00007f0d212613c3  ;*ifne
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@364 (line 247)
  0.28%    0.40%   │││  │     │   │ │     ││           0x00007f0d21261178: test   %ebp,%ebp
                   │││  │     │   │ │     ││           0x00007f0d2126117a: jne    0x00007f0d212618c1  ;*ifne
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@374 (line 250)
  0.18%    0.31%   │││  │     │   │ │     ││           0x00007f0d21261180: test   %eax,%eax
                   │││  │     │   │ │     ││           0x00007f0d21261182: jne    0x00007f0d2126199d  ;*ifeq
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@381 (line 250)
  0.04%    0.09%   │││  │     │   │ │     ││           0x00007f0d21261188: cmp    $0xffffffff,%r13d
                   │││  │     │╭  │ │     ││           0x00007f0d2126118c: je     0x00007f0d21261402  ;*if_icmpeq
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@403 (line 258)
  0.10%    0.16%   │││  │     ││  │ │     ││           0x00007f0d21261192: mov    %r13d,0x24(%rsp)
  0.32%    0.38%   │││  │     ││  │ │     ││           0x00007f0d21261197: mov    0x70(%rsp),%r10
  0.26%    0.24%   │││  │     ││  │ │     ││           0x00007f0d2126119c: mov    0x10(%r10),%r11d   ;*getfield end
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.13%   │││  │     ││  │ │     ││           0x00007f0d212611a0: mov    0x34(%rsp),%ecx
  0.12%    0.16%   │││  │     ││  │ │     ││           0x00007f0d212611a4: add    %r8d,%ecx
  0.32%    0.44%   │││  │     ││  │ │     ││           0x00007f0d212611a7: add    0xc(%r10),%ecx     ;*iadd
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.44%    0.68%   │││  │     ││  │ │     ││           0x00007f0d212611ab: cmp    %r11d,%ecx
                   │││  │     ││╭ │ │     ││           0x00007f0d212611ae: jge    0x00007f0d212613b6  ;*if_icmpge
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.21%    0.32%   │││  │     │││ │ │     ││           0x00007f0d212611b4: mov    0x14(%r10),%ebp    ;*getfield str
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.12%    0.10%   │││  │     │││ │ │     ││           0x00007f0d212611b8: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f0d21262405
  0.33%    0.37%   │││  │     │││ │ │     ││           0x00007f0d212611bd: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││  │     │││ │ │     ││           0x00007f0d212611c4: jne    0x00007f0d212617c1
  0.43%    0.49%   │││  │     │││ │ │     ││           0x00007f0d212611ca: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.05%    0.04%   │││  │     │││ │ │     ││           0x00007f0d212611ce: test   %ecx,%ecx
                   │││  │     │││ │ │     ││           0x00007f0d212611d0: jl     0x00007f0d21261905  ;*iflt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@1 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.10%    0.09%   │││  │     │││ │ │     ││           0x00007f0d212611d6: mov    0xc(%rbx),%edx     ;*getfield value
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@6 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.20%    0.29%   │││  │     │││ │ │     ││           0x00007f0d212611d9: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@9 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
                   │││  │     │││ │ │     ││                                                         ; implicit exception: dispatches to 0x00007f0d21262419
  2.65%    3.33%   │││  │     │││ │ │     ││           0x00007f0d212611de: cmp    %ebp,%ecx
                   │││  │     │││ │ │     ││           0x00007f0d212611e0: jge    0x00007f0d21261a15  ;*if_icmplt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@10 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.86%   │││  │     │││ │ │     ││           0x00007f0d212611e6: cmp    %ebp,%ecx
                   │││  │     │││ │ │     ││           0x00007f0d212611e8: jae    0x00007f0d2126177d
  0.06%    0.04%   │││  │     │││ │ │     ││           0x00007f0d212611ee: lea    (%r12,%rdx,8),%r10
  0.03%    0.01%   │││  │     │││ │ │     ││           0x00007f0d212611f2: movzwl 0x10(%r10,%rcx,2),%r11d  ;*caload
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@27 (line 660)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.04%    0.02%   │││  │     │││ │ │     ││           0x00007f0d212611f8: cmp    $0xd800,%r11d
                   │││  │     │││ │ │     ││           0x00007f0d212611ff: jge    0x00007f0d21261a61  ;*if_icmplt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.63%    0.72%   │││  │     │││ │ │     ││           0x00007f0d21261205: shl    $0x3,%r11d         ;*ishl
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.09%   │││  │     │││ │ │     ││           0x00007f0d21261209: mov    %r11d,%edi
  0.01%            │││  │     │││ │ │     ││           0x00007f0d2126120c: and    $0x7,%edi
  0.58%    0.72%   │││  │     │││ │ │     ││           0x00007f0d2126120f: or     $0x1,%r11d
  0.06%    0.04%   │││  │     │││ │ │     ││           0x00007f0d21261213: or     $0x1,%edi          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.68%    0.95%   │││  │     │││ │ │     ││           0x00007f0d21261216: sar    $0x3,%r11d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1306}
                   │││  │     │││ │ │     ││                                                         ;*goto
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@441 (line 266)
  0.02%    0.01%   │││  │     │││ │ │     ││↗ ↗        0x00007f0d2126121a: test   %eax,0x1804bde0(%rip)        # 0x00007f0d392ad000
                   │││  │     │││ │ │     │││ │                                                      ;*goto
                   │││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@441 (line 266)
                   │││  │     │││ │ │     │││ │                                                      ;   {poll}
  0.01%            │││  │     │││ │ │     │││ │        0x00007f0d21261220: mov    0x60(%rsp),%r10
  0.01%    0.03%   │││  │     │││ │ │     │││ │        0x00007f0d21261225: mov    0x14(%r10),%ecx    ;*getfield re2
                   │││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.61%    0.61%   │││  │     │││ │ │     │││ │        0x00007f0d21261229: vmovd  %ecx,%xmm2
  0.04%    0.01%   │││  │     │││ │ │     │││ │        0x00007f0d2126122d: mov    0x28(%r10),%ebx    ;*getfield matchcap
                   │││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.01%   │││  │     │││ │ │     │││ │        0x00007f0d21261231: mov    0x50(%rsp),%r10
  0.03%    0.04%   │││  │     │││ │ │     │││ │        0x00007f0d21261236: mov    %r10,%rcx
  0.59%    0.52%   │││  │     │││ │ │     │││ │        0x00007f0d21261239: shr    $0x3,%rcx
  0.04%    0.02%   │││  │     │││ │ │     │││ │        0x00007f0d2126123d: mov    %ecx,0x2c(%rsp)
  0.01%    0.01%   │││  │     │││ │ │     │││ │        0x00007f0d21261241: mov    0x34(%rsp),%r10d
  0.03%    0.05%   │││  │     │││ │ │     │││ │        0x00007f0d21261246: mov    %r10d,0x20(%rsp)
  0.73%    0.45%   │││  │     │││ │ │     │││ │        0x00007f0d2126124b: mov    %r8d,0x3c(%rsp)
  0.03%    0.02%   │││  │     │││ │ │     │││ │        0x00007f0d21261250: mov    %edi,0x34(%rsp)
                   │││  │     │││ │ │     │││ │        0x00007f0d21261254: mov    %r11d,0x28(%rsp)
  0.03%    0.03%   │││  │     │││ │ │     │││ │        0x00007f0d21261259: mov    0x10(%rsp),%r10
  0.70%    0.45%   │││  │     │││ │ │     │││ │        0x00007f0d2126125e: mov    %r10,0x50(%rsp)
  0.02%    0.05%   │││  │     │││ │ │     │││ │        0x00007f0d21261263: vmovd  %ebx,%xmm4         ;*aload
                   │││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
                   ↘││  │     │││ │ │     │││ │        0x00007f0d21261267: mov    0x2c(%rsp),%r11d
  0.03%    0.03%    ││  │     │││ │ │     │││ │        0x00007f0d2126126c: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f0d212623b5
  0.66%    0.71%    ││  │     │││ │ │     │││ │        0x00007f0d21261272: test   %r10d,%r10d
                    ││  │     │││╭│ │     │││ │        0x00007f0d21261275: je     0x00007f0d212612a9  ;*ifeq
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.02%    0.03%    ││  │     │││││ │     │││ │        0x00007f0d21261277: mov    0x38(%rsp),%r10d
                    ││  │     │││││ │     │││ │        0x00007f0d2126127c: test   %r10d,%r10d
                    ││  │     │││││ │     │││ │        0x00007f0d2126127f: jne    0x00007f0d21261af9  ;*ifeq
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@148 (line 212)
  0.00%    0.01%    ││  │     │││││ │     │││ │        0x00007f0d21261285: test   %eax,%eax
                    ││  │     │││││ │     │││ │        0x00007f0d21261287: jne    0x00007f0d21261b45  ;*ifeq
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.59%    0.67%    ││  │     │││││ │     │││ │        0x00007f0d2126128d: vmovd  %xmm2,%r10d
  0.02%    0.03%    ││  │     │││││ │     │││ │        0x00007f0d21261292: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                    ││  │     │││││ │     │││ │                                                      ; implicit exception: dispatches to 0x00007f0d21262429
  0.00%             ││  │     │││││ │     │││ │        0x00007f0d21261297: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                    ││  │     │││││ │     │││ │                                                      ; - java.lang.String::isEmpty@1 (line 635)
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     │││ │                                                      ; implicit exception: dispatches to 0x00007f0d21262439
  0.03%    0.02%    ││  │     │││││ │     │││ │        0x00007f0d2126129c: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                    ││  │     │││││ │     │││ │                                                      ; - java.lang.String::isEmpty@4 (line 635)
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     │││ │                                                      ; implicit exception: dispatches to 0x00007f0d21262449
  1.26%    1.51%    ││  │     │││││ │     │││ │        0x00007f0d212612a1: test   %ebp,%ebp
                    ││  │     │││││ │     │││ │        0x00007f0d212612a3: jne    0x00007f0d21261ab1  ;*iload_3
                    ││  │     │││││ │     │││ │                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.56%    0.60%    ││  │     │││↘│ │     │││ │        0x00007f0d212612a9: test   %eax,%eax
                    ││  │     │││ │ │     │││ │        0x00007f0d212612ab: jne    0x00007f0d21261871  ;*ifne
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@279 (line 237)
           0.01%    ││  │     │││ │ │     │││ │        0x00007f0d212612b1: mov    0x60(%rsp),%r10
  0.00%    0.03%    ││  │     │││ │ │     │││ │        0x00007f0d212612b6: movzbl 0x11(%r10),%ebx    ;*getfield captures
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.12%    0.14%    ││  │     │││ │ │     │││ │        0x00007f0d212612bb: test   %ebx,%ebx
                    ││  │     │││ │ │     │││ │        0x00007f0d212612bd: jne    0x00007f0d2126194d  ;*ifeq
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.61%    0.30%    ││  │     │││ │ │     │││ │        0x00007f0d212612c3: mov    0x18(%r10),%r11d   ;*getfield prog
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@297 (line 243)
                    ││  │     │││ │ │     │││ │        0x00007f0d212612c7: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                    ││  │     │││ │ │     │││ │                                                      ; implicit exception: dispatches to 0x00007f0d212623c5
  0.03%    0.04%    ││  │     │││ │ │     │││ │        0x00007f0d212612cc: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f0d212623d5
  0.38%    0.35%    ││  │     │││ │ │     │││ │        0x00007f0d212612d1: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││  │     │││ │ │     │││ │        0x00007f0d212612d8: jne    0x00007f0d21261721  ;*ifeq
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.64%    0.18%    ││  │     │││ │ │     │││ │        0x00007f0d212612de: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                    ││  │     │││ │ │     │││ │        0x00007f0d212612e2: mov    0x2c(%rsp),%r10d
  0.01%    0.00%    ││  │     │││ │ │     │││ │        0x00007f0d212612e7: shl    $0x3,%r10          ;*aload
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.13%    0.10%    ││  │     │││ │ │     │││ │        0x00007f0d212612eb: mov    %r10,0x10(%rsp)
  0.63%    0.21%    ││  │     │││ │ │     │││ │        0x00007f0d212612f0: vmovd  %xmm4,%r10d
           0.01%    ││  │     │││ │ │     │││ │        0x00007f0d212612f5: mov    %r10,%r8
  0.00%    0.00%    ││  │     │││ │ │     │││ │        0x00007f0d212612f8: shl    $0x3,%r8           ;*getfield matchcap
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.09%    0.06%    ││  │     │││ │ │     │││ │        0x00007f0d212612fc: mov    0x10(%rsp),%rdx
  0.73%    0.32%    ││  │     │││ │ │     │││ │        0x00007f0d21261301: mov    0x3c(%rsp),%ecx
                    ││  │     │││ │ │     │││ │        0x00007f0d21261305: xor    %edi,%edi
                    ││  │     │││ │ │     │││ │        0x00007f0d21261307: mov    0x60(%rsp),%r10
  0.06%    0.05%    ││  │     │││ │ │     │││ │        0x00007f0d2126130c: mov    %r10,(%rsp)
  0.71%    0.57%    ││  │     │││ │ │     │││ │        0x00007f0d21261310: mov    %ebx,0x8(%rsp)
  0.00%             ││  │     │││ │ │     │││ │        0x00007f0d21261314: data16 xchg %ax,%ax
  0.00%             ││  │     │││ │ │     │││ │        0x00007f0d21261317: callq  0x00007f0d21046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1564}
                    ││  │     │││ │ │     │││ │                                                      ;*invokevirtual add
                    ││  │     │││ │ │     │││ │                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                    ││  │     │││ │ │     │││ │                                                      ;   {optimized virtual_call}
  0.45%    0.45%    ││  │     │││ │ │     │││ │        0x00007f0d2126131c: mov    0x24(%rsp),%eax
  0.17%    0.14%    ││  │     │││ │ │     │││ │        0x00007f0d21261320: test   %eax,%eax
                    ││  │     │││ ╰ │     │││ │        0x00007f0d21261322: jl     0x00007f0d21260f4e  ;*ifge
                    ││  │     │││   │     │││ │                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││  │     │││   │     │││ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.25%    ││  │     │││   │     │││ │        0x00007f0d21261328: xor    %r9d,%r9d          ;*iload_0
                    ││  │     │││   │     │││ │                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││  │     │││   │     │││ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.44%    0.35%    │↘  │     │││   │     │││ │        0x00007f0d2126132b: cmp    $0xa,%eax
                    │   │     │││  ╭│     │││ │        0x00007f0d2126132e: je     0x00007f0d21261416  ;*iload_1
                    │   │     │││  ││     │││ │                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │     │││  ││     │││ │                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.05%    │   │     │││  ││     │││ │↗       0x00007f0d21261334: mov    0x28(%rsp),%r13d
  0.10%    0.07%    │   │     │││  ││     │││ ││       0x00007f0d21261339: test   %r13d,%r13d
                    │   │     │││  │╰     │││ ││       0x00007f0d2126133c: jl     0x00007f0d21260f45  ;*iload_1
                    │   │     │││  │      │││ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │   │     │││  │      │││ ││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.22%    ↘   │     │││  │      │││ ││       0x00007f0d21261342: cmp    $0xa,%r13d
                        │     │││  │ ╭    │││ ││       0x00007f0d21261346: je     0x00007f0d2126141f  ;*iload_0
                        │     │││  │ │    │││ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                        │     │││  │ │    │││ ││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.41%    0.36%        │     │││  │ │    │││ ││↗      0x00007f0d2126134c: mov    0x60(%rsp),%r10
  0.07%    0.07%        │     │││  │ │    │││ │││      0x00007f0d21261351: mov    0x14(%r10),%ebx    ;*getfield re2
                        │     │││  │ │    │││ │││                                                    ; - com.google.re2j.Machine::step@1 (line 280)
                        │     │││  │ │    │││ │││                                                    ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.07%        │     │││  │ │    │││ │││      0x00007f0d21261355: mov    0x24(%rsp),%r10d
  0.22%    0.20%        │     │││  │ │    │││ │││      0x00007f0d2126135a: add    $0xffffffbf,%r10d
  0.41%    0.36%        │     │││  │ │    │││ │││      0x00007f0d2126135e: mov    0x28(%rsp),%r11d
  0.04%    0.07%        │     │││  │ │    │││ │││      0x00007f0d21261363: add    $0xffffffbf,%r11d
  0.12%    0.08%        │     │││  │ │    │││ │││      0x00007f0d21261367: cmp    $0x1a,%r10d
                        │     │││  │ │╭   │││ │││      0x00007f0d2126136b: jb     0x00007f0d21261380  ;*if_icmple
                        │     │││  │ ││   │││ │││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ ││   │││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ ││   │││ │││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.24%        │     │││  │ ││   │││ │││      0x00007f0d2126136d: mov    0x24(%rsp),%r8d
  0.30%    0.44%        │     │││  │ ││   │││ │││      0x00007f0d21261372: add    $0xffffff9f,%r8d
  0.09%    0.09%        │     │││  │ ││   │││ │││      0x00007f0d21261376: cmp    $0x1a,%r8d
                        │     │││  │ ││╭  │││ │││      0x00007f0d2126137a: jae    0x00007f0d21261428  ;*iconst_1
                        │     │││  │ │││  │││ │││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │││  │││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │││  │││ │││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.04%        │     │││  │ │↘│  │││ │││↗     0x00007f0d21261380: mov    $0x1,%ebp          ;*ireturn
                        │     │││  │ │ │  │││ ││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │  │││ ││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │ │  │││ ││││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.29%        │     │││  │ │ │  │││ ││││↗    0x00007f0d21261385: cmp    $0x1a,%r11d
                        │     │││  │ │ │╭ │││ │││││    0x00007f0d21261389: jb     0x00007f0d2126139e  ;*if_icmple
                        │     │││  │ │ ││ │││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ │ ││ │││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││ │││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.35%    0.46%        │     │││  │ │ ││ │││ │││││    0x00007f0d2126138b: mov    0x28(%rsp),%r10d
  0.06%    0.11%        │     │││  │ │ ││ │││ │││││    0x00007f0d21261390: add    $0xffffff9f,%r10d
  0.07%    0.12%        │     │││  │ │ ││ │││ │││││    0x00007f0d21261394: cmp    $0x1a,%r10d
                        │     │││  │ │ ││╭│││ │││││    0x00007f0d21261398: jae    0x00007f0d2126144b  ;*iconst_1
                        │     │││  │ │ ││││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │ ││││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││││││ │││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.25%    0.17%        │     │││  │ │ │↘││││ │││││↗   0x00007f0d2126139e: mov    $0x1,%r11d         ;*ireturn
                        │     │││  │ │ │ ││││ ││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │ ││││ ││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │ ││││ ││││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.29%    0.17%        │     │││  │ │ │ ││││ ││││││↗  0x00007f0d212613a4: cmp    %r11d,%ebp
                        │     │││  │ │ │ │╰││ │││││││  0x00007f0d212613a7: je     0x00007f0d21261030  ;*if_icmpeq
                        │     │││  │ │ │ │ ││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │     │││  │ │ │ │ ││ │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.02%        │     │││  │ │ │ │ ││ │││││││  0x00007f0d212613ad: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │     │││  │ │ │ │ ││ │││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.05%        │     │││  │ │ │ │ ╰│ │││││││  0x00007f0d212613b1: jmpq   0x00007f0d21261034
  0.00%    0.02%        │     ││↘  │ │ │ │  │ │││││││  0x00007f0d212613b6: mov    $0xffffffff,%r11d
           0.01%        │     ││   │ │ │ │  │ │││││││  0x00007f0d212613bc: xor    %edi,%edi
  0.00%                 │     ││   │ │ │ │  ╰ │││││││  0x00007f0d212613be: jmpq   0x00007f0d2126121a
  0.01%    0.01%        │     ↘│   │ │ │ │    │││││││  0x00007f0d212613c3: test   %ebp,%ebp
                        │      │   │ │ │ │    │││││││  0x00007f0d212613c5: jne    0x00007f0d21262175  ;*ifeq
                        │      │   │ │ │ │    │││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                        │      │   │ │ │ │    │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │    │││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%    0.01%        │      │   │ │ │ │    │││││││  0x00007f0d212613cb: mov    0x50(%rsp),%r11
                        │      │   │ │ │ │    │││││││  0x00007f0d212613d0: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f0d212624f9
  0.01%    0.00%        │      │   │ │ │ │    │││││││  0x00007f0d212613d5: test   %r10d,%r10d
                        │      │   │ │ │ │   ╭│││││││  0x00007f0d212613d8: jne    0x00007f0d212613f3  ;*ifeq
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613da: mov    0x1c(%r11),%ebp    ;*getfield pcs
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613de: movb   $0x1,0x18(%r11)    ;*putfield empty
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613e3: mov    %r12,0x10(%r11)    ;*putfield pcsl
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613e7: mov    %r12d,0xc(%r11)    ;*putfield size
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613eb: test   %ebp,%ebp
                        │      │   │ │ │ │   ││││││││  0x00007f0d212613ed: jne    0x00007f0d21262219  ;*if_icmpne
                        │      │   │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.00%        │      │   │ │ │ │   ↘│││││││  0x00007f0d212613f3: add    $0xb0,%rsp
  0.00%                 │      │   │ │ │ │    │││││││  0x00007f0d212613fa: pop    %rbp
                        │      │   │ │ │ │    │││││││  0x00007f0d212613fb: test   %eax,0x1804bbff(%rip)        # 0x00007f0d392ad000
                        │      │   │ │ │ │    │││││││                                                ;   {poll_return}
           0.00%        │      │   │ │ │ │    │││││││  0x00007f0d21261401: retq   
  0.01%    0.01%        │      ↘   │ │ │ │    │││││││  0x00007f0d21261402: mov    %r13d,0x24(%rsp)
                        │          │ │ │ │    │││││││  0x00007f0d21261407: mov    0x34(%rsp),%edi
  0.01%                 │          │ │ │ │    │││││││  0x00007f0d2126140b: mov    $0xffffffff,%r11d
                        │          │ │ │ │    ╰││││││  0x00007f0d21261411: jmpq   0x00007f0d2126121a
  0.00%                 │          ↘ │ │ │     ││││││  0x00007f0d21261416: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                        │            │ │ │     ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%        │            │ │ │     ╰│││││  0x00007f0d2126141a: jmpq   0x00007f0d21261334
  0.01%                 │            ↘ │ │      │││││  0x00007f0d2126141f: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                        │              │ │      │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%                 │              │ │      ╰││││  0x00007f0d21261423: jmpq   0x00007f0d2126134c
  0.01%    0.00%        │              ↘ │       ││││  0x00007f0d21261428: mov    0x24(%rsp),%r10d
  0.05%    0.04%        │                │       ││││  0x00007f0d2126142d: add    $0xffffffd0,%r10d
  0.07%    0.07%        │                │       ││││  0x00007f0d21261431: cmp    $0xa,%r10d
                        │                │       ╰│││  0x00007f0d21261435: jb     0x00007f0d21261380  ;*if_icmple
                        │                │        │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                │        │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%                 │                │        │││  0x00007f0d2126143b: cmp    $0x5f,%eax
                        │                │        │││  0x00007f0d2126143e: je     0x00007f0d212622d5  ;*if_icmpne
                        │                │        │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                │        │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.00%        │                │        │││  0x00007f0d21261444: xor    %ebp,%ebp
  0.03%    0.03%        │                │        ╰││  0x00007f0d21261446: jmpq   0x00007f0d21261385
  0.09%    0.06%        │                ↘         ││  0x00007f0d2126144b: mov    0x28(%rsp),%r11d
  0.11%    0.12%        │                          ││  0x00007f0d21261450: add    $0xffffffd0,%r11d
  0.01%    0.02%        │                          ││  0x00007f0d21261454: cmp    $0xa,%r11d
                        │                          ╰│  0x00007f0d21261458: jb     0x00007f0d2126139e  ;*if_icmple
                        │                           │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                           │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.02%        │                           │  0x00007f0d2126145e: cmp    $0x5f,%r13d
                        │                           │  0x00007f0d21261462: je     0x00007f0d21262311  ;*if_icmpne
                        │                           │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                           │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.07%        │                           │  0x00007f0d21261468: xor    %r11d,%r11d
  0.07%    0.06%        │                           ╰  0x00007f0d2126146b: jmpq   0x00007f0d212613a4
                        ↘                              0x00007f0d21261470: mov    0x60(%rsp),%rcx
                                                       0x00007f0d21261475: movb   $0x1,0x10(%rcx)    ;*putfield matched
                                                                                                     ; - com.google.re2j.Machine::step@163 (line 306)
                                                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                       0x00007f0d21261479: test   %r14d,%r14d
                                                       0x00007f0d2126147c: jne    0x00007f0d21262229  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::step@168 (line 307)
                                                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                       0x00007f0d21261482: mov    0x2c(%rsp),%r11d
  0.00%                                                0x00007f0d21261487: movzbl 0x18(%r12,%r11,8),%r10d
                                                       0x00007f0d2126148d: test   %r10d,%r10d
                                                       0x00007f0d21261490: jne    0x00007f0d212614af  ;*ifeq
                                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                     ; - com.google.re2j.Machine::step@175 (line 309)
                                                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                       0x00007f0d21261492: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                                                                                                     ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                     ; - com.google.re2j.Machine::step@175 (line 309)
....................................................................................................
 59.00%   61.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 553 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f0d21246d40: mov    0x8(%rsi),%r10d
                     0x00007f0d21246d44: shl    $0x3,%r10
                     0x00007f0d21246d48: cmp    %r10,%rax
                     0x00007f0d21246d4b: jne    0x00007f0d21045e20  ;   {runtime_call}
                     0x00007f0d21246d51: data16 xchg %ax,%ax
                     0x00007f0d21246d54: nopl   0x0(%rax,%rax,1)
                     0x00007f0d21246d5c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.67%    0.55%     0x00007f0d21246d60: mov    %eax,-0x14000(%rsp)
  0.02%              0x00007f0d21246d67: push   %rbp
  0.11%    0.05%     0x00007f0d21246d68: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.66%    0.55%     0x00007f0d21246d6c: vmovq  %r8,%xmm5
  0.01%              0x00007f0d21246d71: vmovq  %rsi,%xmm4
  0.10%    0.02%     0x00007f0d21246d76: mov    %ecx,%r14d
  0.66%    0.59%     0x00007f0d21246d79: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
           0.00%     0x00007f0d21246d7c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f0d21247699
  0.01%    0.01%     0x00007f0d21246d80: cmp    $0x40,%ecx
                     0x00007f0d21246d83: jg     0x00007f0d21247241  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.11%    0.09%     0x00007f0d21246d89: mov    $0x1,%esi
  0.66%    0.62%     0x00007f0d21246d8e: mov    $0x1,%r8d
                     0x00007f0d21246d94: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.69%    0.65%     0x00007f0d21246d97: mov    %r11,%r10
                     0x00007f0d21246d9a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%              0x00007f0d21246d9d: xor    %r13d,%r13d
  0.08%    0.09%     0x00007f0d21246da0: test   %r10,%r10
                     0x00007f0d21246da3: jne    0x00007f0d21247275  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.74%    0.64%     0x00007f0d21246da9: cmp    $0x40,%ecx
                     0x00007f0d21246dac: jge    0x00007f0d212472b5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                     0x00007f0d21246db2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
           0.01%     0x00007f0d21246db6: vmovq  %xmm4,%r10
  0.08%    0.06%     0x00007f0d21246dbb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.64%    0.68%     0x00007f0d21246dbf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                     0x00007f0d21246dc2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
           0.01%     0x00007f0d21246dc6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f0d212476ad
  0.04%    0.09%     0x00007f0d21246dcb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f0d21246dd2: jne    0x00007f0d21247125
  0.65%    0.73%     0x00007f0d21246dd8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007f0d21246ddc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007f0d21246de0: cmp    $0x40,%ecx
                     0x00007f0d21246de3: jg     0x00007f0d212472e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.10%    0.08%     0x00007f0d21246de9: mov    $0x1,%r10d
  0.63%    0.72%     0x00007f0d21246def: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.13%    0.07%     0x00007f0d21246df2: mov    %r8,%rbx
  0.58%    0.36%     0x00007f0d21246df5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                     0x00007f0d21246df8: test   %rbx,%rbx
                     0x00007f0d21246dfb: jne    0x00007f0d21247325  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%     0x00007f0d21246e01: cmp    $0x40,%ecx
                     0x00007f0d21246e04: jge    0x00007f0d2124736d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.08%     0x00007f0d21246e0a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.59%    0.30%     0x00007f0d21246e0d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f0d21246e11: mov    0x88(%rsp),%ecx
  0.03%    0.02%     0x00007f0d21246e18: test   %ecx,%ecx
                     0x00007f0d21246e1a: jne    0x00007f0d212473a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.07%     0x00007f0d21246e20: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.62%    0.24%     0x00007f0d21246e23: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.01%     0x00007f0d21246e26: mov    %edi,%r10d
  0.06%    0.04%     0x00007f0d21246e29: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.13%     0x00007f0d21246e2c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.58%    0.77%     0x00007f0d21246e30: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f0d212476d5
  0.02%    0.01%     0x00007f0d21246e35: cmp    %ebx,%edi
                  ╭  0x00007f0d21246e37: jae    0x00007f0d212470a8
  0.02%    0.03%  │  0x00007f0d21246e3d: vmovd  %r10d,%xmm2
  0.07%    0.07%  │  0x00007f0d21246e42: vmovd  %eax,%xmm0
  0.54%    0.61%  │  0x00007f0d21246e46: mov    %edi,%eax
  0.00%    0.02%  │  0x00007f0d21246e48: vmovd  %xmm0,%r10d
  0.05%    0.03%  │  0x00007f0d21246e4d: mov    0x8(%r12,%r10,8),%r10d
  0.08%    0.06%  │  0x00007f0d21246e52: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f0d21246e59: jne    0x00007f0d21247155  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.60%    0.73%  │  0x00007f0d21246e5f: vmovq  %xmm4,%r10
  0.02%    0.03%  │  0x00007f0d21246e64: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.04%    0.03%  │  0x00007f0d21246e68: mov    %r11,%rcx
  0.10%    0.05%  │  0x00007f0d21246e6b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.60%    0.66%  │  0x00007f0d21246e6f: vmovd  %xmm0,%r10d
  0.01%    0.00%  │  0x00007f0d21246e74: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.04%  │  0x00007f0d21246e78: lea    0x10(%r11,%rdi,4),%r10
  0.10%    0.08%  │  0x00007f0d21246e7d: mov    %ecx,(%r10)
  0.86%    0.81%  │  0x00007f0d21246e80: shr    $0x9,%r10
  0.00%    0.01%  │  0x00007f0d21246e84: movabs $0x7f0d31cb5000,%rdi
  0.02%    0.03%  │  0x00007f0d21246e8e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.29%    0.28%  │  0x00007f0d21246e92: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f0d212476f1
  0.45%    0.36%  │  0x00007f0d21246e97: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f0d21246e9e: jne    0x00007f0d21247195
  0.01%    0.01%  │  0x00007f0d21246ea4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.02%  │  0x00007f0d21246ea8: vmovq  %r10,%xmm1
  0.24%    0.16%  │  0x00007f0d21246ead: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.66%    0.47%  │  0x00007f0d21246eb1: vmovd  %ecx,%xmm3
  0.02%    0.03%  │  0x00007f0d21246eb5: cmp    $0x40,%ecx
                  │  0x00007f0d21246eb8: jg     0x00007f0d212473e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.02%  │  0x00007f0d21246ebe: mov    $0x1,%r10d
  0.16%    0.12%  │  0x00007f0d21246ec4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.47%    0.38%  │  0x00007f0d21246ec7: mov    %r8,%rcx
  0.24%    0.29%  │  0x00007f0d21246eca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.38%    0.56%  │  0x00007f0d21246ecd: test   %rcx,%rcx
                  │  0x00007f0d21246ed0: jne    0x00007f0d21247421  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │  0x00007f0d21246ed6: vmovd  %xmm3,%ecx
  0.01%    0.01%  │  0x00007f0d21246eda: cmp    $0x40,%ecx
                  │  0x00007f0d21246edd: jge    0x00007f0d21247465  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.26%    0.22%  │  0x00007f0d21246ee3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.48%    0.22%  │  0x00007f0d21246ee6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.03%  │  0x00007f0d21246eea: mov    %eax,%ecx
  0.01%    0.01%  │  0x00007f0d21246eec: add    $0x2,%ecx
  0.25%    0.24%  │  0x00007f0d21246eef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.44%    0.51%  │  0x00007f0d21246ef2: mov    %eax,%r10d
  0.01%    0.03%  │  0x00007f0d21246ef5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.03%  │  0x00007f0d21246ef9: cmp    %ebx,%r10d
                  │  0x00007f0d21246efc: jae    0x00007f0d212470e5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.27%    0.29%  │  0x00007f0d21246f02: vmovd  %r9d,%xmm3
  0.56%    0.57%  │  0x00007f0d21246f07: vmovq  %xmm4,%r9
  0.01%    0.02%  │  0x00007f0d21246f0c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.02%    0.02%  │  0x00007f0d21246f10: vmovq  %xmm1,%r9
  0.23%    0.23%  │  0x00007f0d21246f15: mov    %r9,%rcx
  0.46%    0.48%  │  0x00007f0d21246f18: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.02%    0.04%  │  0x00007f0d21246f1c: movslq %eax,%r9
  0.06%    0.01%  │  0x00007f0d21246f1f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.25%    0.24%  │  0x00007f0d21246f23: mov    %r9,%rbx
  0.46%    0.73%  │  0x00007f0d21246f26: add    $0x14,%rbx
  0.04%    0.00%  │  0x00007f0d21246f2a: mov    %ecx,(%rbx)
  0.02%    0.01%  │  0x00007f0d21246f2c: mov    %rbx,%rcx
  0.26%    0.19%  │  0x00007f0d21246f2f: shr    $0x9,%rcx
  0.47%    0.21%  │  0x00007f0d21246f33: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.04%  │  0x00007f0d21246f37: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f0d21247715
  0.03%    0.02%  │  0x00007f0d21246f3c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f0d21246f42: jne    0x00007f0d212471c1
  0.23%    0.34%  │  0x00007f0d21246f48: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.41%    0.61%  │  0x00007f0d21246f4c: vmovq  %rcx,%xmm0
  0.02%    0.02%  │  0x00007f0d21246f51: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.04%  │  0x00007f0d21246f54: vmovd  %ecx,%xmm2
  0.21%    0.31%  │  0x00007f0d21246f58: cmp    $0x40,%ecx
                  │  0x00007f0d21246f5b: jg     0x00007f0d212474a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.43%    0.50%  │  0x00007f0d21246f61: mov    $0x1,%ebx
  0.02%    0.04%  │  0x00007f0d21246f66: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.76%    0.75%  │  0x00007f0d21246f69: mov    %r8,%rcx
  0.03%    0.03%  │  0x00007f0d21246f6c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.01%  │  0x00007f0d21246f6f: test   %rcx,%rcx
                  │  0x00007f0d21246f72: jne    0x00007f0d212474dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.28%    0.31%  │  0x00007f0d21246f78: vmovd  %xmm2,%ecx
  0.43%    0.46%  │  0x00007f0d21246f7c: cmp    $0x40,%ecx
                  │  0x00007f0d21246f7f: jge    0x00007f0d21247525  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.06%  │  0x00007f0d21246f85: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │  0x00007f0d21246f88: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.26%    0.18%  │  0x00007f0d21246f8c: vmovq  %xmm4,%rcx
  0.36%    0.38%  │  0x00007f0d21246f91: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.06%    0.07%  │  0x00007f0d21246f94: mov    %r9,%rbx
  0.02%    0.02%  │  0x00007f0d21246f97: add    $0x18,%rbx
  0.22%    0.15%  │  0x00007f0d21246f9b: vmovq  %xmm0,%rcx
  0.49%    0.46%  │  0x00007f0d21246fa0: shr    $0x3,%rcx
  0.07%    0.07%  │  0x00007f0d21246fa4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.01%  │  0x00007f0d21246fa6: mov    %eax,%ecx
  0.23%    0.12%  │  0x00007f0d21246fa8: add    $0x3,%ecx
  0.36%    0.38%  │  0x00007f0d21246fab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.05%  │  0x00007f0d21246fae: shr    $0x9,%rbx
  0.02%    0.04%  │  0x00007f0d21246fb2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.29%    0.18%  │  0x00007f0d21246fb6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f0d2124773d
  0.44%    0.41%  │  0x00007f0d21246fbb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f0d21246fc1: jne    0x00007f0d212471ed
  0.05%    0.06%  │  0x00007f0d21246fc7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.04%  │  0x00007f0d21246fcb: vmovq  %rcx,%xmm0
  0.24%    0.33%  │  0x00007f0d21246fd0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.44%    0.59%  │  0x00007f0d21246fd3: vmovd  %ecx,%xmm1
  0.07%    0.05%  │  0x00007f0d21246fd7: cmp    $0x40,%ecx
                  │  0x00007f0d21246fda: jg     0x00007f0d21247561  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f0d21246fe0: mov    $0x1,%ebx
  0.22%    0.26%  │  0x00007f0d21246fe5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.55%    0.52%  │  0x00007f0d21246fe8: mov    %r8,%rcx
  0.23%    0.15%  │  0x00007f0d21246feb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.35%    0.27%  │  0x00007f0d21246fee: test   %rcx,%rcx
                  │  0x00007f0d21246ff1: jne    0x00007f0d2124759d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.11%    0.09%  │  0x00007f0d21246ff7: vmovd  %xmm1,%ecx
  0.02%    0.04%  │  0x00007f0d21246ffb: cmp    $0x40,%ecx
                  │  0x00007f0d21246ffe: jge    0x00007f0d212475e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.22%    0.25%  │  0x00007f0d21247004: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.40%    0.65%  │  0x00007f0d21247008: vmovq  %xmm4,%r10
  0.07%    0.10%  │  0x00007f0d2124700d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.01%    0.04%  │  0x00007f0d21247011: mov    %r9,%rcx
  0.24%    0.28%  │  0x00007f0d21247014: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.40%    0.38%  │  0x00007f0d21247018: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.09%  │  0x00007f0d2124701b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  │  0x00007f0d2124701f: vmovq  %xmm0,%r10
  0.25%    0.21%  │  0x00007f0d21247024: shr    $0x3,%r10
  0.46%    0.48%  │  0x00007f0d21247028: mov    %r10d,(%rcx)
  0.08%    0.04%  │  0x00007f0d2124702b: mov    %rcx,%r10
  0.02%    0.04%  │  0x00007f0d2124702e: shr    $0x9,%r10
  0.25%    0.28%  │  0x00007f0d21247032: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.34%    0.35%  │  0x00007f0d21247036: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f0d21247765
  0.17%    0.23%  │  0x00007f0d2124703b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f0d21247042: jne    0x00007f0d21247219
  0.10%    0.06%  │  0x00007f0d21247048: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.15%  │  0x00007f0d2124704c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.34%    0.30%  │  0x00007f0d21247050: cmp    $0x40,%ecx
                  │  0x00007f0d21247053: jg     0x00007f0d21247621  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.06%  │  0x00007f0d21247059: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.61%    0.72%  │  0x00007f0d2124705c: mov    %r8,%rbx
  0.06%    0.05%  │  0x00007f0d2124705f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.08%  │  0x00007f0d21247062: test   %rbx,%rbx
                  │  0x00007f0d21247065: jne    0x00007f0d21247645  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.25%    0.15%  │  0x00007f0d2124706b: cmp    $0x40,%ecx
                  │  0x00007f0d2124706e: jge    0x00007f0d21247675  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.37%    0.43%  │  0x00007f0d21247074: or     %rsi,%r8
  0.06%    0.09%  │  0x00007f0d21247077: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.13%  │  0x00007f0d2124707b: add    $0x20,%r9
  0.22%    0.26%  │  0x00007f0d2124707f: mov    %r10,%r11
  0.35%    0.36%  │  0x00007f0d21247082: shr    $0x3,%r11
  0.05%    0.01%  │  0x00007f0d21247086: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.10%  │  0x00007f0d21247089: mov    %r9,%r10
  0.24%    0.16%  │  0x00007f0d2124708c: add    $0x5,%eax
  0.24%    0.27%  │  0x00007f0d2124708f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.05%  │  0x00007f0d21247092: shr    $0x9,%r10
  0.09%    0.07%  │  0x00007f0d21247096: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.27%    0.19%  │  0x00007f0d2124709a: xor    %eax,%eax
  0.41%    0.46%  │  0x00007f0d2124709c: add    $0x70,%rsp
  0.05%    0.04%  │  0x00007f0d212470a0: pop    %rbp
  0.10%    0.06%  │  0x00007f0d212470a1: test   %eax,0x18065f59(%rip)        # 0x00007f0d392ad000
                  │                                                ;   {poll_return}
  0.19%    0.30%  │  0x00007f0d212470a7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f0d212470a8: mov    $0xffffffe4,%esi
                     0x00007f0d212470ad: vmovq  %xmm4,%rbp
                     0x00007f0d212470b2: mov    %rdx,(%rsp)
                     0x00007f0d212470b6: mov    %r14d,0x88(%rsp)
                     0x00007f0d212470be: vmovsd %xmm5,0x8(%rsp)
                     0x00007f0d212470c4: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.39%   35.33%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.00%   61.20%         C2, level 4  com.google.re2j.Machine::match, version 588 (1653 bytes) 
 36.39%   35.33%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 553 (839 bytes) 
  1.28%    1.27%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.29%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 601 (130 bytes) 
  0.16%    0.08%         C2, level 4  java.util.Collections::shuffle, version 609 (204 bytes) 
  0.16%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 601 (20 bytes) 
  0.14%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 601 (8 bytes) 
  0.10%    0.12%         C2, level 4  com.google.re2j.RE2::match, version 601 (28 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 601 (0 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.02%         C2, level 4  com.google.re2j.Machine::match, version 588 (60 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 601 (111 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 601 (65 bytes) 
  0.05%    0.00%         C2, level 4  com.google.re2j.RE2::match, version 601 (88 bytes) 
  0.05%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 643 (96 bytes) 
  0.05%    0.00%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 (80 bytes) 
  0.05%                       [vdso]  __vdso_clock_gettime (32 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.01%         C2, level 4  java.util.Collections::shuffle, version 609 (115 bytes) 
  1.81%    1.64%  <...other 359 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.15%   61.23%         C2, level 4  com.google.re2j.Machine::match, version 588 
 36.39%   35.33%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 553 
  2.02%    1.86%   [kernel.kallsyms]  [unknown] 
  1.03%    0.41%         C2, level 4  com.google.re2j.RE2::match, version 601 
  0.23%    0.11%         C2, level 4  java.util.Collections::shuffle, version 609 
  0.15%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 643 
  0.08%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%                       [vdso]  __vdso_clock_gettime 
  0.05%    0.01%        libc-2.26.so  _IO_fwrite 
  0.05%    0.01%      hsdis-amd64.so  [unknown] 
  0.04%    0.05%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.04%    0.06%        libc-2.26.so  vfprintf 
  0.04%    0.01%              [vdso]  [unknown] 
  0.03%    0.04%           libjvm.so  outputStream::update_position 
  0.03%    0.01%           libjvm.so  defaultStream::hold 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.02%    0.02%           libjvm.so  ObjArrayKlass::oop_push_contents 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 608 
  0.02%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.49%    0.41%  <...other 73 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 96.97%   97.15%         C2, level 4
  2.02%    1.86%   [kernel.kallsyms]
  0.54%    0.61%           libjvm.so
  0.19%    0.29%        libc-2.26.so
  0.11%    0.01%              [vdso]
  0.05%    0.01%      hsdis-amd64.so
  0.05%    0.02%         interpreter
  0.05%    0.03%  libpthread-2.26.so
  0.01%    0.00%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2       thrpt   20  26477.970 ± 93.691  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN             ---
