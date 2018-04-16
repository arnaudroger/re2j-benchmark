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
# Warmup Iteration   1: 1785.911 ops/s
# Warmup Iteration   2: 4891.381 ops/s
# Warmup Iteration   3: 5223.690 ops/s
# Warmup Iteration   4: 5294.071 ops/s
# Warmup Iteration   5: 5291.822 ops/s
# Warmup Iteration   6: 5270.102 ops/s
# Warmup Iteration   7: 5252.639 ops/s
# Warmup Iteration   8: 5311.730 ops/s
# Warmup Iteration   9: 5273.589 ops/s
# Warmup Iteration  10: 5319.374 ops/s
# Warmup Iteration  11: 5257.983 ops/s
# Warmup Iteration  12: 5233.231 ops/s
# Warmup Iteration  13: 5238.050 ops/s
# Warmup Iteration  14: 5241.690 ops/s
# Warmup Iteration  15: 5296.095 ops/s
# Warmup Iteration  16: 5277.708 ops/s
# Warmup Iteration  17: 5132.502 ops/s
# Warmup Iteration  18: 5254.282 ops/s
# Warmup Iteration  19: 5271.606 ops/s
# Warmup Iteration  20: 5277.894 ops/s
Iteration   1: 5211.508 ops/s
Iteration   2: 5158.866 ops/s
Iteration   3: 5268.025 ops/s
Iteration   4: 5286.582 ops/s
Iteration   5: 5292.710 ops/s
Iteration   6: 5307.380 ops/s
Iteration   7: 5267.661 ops/s
Iteration   8: 4903.582 ops/s
Iteration   9: 5294.068 ops/s
Iteration  10: 5317.798 ops/s
Iteration  11: 5306.103 ops/s
Iteration  12: 5287.496 ops/s
Iteration  13: 5313.034 ops/s
Iteration  14: 5326.434 ops/s
Iteration  15: 5298.565 ops/s
Iteration  16: 5296.890 ops/s
Iteration  17: 5262.158 ops/s
Iteration  18: 5326.266 ops/s
Iteration  19: 5308.885 ops/s
Iteration  20: 5299.030 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5266.652 ±(99.9%) 81.809 ops/s [Average]
  (min, avg, max) = (4903.582, 5266.652, 5326.434), stdev = 94.211
  CI (99.9%): [5184.844, 5348.461] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 223311 total address lines.
Perf output processed (skipped 23.116 seconds):
 Column 1: cycles (20493 events)
 Column 2: instructions (20463 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 548 (2106 bytes) 

 <region is too big to display, has 1148 lines, but threshold is 1000>
....................................................................................................
 28.23%   31.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 550 (341 bytes) 

                     0x00007f24f524696b: mov    0xc(%r10),%ecx     ;*getfield poolSize
                                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
                     0x00007f24f524696f: mov    0x24(%r10),%r9d    ;*getfield pool
                                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
                     0x00007f24f5246973: mov    0x80(%rsp),%r14d
                     0x00007f24f524697b: mov    %ebp,%ebx
                     0x00007f24f524697d: mov    0x74(%rsp),%r13d   ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.65%    0.50%     0x00007f24f5246982: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                                                                   ; - com.google.re2j.Machine::free@8 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
                                                                   ; implicit exception: dispatches to 0x00007f24f5247059
  0.10%    0.25%     0x00007f24f5246987: cmp    %ebp,%ecx
                     0x00007f24f5246989: jge    0x00007f24f5246de9  ;*if_icmplt
                                                                   ; - com.google.re2j.Machine::free@9 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.34%    0.33%     0x00007f24f524698f: mov    %ecx,%r11d
  0.05%    0.10%     0x00007f24f5246992: inc    %r11d
  0.66%    0.58%     0x00007f24f5246995: mov    0x28(%rsp),%r10
  0.19%    0.22%     0x00007f24f524699a: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                                                                   ; - com.google.re2j.Machine::free@45 (line 170)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.32%    0.34%     0x00007f24f524699e: cmp    %ebp,%ecx
                     0x00007f24f52469a0: jae    0x00007f24f5246d91  ;*aastore
                                                                   ; - com.google.re2j.Machine::free@49 (line 170)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.04%    0.09%     0x00007f24f52469a6: mov    0x8(%rsp),%r10
  0.72%    0.47%     0x00007f24f52469ab: mov    0xc(%r10),%r10d    ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.13%    0.20%     0x00007f24f52469af: mov    %rax,%r11
  0.32%    0.30%     0x00007f24f52469b2: shr    $0x3,%r11
  0.10%    0.05%     0x00007f24f52469b6: lea    (%r12,%r9,8),%r8   ;*getfield pool
                                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.45%    0.38%     0x00007f24f52469ba: lea    0x10(%r8,%rcx,4),%r8
  0.14%    0.17%     0x00007f24f52469bf: mov    %r11d,(%r8)
  0.37%    0.25%     0x00007f24f52469c2: mov    %r8,%r11
  0.06%    0.06%     0x00007f24f52469c5: shr    $0x9,%r11
  0.58%    0.36%     0x00007f24f52469c9: movabs $0x7f24f0a2e000,%r8
  0.13%    0.16%     0x00007f24f52469d3: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=343}
                                                                   ;*goto
                                                                   ; - com.google.re2j.Machine::step@230 (line 277)
  0.31%    0.22%     0x00007f24f52469d7: test   %eax,0x15f9f623(%rip)        # 0x00007f250b1e6000
                                                                   ;*goto
                                                                   ; - com.google.re2j.Machine::step@230 (line 277)
                                                                   ;   {poll}
  0.06%    0.06%     0x00007f24f52469dd: cmp    %edx,%r13d
                     0x00007f24f52469e0: jge    0x00007f24f5246b15
  0.56%    0.22%     0x00007f24f52469e6: mov    %r10d,%edx
  0.15%    0.21%     0x00007f24f52469e9: mov    %r14d,0x80(%rsp)
  0.28%    0.15%     0x00007f24f52469f1: mov    %r13d,%ebx         ;*getfield size
                                                                   ; - com.google.re2j.Machine::step@15 (line 277)
  0.08%    0.07%     0x00007f24f52469f4: mov    0x8(%rsp),%r10
  0.56%    0.29%     0x00007f24f52469f9: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                                                                   ; - com.google.re2j.Machine::step@22 (line 278)
  0.57%    0.47%     0x00007f24f52469fd: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f24f5247025
  0.89%    0.71%     0x00007f24f5246a02: cmp    %r8d,%ebx
                     0x00007f24f5246a05: jae    0x00007f24f5246d14
  0.35%    0.36%     0x00007f24f5246a0b: shl    $0x3,%r10
  0.51%    0.29%     0x00007f24f5246a0f: mov    0x10(%r10,%rbx,4),%r10d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  0.25%    0.27%     0x00007f24f5246a14: mov    0x10(%r12,%r10,8),%r9d  ;*getfield inst
                                                                   ; - com.google.re2j.Machine::step@78 (line 283)
                                                                   ; implicit exception: dispatches to 0x00007f24f5247039
  2.52%    2.33%     0x00007f24f5246a19: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007f24f5247049
  4.24%    4.91%     0x00007f24f5246a1e: lea    (%r12,%r9,8),%r11
  0.17%    0.08%     0x00007f24f5246a22: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f24f5246a29: jne    0x00007f24f5246cd2  ;*invokevirtual isMatch
                                                                   ; - com.google.re2j.Machine::step@85 (line 285)
  1.01%    1.09%     0x00007f24f5246a2f: mov    0xc(%r11),%r9d
  0.21%    0.10%     0x00007f24f5246a33: cmp    $0x6,%r9d
                     0x00007f24f5246a37: je     0x00007f24f5246cf4  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::isMatch@6 (line 78)
                                                                   ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  1.08%    1.22%     0x00007f24f5246a3d: xor    %edi,%edi          ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 276)
  0.18%    0.15%     0x00007f24f5246a3f: mov    0xc(%r12,%r10,8),%r8d  ;*getfield cap
                                                                   ; - com.google.re2j.Machine::step@104 (line 289)
  0.02%    0.00%     0x00007f24f5246a44: mov    0x28(%rsp),%r9
  0.17%    0.06%     0x00007f24f5246a49: mov    0xc(%r9),%ecx      ;*getfield poolSize
                                                                   ; - com.google.re2j.Machine::free@1 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.94%    0.98%     0x00007f24f5246a4d: mov    0x24(%r9),%r9d     ;*getfield pool
                                                                   ; - com.google.re2j.Machine::free@5 (line 167)
                                                                   ; - com.google.re2j.Machine::step@224 (line 303)
  0.17%    0.24%     0x00007f24f5246a51: mov    %ebx,%r13d
                     0x00007f24f5246a54: inc    %r13d              ;*iadd
                                                                   ; - com.google.re2j.Machine::step@171 (line 295)
  0.09%    0.11%     0x00007f24f5246a57: lea    (%r12,%r10,8),%rax  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@27 (line 278)
  1.11%    1.13%     0x00007f24f5246a5b: test   %edi,%edi
                     0x00007f24f5246a5d: jne    0x00007f24f5246b79  ;*ifeq
                                                                   ; - com.google.re2j.Machine::step@88 (line 285)
  0.22%    0.27%     0x00007f24f5246a63: mov    0x8(%r11),%esi
  0.00%    0.01%     0x00007f24f5246a67: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     0x00007f24f5246a6d: jne    0x00007f24f5246d51  ;*invokevirtual matchRune
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.15%    0.17%     0x00007f24f5246a73: mov    0xc(%r11),%ebp     ;*getfield op
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.98%    0.98%     0x00007f24f5246a77: cmp    $0xa,%ebp
                     0x00007f24f5246a7a: je     0x00007f24f5246912  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.20%    0.17%     0x00007f24f5246a80: cmp    $0xb,%ebp
                     0x00007f24f5246a83: je     0x00007f24f5246e2d  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%    0.00%     0x00007f24f5246a89: mov    0x20(%r11),%edi    ;*getfield f0
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.12%    0.22%     0x00007f24f5246a8d: cmp    $0x9,%ebp
                  ╭  0x00007f24f5246a90: jne    0x00007f24f5246aa4  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.16%    0.22%  │  0x00007f24f5246a92: cmp    0x20(%rsp),%edi
                  │  0x00007f24f5246a96: je     0x00007f24f5246b6e  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                  │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.01%  │  0x00007f24f5246a9c: xor    %r10d,%r10d
  0.00%    0.01%  │  0x00007f24f5246a9f: jmpq   0x00007f24f5246903
  0.73%    0.85%  ↘  0x00007f24f5246aa4: cmp    $0xc,%ebp
                     0x00007f24f5246aa7: jne    0x00007f24f5246e61  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.26%    0.30%     0x00007f24f5246aad: cmp    0x20(%rsp),%edi
                     0x00007f24f5246ab1: je     0x00007f24f5246b63  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.24%    0.23%     0x00007f24f5246ab7: mov    0x24(%r11),%edi    ;*getfield f1
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.05%    0.06%     0x00007f24f5246abb: cmp    0x20(%rsp),%edi
                     0x00007f24f5246abf: je     0x00007f24f5246b63  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.62%    0.71%     0x00007f24f5246ac5: mov    0x28(%r11),%ebp    ;*getfield f2
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.18%    0.28%     0x00007f24f5246ac9: cmp    0x20(%rsp),%ebp
                     0x00007f24f5246acd: je     0x00007f24f5246e95  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.31%    0.38%     0x00007f24f5246ad3: mov    0x2c(%r11),%ebp    ;*getfield f3
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
  0.06%    0.06%     0x00007f24f5246ad7: cmp    0x20(%rsp),%ebp
                     0x00007f24f5246adb: jne    0x00007f24f5246900  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                                                                   ; - com.google.re2j.Machine::step@187 (line 299)
                     0x00007f24f5246ae1: mov    $0xffffff65,%esi
                     0x00007f24f5246ae6: mov    %ebx,0x74(%rsp)
                     0x00007f24f5246aea: mov    0x18(%rsp),%r9d
                     0x00007f24f5246aef: mov    %r9d,0x7c(%rsp)
                     0x00007f24f5246af4: mov    0x1c(%rsp),%r8d
....................................................................................................
 26.14%   25.44%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 604 (1283 bytes) 

                                      0x00007f24f5285db2: shl    $0x3,%r9           ;*caload
                                                                                    ; - java.lang.String::charAt@27 (line 660)
                                                                                    ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                    ; - com.google.re2j.Machine::match@60 (line 189)
                                      0x00007f24f5285db6: mov    0x48(%rsp),%r11d
                                      0x00007f24f5285dbb: and    $0x4,%r11d
                                      0x00007f24f5285dbf: mov    %r11d,0x4c(%rsp)
                                      0x00007f24f5285dc4: mov    %r9,0x68(%rsp)
                                      0x00007f24f5285dc9: xor    %ebx,%ebx
  0.00%                               0x00007f24f5285dcb: xor    %r9d,%r9d
                                      0x00007f24f5285dce: mov    %r9d,0x60(%rsp)
                  ╭                   0x00007f24f5285dd3: jmpq   0x00007f24f528600f  ;*if_icmpne
                  │                                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │                                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │                                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.16%    0.14%  │          ↗        0x00007f24f5285dd8: vmovd  %xmm0,%r8d
           0.00%  │          │        0x00007f24f5285ddd: shl    $0x3,%r8           ;*invokestatic isHighSurrogate
                  │          │                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                  │          │                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │          │                                                      ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.02%  │          │        0x00007f24f5285de1: mov    %r10,%rsi
  0.00%    0.00%  │          │        0x00007f24f5285de4: mov    0x18(%rsp),%rdx
  0.17%    0.20%  │          │        0x00007f24f5285de9: mov    %r9d,%ecx
  0.00%           │          │        0x00007f24f5285dec: mov    0x74(%rsp),%r9d
  0.02%    0.00%  │          │        0x00007f24f5285df1: xor    %edi,%edi
  0.00%    0.00%  │          │        0x00007f24f5285df3: mov    0x40(%rsp),%r10
  0.13%    0.13%  │          │        0x00007f24f5285df8: mov    %r10,(%rsp)
           0.00%  │          │        0x00007f24f5285dfc: data16 xchg %ax,%ax
           0.01%  │          │        0x00007f24f5285dff: callq  0x00007f24f5046020  ; OopMap{[24]=Oop [48]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=676}
                  │          │                                                      ;*invokevirtual add
                  │          │                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                  │          │                                                      ;   {optimized virtual_call}
  0.05%    0.07%  │          │        0x00007f24f5285e04: mov    0x30(%rsp),%r10d   ;*synchronization entry
                  │          │                                                      ; - com.google.re2j.Machine$Queue::isEmpty@-1 (line 53)
                  │          │                                                      ; - com.google.re2j.Machine::match@138 (line 207)
  0.04%    0.04%  │          │ ↗      0x00007f24f5285e09: mov    0x70(%rsp),%r11d
  0.22%    0.23%  │          │ │      0x00007f24f5285e0e: test   %r11d,%r11d
                  │╭         │ │      0x00007f24f5285e11: jl     0x00007f24f52862a0  ;*invokestatic codePointAt
                  ││         │ │                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││         │ │                                                    ; - com.google.re2j.Machine::match@226 (line 225)
  0.03%    0.04%  ││         │ │      0x00007f24f5285e17: xor    %r9d,%r9d          ;*aload_0
                  ││         │ │                                                    ; - java.lang.String::indexOf@79 (line 1772)
                  ││         │ │                                                    ; - java.lang.String::indexOf@21 (line 1718)
                  ││         │ │                                                    ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││         │ │                                                    ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││         │ │                                                    ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.01%  ││         │ │↗     0x00007f24f5285e1a: cmp    $0xa,%r11d
                  ││         │ ││     0x00007f24f5285e1e: je     0x00007f24f52864b5  ;*arraylength
                  ││         │ ││                                                   ; - java.lang.String::indexOf@9 (line 1718)
                  ││         │ ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││         │ ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││         │ ││                                                   ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.02%  ││         │ ││     0x00007f24f5285e24: mov    0x38(%rsp),%ecx
  0.15%    0.17%  ││         │ ││     0x00007f24f5285e28: test   %ecx,%ecx
                  ││╭        │ ││     0x00007f24f5285e2a: jl     0x00007f24f52862ab  ;*getfield empty
                  │││        │ ││                                                   ; - com.google.re2j.Machine$Queue::isEmpty@1 (line 53)
                  │││        │ ││                                                   ; - com.google.re2j.Machine::match@138 (line 207)
  0.06%    0.04%  │││        │ ││↗    0x00007f24f5285e30: cmp    $0xa,%ecx
                  │││        │ │││    0x00007f24f5285e33: je     0x00007f24f52864be  ;*if_icmplt
                  │││        │ │││                                                  ; - java.lang.Character::charCount@3 (line 4818)
                  │││        │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││        │ │││                                                  ; - com.google.re2j.Machine::match@96 (line 195)
  0.02%    0.02%  │││        │ │││    0x00007f24f5285e39: mov    0x70(%rsp),%r8d
  0.04%    0.05%  │││        │ │││    0x00007f24f5285e3e: add    $0xffffffbf,%r8d
  0.18%    0.17%  │││        │ │││    0x00007f24f5285e42: cmp    $0x1a,%r8d
                  │││╭       │ │││    0x00007f24f5285e46: jb     0x00007f24f5285e58  ;*invokestatic indexOf
                  ││││       │ │││                                                  ; - java.lang.String::indexOf@21 (line 1718)
                  ││││       │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││││       │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││││       │ │││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.05%  ││││       │ │││    0x00007f24f5285e48: mov    0x70(%rsp),%ebx
  0.03%    0.01%  ││││       │ │││    0x00007f24f5285e4c: add    $0xffffff9f,%ebx
  0.03%    0.04%  ││││       │ │││    0x00007f24f5285e4f: cmp    $0x1a,%ebx
                  ││││       │ │││    0x00007f24f5285e52: jae    0x00007f24f5286785  ;*getfield value
                  ││││       │ │││                                                  ; - java.lang.String::indexOf@11 (line 1718)
                  ││││       │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││││       │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││││       │ │││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.14%    0.15%  │││↘       │ │││    0x00007f24f5285e58: mov    $0x1,%ebp          ;*if_icmplt
                  │││        │ │││                                                  ; - java.lang.Character::charCount@3 (line 4818)
                  │││        │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││        │ │││                                                  ; - com.google.re2j.Machine::match@96 (line 195)
  0.06%    0.03%  │││        │ │││    0x00007f24f5285e5d: mov    0x38(%rsp),%r8d
  0.05%    0.01%  │││        │ │││    0x00007f24f5285e62: add    $0xffffffbf,%r8d
  0.09%    0.11%  │││        │ │││    0x00007f24f5285e66: cmp    $0x1a,%r8d
                  │││ ╭      │ │││    0x00007f24f5285e6a: jb     0x00007f24f5285e7c  ;*invokeinterface charAt
                  │││ │      │ │││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││ │      │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││ │      │ │││                                                  ; - com.google.re2j.Machine::match@226 (line 225)
  0.14%    0.11%  │││ │      │ │││    0x00007f24f5285e6c: mov    0x38(%rsp),%ebx
  0.05%    0.04%  │││ │      │ │││    0x00007f24f5285e70: add    $0xffffff9f,%ebx
  0.04%    0.03%  │││ │      │ │││    0x00007f24f5285e73: cmp    $0x1a,%ebx
                  │││ │      │ │││    0x00007f24f5285e76: jae    0x00007f24f52867a9  ;*if_icmpne
                  │││ │      │ │││                                                  ; - java.lang.String::indexOf@150 (line 1782)
                  │││ │      │ │││                                                  ; - java.lang.String::indexOf@21 (line 1718)
                  │││ │      │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││ │      │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││ │      │ │││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.06%  │││ ↘      │ │││    0x00007f24f5285e7c: mov    $0x1,%r8d          ;*invokeinterface charAt
                  │││        │ │││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││        │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││        │ │││                                                  ; - com.google.re2j.Machine::match@226 (line 225)
  0.12%    0.14%  │││        │ │││    0x00007f24f5285e82: cmp    %r8d,%ebp
                  │││  ╭     │ │││    0x00007f24f5285e85: jne    0x00007f24f5285e92  ;*aload_0
                  │││  │     │ │││                                                  ; - java.lang.String::indexOf@60 (line 1771)
                  │││  │     │ │││                                                  ; - java.lang.String::indexOf@21 (line 1718)
                  │││  │     │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││  │     │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││  │     │ │││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.06%    0.02%  │││  │     │ │││    0x00007f24f5285e87: or     $0x20,%r9d         ;*invokestatic isWordRune
                  │││  │     │ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││  │     │ │││                                                  ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%  │││  │     │ │││    0x00007f24f5285e8b: mov    %r9d,0x74(%rsp)
  0.05%    0.04%  │││  │╭    │ │││    0x00007f24f5285e90: jmp    0x00007f24f5285e9b
  0.05%    0.05%  │││  ↘│    │ │││    0x00007f24f5285e92: or     $0x10,%r9d         ;*bipush
                  │││   │    │ │││                                                  ; - com.google.re2j.Utils::isWordRune@24 (line 149)
                  │││   │    │ │││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││   │    │ │││                                                  ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%  │││   │    │ │││    0x00007f24f5285e96: mov    %r9d,0x74(%rsp)    ;*invokeinterface charAt
                  │││   │    │ │││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││   │    │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││   │    │ │││                                                  ; - com.google.re2j.Machine::match@96 (line 195)
  0.21%    0.22%  │││   ↘    │ │││    0x00007f24f5285e9b: mov    0x50(%rsp),%r9
  0.05%    0.07%  │││        │ │││    0x00007f24f5285ea0: mov    0x10(%r9),%r8d     ;*invokestatic codePointAt
                  │││        │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││        │ │││                                                  ; - com.google.re2j.Machine::match@226 (line 225)
  0.24%    0.22%  │││        │ │││    0x00007f24f5285ea4: mov    0x5c(%rsp),%edx
  0.04%    0.05%  │││        │ │││    0x00007f24f5285ea8: cmp    %r8d,%edx
                  │││    ╭   │ │││    0x00007f24f5285eab: je     0x00007f24f52862b4  ;*caload
                  │││    │   │ │││                                                  ; - java.lang.String::indexOf@36 (line 1766)
                  │││    │   │ │││                                                  ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │   │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │   │ │││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │   │ │││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.25%    0.22%  │││    │   │ │││    0x00007f24f5285eb1: xor    %ebx,%ebx
  0.04%    0.02%  │││    │   │ │││↗   0x00007f24f5285eb3: mov    %edx,0x30(%rsp)
  0.03%    0.03%  │││    │   │ ││││   0x00007f24f5285eb7: mov    %r10d,0x20(%rsp)   ;*if_icmpne
                  │││    │   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.02%    0.07%  │││    │   │ ││││   0x00007f24f5285ebc: add    0x2c(%rsp),%edx    ;*invokeinterface charAt
                  │││    │   │ ││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.25%    0.24%  │││    │   │ ││││   0x00007f24f5285ec0: mov    %edx,0x60(%rsp)
  0.09%    0.11%  │││    │   │ ││││   0x00007f24f5285ec4: mov    0x40(%rsp),%rsi
  0.01%    0.02%  │││    │   │ ││││   0x00007f24f5285ec9: mov    0x18(%rsp),%rdx
  0.04%    0.02%  │││    │   │ ││││   0x00007f24f5285ece: mov    0x68(%rsp),%rcx
  0.10%    0.12%  │││    │   │ ││││   0x00007f24f5285ed3: mov    0x30(%rsp),%r8d
  0.11%    0.08%  │││    │   │ ││││   0x00007f24f5285ed8: mov    0x60(%rsp),%r9d
  0.58%    0.28%  │││    │   │ ││││   0x00007f24f5285edd: mov    0x70(%rsp),%edi
  0.01%    0.06%  │││    │   │ ││││   0x00007f24f5285ee1: mov    0x74(%rsp),%r10d
  0.17%    0.10%  │││    │   │ ││││   0x00007f24f5285ee6: mov    %r10d,(%rsp)
  0.05%    0.05%  │││    │   │ ││││   0x00007f24f5285eea: mov    0x3c(%rsp),%r10d
  0.07%    0.02%  │││    │   │ ││││   0x00007f24f5285eef: mov    %r10d,0x8(%rsp)
  0.05%    0.04%  │││    │   │ ││││   0x00007f24f5285ef4: mov    %ebx,0x10(%rsp)
  0.17%    0.16%  │││    │   │ ││││   0x00007f24f5285ef8: data16 xchg %ax,%ax
  0.05%    0.04%  │││    │   │ ││││   0x00007f24f5285efb: callq  0x00007f24f5046020  ; OopMap{[24]=Oop [32]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=928}
                  │││    │   │ ││││                                                 ;*invokespecial step
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
                  │││    │   │ ││││                                                 ;   {optimized virtual_call}
  0.02%    0.03%  │││    │   │ ││││   0x00007f24f5285f00: mov    0x40(%rsp),%r10
  0.09%    0.03%  │││    │   │ ││││   0x00007f24f5285f05: mov    0x24(%r10),%edi    ;*synchronization entry
                  │││    │   │ ││││                                                 ; - java.lang.Character::charCount@-1 (line 4818)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.14%    0.18%  │││    │   │ ││││   0x00007f24f5285f09: mov    0xc(%r10),%r8d     ;*if_icmplt
                  │││    │   │ ││││                                                 ; - java.lang.Character::charCount@3 (line 4818)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.02%  │││    │   │ ││││   0x00007f24f5285f0d: mov    0x2c(%rsp),%r9d
  0.05%    0.04%  │││    │   │ ││││   0x00007f24f5285f12: test   %r9d,%r9d
                  │││    │   │ ││││   0x00007f24f5285f15: je     0x00007f24f52863e8  ;*invokevirtual canCheckPrefix
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@194 (line 218)
  0.01%    0.01%  │││    │   │ ││││   0x00007f24f5285f1b: mov    0x28(%r10),%r10d   ;*caload
                  │││    │   │ ││││                                                 ; - java.lang.String::indexOf@133 (line 1779)
                  │││    │   │ ││││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.29%  │││    │   │ ││││   0x00007f24f5285f1f: vmovd  %r10d,%xmm0
  0.03%    0.01%  │││    │   │ ││││   0x00007f24f5285f24: mov    0xc(%r12,%r10,8),%ebp  ;*iconst_1
                  │││    │   │ ││││                                                 ; - java.lang.Character::charCount@10 (line 4818)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
                  │││    │   │ ││││                                                 ; implicit exception: dispatches to 0x00007f24f5287ba9
  0.10%    0.07%  │││    │   │ ││││   0x00007f24f5285f29: test   %ebp,%ebp
                  │││    │   │ ││││   0x00007f24f5285f2b: je     0x00007f24f5286ced  ;*synchronization entry
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@-1 (line 178)
  0.03%    0.03%  │││    │   │ ││││   0x00007f24f5285f31: mov    0x50(%rsp),%r10
  0.16%    0.30%  │││    │   │ ││││   0x00007f24f5285f36: mov    0x10(%r10),%ecx    ;*invokeinterface charAt
                  │││    │   │ ││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.02%  │││    │   │ ││││   0x00007f24f5285f3a: mov    0xc(%r10),%esi     ;*if_icmple
                  │││    │   │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.07%    0.11%  │││    │   │ ││││   0x00007f24f5285f3e: mov    0x14(%r10),%eax    ;*getfield value
                  │││    │   │ ││││                                                 ; - java.lang.String::indexOf@16 (line 1718)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │   │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │   │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.03%  │││    │   │ ││││   0x00007f24f5285f42: mov    0x38(%rsp),%r11d
  0.18%    0.19%  │││    │   │ ││││   0x00007f24f5285f47: cmp    $0xffffffff,%r11d
                  │││    │╭  │ ││││   0x00007f24f5285f4b: je     0x00007f24f52862be  ;*if_icmpgt
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@76 (line 1772)
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.02%  │││    ││  │ ││││   0x00007f24f5285f51: mov    0x34(%rsp),%ebx
  0.06%    0.14%  │││    ││  │ ││││   0x00007f24f5285f55: add    0x60(%rsp),%ebx
  0.01%    0.03%  │││    ││  │ ││││   0x00007f24f5285f59: add    %esi,%ebx          ;*invokeinterface charAt
                  │││    ││  │ ││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.12%    0.24%  │││    ││  │ ││││   0x00007f24f5285f5b: cmp    %ecx,%ebx
                  │││    ││  │ ││││   0x00007f24f5285f5d: jge    0x00007f24f52864a7  ;*caload
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@82 (line 1772)
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.02%  │││    ││  │ ││││   0x00007f24f5285f63: mov    0x8(%r12,%rax,8),%r11d  ; implicit exception: dispatches to 0x00007f24f5287bb9
  0.05%    0.12%  │││    ││  │ ││││   0x00007f24f5285f68: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││    ││  │ ││││   0x00007f24f5285f6f: jne    0x00007f24f5286a3d  ;*iand
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@147 (line 208)
  0.03%    0.02%  │││    ││  │ ││││   0x00007f24f5285f75: lea    (%r12,%rax,8),%rdx  ;*invokeinterface charAt
                  │││    ││  │ ││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.15%    0.32%  │││    ││  │ ││││   0x00007f24f5285f79: test   %ebx,%ebx
                  │││    ││  │ ││││   0x00007f24f5285f7b: jl     0x00007f24f5286b6d  ;*ifeq
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@148 (line 208)
  0.02%    0.04%  │││    ││  │ ││││   0x00007f24f5285f81: mov    0xc(%rdx),%r10d    ;*invokevirtual indexOf
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.12%  │││    ││  │ ││││   0x00007f24f5285f85: mov    0xc(%r12,%r10,8),%ebp  ;*ifne
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@115 (line 200)
                  │││    ││  │ ││││                                                 ; implicit exception: dispatches to 0x00007f24f5287bcd
  0.21%    0.42%  │││    ││  │ ││││   0x00007f24f5285f8a: cmp    %ebp,%ebx
                  │││    ││  │ ││││   0x00007f24f5285f8c: jge    0x00007f24f5286d2d  ;*ifeq
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@148 (line 208)
  0.28%    0.40%  │││    ││  │ ││││   0x00007f24f5285f92: cmp    %ebp,%ebx
                  │││    ││  │ ││││   0x00007f24f5285f94: jae    0x00007f24f52869d1  ;*aload
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@136 (line 207)
  0.08%    0.06%  │││    ││  │ ││││   0x00007f24f5285f9a: shl    $0x3,%r10
  0.07%    0.04%  │││    ││  │ ││││   0x00007f24f5285f9e: movzwl 0x10(%r10,%rbx,2),%r9d  ;*invokeinterface charAt
                  │││    ││  │ ││││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.05%    0.10%  │││    ││  │ ││││   0x00007f24f5285fa4: cmp    $0xd800,%r9d
                  │││    ││  │ ││││   0x00007f24f5285fab: jge    0x00007f24f5286d99  ;*if_icmpgt
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.22%    0.37%  │││    ││  │ ││││   0x00007f24f5285fb1: shl    $0x3,%r9d          ;*if_icmpne
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@134 (line 1779)
                  │││    ││  │ ││││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.04%  │││    ││  │ ││││   0x00007f24f5285fb5: mov    %r9d,%r11d
  0.02%    0.02%  │││    ││  │ ││││   0x00007f24f5285fb8: or     $0x1,%r11d
  0.16%    0.21%  │││    ││  │ ││││   0x00007f24f5285fbc: and    $0x7,%r9d
  0.13%    0.15%  │││    ││  │ ││││   0x00007f24f5285fc0: sar    $0x3,%r11d
  0.17%    0.26%  │││    ││  │ ││││   0x00007f24f5285fc4: or     $0x1,%r9d          ; OopMap{rdi=NarrowOop rax=NarrowOop xmm0=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=1128}
                  │││    ││  │ ││││                                                 ;*goto
                  │││    ││  │ ││││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.01%    0.07%  │││    ││  │ ││││↗  0x00007f24f5285fc8: test   %eax,0x15f60032(%rip)        # 0x00007f250b1e6000
                  │││    ││  │ │││││                                                ;*arraylength
                  │││    ││  │ │││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                  │││    ││  │ │││││                                                ;   {poll}
  0.02%    0.01%  │││    ││  │ │││││  0x00007f24f5285fce: mov    0x40(%rsp),%r10
  0.09%    0.08%  │││    ││  │ │││││  0x00007f24f5285fd3: movzbl 0x10(%r10),%ebx    ;*invokeinterface charAt
                  │││    ││  │ │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.17%    0.25%  │││    ││  │ │││││  0x00007f24f5285fd8: mov    0x68(%rsp),%r10
  0.07%    0.06%  │││    ││  │ │││││  0x00007f24f5285fdd: mov    %r10,%rdx
  0.00%           │││    ││  │ │││││  0x00007f24f5285fe0: shr    $0x3,%rdx          ;*newarray
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine$Thread::&lt;init&gt;@6 (line 21)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.08%  │││    ││  │ │││││  0x00007f24f5285fe4: mov    %edx,0x30(%rsp)
  0.17%    0.20%  │││    ││  │ │││││  0x00007f24f5285fe8: mov    0x38(%rsp),%r10d
  0.02%    0.06%  │││    ││  │ │││││  0x00007f24f5285fed: mov    %r11d,0x38(%rsp)
  0.00%    0.00%  │││    ││  │ │││││  0x00007f24f5285ff2: mov    0x18(%rsp),%r11
  0.06%    0.09%  │││    ││  │ │││││  0x00007f24f5285ff7: mov    %r11,0x68(%rsp)
  0.19%    0.21%  │││    ││  │ │││││  0x00007f24f5285ffc: mov    0x34(%rsp),%r11d
  0.02%    0.05%  │││    ││  │ │││││  0x00007f24f5286001: mov    %r11d,0x2c(%rsp)
                  │││    ││  │ │││││  0x00007f24f5286006: mov    %r9d,0x34(%rsp)
  0.06%    0.09%  │││    ││  │ │││││  0x00007f24f528600b: mov    %ecx,0x14(%rsp)    ;*ifeq
                  │││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                  │││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.23%  ↘││    ││  │ │││││  0x00007f24f528600f: mov    0x30(%rsp),%r11d
  0.04%    0.05%   ││    ││  │ │││││  0x00007f24f5286014: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f24f5287b69
  0.01%    0.01%   ││    ││  │ │││││  0x00007f24f528601a: mov    0x30(%rsp),%ecx
  0.10%    0.10%   ││    ││  │ │││││  0x00007f24f528601e: lea    (%r12,%rcx,8),%r9  ;*invokestatic arraycopy
                   ││    ││  │ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.13%    0.21%   ││    ││  │ │││││  0x00007f24f5286022: mov    %r9,0x18(%rsp)
  0.03%    0.08%   ││    ││  │ │││││  0x00007f24f5286027: test   %r11d,%r11d
                   ││    ││╭ │ │││││  0x00007f24f528602a: je     0x00007f24f5286075  ;*ifne
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
           0.01%   ││    │││ │ │││││  0x00007f24f528602c: mov    0x4c(%rsp),%r11d
  0.03%    0.10%   ││    │││ │ │││││  0x00007f24f5286031: test   %r11d,%r11d
                   ││    │││ │ │││││  0x00007f24f5286034: jne    0x00007f24f5286f35  ;*bipush
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::isWordRune@12 (line 149)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.06%   ││    │││ │ │││││  0x00007f24f528603a: test   %ebx,%ebx
                   ││    │││ │ │││││  0x00007f24f528603c: jne    0x00007f24f5286f75  ;*if_icmpgt
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.02%   ││    │││ │ │││││  0x00007f24f5286042: mov    0x40(%rsp),%r11
  0.00%            ││    │││ │ │││││  0x00007f24f5286047: mov    0x14(%r11),%ecx    ;*if_icmpge
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@123 (line 1779)
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.05%   ││    │││ │ │││││  0x00007f24f528604b: mov    0x24(%r12,%rcx,8),%r11d  ;*if_icmpgt
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                   ││    │││ │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287c01
  0.06%    0.06%   ││    │││ │ │││││  0x00007f24f5286050: mov    %r11d,%r9d
  0.02%    0.04%   ││    │││ │ │││││  0x00007f24f5286053: mov    0xc(%r12,%r11,8),%r11d  ;*ifeq
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@197 (line 218)
                   ││    │││ │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287c11
  0.13%    0.20%   ││    │││ │ │││││  0x00007f24f5286058: vmovd  %r11d,%xmm1
  0.09%    0.14%   ││    │││ │ │││││  0x00007f24f528605d: mov    0xc(%r12,%r11,8),%r11d  ;*invokeinterface charAt
                   ││    │││ │ │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    │││ │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287c21
  0.53%    0.59%   ││    │││ │ │││││  0x00007f24f5286062: mov    %r11d,%r14d
                   ││    │││ │ │││││  0x00007f24f5286065: test   %r11d,%r11d
                   ││    │││ │ │││││  0x00007f24f5286068: jne    0x00007f24f5286581  ;*iadd
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@50 (line 1769)
                   ││    │││ │ │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │││ │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │││ │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.18%   ││    │││ │ │││││  0x00007f24f528606e: mov    %r10d,0x70(%rsp)
                   ││    │││╭│ │││││  0x00007f24f5286073: jmp    0x00007f24f528607a
  0.00%    0.01%   ││    ││↘││ │││││  0x00007f24f5286075: mov    %r10d,0x70(%rsp)   ;*invokeinterface charAt
                   ││    ││ ││ │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    ││ ││ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││ ││ │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%    0.02%   ││    ││ ↘│ │││││  0x00007f24f528607a: test   %ebx,%ebx
                   ││    ││  │ │││││  0x00007f24f528607c: jne    0x00007f24f5286a91  ;*goto
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@126 (line 201)
  0.11%    0.14%   ││    ││  │ │││││  0x00007f24f5286082: mov    0x60(%rsp),%r10d
  0.23%    0.20%   ││    ││  │ │││││  0x00007f24f5286087: test   %r10d,%r10d
                   ││    ││  │ │││││  0x00007f24f528608a: je     0x00007f24f52864c7  ;*iinc
                   ││    ││  │ │││││                                                ; - java.lang.String::indexOf@69 (line 1772)
                   ││    ││  │ │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││  │ │││││  0x00007f24f5286090: mov    0x3c(%rsp),%r9d
  0.01%    0.03%   ││    ││  │ │││││  0x00007f24f5286095: test   %r9d,%r9d
                   ││    ││  │ │││││  0x00007f24f5286098: jne    0x00007f24f5286b21  ;*instanceof
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.14%    0.16%   ││    ││  │ │││││  0x00007f24f528609e: vmovd  %xmm0,%r11d
  0.14%    0.18%   ││    ││  │ │││││  0x00007f24f52860a3: mov    0xc(%r12,%r11,8),%ecx  ;*invokeinterface charAt
                   ││    ││  │ │││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    ││  │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287b79
  0.01%    0.01%   ││    ││  │ │││││  0x00007f24f52860a8: test   %ecx,%ecx
                   ││    ││  │ │││││  0x00007f24f52860aa: jle    0x00007f24f5286ad1
  0.01%    0.01%   ││    ││  │ │││││  0x00007f24f52860b0: test   %ecx,%ecx
                   ││    ││  │ │││││  0x00007f24f52860b2: jbe    0x00007f24f5286982  ;*goto
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@126 (line 201)
  0.10%    0.21%   ││    ││  │ │││││  0x00007f24f52860b8: mov    %ecx,0x14(%rsp)
  0.14%    0.18%   ││    ││  │ │││││  0x00007f24f52860bc: mov    %rax,-0x8(%rsp)
                   ││    ││  │ │││││  0x00007f24f52860c1: mov    0x60(%rsp),%eax
  0.00%    0.01%   ││    ││  │ │││││  0x00007f24f52860c5: mov    %eax,0x5c(%rsp)
  0.09%    0.17%   ││    ││  │ │││││  0x00007f24f52860c9: mov    -0x8(%rsp),%rax
  0.23%    0.14%   ││    ││  │ │││││  0x00007f24f52860ce: vmovss %xmm0,0x58(%rsp)
  0.02%            ││    ││  │ │││││  0x00007f24f52860d4: mov    %r9d,0x3c(%rsp)
  0.00%    0.01%   ││    ││  │ │││││  0x00007f24f52860d9: mov    0x40(%rsp),%r10
  0.09%    0.15%   ││    ││  │ │││││  0x00007f24f52860de: mov    0x18(%r10),%r11d   ;*ireturn
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@32 (line 205)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.14%    0.21%   ││    ││  │ │││││  0x00007f24f52860e2: vmovd  %xmm0,%r10d
           0.00%   ││    ││  │ │││││  0x00007f24f52860e7: shl    $0x3,%r10          ;*invokestatic arraycopy
                   ││    ││  │ │││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%   ││    ││  │ │││││  0x00007f24f52860eb: mov    %r10,0x20(%rsp)
  0.13%    0.14%   ││    ││  │ │││││  0x00007f24f52860f0: vmovd  %xmm0,%r9d
  0.14%    0.18%   ││    ││  │ │││││  0x00007f24f52860f5: lea    0x10(%r12,%r9,8),%r10  ;*getfield prefixRune
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.00%            ││    ││  │ │││││  0x00007f24f52860fa: mov    %r10,0x60(%rsp)
  0.01%    0.02%   ││    ││  │ │││││  0x00007f24f52860ff: mov    0x5c(%rsp),%r9d
  0.08%    0.07%   ││    ││  │ │││││  0x00007f24f5286104: mov    %r9d,(%r10)        ;*invokestatic isWordRune
                   ││    ││  │ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.17%    0.21%   ││    ││  │ │││││  0x00007f24f5286107: mov    0x1c(%r12,%r11,8),%ebp  ;*instanceof
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   ││    ││  │ │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││  │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287b89
  0.20%    0.24%   ││    ││  │ │││││  0x00007f24f528610c: mov    0x8(%r12,%rbp,8),%r11d  ;*invokevirtual index
                   ││    ││  │ │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││  │ │││││                                                ; implicit exception: dispatches to 0x00007f24f5287b99
  0.66%    0.69%   ││    ││  │ │││││  0x00007f24f5286111: lea    (%r12,%rbp,8),%r10
  0.02%    0.00%   ││    ││  │ │││││  0x00007f24f5286115: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││    ││  ╰ │││││  0x00007f24f528611c: je     0x00007f24f5285dd8  ;*ifne
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@178 (line 216)
  0.14%    0.15%   ││    ││    │││││  0x00007f24f5286122: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││    ││    │││││  0x00007f24f5286129: jne    0x00007f24f5286ca5
  0.02%    0.01%   ││    ││    │││││  0x00007f24f528612f: mov    0x18(%r10),%ecx    ;*if_icmplt
                   ││    ││    │││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    ││    │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.00%   ││    ││    │││││  0x00007f24f5286133: cmp    $0x40,%ecx
                   ││    ││    │││││  0x00007f24f5286136: jg     0x00007f24f5286e0d  ;*aload
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.13%    0.13%   ││    ││    │││││  0x00007f24f528613c: mov    %r10,0x78(%rsp)
  0.01%    0.01%   ││    ││    │││││  0x00007f24f5286141: mov    $0x1,%ebx
                   ││    ││    │││││  0x00007f24f5286146: shl    %cl,%rbx
  0.27%    0.37%   ││    ││    │││││  0x00007f24f5286149: mov    0x30(%rsp),%r11d
                   ││    ││    │││││  0x00007f24f528614e: mov    0x10(%r12,%r11,8),%r10  ;*getfield prefixRune
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
           0.00%   ││    ││    │││││  0x00007f24f5286153: mov    %rbx,%r11
  0.01%    0.00%   ││    ││    │││││  0x00007f24f5286156: and    %r10,%r11          ;*caload
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@129 (line 1779)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.17%   ││    ││    │││││  0x00007f24f5286159: test   %r11,%r11
                   ││    ││    │││││  0x00007f24f528615c: jne    0x00007f24f52867f0  ;*aload_0
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││    │││││  0x00007f24f5286162: xor    %ebp,%ebp          ;*invokestatic isHighSurrogate
                   ││    ││    │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    ││    │││││  0x00007f24f5286164: test   %r11,%r11
                   ││    ││    │││││  0x00007f24f5286167: jne    0x00007f24f5286e71
  0.04%    0.03%   ││    ││    │││││  0x00007f24f528616d: cmp    $0x40,%ecx
                   ││    ││    │││││  0x00007f24f5286170: jge    0x00007f24f5286ed1  ;*aload
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.16%    0.15%   ││    ││    │││││  0x00007f24f5286176: mov    0x30(%rsp),%r11d
                   ││    ││    │││││  0x00007f24f528617b: mov    %r12b,0x18(%r12,%r11,8)  ;*synchronization entry
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@-1 (line 185)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    ││    │││││  0x00007f24f5286180: or     %r10,%rbx
  0.01%    0.03%   ││    ││    │││││  0x00007f24f5286183: mov    %rbx,0x10(%r12,%r11,8)  ;*invokevirtual step
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.09%    0.18%   ││    ││    │││││  0x00007f24f5286188: movslq 0x14(%rsp),%r10    ;*if_icmpne
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@134 (line 1779)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
           0.00%   ││    ││    │││││  0x00007f24f528618d: mov    %r10,0x80(%rsp)
                   ││    ││    │││││  0x00007f24f5286195: test   %r8d,%r8d
                   ││    ││    │││││  0x00007f24f5286198: jle    0x00007f24f528681c  ;*ifne
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.02%   ││    ││    │││││  0x00007f24f528619e: mov    %r8d,%ebp
  0.10%    0.14%   ││    ││    │││││  0x00007f24f52861a1: dec    %ebp               ;*if_icmplt
                   ││    ││    │││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    ││    │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    ││    │││││  0x00007f24f52861a3: mov    0x40(%rsp),%r10
                   ││    ││    │││││  0x00007f24f52861a8: mov    %ebp,0xc(%r10)
  0.02%    0.03%   ││    ││    │││││  0x00007f24f52861ac: mov    0xc(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f24f5287bf1
  0.09%    0.07%   ││    ││    │││││  0x00007f24f52861b1: cmp    %r10d,%ebp
                   ││    ││    │││││  0x00007f24f52861b4: jae    0x00007f24f5286c41  ;*aload
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
                   ││    ││    │││││  0x00007f24f52861ba: lea    (%r12,%rdi,8),%r10
                   ││    ││    │││││  0x00007f24f52861be: mov    0xc(%r10,%r8,4),%r11d  ;*aload_0
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.01%   ││    ││    │││││  0x00007f24f52861c3: test   %r11d,%r11d
                   ││    ││    │││││  0x00007f24f52861c6: je     0x00007f24f5286c91  ;*invokestatic isHighSurrogate
                   ││    ││    │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.10%    0.11%   ││    ││    │││││  0x00007f24f52861cc: mov    %r11,%r8
                   ││    ││    │││││  0x00007f24f52861cf: shl    $0x3,%r8           ;*if_icmplt
                   ││    ││    │││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    ││    │││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
                   ││    ││    │││││  0x00007f24f52861d3: mov    0xc(%r8),%r10d     ;*if_icmpgt
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@95 (line 1776)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%            ││    ││    │││││  0x00007f24f52861d7: mov    %r8,%r11
  0.14%    0.08%   ││    ││    │││││  0x00007f24f52861da: mov    %r8,0x88(%rsp)
                   ││    ││    │││││  0x00007f24f52861e2: mov    0x78(%rsp),%r8
                   ││    ││    │││││  0x00007f24f52861e7: mov    %r8,%r9
  0.01%    0.01%   ││    ││    │││││  0x00007f24f52861ea: shr    $0x3,%r9           ;*getfield prefixRune
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.12%    0.09%   ││    ││    │││││  0x00007f24f52861ee: mov    0x88(%rsp),%r8
           0.00%   ││    ││    │││││  0x00007f24f52861f6: mov    %r9d,0x10(%r8)     ;*invokestatic isWordRune
                   ││    ││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%   ││    ││    │││││  0x00007f24f52861fa: shr    $0x9,%r11
  0.01%    0.01%   ││    ││    │││││  0x00007f24f52861fe: movabs $0x7f24f0a2e000,%r8
  0.13%    0.01%   ││    ││    │││││  0x00007f24f5286208: mov    %r12b,(%r8,%r11,1)  ;*synchronization entry
                   ││    ││    │││││                                                ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                   ││    ││    │││││  0x00007f24f528620c: mov    0x58(%rsp),%r11d
           0.01%   ││    ││    │││││  0x00007f24f5286211: cmp    %r11d,%r10d
                   ││    ││   ╭│││││  0x00007f24f5286214: je     0x00007f24f5286249  ;*aload_0
                   ││    ││   ││││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    ││   ││││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││   ││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││   ││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││   ││││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%   ││    ││   ││││││  0x00007f24f5286216: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f24f5287c31
  0.11%    0.02%   ││    ││   ││││││  0x00007f24f528621b: lea    (%r12,%r10,8),%rcx  ;*invokestatic arraycopy
                   ││    ││   ││││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    ││   ││││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                   ││    ││   ││││││  0x00007f24f528621f: cmp    0x14(%rsp),%r8d
                   ││    ││   ││││││  0x00007f24f5286224: jb     0x00007f24f5286df1  ;*caload
                   ││    ││   ││││││                                                ; - java.lang.String::indexOf@36 (line 1766)
                   ││    ││   ││││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││   ││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││   ││││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││   ││││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%   ││    ││   ││││││  0x00007f24f528622a: lea    0x10(%r12,%r10,8),%rsi  ;*iadd
                   ││    ││   ││││││                                                ; - com.google.re2j.Machine::match@222 (line 224)
  0.01%    0.00%   ││    ││   ││││││  0x00007f24f528622f: mov    0x60(%rsp),%rdi
  0.11%    0.02%   ││    ││   ││││││  0x00007f24f5286234: mov    0x80(%rsp),%rdx
                   ││    ││   ││││││  0x00007f24f528623c: movabs $0x7f24f5052640,%r10
           0.01%   ││    ││   ││││││  0x00007f24f5286246: callq  *%r10              ;*invokevirtual isEmpty
                   ││    ││   ││││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
                   ││    ││   ↘│││││  0x00007f24f5286249: mov    0x30(%rsp),%r10d
  0.02%    0.01%   ││    ││    │││││  0x00007f24f528624e: mov    0xc(%r12,%r10,8),%r9d  ;*invokestatic charCount
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.12%    0.25%   ││    ││    │││││  0x00007f24f5286253: mov    0x20(%r12,%r10,8),%ebp  ;*arraylength
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@9 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││    │││││  0x00007f24f5286258: mov    %r9d,%r8d
           0.02%   ││    ││    │││││  0x00007f24f528625b: inc    %r8d
           0.00%   ││    ││    │││││  0x00007f24f528625e: mov    %r8d,0xc(%r12,%r10,8)  ;*invokevirtual isEmpty
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
  0.09%    0.22%   ││    ││    │││││  0x00007f24f5286263: mov    0xc(%r12,%rbp,8),%r8d  ;*caload
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@129 (line 1779)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││    │││││                                                ; implicit exception: dispatches to 0x00007f24f5287bdd
  0.00%    0.01%   ││    ││    │││││  0x00007f24f5286268: cmp    %r8d,%r9d
                   ││    ││    │││││  0x00007f24f528626b: jae    0x00007f24f5286bd5  ;*invokevirtual isEmpty
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
  0.03%    0.01%   ││    ││    │││││  0x00007f24f5286271: lea    (%r12,%rbp,8),%r11  ;*invokestatic arraycopy
                   ││    ││    │││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%   ││    ││    │││││  0x00007f24f5286275: lea    0x10(%r11,%r9,4),%r11
  0.10%    0.13%   ││    ││    │││││  0x00007f24f528627a: mov    0x88(%rsp),%r8
                   ││    ││    │││││  0x00007f24f5286282: shr    $0x3,%r8           ;*aload_0
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    ││    │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││    │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││    │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.01%   ││    ││    │││││  0x00007f24f5286286: mov    %r8d,(%r11)
  0.18%    0.26%   ││    ││    │││││  0x00007f24f5286289: shr    $0x9,%r11
  0.07%    0.10%   ││    ││    │││││  0x00007f24f528628d: movabs $0x7f24f0a2e000,%r8
                   ││    ││    │││││  0x00007f24f5286297: mov    %r12b,(%r8,%r11,1)
  0.03%    0.04%   ││    ││    ╰││││  0x00007f24f528629b: jmpq   0x00007f24f5285e09
                   ↘│    ││     ││││  0x00007f24f52862a0: mov    $0x5,%r9d
                    │    ││     ╰│││  0x00007f24f52862a6: jmpq   0x00007f24f5285e1a
           0.00%    ↘    ││      │││  0x00007f24f52862ab: or     $0xa,%r9d          ;*arraylength
                         ││      │││                                                ; - java.lang.String::indexOf@9 (line 1718)
                         ││      │││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         ││      │││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         ││      │││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%                  ││      ╰││  0x00007f24f52862af: jmpq   0x00007f24f5285e30
                         ↘│       ││  0x00007f24f52862b4: mov    $0x1,%ebx
                          │       ╰│  0x00007f24f52862b9: jmpq   0x00007f24f5285eb3
                          ↘        │  0x00007f24f52862be: mov    0x34(%rsp),%r9d
                                   │  0x00007f24f52862c3: mov    $0xffffffff,%r11d
                                   ╰  0x00007f24f52862c9: jmpq   0x00007f24f5285fc8
  0.00%                               0x00007f24f52862ce: mov    0x58(%rsp),%r10d
                                      0x00007f24f52862d3: test   %r10d,%r10d
                                      0x00007f24f52862d6: jl     0x00007f24f52863e8  ;*invokevirtual step
                                                                                    ; - com.google.re2j.Machine::match@249 (line 228)
                                      0x00007f24f52862dc: sub    0x2c(%rsp),%r10d   ;*invokespecial indexOf
                                                                                    ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                                    ; - com.google.re2j.Machine::match@206 (line 220)
                                      0x00007f24f52862e1: test   %r10d,%r10d
                                      0x00007f24f52862e4: jl     0x00007f24f52863e8  ;*ireturn
                                                                                    ; - java.lang.Character::charCount@11 (line 4818)
                                                                                    ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
....................................................................................................
 16.33%   18.93%  <total for region 3>

....[Hottest Regions]...............................................................................
 28.23%   31.02%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (2106 bytes) 
 26.14%   25.44%         C2, level 4  com.google.re2j.Machine::step, version 550 (341 bytes) 
 16.33%   18.93%         C2, level 4  com.google.re2j.Machine::match, version 604 (1283 bytes) 
  7.85%    8.10%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  5.26%    4.04%         C2, level 4  com.google.re2j.Machine::step, version 550 (189 bytes) 
  4.71%    4.20%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (238 bytes) 
  3.29%    2.96%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (365 bytes) 
  1.85%    1.30%         C2, level 4  com.google.re2j.Machine::step, version 550 (89 bytes) 
  0.64%    0.64%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.61%    0.12%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 207 (14 bytes) 
  0.52%    0.45%         C2, level 4  com.google.re2j.Machine::match, version 604 (108 bytes) 
  0.43%    0.23%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 541 (115 bytes) 
  0.41%    0.11%         C2, level 4  com.google.re2j.Machine::init, version 594 (256 bytes) 
  0.37%    0.16%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 541 (109 bytes) 
  0.23%                  C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (26 bytes) 
  0.11%    0.01%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 541 (22 bytes) 
  0.11%    0.01%         C2, level 4  com.google.re2j.Machine::init, version 594 (114 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%    0.00%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 (0 bytes) 
  2.61%    2.22%  <...other 473 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 36.56%   38.19%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 548 
 33.26%   30.78%         C2, level 4  com.google.re2j.Machine::step, version 550 
 17.11%   19.53%         C2, level 4  com.google.re2j.Machine::match, version 604 
  7.85%    8.10%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  1.53%    1.27%   [kernel.kallsyms]  [unknown] 
  0.91%    0.41%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 541 
  0.61%    0.12%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 207 
  0.58%    0.18%         C2, level 4  com.google.re2j.Machine::init, version 594 
  0.34%    0.13%         C2, level 4  com.google.re2j.Matcher::find, version 618 
  0.15%    0.08%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 693 
  0.06%    0.03%           libjvm.so  SpinPause 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 640 
  0.04%    0.04%           libjvm.so  fileStream::write 
  0.04%    0.07%        libc-2.26.so  vfprintf 
  0.04%    0.02%      hsdis-amd64.so  [unknown] 
  0.02%    0.04%        libc-2.26.so  __strlen_avx2 
  0.02%    0.01%        libc-2.26.so  _IO_fflush 
  0.02%    0.05%           libjvm.so  ParallelTaskTerminator::offer_termination 
  0.02%    0.02%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.02%    0.01%           libjvm.so  xmlTextStream::write 
  0.74%    0.53%  <...other 115 warm methods...>
....................................................................................................
100.00%   99.63%  <totals>

....[Distribution by Source]........................................................................
 88.98%   89.32%         C2, level 4
  7.89%    8.14%        runtime stub
  1.53%    1.27%   [kernel.kallsyms]
  0.64%    0.73%           libjvm.so
  0.61%    0.12%         C1, level 3
  0.20%    0.33%        libc-2.26.so
  0.05%    0.04%  libpthread-2.26.so
  0.04%    0.01%         interpreter
  0.04%    0.02%      hsdis-amd64.so
  0.01%                       [vdso]
  0.00%    0.00%         C1, level 1
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  5266.652 ± 81.809  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
