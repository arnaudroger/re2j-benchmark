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
# Warmup Iteration   1: 1863.223 ops/s
# Warmup Iteration   2: 5913.699 ops/s
# Warmup Iteration   3: 6234.608 ops/s
# Warmup Iteration   4: 6235.735 ops/s
# Warmup Iteration   5: 6222.028 ops/s
# Warmup Iteration   6: 6256.029 ops/s
# Warmup Iteration   7: 6236.469 ops/s
# Warmup Iteration   8: 6293.864 ops/s
# Warmup Iteration   9: 6242.021 ops/s
# Warmup Iteration  10: 6254.756 ops/s
# Warmup Iteration  11: 6186.072 ops/s
# Warmup Iteration  12: 6188.496 ops/s
# Warmup Iteration  13: 6126.639 ops/s
# Warmup Iteration  14: 6261.315 ops/s
# Warmup Iteration  15: 6310.993 ops/s
# Warmup Iteration  16: 6250.276 ops/s
# Warmup Iteration  17: 6163.947 ops/s
# Warmup Iteration  18: 6057.464 ops/s
# Warmup Iteration  19: 6219.298 ops/s
# Warmup Iteration  20: 6311.713 ops/s
Iteration   1: 6288.839 ops/s
Iteration   2: 6263.592 ops/s
Iteration   3: 6291.375 ops/s
Iteration   4: 6277.452 ops/s
Iteration   5: 6272.739 ops/s
Iteration   6: 6265.560 ops/s
Iteration   7: 6286.975 ops/s
Iteration   8: 6302.158 ops/s
Iteration   9: 6282.627 ops/s
Iteration  10: 6305.497 ops/s
Iteration  11: 6298.255 ops/s
Iteration  12: 6284.431 ops/s
Iteration  13: 6299.147 ops/s
Iteration  14: 6293.697 ops/s
Iteration  15: 6305.889 ops/s
Iteration  16: 6287.323 ops/s
Iteration  17: 6122.256 ops/s
Iteration  18: 6139.026 ops/s
Iteration  19: 6301.162 ops/s
Iteration  20: 6304.528 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6273.626 ±(99.9%) 43.902 ops/s [Average]
  (min, avg, max) = (6122.256, 6273.626, 6305.889), stdev = 50.558
  CI (99.9%): [6229.724, 6317.529] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 217915 total address lines.
Perf output processed (skipped 23.163 seconds):
 Column 1: cycles (20501 events)
 Column 2: instructions (20494 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 589 (1762 bytes) 

                                            0x00007fc8c8e45ea9: cmp    $0xa,%r10d
                                            0x00007fc8c8e45ead: je     0x00007fc8c8e46aff  ;*invokeinterface charAt
                                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                          ; - com.google.re2j.Machine::match@96 (line 195)
                                            0x00007fc8c8e45eb3: mov    %r8d,0x3c(%rsp)
                                            0x00007fc8c8e45eb8: mov    %r9d,0x44(%rsp)
                                            0x00007fc8c8e45ebd: mov    %r10d,0x38(%rsp)
                                            0x00007fc8c8e45ec2: mov    %r10d,%r8d
                                            0x00007fc8c8e45ec5: add    $0xffffffbf,%r8d
  0.00%                                     0x00007fc8c8e45ec9: cmp    $0x1a,%r8d
                  ╭                         0x00007fc8c8e45ecd: jb     0x00007fc8c8e45edd
                  │                         0x00007fc8c8e45ecf: add    $0xffffff9f,%r10d
                  │                         0x00007fc8c8e45ed3: cmp    $0x1a,%r10d
                  │                         0x00007fc8c8e45ed7: jae    0x00007fc8c8e46b08  ;*getfield prog
                  │                                                                       ; - com.google.re2j.Machine::match@298 (line 239)
                  ↘                         0x00007fc8c8e45edd: or     $0x10,%r11d
                                            0x00007fc8c8e45ee1: mov    0x20(%rsp),%r10d
  0.00%    0.00%                            0x00007fc8c8e45ee6: and    $0x4,%r10d         ;*invokeinterface charAt
                                                                                          ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                          ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                          ; - com.google.re2j.Machine::match@96 (line 195)
                                            0x00007fc8c8e45eea: mov    %r10d,0x40(%rsp)
                                            0x00007fc8c8e45eef: mov    %rbp,%r10
           0.01%                            0x00007fc8c8e45ef2: shl    $0x3,%r10
                                            0x00007fc8c8e45ef6: mov    %r11d,0x60(%rsp)
                                            0x00007fc8c8e45efb: mov    %r10,0x50(%rsp)
  0.00%                                     0x00007fc8c8e45f00: xor    %r9d,%r9d
           0.01%                            0x00007fc8c8e45f03: xor    %r11d,%r11d
                                            0x00007fc8c8e45f06: mov    %r11d,0x58(%rsp)
                   ╭                        0x00007fc8c8e45f0b: jmpq   0x00007fc8c8e46064  ;*putfield inst
                   │                                                                      ; - com.google.re2j.Machine::alloc@45 (line 138)
                   │                                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                   │                                                                      ; - com.google.re2j.Machine::match@315 (line 239)
  0.32%    0.20%   │                   ↗↗   0x00007fc8c8e45f10: mov    $0x1,%r11d
  0.20%    0.16%   │╭                  ││   0x00007fc8c8e45f16: jmpq   0x00007fc8c8e46393
  0.01%    0.00%   ││             ↗    ││   0x00007fc8c8e45f1b: mov    %edi,%r8d
  0.02%    0.00%   ││╭            │    ││   0x00007fc8c8e45f1e: jmpq   0x00007fc8c8e46473
  0.01%            │││            │↗   ││   0x00007fc8c8e45f23: mov    0x10(%rsp),%r10
  0.29%    0.01%   │││            ││   ││   0x00007fc8c8e45f28: mov    0x10(%r10),%ecx
  0.00%            │││            ││   ││   0x00007fc8c8e45f2c: mov    0x78(%rsp),%r11
  0.00%    0.00%   │││            ││   ││   0x00007fc8c8e45f31: mov    0x14(%r11),%r8d    ;*invokestatic isWordRune
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.01%    0.01%   │││            ││   ││   0x00007fc8c8e45f35: mov    0x48(%rsp),%ebx
  0.29%    0.03%   │││            ││   ││   0x00007fc8c8e45f39: movzbl 0x18(%r12,%rbx,8),%r11d
                   │││            ││   ││   0x00007fc8c8e45f3f: test   %r11d,%r11d
                   │││╭           ││   ││   0x00007fc8c8e45f42: jne    0x00007fc8c8e45f61  ;*ifne
                   ││││           ││   ││                                                 ; - com.google.re2j.Machine::match@279 (line 233)
  0.01%    0.00%   ││││           ││   ││   0x00007fc8c8e45f44: mov    %r12d,0xc(%r12,%rbx,8)
           0.03%   ││││           ││   ││   0x00007fc8c8e45f49: mov    0x1c(%r12,%rbx,8),%ebp
  0.30%    0.12%   ││││           ││   ││   0x00007fc8c8e45f4e: movb   $0x1,0x18(%r12,%rbx,8)
                   ││││           ││   ││   0x00007fc8c8e45f54: mov    %r12,0x10(%r12,%rbx,8)
  0.01%    0.01%   ││││           ││   ││   0x00007fc8c8e45f59: test   %ebp,%ebp
                   ││││           ││   ││   0x00007fc8c8e45f5b: jne    0x00007fc8c8e47311  ;*ifeq
                   ││││           ││   ││                                                 ; - com.google.re2j.Machine::match@162 (line 212)
  0.01%    0.00%   │││↘           ││   ││   0x00007fc8c8e45f61: mov    0x34(%rsp),%eax
  0.24%    0.20%   │││            ││   ││   0x00007fc8c8e45f65: test   %eax,%eax
                   │││            ││   ││   0x00007fc8c8e45f67: je     0x00007fc8c8e466a1  ;*if_icmpge
                   │││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
                   │││            ││   ││   0x00007fc8c8e45f6d: mov    0x78(%rsp),%r11
  0.00%            │││            ││   ││   0x00007fc8c8e45f72: mov    0x28(%r11),%edx    ;*getfield pcsl
                   │││            ││   ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                   │││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.04%   │││            ││   ││   0x00007fc8c8e45f76: mov    0xc(%r12,%rdx,8),%ebp  ;*if_icmpgt
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
                   │││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e48121
  0.34%    0.38%   │││            ││   ││   0x00007fc8c8e45f7b: test   %ebp,%ebp
                   │││            ││   ││   0x00007fc8c8e45f7d: jne    0x00007fc8c8e47181  ;*getfield prefixRune
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@187 (line 216)
  0.01%    0.04%   │││            ││   ││   0x00007fc8c8e45f83: movzbl 0x10(%r11),%r9d    ;*if_icmpgt
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
                   │││            ││   ││   0x00007fc8c8e45f88: test   %r9d,%r9d
                   │││            ││   ││   0x00007fc8c8e45f8b: jne    0x00007fc8c8e47345  ;*getfield prefixRune
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@187 (line 216)
  0.02%    0.01%   │││            ││   ││   0x00007fc8c8e45f91: mov    0x14(%r10),%r13d   ;*invokestatic codePointAt
                   │││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.29%    0.25%   │││            ││   ││   0x00007fc8c8e45f95: mov    %r10,0x10(%rsp)
  0.03%    0.02%   │││            ││   ││   0x00007fc8c8e45f9a: mov    0xc(%r10),%ebx     ;*if_icmpeq
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@190 (line 216)
           0.00%   │││            ││   ││   0x00007fc8c8e45f9e: mov    %ebx,0x18(%rsp)
  0.01%    0.02%   │││            ││   ││   0x00007fc8c8e45fa2: mov    0x38(%rsp),%r10d
  0.28%    0.38%   │││            ││   ││   0x00007fc8c8e45fa7: cmp    $0xffffffff,%r10d
                   │││            ││   ││   0x00007fc8c8e45fab: je     0x00007fc8c8e4676f
  0.02%    0.02%   │││            ││   ││   0x00007fc8c8e45fb1: mov    0x58(%rsp),%ebx
                   │││            ││   ││   0x00007fc8c8e45fb5: add    0x3c(%rsp),%ebx
  0.02%    0.03%   │││            ││   ││   0x00007fc8c8e45fb9: add    0x18(%rsp),%ebx    ;*iconst_0
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@46 (line 149)
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.36%    0.44%   │││            ││   ││   0x00007fc8c8e45fbd: cmp    %ecx,%ebx
                   │││            ││   ││   0x00007fc8c8e45fbf: jge    0x00007fc8c8e4677f  ;*arraylength
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@286 (line 236)
  0.12%    0.20%   │││            ││   ││   0x00007fc8c8e45fc5: mov    0x8(%r12,%r13,8),%ecx  ; implicit exception: dispatches to 0x00007fc8c8e48131
  0.00%    0.01%   │││            ││   ││   0x00007fc8c8e45fca: cmp    $0xf80002da,%ecx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │││            ││   ││   0x00007fc8c8e45fd0: jne    0x00007fc8c8e47065  ;*if_icmpeq
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@190 (line 216)
           0.01%   │││            ││   ││   0x00007fc8c8e45fd6: lea    (%r12,%r13,8),%rcx  ;*invokestatic isWordRune
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.19%    0.30%   │││            ││   ││   0x00007fc8c8e45fda: test   %ebx,%ebx
                   │││            ││   ││   0x00007fc8c8e45fdc: jl     0x00007fc8c8e471bd
  0.11%    0.17%   │││            ││   ││   0x00007fc8c8e45fe2: mov    0xc(%rcx),%r10d    ;*invokeinterface charAt
                   │││            ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.00%            │││            ││   ││   0x00007fc8c8e45fe6: mov    0xc(%r12,%r10,8),%ebp  ;*invokestatic isWordRune
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
                   │││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e48145
  0.02%    0.06%   │││            ││   ││   0x00007fc8c8e45feb: cmp    %ebp,%ebx
                   │││            ││   ││   0x00007fc8c8e45fed: jge    0x00007fc8c8e47389
  0.30%    0.49%   │││            ││   ││   0x00007fc8c8e45ff3: cmp    %ebp,%ebx
                   │││            ││   ││   0x00007fc8c8e45ff5: jae    0x00007fc8c8e47005  ;*invokevirtual canCheckPrefix
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@194 (line 218)
  0.08%    0.12%   │││            ││   ││   0x00007fc8c8e45ffb: shl    $0x3,%r10
                   │││            ││   ││   0x00007fc8c8e45fff: movzwl 0x10(%r10,%rbx,2),%r10d  ;*if_icmpgt
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.47%    0.61%   │││            ││   ││   0x00007fc8c8e46005: cmp    $0xd800,%r10d
                   │││            ││   ││   0x00007fc8c8e4600c: jge    0x00007fc8c8e473e1  ;*invokevirtual canCheckPrefix
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@194 (line 218)
  0.34%    0.54%   │││            ││   ││   0x00007fc8c8e46012: shl    $0x3,%r10d         ;*ifeq
                   │││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%            │││            ││   ││   0x00007fc8c8e46016: mov    %r10d,%r11d
                   │││            ││   ││   0x00007fc8c8e46019: or     $0x1,%r11d
  0.26%    0.28%   │││            ││   ││   0x00007fc8c8e4601d: and    $0x7,%r10d
  0.04%    0.13%   │││            ││   ││   0x00007fc8c8e46021: sar    $0x3,%r11d         ;*invokestatic isWordRune
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.22%    0.30%   │││            ││   ││   0x00007fc8c8e46025: or     $0x1,%r10d         ; OopMap{r8=NarrowOop rdx=NarrowOop r13=NarrowOop [8]=Oop [16]=Oop [80]=Oop [120]=Oop off=841}
                   │││            ││   ││                                                 ;*goto
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@439 (line 262)
  0.01%    0.01%   │││            ││   ││   0x00007fc8c8e46029: test   %eax,0x15f66fd1(%rip)        # 0x00007fc8dedad000
                   │││            ││   ││                                                 ;*ifge
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@213 (line 221)
                   │││            ││   ││                                                 ;   {poll}
  0.02%    0.00%   │││            ││   ││   0x00007fc8c8e4602f: mov    0x50(%rsp),%rcx
  0.10%    0.13%   │││            ││   ││   0x00007fc8c8e46034: mov    %rcx,%rbx
  0.22%    0.31%   │││            ││   ││   0x00007fc8c8e46037: shr    $0x3,%rbx          ;*invokevirtual isMatch
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::step@85 (line 285)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.00%    0.00%   │││            ││   ││   0x00007fc8c8e4603b: mov    %ebx,0x48(%rsp)
  0.00%            │││            ││   ││   0x00007fc8c8e4603f: mov    0x8(%rsp),%rcx
  0.08%    0.11%   │││            ││   ││   0x00007fc8c8e46044: mov    %rcx,0x50(%rsp)
  0.23%    0.29%   │││            ││   ││   0x00007fc8c8e46049: mov    0x3c(%rsp),%ecx
  0.00%    0.00%   │││            ││   ││   0x00007fc8c8e4604d: mov    %ecx,0x34(%rsp)
  0.00%    0.00%   │││            ││   ││   0x00007fc8c8e46051: mov    %r10d,0x3c(%rsp)
  0.08%    0.06%   │││            ││   ││   0x00007fc8c8e46056: mov    %r11d,0x44(%rsp)
  0.28%    0.40%   │││            ││   ││   0x00007fc8c8e4605b: vmovd  %r8d,%xmm3
           0.00%   │││            ││   ││   0x00007fc8c8e46060: vmovd  %edx,%xmm2         ;*if_icmpne
                   │││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                   │││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                   ↘││            ││   ││   0x00007fc8c8e46064: mov    0x48(%rsp),%r11d
  0.05%    0.08%    ││            ││   ││   0x00007fc8c8e46069: mov    0x20(%r12,%r11,8),%r10d  ;*iload_0
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                    ││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e480cd
  0.31%    0.33%    ││            ││   ││   0x00007fc8c8e4606e: movzbl 0x18(%r12,%r11,8),%edi
                    ││            ││   ││   0x00007fc8c8e46074: mov    0xc(%r12,%r11,8),%r11d  ;*invokestatic emptyOpContext
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.03%    ││            ││   ││   0x00007fc8c8e46079: mov    %r11d,%edx
  0.05%    0.05%    ││            ││   ││   0x00007fc8c8e4607c: mov    0x48(%rsp),%r11d
  0.24%    0.29%    ││            ││   ││   0x00007fc8c8e46081: mov    0x10(%r12,%r11,8),%rbx  ;*invokestatic isWordRune
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
                    ││            ││   ││   0x00007fc8c8e46086: mov    0x78(%rsp),%r11
  0.03%    0.03%    ││            ││   ││   0x00007fc8c8e4608b: mov    0x18(%r11),%ecx    ;*if_icmpne
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.07%    ││            ││   ││   0x00007fc8c8e4608f: mov    0x24(%r11),%r11d   ;*if_icmpne
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@32 (line 182)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.24%    0.34%    ││            ││   ││   0x00007fc8c8e46093: vmovd  %r11d,%xmm0
  0.01%             ││            ││   ││   0x00007fc8c8e46098: mov    0x78(%rsp),%r11
  0.00%    0.06%    ││            ││   ││   0x00007fc8c8e4609d: mov    0xc(%r11),%r11d    ;*invokestatic isWordRune
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.06%    0.06%    ││            ││   ││   0x00007fc8c8e460a1: vmovd  %r11d,%xmm1
  0.32%    0.30%    ││            ││   ││   0x00007fc8c8e460a6: mov    0x48(%rsp),%r11d
  0.02%    0.01%    ││            ││   ││   0x00007fc8c8e460ab: shl    $0x3,%r11          ;*getfield op
                    ││            ││   ││                                                 ; - com.google.re2j.Inst::isMatch@1 (line 78)
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.05%    ││            ││   ││   0x00007fc8c8e460af: mov    %r11,0x8(%rsp)
  0.05%    0.05%    ││            ││   ││   0x00007fc8c8e460b4: test   %edi,%edi
                    ││ ╭          ││   ││   0x00007fc8c8e460b6: je     0x00007fc8c8e460f2  ;*iflt
                    ││ │          ││   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                    ││ │          ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││ │          ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.12%    0.14%    ││ │          ││   ││   0x00007fc8c8e460b8: mov    0x40(%rsp),%r8d
                    ││ │          ││   ││   0x00007fc8c8e460bd: test   %r8d,%r8d
                    ││ │          ││   ││   0x00007fc8c8e460c0: jne    0x00007fc8c8e47635  ;*ireturn
                    ││ │          ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%    ││ │          ││   ││   0x00007fc8c8e460c6: test   %r9d,%r9d
                    ││ │          ││   ││   0x00007fc8c8e460c9: jne    0x00007fc8c8e4767d  ;*if_icmpeq
                    ││ │          ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.14%    0.19%    ││ │          ││   ││   0x00007fc8c8e460cf: vmovd  %xmm3,%r9d
                    ││ │          ││   ││   0x00007fc8c8e460d4: mov    0x24(%r12,%r9,8),%r11d  ;*arraylength
                    ││ │          ││   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                    ││ │          ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││ │          ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
                    ││ │          ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e48179
                    ││ │          ││   ││   0x00007fc8c8e460d9: mov    0xc(%r12,%r11,8),%r8d  ;*invokevirtual add
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                    ││ │          ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e48189
  0.02%    0.00%    ││ │          ││   ││   0x00007fc8c8e460de: mov    0xc(%r12,%r8,8),%edi  ; implicit exception: dispatches to 0x00007fc8c8e48199
  0.28%    0.34%    ││ │          ││   ││   0x00007fc8c8e460e3: test   %edi,%edi
                    ││ │          ││   ││   0x00007fc8c8e460e5: jne    0x00007fc8c8e4679f  ;*if_icmplt
                    ││ │          ││   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                    ││ │          ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││ │          ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││ │          ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.09%    0.08%    ││ │          ││   ││   0x00007fc8c8e460eb: vmovd  %xmm2,%r8d
                    ││ │╭         ││   ││   0x00007fc8c8e460f0: jmp    0x00007fc8c8e46100
  0.12%    0.14%    ││ ↘│         ││   ││   0x00007fc8c8e460f2: test   %r9d,%r9d
                    ││  │         ││   ││   0x00007fc8c8e460f5: jne    0x00007fc8c8e47445  ;*bipush
                    ││  │         ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@0 (line 149)
                    ││  │         ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  │         ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
           0.00%    ││  │         ││   ││   0x00007fc8c8e460fb: vmovd  %xmm2,%r8d         ;*iconst_1
                    ││  │         ││   ││                                                 ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                    ││  │         ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    ││  │         ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.02%    0.04%    ││  ↘         ││   ││   0x00007fc8c8e46100: mov    0x58(%rsp),%r11d
  0.10%    0.12%    ││            ││   ││   0x00007fc8c8e46105: test   %r11d,%r11d
                    ││   ╭        ││   ││   0x00007fc8c8e46108: je     0x00007fc8c8e46118  ;*synchronization entry
                    ││   │        ││   ││                                                 ; - java.lang.Character::codePointAt@-1 (line 4866)
                    ││   │        ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││   │        ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.15%    0.18%    ││   │        ││   ││   0x00007fc8c8e4610a: mov    0x64(%rsp),%r9d
  0.01%             ││   │        ││   ││   0x00007fc8c8e4610f: test   %r9d,%r9d
                    ││   │        ││   ││   0x00007fc8c8e46112: jne    0x00007fc8c8e47135  ;*invokeinterface charAt
                    ││   │        ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││   │        ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││   │        ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.04%    0.05%    ││   ↘        ││   ││   0x00007fc8c8e46118: mov    0xc(%r12,%r8,8),%ebp  ;*caload
                    ││            ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││            ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
                    ││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e480dd
  0.12%    0.20%    ││            ││   ││   0x00007fc8c8e4611d: test   %ebp,%ebp
                    ││            ││   ││   0x00007fc8c8e4611f: jg     0x00007fc8c8e472ad  ;*invokevirtual isEmpty
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.16%    0.18%    ││            ││   ││   0x00007fc8c8e46125: mov    0x1c(%r12,%rcx,8),%ebp  ;*iflt
                    ││            ││   ││                                                 ; - java.lang.String::charAt@1 (line 657)
                    ││            ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
                    ││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e480ed
  0.01%             ││            ││   ││   0x00007fc8c8e4612a: mov    0x8(%r12,%rbp,8),%r11d  ;*if_icmpge
                    ││            ││   ││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                    ││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e480fd
  0.17%    0.19%    ││            ││   ││   0x00007fc8c8e4612f: lea    (%r12,%rbp,8),%rsi
  0.11%    0.09%    ││            ││   ││   0x00007fc8c8e46133: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                    ││    ╭       ││   ││   0x00007fc8c8e4613a: je     0x00007fc8c8e4623b  ;*arraylength
                    ││    │       ││   ││                                                 ; - java.lang.String::charAt@9 (line 657)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.10%    0.15%    ││    │       ││   ││   0x00007fc8c8e46140: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││    │       ││   ││   0x00007fc8c8e46147: jne    0x00007fc8c8e472c9  ;*invokestatic isHighSurrogate
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.07%    0.08%    ││    │       ││   ││   0x00007fc8c8e4614d: mov    %rsi,%r9
  0.01%    0.00%    ││    │       ││   ││   0x00007fc8c8e46150: mov    0x18(%rsi),%ecx    ;*synchronization entry
                    ││    │       ││   ││                                                 ; - java.lang.Character::isHighSurrogate@-1 (line 4729)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%    0.02%    ││    │       ││   ││   0x00007fc8c8e46153: cmp    $0x40,%ecx
                    ││    │       ││   ││   0x00007fc8c8e46156: jg     0x00007fc8c8e47501  ;*invokevirtual isEmpty
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.11%    0.09%    ││    │       ││   ││   0x00007fc8c8e4615c: mov    $0x1,%edi
  0.04%    0.04%    ││    │       ││   ││   0x00007fc8c8e46161: shl    %cl,%rdi           ;*if_icmplt
                    ││    │       ││   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.19%    0.31%    ││    │       ││   ││   0x00007fc8c8e46164: mov    %rdi,%r11
           0.00%    ││    │       ││   ││   0x00007fc8c8e46167: and    %rbx,%r11          ;*invokevirtual add
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.01%    ││    │       ││   ││   0x00007fc8c8e4616a: test   %r11,%r11
                    ││    │       ││   ││   0x00007fc8c8e4616d: jne    0x00007fc8c8e46adc  ;*iload_0
                    ││    │       ││   ││                                                 ; - java.lang.Character::isHighSurrogate@0 (line 4729)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.10%    0.16%    ││    │       ││   ││   0x00007fc8c8e46173: xor    %ebp,%ebp          ;*if_icmplt
                    ││    │       ││   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.06%    0.01%    ││    │       ││   ││   0x00007fc8c8e46175: test   %r11,%r11
                    ││    │       ││   ││   0x00007fc8c8e46178: jne    0x00007fc8c8e47575
  0.05%    0.07%    ││    │       ││   ││   0x00007fc8c8e4617e: cmp    $0x40,%ecx
                    ││    │       ││   ││   0x00007fc8c8e46181: jge    0x00007fc8c8e475c1
  0.00%    0.01%    ││    │       ││   ││   0x00007fc8c8e46187: mov    0x48(%rsp),%ecx
  0.04%    0.05%    ││    │       ││   ││   0x00007fc8c8e4618b: mov    %r12b,0x18(%r12,%rcx,8)
  0.04%    0.03%    ││    │       ││   ││   0x00007fc8c8e46190: or     %rbx,%rdi
  0.05%    0.06%    ││    │       ││   ││   0x00007fc8c8e46193: mov    %rdi,0x10(%r12,%rcx,8)
  0.01%             ││    │       ││   ││   0x00007fc8c8e46198: vmovd  %xmm1,%ecx
  0.07%    0.02%    ││    │       ││   ││   0x00007fc8c8e4619c: test   %ecx,%ecx
                    ││    │       ││   ││   0x00007fc8c8e4619e: jle    0x00007fc8c8e4748d  ;*invokevirtual isEmpty
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.06%    0.03%    ││    │       ││   ││   0x00007fc8c8e461a4: vmovd  %xmm1,%ebp
  0.06%    0.04%    ││    │       ││   ││   0x00007fc8c8e461a8: dec    %ebp               ;*if_icmplt
                    ││    │       ││   ││                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%             ││    │       ││   ││   0x00007fc8c8e461aa: mov    0x78(%rsp),%r11
  0.02%    0.02%    ││    │       ││   ││   0x00007fc8c8e461af: mov    %ebp,0xc(%r11)     ;*synchronization entry
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine$Queue::isEmpty@-1 (line 53)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.05%    0.04%    ││    │       ││   ││   0x00007fc8c8e461b3: vmovd  %xmm0,%r11d
  0.06%    0.05%    ││    │       ││   ││   0x00007fc8c8e461b8: mov    0xc(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fc8c8e48155
  0.01%    0.00%    ││    │       ││   ││   0x00007fc8c8e461bd: cmp    %r11d,%ebp
  0.06%    0.02%    ││    │       ││   ││   0x00007fc8c8e461c0: jae    0x00007fc8c8e47225  ;*invokevirtual isEmpty
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.07%    0.08%    ││    │       ││   ││   0x00007fc8c8e461c6: vmovd  %xmm0,%r8d
  0.07%    0.07%    ││    │       ││   ││   0x00007fc8c8e461cb: lea    (%r12,%r8,8),%r11
  0.00%             ││    │       ││   ││   0x00007fc8c8e461cf: mov    0xc(%r11,%rcx,4),%ebp  ;*caload
                    ││    │       ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.05%    0.04%    ││    │       ││   ││   0x00007fc8c8e461d4: test   %ebp,%ebp
                    ││    │       ││   ││   0x00007fc8c8e461d6: je     0x00007fc8c8e4726d  ;*getfield empty
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine$Queue::isEmpty@1 (line 53)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@138 (line 207)
  0.02%    0.06%    ││    │       ││   ││   0x00007fc8c8e461dc: lea    (%r12,%rbp,8),%r11
  0.08%    0.06%    ││    │       ││   ││   0x00007fc8c8e461e0: mov    %rsi,%r9
  0.00%             ││    │       ││   ││   0x00007fc8c8e461e3: shr    $0x3,%r9           ;*caload
                    ││    │       ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.05%    0.07%    ││    │       ││   ││   0x00007fc8c8e461e7: mov    %r9d,0x10(%r12,%rbp,8)
  0.03%    0.06%    ││    │       ││   ││   0x00007fc8c8e461ec: mov    %edx,%r9d
  0.05%    0.07%    ││    │       ││   ││   0x00007fc8c8e461ef: inc    %r9d
           0.00%    ││    │       ││   ││   0x00007fc8c8e461f2: mov    0x48(%rsp),%ecx
  0.05%    0.06%    ││    │       ││   ││   0x00007fc8c8e461f6: mov    %r9d,0xc(%r12,%rcx,8)
  0.06%    0.06%    ││    │       ││   ││   0x00007fc8c8e461fb: shr    $0x9,%r11
  0.08%    0.09%    ││    │       ││   ││   0x00007fc8c8e461ff: movabs $0x7fc8c4601000,%r8
  0.01%    0.00%    ││    │       ││   ││   0x00007fc8c8e46209: mov    %r12b,(%r8,%r11,1)
  0.20%    0.21%    ││    │       ││   ││   0x00007fc8c8e4620d: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fc8c8e48165
  0.03%    0.02%    ││    │       ││   ││   0x00007fc8c8e46212: cmp    %r11d,%edx
                    ││    │       ││   ││   0x00007fc8c8e46215: jae    0x00007fc8c8e47281  ;*ifeq
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@162 (line 212)
  0.04%    0.04%    ││    │       ││   ││   0x00007fc8c8e4621b: shl    $0x3,%r10          ;*if_icmpne
                    ││    │       ││   ││                                                 ; - com.google.re2j.Inst::isMatch@6 (line 78)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::step@-1 (line 276)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%             ││    │       ││   ││   0x00007fc8c8e4621f: lea    0x10(%r10,%rdx,4),%r10  ;*iload_0
                    ││    │       ││   ││                                                 ; - java.lang.Character::charCount@0 (line 4818)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.10%    0.09%    ││    │       ││   ││   0x00007fc8c8e46224: mov    %ebp,(%r10)
  0.05%    0.07%    ││    │       ││   ││   0x00007fc8c8e46227: shr    $0x9,%r10
  0.04%    0.05%    ││    │       ││   ││   0x00007fc8c8e4622b: movabs $0x7fc8c4601000,%r11
                    ││    │       ││   ││   0x00007fc8c8e46235: mov    %r12b,(%r11,%r10,1)  ;*caload
                    ││    │       ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││    │       ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││    │       ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││    │       ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.16%    0.21%    ││    │╭      ││   ││   0x00007fc8c8e46239: jmp    0x00007fc8c8e46260  ;*synchronization entry
                    ││    ││      ││   ││                                                 ; - com.google.re2j.Machine::match@-1 (line 178)
  0.09%    0.07%    ││    ↘│      ││   ││   0x00007fc8c8e4623b: shl    $0x3,%r8           ;*invokestatic isHighSurrogate
                    ││     │      ││   ││                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                    ││     │      ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││     │      ││   ││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
                    ││     │      ││   ││   0x00007fc8c8e4623f: mov    0x8(%rsp),%rdx
                    ││     │      ││   ││   0x00007fc8c8e46244: mov    0x58(%rsp),%ecx
  0.08%    0.02%    ││     │      ││   ││   0x00007fc8c8e46248: mov    0x60(%rsp),%r9d
  0.11%    0.13%    ││     │      ││   ││   0x00007fc8c8e4624d: xor    %edi,%edi
                    ││     │      ││   ││   0x00007fc8c8e4624f: mov    0x78(%rsp),%r10
  0.00%    0.00%    ││     │      ││   ││   0x00007fc8c8e46254: mov    %r10,(%rsp)
  0.06%    0.01%    ││     │      ││   ││   0x00007fc8c8e46258: data16 xchg %ax,%ax
  0.12%    0.09%    ││     │      ││   ││   0x00007fc8c8e4625b: callq  0x00007fc8c8c19020  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [80]=Oop [120]=Oop off=1408}
                    ││     │      ││   ││                                                 ;*invokevirtual add
                    ││     │      ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
                    ││     │      ││   ││                                                 ;   {optimized virtual_call}
  0.02%    0.03%    ││     ↘      ││   ││   0x00007fc8c8e46260: mov    0x38(%rsp),%r10d
  0.09%    0.07%    ││            ││   ││   0x00007fc8c8e46265: test   %r10d,%r10d
                    ││            ││   ││   0x00007fc8c8e46268: jl     0x00007fc8c8e4667f  ;*aaload
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.11%    0.16%    ││            ││   ││   0x00007fc8c8e4626e: xor    %r11d,%r11d        ;*iconst_1
                    ││            ││   ││                                                 ; - java.lang.Character::charCount@10 (line 4818)
                    ││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.07%    0.15%    ││            ││   ││   0x00007fc8c8e46271: cmp    $0xa,%r10d
                    ││            ││   ││   0x00007fc8c8e46275: je     0x00007fc8c8e4678d  ;*caload
                    ││            ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││            ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.01%    ││            ││   ││   0x00007fc8c8e4627b: mov    0x44(%rsp),%r8d
  0.07%    0.09%    ││            ││   ││   0x00007fc8c8e46280: test   %r8d,%r8d
                    ││            ││   ││   0x00007fc8c8e46283: jl     0x00007fc8c8e4668a  ;*getfield prefix
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@172 (line 216)
  0.09%    0.14%    ││            ││   ││   0x00007fc8c8e46289: cmp    $0xa,%r8d
                    ││            ││   ││   0x00007fc8c8e4628d: je     0x00007fc8c8e46796  ;*ishr
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@104 (line 196)
  0.12%    0.12%    ││            ││   ││   0x00007fc8c8e46293: mov    0x38(%rsp),%ecx
  0.03%    0.04%    ││            ││   ││   0x00007fc8c8e46297: add    $0xffffffbf,%ecx
  0.03%    0.04%    ││            ││   ││   0x00007fc8c8e4629a: cmp    $0x1a,%ecx
                    ││      ╭     ││   ││   0x00007fc8c8e4629d: jb     0x00007fc8c8e462b2
  0.13%    0.12%    ││      │     ││   ││   0x00007fc8c8e4629f: mov    0x38(%rsp),%r9d
  0.14%    0.11%    ││      │     ││   ││   0x00007fc8c8e462a4: add    $0xffffff9f,%r9d
  0.03%    0.04%    ││      │     ││   ││   0x00007fc8c8e462a8: cmp    $0x1a,%r9d
                    ││      │     ││   ││   0x00007fc8c8e462ac: jae    0x00007fc8c8e46976  ;*caload
                    ││      │     ││   ││                                                 ; - java.lang.String::charAt@27 (line 660)
                    ││      │     ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││      │     ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││      │     ││   ││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.04%    0.09%    ││      ↘     ││   ││   0x00007fc8c8e462b2: mov    $0x1,%ebp          ;*ifne
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@115 (line 200)
  0.13%    0.20%    ││            ││   ││   0x00007fc8c8e462b7: mov    0x44(%rsp),%ecx
  0.07%    0.13%    ││            ││   ││   0x00007fc8c8e462bb: add    $0xffffffbf,%ecx
  0.06%    0.09%    ││            ││   ││   0x00007fc8c8e462be: cmp    $0x1a,%ecx
                    ││       ╭    ││   ││   0x00007fc8c8e462c1: jb     0x00007fc8c8e462d6  ;*arraylength
                    ││       │    ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                    ││       │    ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.06%    ││       │    ││   ││   0x00007fc8c8e462c3: mov    0x44(%rsp),%r9d
  0.14%    0.07%    ││       │    ││   ││   0x00007fc8c8e462c8: add    $0xffffff9f,%r9d
  0.12%    0.09%    ││       │    ││   ││   0x00007fc8c8e462cc: cmp    $0x1a,%r9d
                    ││       │    ││   ││   0x00007fc8c8e462d0: jae    0x00007fc8c8e46997  ;*invokevirtual alloc
                    ││       │    ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││       │    ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.05%    ││       ↘    ││   ││   0x00007fc8c8e462d6: mov    $0x1,%ecx          ;*synchronization entry
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@-1 (line 93)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.14%    ││            ││   ││   0x00007fc8c8e462db: cmp    %ecx,%ebp
                    ││        ╭   ││   ││   0x00007fc8c8e462dd: je     0x00007fc8c8e462ea  ;*ior
                    ││        │   ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                    ││        │   ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.03%    0.03%    ││        │   ││   ││   0x00007fc8c8e462df: or     $0x10,%r11d
  0.00%    0.00%    ││        │   ││   ││   0x00007fc8c8e462e3: mov    %r11d,0x60(%rsp)
  0.09%    0.09%    ││        │╭  ││   ││   0x00007fc8c8e462e8: jmp    0x00007fc8c8e462f3
  0.06%    0.14%    ││        ↘│  ││   ││   0x00007fc8c8e462ea: or     $0x20,%r11d
  0.08%    0.12%    ││         │  ││   ││   0x00007fc8c8e462ee: mov    %r11d,0x60(%rsp)   ;*ifne
                    ││         │  ││   ││                                                 ; - com.google.re2j.Machine::match@115 (line 200)
  0.08%    0.09%    ││         ↘  ││   ││   0x00007fc8c8e462f3: mov    0x10(%rsp),%r11
  0.06%    0.08%    ││            ││   ││   0x00007fc8c8e462f8: mov    0x10(%r11),%ecx    ;*aaload
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.27%    0.27%    ││            ││   ││   0x00007fc8c8e462fc: mov    0x58(%rsp),%r9d
  0.11%    0.12%    ││            ││   ││   0x00007fc8c8e46301: cmp    %ecx,%r9d
                    ││            ││   ││   0x00007fc8c8e46304: je     0x00007fc8c8e46693  ;*ishr
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@257 (line 229)
  0.22%    0.16%    ││            ││   ││   0x00007fc8c8e4630a: xor    %edi,%edi
  0.07%    0.03%    ││            ││   ││   0x00007fc8c8e4630c: mov    %edi,0x68(%rsp)    ;*ifne
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@115 (line 200)
  0.12%    0.09%    ││            ││   ││   0x00007fc8c8e46310: mov    %rax,-0x8(%rsp)
  0.13%    0.18%    ││            ││   ││   0x00007fc8c8e46315: mov    0x58(%rsp),%eax
  0.08%    0.07%    ││            ││   ││   0x00007fc8c8e46319: mov    %eax,0x5c(%rsp)
  0.06%    0.10%    ││            ││   ││   0x00007fc8c8e4631d: mov    -0x8(%rsp),%rax
  0.17%    0.21%    ││            ││   ││   0x00007fc8c8e46322: mov    %rax,-0x8(%rsp)
  0.11%    0.18%    ││            ││   ││   0x00007fc8c8e46327: mov    0x44(%rsp),%eax
  0.05%    0.06%    ││            ││   ││   0x00007fc8c8e4632b: mov    %eax,0x38(%rsp)
  0.07%    0.09%    ││            ││   ││   0x00007fc8c8e4632f: mov    -0x8(%rsp),%rax
  0.36%    0.26%    ││            ││   ││   0x00007fc8c8e46334: mov    %r10d,0x84(%rsp)
  0.09%    0.10%    ││            ││   ││   0x00007fc8c8e4633c: mov    0x78(%rsp),%r10
  0.04%    0.03%    ││            ││   ││   0x00007fc8c8e46341: mov    0x14(%r10),%r8d    ;*getfield pc
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.08%    0.03%    ││            ││   ││   0x00007fc8c8e46345: movzbl 0x18(%r12,%r8,8),%r11d  ;*ifne
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@115 (line 200)
                    ││            ││   ││                                                 ; implicit exception: dispatches to 0x00007fc8c8e48111
  0.44%    0.36%    ││            ││   ││   0x00007fc8c8e4634b: mov    0x48(%rsp),%r9d
  0.05%    0.06%    ││            ││   ││   0x00007fc8c8e46350: mov    0xc(%r12,%r9,8),%edi  ;*aaload
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                    ││            ││   ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.02%    ││            ││   ││   0x00007fc8c8e46355: mov    0x34(%rsp),%r10d
  0.03%    0.05%    ││            ││   ││   0x00007fc8c8e4635a: add    0x58(%rsp),%r10d
  0.22%    0.24%    ││            ││   ││   0x00007fc8c8e4635f: mov    %r10d,0x58(%rsp)
  0.04%    0.06%    ││            ││   ││   0x00007fc8c8e46364: test   %edi,%edi
                    ││            ││   ││   0x00007fc8c8e46366: jle    0x00007fc8c8e46675  ;*if_icmplt
                    ││            ││   ││                                                 ; - java.lang.String::charAt@10 (line 657)
                    ││            ││   ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││            ││   ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@249 (line 228)
  0.02%    0.01%    ││            ││   ││   0x00007fc8c8e4636c: test   %r11d,%r11d
                    ││            ││   ││   0x00007fc8c8e4636f: jne    0x00007fc8c8e470b1  ;*invokestatic isWordRune
                    ││            ││   ││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││            ││   ││                                                 ; - com.google.re2j.Machine::match@323 (line 241)
  0.04%    0.04%    ││            ││   ││   0x00007fc8c8e46375: mov    %r11d,0x70(%rsp)
  0.29%    0.20%    ││            ││   ││   0x00007fc8c8e4637a: xor    %r10d,%r10d
  0.05%    0.07%    ││            ││   ││   0x00007fc8c8e4637d: mov    %r10d,0x6c(%rsp)
  0.02%    0.03%    ││          ╭ ││   ││   0x00007fc8c8e46382: jmpq   0x00007fc8c8e4648f
                    ││          │ ││   ││   0x00007fc8c8e46387: nopw   0x0(%rax,%rax,1)
  0.72%    0.89%    ││          │ ││   ││↗  0x00007fc8c8e46390: xor    %r11d,%r11d        ;*putfield inst
                    ││          │ ││   │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                    ││          │ ││   │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││          │ ││   │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.05%    ↘│          │ ││  ↗│││  0x00007fc8c8e46393: test   %r11d,%r11d
                     │          │╭││  ││││  0x00007fc8c8e46396: je     0x00007fc8c8e46410  ;*arraylength
                     │          ││││  ││││                                                ; - java.lang.String::charAt@9 (line 657)
                     │          ││││  ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │          ││││  ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │          ││││  ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.06%    0.03%     │          ││││↗ ││││  0x00007fc8c8e46398: mov    0x1c(%r9),%r10d
  0.05%    0.05%     │          │││││ ││││  0x00007fc8c8e4639c: mov    %rcx,%r8
  0.04%    0.08%     │          │││││ ││││  0x00007fc8c8e4639f: shl    $0x3,%r8
  0.17%    0.10%     │          │││││ ││││  0x00007fc8c8e463a3: mov    %r10,%rsi
                     │          │││││ ││││  0x00007fc8c8e463a6: shl    $0x3,%rsi          ;*if_icmplt
                     │          │││││ ││││                                                ; - java.lang.String::charAt@10 (line 657)
                     │          │││││ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │          │││││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │          │││││ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.03%    0.01%     │          │││││ ││││  0x00007fc8c8e463aa: mov    0x50(%rsp),%rdx
  0.09%    0.02%     │          │││││ ││││  0x00007fc8c8e463af: mov    0x58(%rsp),%ecx
  0.11%    0.15%     │          │││││ ││││  0x00007fc8c8e463b3: mov    0x60(%rsp),%r9d
  0.02%              │          │││││ ││││  0x00007fc8c8e463b8: mov    0x90(%rsp),%rdi
  0.00%              │          │││││ ││││  0x00007fc8c8e463c0: mov    0x78(%rsp),%r10
  0.07%    0.02%     │          │││││ ││││  0x00007fc8c8e463c5: mov    %r10,(%rsp)
  0.28%    0.10%     │          │││││ ││││  0x00007fc8c8e463c9: mov    0x5c(%rsp),%r11d
                     │          │││││ ││││  0x00007fc8c8e463ce: mov    %r11d,0x24(%rsp)
  0.00%              │          │││││ ││││  0x00007fc8c8e463d3: mov    0x64(%rsp),%ebp
  0.05%    0.00%     │          │││││ ││││  0x00007fc8c8e463d7: xchg   %ax,%ax
  0.16%    0.06%     │          │││││ ││││  0x00007fc8c8e463d9: movabs $0xffffffffffffffff,%rax
                     │          │││││ ││││  0x00007fc8c8e463e3: callq  0x00007fc8c8c19220  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [80]=Oop [120]=Oop off=1800}
                     │          │││││ ││││                                                ;*invokevirtual add
                     │          │││││ ││││                                                ; - com.google.re2j.Machine::step@211 (line 300)
                     │          │││││ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                     │          │││││ ││││                                                ;   {virtual_call}
  0.05%    0.01%     │          │││││ ││││  0x00007fc8c8e463e8: mov    0x48(%rsp),%r10d
  0.10%    0.06%     │          │││││ ││││  0x00007fc8c8e463ed: mov    0xc(%r12,%r10,8),%edi  ;*invokevirtual addThread
                     │          │││││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │          │││││ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.13%     │          │││││ ││││  0x00007fc8c8e463f2: test   %rax,%rax
                     │          ││╰││ ││││  0x00007fc8c8e463f5: je     0x00007fc8c8e45f1b  ;*invokevirtual add
                     │          ││ ││ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     │          ││ ││ ││││  0x00007fc8c8e463fb: mov    0x78(%rsp),%r10
                     │          ││ ││ ││││  0x00007fc8c8e46400: mov    0xc(%r10),%r8d     ;*invokevirtual addThread
                     │          ││ ││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │          ││ ││ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     │          ││ ││ ││││  0x00007fc8c8e46404: mov    0x24(%r10),%ebx    ;*aastore
                     │          ││ ││ ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │          ││ ││ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │          ││ ││ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                     │          ││ ││ ││││  0x00007fc8c8e46408: mov    %rax,0x90(%rsp)    ;*synchronization entry
                     │          ││ ││ ││││                                                ; - com.google.re2j.Machine::match@-1 (line 178)
  1.37%    1.26%     │          │↘ ││ ││││  0x00007fc8c8e46410: mov    0xc(%r12,%rbx,8),%ecx  ;*if_icmpgt
                     │          │  ││ ││││                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                     │          │  ││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                     │          │  ││ ││││                                                ; implicit exception: dispatches to 0x00007fc8c8e480bd
                     │          │  ││ ││││  0x00007fc8c8e46415: cmp    %ecx,%r8d
                     │          │  ││ ││││  0x00007fc8c8e46418: jge    0x00007fc8c8e46d31  ;*getfield re2
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@184 (line 216)
                     │          │  ││ ││││  0x00007fc8c8e4641e: mov    %r8d,%r10d
  0.00%              │          │  ││ ││││  0x00007fc8c8e46421: inc    %r10d
  1.36%    1.03%     │          │  ││ ││││  0x00007fc8c8e46424: mov    0x78(%rsp),%r11
                     │          │  ││ ││││  0x00007fc8c8e46429: mov    %r10d,0xc(%r11)
  0.02%              │          │  ││ ││││  0x00007fc8c8e4642d: cmp    %ecx,%r8d
                     │          │  ││ ││││  0x00007fc8c8e46430: jae    0x00007fc8c8e46c91  ;*getfield prefixRune
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
                     │          │  ││ ││││  0x00007fc8c8e46436: mov    0x48(%rsp),%r10d
  1.30%    0.75%     │          │  ││ ││││  0x00007fc8c8e4643b: mov    0xc(%r12,%r10,8),%r10d  ;*aload_1
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::step@21 (line 278)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
           0.00%     │          │  ││ ││││  0x00007fc8c8e46440: mov    0x90(%rsp),%r11
  0.00%              │          │  ││ ││││  0x00007fc8c8e46448: mov    %r11,%r9
                     │          │  ││ ││││  0x00007fc8c8e4644b: shr    $0x3,%r9
  1.31%    0.40%     │          │  ││ ││││  0x00007fc8c8e4644f: lea    (%r12,%rbx,8),%r11  ;*if_icmpne
                     │          │  ││ ││││                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                     │          │  ││ ││││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                     │          │  ││ ││││  0x00007fc8c8e46453: lea    0x10(%r11,%r8,4),%r11  ;*getfield matchcap
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@308 (line 239)
                     │          │  ││ ││││  0x00007fc8c8e46458: mov    %r9d,(%r11)        ;*if_icmplt
                     │          │  ││ ││││                                                ; - java.lang.String::charAt@10 (line 657)
                     │          │  ││ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │          │  ││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.01%              │          │  ││ ││││  0x00007fc8c8e4645b: shr    $0x9,%r11
  1.35%    0.19%     │          │  ││ ││││  0x00007fc8c8e4645f: movabs $0x7fc8c4601000,%r8
                     │          │  ││ ││││  0x00007fc8c8e46469: mov    %r12b,(%r8,%r11,1)  ;*invokeinterface charAt
                     │          │  ││ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                     │          │  ││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
                     │          │  ││ ││││  0x00007fc8c8e4646d: mov    %edi,%r8d
  0.00%    0.00%     │          │  ││ ││││  0x00007fc8c8e46470: mov    %r10d,%edi         ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [80]=Oop [120]=Oop off=1939}
                     │          │  ││ ││││                                                ;*goto
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                     │          │  ││ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  1.61%    0.34%     ↘          │  ││ ││││  0x00007fc8c8e46473: test   %eax,0x15f66b87(%rip)        # 0x00007fc8dedad000
                                │  ││ ││││                                                ;*getfield startInst
                                │  ││ ││││                                                ; - com.google.re2j.Machine::match@301 (line 239)
                                │  ││ ││││                                                ;   {poll}
                                │  ││ ││││  0x00007fc8c8e46479: mov    0x88(%rsp),%r11d
                                │  ││ ││││  0x00007fc8c8e46481: cmp    %r8d,%r11d
                                │  ╰│ ││││  0x00007fc8c8e46484: jge    0x00007fc8c8e45f23  ;*if_icmplt
                                │   │ ││││                                                ; - java.lang.String::charAt@10 (line 657)
                                │   │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                                │   │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                │   │ ││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.02%    0.01%                │   │ ││││  0x00007fc8c8e4648a: mov    %r11d,0x6c(%rsp)   ;*ifeq
                                │   │ ││││                                                ; - com.google.re2j.Machine::match@162 (line 212)
  1.18%    0.43%                ↘   │ ││││  0x00007fc8c8e4648f: mov    0x48(%rsp),%r11d
  0.20%    0.20%                    │ ││││  0x00007fc8c8e46494: mov    0x20(%r12,%r11,8),%r11d  ;*iload_0
                                    │ ││││                                                ; - java.lang.Character::isHighSurrogate@0 (line 4729)
                                    │ ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                                    │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.11%    0.08%                    │ ││││  0x00007fc8c8e46499: mov    0xc(%r12,%r11,8),%edx  ;*invokevirtual contains
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                                    │ ││││                                                ; implicit exception: dispatches to 0x00007fc8c8e4808d
  0.39%    0.30%                    │ ││││  0x00007fc8c8e4649e: mov    0x6c(%rsp),%r10d
  1.87%    1.02%                    │ ││││  0x00007fc8c8e464a3: cmp    %edx,%r10d
                                    │ ││││  0x00007fc8c8e464a6: jae    0x00007fc8c8e46b4c  ;*invokevirtual isEmpty
                                    │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.41%    0.42%                    │ ││││  0x00007fc8c8e464ac: lea    (%r12,%r11,8),%rax  ;*if_icmpne
                                    │ ││││                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                                    │ ││││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.05%    0.03%                    │ ││││  0x00007fc8c8e464b0: mov    0x10(%rax,%r10,4),%r11d  ;*invokevirtual isEmpty
                                    │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.22%    0.25%                    │ ││││  0x00007fc8c8e464b5: mov    %r11d,0x74(%rsp)
  1.27%    1.11%                    │ ││││  0x00007fc8c8e464ba: mov    0x10(%r12,%r11,8),%r10d  ;*if_icmplt
                                    │ ││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                    │ ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                                    │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
                                    │ ││││                                                ; implicit exception: dispatches to 0x00007fc8c8e4809d
  2.62%    2.90%                    │ ││││  0x00007fc8c8e464bf: mov    0x8(%r12,%r10,8),%r8d  ;*invokevirtual alloc
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                                    │ ││││                                                ; implicit exception: dispatches to 0x00007fc8c8e480ad
  7.07%    9.54%                    │ ││││  0x00007fc8c8e464c4: lea    (%r12,%r10,8),%r9
  0.01%    0.00%                    │ ││││  0x00007fc8c8e464c8: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                                    │ ││││  0x00007fc8c8e464cf: jne    0x00007fc8c8e46aae  ;*ifne
                                    │ ││││                                                ; - java.lang.String::isEmpty@5 (line 635)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  1.65%    2.04%                    │ ││││  0x00007fc8c8e464d5: mov    0xc(%r9),%r11d
  0.34%    0.44%                    │ ││││  0x00007fc8c8e464d9: cmp    $0x6,%r11d
                                    │ ││││  0x00007fc8c8e464dd: je     0x00007fc8c8e46ad1  ;*if_icmpgt
                                    │ ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  1.49%    1.42%                    │ ││││  0x00007fc8c8e464e3: xor    %r10d,%r10d        ;*aaload
                                    │ ││││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%                    │ ││││  0x00007fc8c8e464e6: mov    0x74(%rsp),%r8d
  0.18%    0.20%                    │ ││││  0x00007fc8c8e464eb: mov    0xc(%r12,%r8,8),%ecx  ;*ifeq
                                    │ ││││                                                ; - java.lang.Character::codePointAt@12 (line 4867)
                                    │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.04%    0.04%                    │ ││││  0x00007fc8c8e464f0: mov    0x78(%rsp),%r11
  1.40%    1.64%                    │ ││││  0x00007fc8c8e464f5: mov    0xc(%r11),%r8d     ;*invokestatic emptyOpContext
                                    │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%                    │ ││││  0x00007fc8c8e464f9: mov    0x24(%r11),%ebx    ;*arraylength
                                    │ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.08%    0.09%                    │ ││││  0x00007fc8c8e464fd: mov    0x6c(%rsp),%r11d
  0.02%    0.03%                    │ ││││  0x00007fc8c8e46502: inc    %r11d              ;*iload_1
                                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  1.23%    1.94%                    │ ││││  0x00007fc8c8e46505: mov    %r11d,0x88(%rsp)
           0.01%                    │ ││││  0x00007fc8c8e4650d: mov    0x74(%rsp),%esi
  0.09%    0.14%                    │ ││││  0x00007fc8c8e46511: lea    (%r12,%rsi,8),%r11  ;*invokespecial isMatch
                                    │ ││││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                                    │ ││││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.04%                    │ ││││  0x00007fc8c8e46515: mov    %r11,0x90(%rsp)
  1.46%    1.78%                    │ ││││  0x00007fc8c8e4651d: test   %r10d,%r10d
                                    │ ││││  0x00007fc8c8e46520: jne    0x00007fc8c8e469b8  ;*ifne
                                    │ ││││                                                ; - com.google.re2j.Machine::match@271 (line 233)
  0.00%    0.00%                    │ ││││  0x00007fc8c8e46526: mov    0x8(%r9),%r10d
  0.10%    0.17%                    │ ││││  0x00007fc8c8e4652a: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                                    │ ││││  0x00007fc8c8e46531: jne    0x00007fc8c8e46bdd  ;*if_icmpne
                                    │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@32 (line 182)
                                    │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.04%                    │ ││││  0x00007fc8c8e46537: mov    0xc(%r9),%r11d     ;*invokestatic emptyOpContext
                                    │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  1.53%    1.64%                    │ ││││  0x00007fc8c8e4653b: cmp    $0xa,%r11d
                                    ╰ ││││  0x00007fc8c8e4653f: je     0x00007fc8c8e46398  ;*ifeq
                                      ││││                                                ; - com.google.re2j.Machine::match@275 (line 233)
  0.02%    0.01%                      ││││  0x00007fc8c8e46545: cmp    $0xb,%r11d
                                      ││││  0x00007fc8c8e46549: je     0x00007fc8c8e46dd1  ;*ifne
                                      ││││                                                ; - java.lang.String::isEmpty@5 (line 635)
                                      ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.09%    0.07%                      ││││  0x00007fc8c8e4654f: mov    0x20(%r9),%r10d    ;*invokevirtual addThread
                                      ││││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                      ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.04%                      ││││  0x00007fc8c8e46553: cmp    $0x9,%r11d
                                     ╭││││  0x00007fc8c8e46557: jne    0x00007fc8c8e4656f  ;*ifne
                                     │││││                                                ; - com.google.re2j.Machine::match@279 (line 233)
  0.35%    0.31%                     │││││  0x00007fc8c8e46559: cmp    0x84(%rsp),%r10d
                                     │││││  0x00007fc8c8e46561: je     0x00007fc8c8e4696b  ;*arraylength
                                     │││││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                                     │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%                              │││││  0x00007fc8c8e46567: xor    %r11d,%r11d
  0.01%    0.02%                     │╰│││  0x00007fc8c8e4656a: jmpq   0x00007fc8c8e46393
  0.98%    1.08%                     ↘ │││  0x00007fc8c8e4656f: cmp    $0xc,%r11d
                                       │││  0x00007fc8c8e46573: jne    0x00007fc8c8e46e8d  ;*ireturn
                                       │││                                                ; - java.lang.String::isEmpty@13 (line 635)
                                       │││                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.02%    0.02%                       │││  0x00007fc8c8e46579: cmp    0x84(%rsp),%r10d
                                       ╰││  0x00007fc8c8e46581: je     0x00007fc8c8e45f10  ;*ifle
                                        ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                                        ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                        ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.23%    0.23%                        ││  0x00007fc8c8e46587: mov    0x24(%r9),%r11d    ;*putfield inst
                                        ││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                                        ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                        ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.01%                        ││  0x00007fc8c8e4658b: cmp    0x84(%rsp),%r11d
                                        ╰│  0x00007fc8c8e46593: je     0x00007fc8c8e45f10  ;*ifne
                                         │                                                ; - com.google.re2j.Machine::match@279 (line 233)
  1.09%    1.07%                         │  0x00007fc8c8e46599: mov    0x28(%r9),%r11d    ;*invokestatic emptyOpContext
                                         │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.06%                         │  0x00007fc8c8e4659d: cmp    0x84(%rsp),%r11d
                                         │  0x00007fc8c8e465a5: je     0x00007fc8c8e46f49  ;*ireturn
                                         │                                                ; - java.lang.String::isEmpty@13 (line 635)
                                         │                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.73%    0.81%                         │  0x00007fc8c8e465ab: mov    0x2c(%r9),%r11d
                                         │  0x00007fc8c8e465af: cmp    0x84(%rsp),%r11d
                                         ╰  0x00007fc8c8e465b7: jne    0x00007fc8c8e46390  ;*invokestatic isWordRune
                                                                                          ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                                          ; - com.google.re2j.Machine::match@121 (line 201)
                                            0x00007fc8c8e465bd: mov    $0xffffff65,%esi   ;*arraylength
                                                                                          ; - com.google.re2j.Machine::freeQueue@4 (line 156)
                                                                                          ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                                                                                          ; - com.google.re2j.Machine::step@172 (line 295)
....................................................................................................
 57.34%   57.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 546 (1079 bytes) 

                       # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                       # parm5:    [sp+0xa0]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                       0x00007fc8c8e19c00: mov    0x8(%rsi),%r10d
                       0x00007fc8c8e19c04: shl    $0x3,%r10
                       0x00007fc8c8e19c08: cmp    %r10,%rax
                       0x00007fc8c8e19c0b: jne    0x00007fc8c8c18e20  ;   {runtime_call}
                       0x00007fc8c8e19c11: data16 xchg %ax,%ax
                       0x00007fc8c8e19c14: nopl   0x0(%rax,%rax,1)
                       0x00007fc8c8e19c1c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.73%    0.70%       0x00007fc8c8e19c20: mov    %eax,-0x14000(%rsp)
  0.20%    0.30%       0x00007fc8c8e19c27: push   %rbp
  0.01%    0.02%       0x00007fc8c8e19c28: sub    $0x90,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.35%    0.32%       0x00007fc8c8e19c2f: vmovq  %rdi,%xmm2
  0.16%    0.20%       0x00007fc8c8e19c34: mov    %r9d,0x54(%rsp)
  0.01%    0.03%       0x00007fc8c8e19c39: mov    %r8,0x58(%rsp)
  0.15%    0.24%       0x00007fc8c8e19c3e: mov    %ecx,0x30(%rsp)
  0.16%    0.12%       0x00007fc8c8e19c42: mov    %rdx,0x60(%rsp)
  0.17%    0.22%       0x00007fc8c8e19c47: mov    %rsi,%rdx
  0.01%    0.00%       0x00007fc8c8e19c4a: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
  0.20%    0.25%       0x00007fc8c8e19c4d: mov    0x60(%rsp),%r10
  0.27%    0.25%       0x00007fc8c8e19c52: mov    0x10(%r10),%r10    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; implicit exception: dispatches to 0x00007fc8c8e1b79e
  0.61%    0.73%       0x00007fc8c8e19c56: cmp    $0x40,%ecx
                       0x00007fc8c8e19c59: jg     0x00007fc8c8e1a951  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                       0x00007fc8c8e19c5f: mov    $0x1,%edi
  0.18%    0.23%       0x00007fc8c8e19c64: shl    %cl,%rdi           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.33%    0.43%       0x00007fc8c8e19c67: mov    %r10,%r11
  0.17%    0.13%       0x00007fc8c8e19c6a: and    %rdi,%r11
  0.09%    0.07%       0x00007fc8c8e19c6d: test   %r11,%r11
                       0x00007fc8c8e19c70: jne    0x00007fc8c8e1a803  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.34%    0.32%       0x00007fc8c8e19c76: cmp    $0x40,%ecx
                       0x00007fc8c8e19c79: jge    0x00007fc8c8e1a981  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                       0x00007fc8c8e19c7f: mov    0x60(%rsp),%r11
  0.21%    0.14%       0x00007fc8c8e19c84: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                     ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.37%    0.36%       0x00007fc8c8e19c88: mov    0x1c(%rsi),%ebx    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
  0.18%    0.19%       0x00007fc8c8e19c8b: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                       0x00007fc8c8e19c8e: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.48%    0.63%       0x00007fc8c8e19c92: mov    0x8(%r12,%rbx,8),%r8d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; implicit exception: dispatches to 0x00007fc8c8e1b7b1
  0.11%    0.17%       0x00007fc8c8e19c97: mov    0xc(%r11),%r10d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.22%       0x00007fc8c8e19c9b: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.01%       0x00007fc8c8e19c9f: vmovd  %r11d,%xmm0
  0.30%    0.26%       0x00007fc8c8e19ca4: movslq %r10d,%rsi
  0.13%    0.14%       0x00007fc8c8e19ca7: mov    %r10d,%r9d
  0.08%    0.10%       0x00007fc8c8e19caa: inc    %r9d               ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.02%       0x00007fc8c8e19cad: shl    $0x2,%rsi          ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.19%       0x00007fc8c8e19cb1: lea    (%r12,%rbx,8),%r11
  0.14%    0.14%       0x00007fc8c8e19cb5: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ╭    0x00007fc8c8e19cbc: je     0x00007fc8c8e19ffb
  0.07%    0.10%  │    0x00007fc8c8e19cc2: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │    0x00007fc8c8e19cc9: jne    0x00007fc8c8e1a9b1  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.01%  │    0x00007fc8c8e19ccf: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.16%  │    0x00007fc8c8e19cd3: cmp    $0x40,%ecx
                  │    0x00007fc8c8e19cd6: jg     0x00007fc8c8e1acfd  ;*if_icmpgt
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.10%    0.14%  │    0x00007fc8c8e19cdc: mov    $0x1,%r8d
  0.14%    0.04%  │    0x00007fc8c8e19ce2: shl    %cl,%r8            ;*lshl
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.24%    0.26%  │    0x00007fc8c8e19ce5: mov    %rdi,%rbx
  0.12%    0.07%  │    0x00007fc8c8e19ce8: and    %r8,%rbx
  0.02%    0.03%  │    0x00007fc8c8e19ceb: test   %rbx,%rbx
                  │    0x00007fc8c8e19cee: jne    0x00007fc8c8e1a82d  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.12%    0.17%  │    0x00007fc8c8e19cf4: cmp    $0x40,%ecx
                  │    0x00007fc8c8e19cf7: jge    0x00007fc8c8e1ad49  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.12%  │    0x00007fc8c8e19cfd: mov    0x1c(%r11),%ebp    ;*getfield outInst
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.12%    0.10%  │    0x00007fc8c8e19d01: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.02%  │    0x00007fc8c8e19d04: mov    0x60(%rsp),%r8
  0.13%    0.14%  │    0x00007fc8c8e19d09: mov    %rdi,0x10(%r8)     ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.14%  │    0x00007fc8c8e19d0d: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007fc8c8e1b8b1
  0.08%    0.17%  │    0x00007fc8c8e19d12: lea    (%r12,%rbp,8),%rbx
  0.03%    0.03%  │    0x00007fc8c8e19d16: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │╭   0x00007fc8c8e19d1d: je     0x00007fc8c8e19d8e
  0.03%    0.05%  ││   0x00007fc8c8e19d1f: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  ││   0x00007fc8c8e19d26: jne    0x00007fc8c8e1ad95
  0.06%    0.08%  ││   0x00007fc8c8e19d2c: mov    %r11,0x68(%rsp)
  0.09%    0.11%  ││   0x00007fc8c8e19d31: mov    %rdx,0x8(%rsp)
  0.01%    0.02%  ││   0x00007fc8c8e19d36: mov    %rbx,%rsi
  0.06%    0.04%  ││   0x00007fc8c8e19d39: mov    0x60(%rsp),%rdx
  0.04%    0.08%  ││   0x00007fc8c8e19d3e: mov    0x30(%rsp),%ecx
  0.09%    0.09%  ││   0x00007fc8c8e19d42: mov    0x58(%rsp),%r8
  0.01%    0.01%  ││   0x00007fc8c8e19d47: mov    0x54(%rsp),%r9d
  0.03%    0.03%  ││   0x00007fc8c8e19d4c: mov    0xa0(%rsp),%r10
  0.09%    0.04%  ││   0x00007fc8c8e19d54: mov    %r10,(%rsp)
  0.09%    0.08%  ││   0x00007fc8c8e19d58: mov    %ecx,0x10(%rsp)
  0.01%    0.01%  ││   0x00007fc8c8e19d5c: mov    %r8,0x18(%rsp)
  0.05%    0.01%  ││   0x00007fc8c8e19d61: mov    %r9d,0x14(%rsp)
  0.06%    0.06%  ││   0x00007fc8c8e19d66: vmovq  %xmm2,%rdi
  0.03%    0.04%  ││   0x00007fc8c8e19d6b: callq  0x00007fc8c8c19020  ; OopMap{[160]=Oop [8]=Oop [24]=Oop [88]=Oop [96]=Oop [104]=Oop off=368}
                  ││                                                 ;*invokevirtual add
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                 ;   {optimized virtual_call}
  0.00%           ││   0x00007fc8c8e19d70: mov    0x60(%rsp),%r10
  0.06%    0.05%  ││   0x00007fc8c8e19d75: mov    0xc(%r10),%r8d     ;*getfield size
                  ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.16%  ││   0x00007fc8c8e19d79: mov    0x10(%r10),%rdi    ;*getfield pcsl
                  ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  ││                                                 ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%  ││   0x00007fc8c8e19d7d: mov    0x20(%r10),%r11d   ;*getfield denseThreads
                  ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.01%  ││   0x00007fc8c8e19d81: vmovd  %r11d,%xmm0
  0.05%    0.04%  ││   0x00007fc8c8e19d86: mov    %rax,%r11
  0.08%    0.08%  ││╭  0x00007fc8c8e19d89: jmpq   0x00007fc8c8e19ec4  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.07%  │↘│  0x00007fc8c8e19d8e: mov    0x18(%rbx),%ecx    ;*getfield pc
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.03%  │ │  0x00007fc8c8e19d91: cmp    $0x40,%ecx
                  │ │  0x00007fc8c8e19d94: jg     0x00007fc8c8e1afb5  ;*if_icmpgt
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.03%    0.02%  │ │  0x00007fc8c8e19d9a: mov    $0x1,%r8d
  0.02%    0.00%  │ │  0x00007fc8c8e19da0: shl    %cl,%r8            ;*lshl
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.10%  │ │  0x00007fc8c8e19da3: mov    %rdi,%rax
  0.01%           │ │  0x00007fc8c8e19da6: and    %r8,%rax           ;*land
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.07%  │ │  0x00007fc8c8e19da9: test   %rax,%rax
                  │ │  0x00007fc8c8e19dac: jne    0x00007fc8c8e1a84c  ;*ifeq
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.06%  │ │  0x00007fc8c8e19db2: vmovd  %ecx,%xmm1
  0.01%    0.01%  │ │  0x00007fc8c8e19db6: mov    %rbx,%rcx
  0.02%    0.00%  │ │  0x00007fc8c8e19db9: mov    %r11,0x68(%rsp)
  0.09%    0.04%  │ │  0x00007fc8c8e19dbe: mov    %r9d,%r14d
  0.04%    0.02%  │ │  0x00007fc8c8e19dc1: mov    %r10d,%ebx
  0.02%    0.01%  │ │  0x00007fc8c8e19dc4: mov    %rdx,0x8(%rsp)
  0.01%    0.01%  │ │  0x00007fc8c8e19dc9: xor    %ebp,%ebp          ;*ireturn
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.04%  │ │  0x00007fc8c8e19dcb: test   %rax,%rax
                  │ │  0x00007fc8c8e19dce: jne    0x00007fc8c8e1b005  ;*ifeq
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.02%  │ │  0x00007fc8c8e19dd4: vmovd  %xmm1,%r10d
  0.03%    0.00%  │ │  0x00007fc8c8e19dd9: cmp    $0x40,%r10d
                  │ │  0x00007fc8c8e19ddd: jge    0x00007fc8c8e1b03d  ;*if_icmpge
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  │ │  0x00007fc8c8e19de3: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.09%  │ │  0x00007fc8c8e19de6: mov    0x60(%rsp),%r10
  0.07%    0.04%  │ │  0x00007fc8c8e19deb: mov    %rdi,0x10(%r10)    ;*putfield pcsl
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.00%  │ │  0x00007fc8c8e19def: mov    %rcx,%r9
  0.00%    0.01%  │ │  0x00007fc8c8e19df2: mov    %rcx,%r11
  0.08%    0.11%  │ │  0x00007fc8c8e19df5: shr    $0x3,%r11          ;*putfield inst
                  │ │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.08%  │ │  0x00007fc8c8e19df9: vmovq  %xmm2,%r10
  0.03%    0.00%  │ │  0x00007fc8c8e19dfe: test   %r10,%r10
                  │ │  0x00007fc8c8e19e01: jne    0x00007fc8c8e1a7ad  ;*ifnonnull
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%  │ │  0x00007fc8c8e19e07: mov    0xa0(%rsp),%rcx
  0.10%    0.19%  │ │  0x00007fc8c8e19e0f: mov    0xc(%rcx),%r8d     ;*getfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007fc8c8e1b979
  0.07%    0.01%  │ │  0x00007fc8c8e19e13: test   %r8d,%r8d
                  │ │  0x00007fc8c8e19e16: jle    0x00007fc8c8e1b0e5  ;*ifle
                  │ │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.05%  │ │  0x00007fc8c8e19e1c: mov    %r8d,%eax
  0.01%    0.01%  │ │  0x00007fc8c8e19e1f: mov    0x24(%rcx),%r10d   ;*getfield pool
                  │ │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.07%  │ │  0x00007fc8c8e19e23: mov    %r8d,%ebp
  0.08%    0.01%  │ │  0x00007fc8c8e19e26: dec    %ebp               ;*isub
                  │ │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.02%  │ │  0x00007fc8c8e19e28: mov    %ebp,0xc(%rcx)     ;*putfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%  │ │  0x00007fc8c8e19e2b: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007fc8c8e1b98d
  0.08%    0.00%  │ │  0x00007fc8c8e19e30: cmp    %r8d,%ebp
                  │ │  0x00007fc8c8e19e33: jae    0x00007fc8c8e1acb9
  0.04%    0.01%  │ │  0x00007fc8c8e19e39: shl    $0x3,%r10
  0.01%    0.03%  │ │  0x00007fc8c8e19e3d: mov    0xc(%r10,%rax,4),%r8d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%           │ │  0x00007fc8c8e19e42: mov    %r11d,0x10(%r12,%r8,8)  ;*putfield inst
                  │ │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007fc8c8e1b99d
  0.13%    0.10%  │ │  0x00007fc8c8e19e47: lea    (%r12,%r8,8),%r10  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.04%  │ │  0x00007fc8c8e19e4b: vmovq  %r10,%xmm2
  0.01%    0.03%  │ │  0x00007fc8c8e19e50: shr    $0x9,%r10
           0.00%  │ │  0x00007fc8c8e19e54: movabs $0x7fc8c4601000,%r11
  0.09%    0.13%  │ │  0x00007fc8c8e19e5e: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.18%    0.24%  │ │  0x00007fc8c8e19e62: mov    0x58(%rsp),%r10
  0.01%    0.01%  │ │  0x00007fc8c8e19e67: mov    0xc(%r10),%ebp     ;*arraylength
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007fc8c8e1b94d
  0.01%    0.02%  │ │  0x00007fc8c8e19e6b: test   %ebp,%ebp
                  │ │  0x00007fc8c8e19e6d: jg     0x00007fc8c8e1b08d  ;*ifle
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.04%  │ │  0x00007fc8c8e19e73: mov    %r14d,%r8d
  0.13%    0.15%  │ │  0x00007fc8c8e19e76: mov    0x60(%rsp),%r10
  0.00%    0.01%  │ │  0x00007fc8c8e19e7b: mov    %r14d,0xc(%r10)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%           │ │  0x00007fc8c8e19e7f: vmovd  %xmm0,%r11d
  0.04%    0.08%  │ │  0x00007fc8c8e19e84: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fc8c8e1b95d
  0.13%    0.21%  │ │  0x00007fc8c8e19e89: cmp    %r9d,%ebx
                  │ │  0x00007fc8c8e19e8c: jae    0x00007fc8c8e1ac2d
  0.00%           │ │  0x00007fc8c8e19e92: vmovq  %xmm2,%r10
  0.00%    0.01%  │ │  0x00007fc8c8e19e97: mov    %r10,%r11
  0.03%    0.03%  │ │  0x00007fc8c8e19e9a: shr    $0x3,%r11          ;*aastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.14%    0.15%  │ │  0x00007fc8c8e19e9e: vmovd  %xmm0,%r10d
  0.01%    0.01%  │ │  0x00007fc8c8e19ea3: shl    $0x3,%r10          ;*getfield denseThreads
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │  0x00007fc8c8e19ea7: lea    0x10(%r10,%rsi,1),%r10
  0.03%    0.02%  │ │  0x00007fc8c8e19eac: mov    %r11d,(%r10)
  0.15%    0.21%  │ │  0x00007fc8c8e19eaf: shr    $0x9,%r10
  0.01%    0.00%  │ │  0x00007fc8c8e19eb3: movabs $0x7fc8c4601000,%r11
  0.00%    0.00%  │ │  0x00007fc8c8e19ebd: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.03%    0.04%  │ │  0x00007fc8c8e19ec1: xor    %r11d,%r11d        ;*getfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.10%  │ ↘  0x00007fc8c8e19ec4: mov    0x68(%rsp),%r10
  0.04%    0.06%  │    0x00007fc8c8e19ec9: mov    0x20(%r10),%r9d    ;*getfield argInst
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.05%  │    0x00007fc8c8e19ecd: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x00007fc8c8e1b8cd
  0.19%    0.23%  │    0x00007fc8c8e19ed2: lea    (%r12,%r9,8),%r10
  0.10%    0.18%  │    0x00007fc8c8e19ed6: cmp    $0xf8019992,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    0x00007fc8c8e19edc: jne    0x00007fc8c8e1a5e7  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.07%  │    0x00007fc8c8e19ee2: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.08%  │    0x00007fc8c8e19ee6: cmp    $0x40,%ecx
                  │    0x00007fc8c8e19ee9: jg     0x00007fc8c8e1ae1d  ;*if_icmpgt
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.14%    0.21%  │    0x00007fc8c8e19eef: mov    $0x1,%ebx
  0.11%    0.18%  │    0x00007fc8c8e19ef4: shl    %cl,%rbx           ;*lshl
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.22%    0.19%  │    0x00007fc8c8e19ef7: mov    %rbx,%r9
  0.15%    0.13%  │    0x00007fc8c8e19efa: and    %rdi,%r9           ;*land
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.08%  │    0x00007fc8c8e19efd: test   %r9,%r9
  0.11%    0.15%  │    0x00007fc8c8e19f00: jne    0x00007fc8c8e1a842  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.21%    0.29%  │    0x00007fc8c8e19f06: xor    %ebp,%ebp          ;*ireturn
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.10%    0.11%  │    0x00007fc8c8e19f08: test   %r9,%r9
                  │    0x00007fc8c8e19f0b: jne    0x00007fc8c8e1ae69  ;*ifeq
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.09%  │    0x00007fc8c8e19f11: cmp    $0x40,%ecx
                  │    0x00007fc8c8e19f14: jge    0x00007fc8c8e1aea1  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.04%  │    0x00007fc8c8e19f1a: mov    0x60(%rsp),%r9
  0.19%    0.21%  │    0x00007fc8c8e19f1f: mov    %r12b,0x18(%r9)    ;*putfield empty
                  │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.16%  │    0x00007fc8c8e19f23: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.03%    0.05%  │    0x00007fc8c8e19f26: mov    %rbx,0x10(%r9)     ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.03%  │    0x00007fc8c8e19f2a: mov    %r10,%rcx
  0.19%    0.19%  │    0x00007fc8c8e19f2d: shr    $0x3,%rcx          ;*putfield inst
                  │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.15%  │    0x00007fc8c8e19f31: test   %r11,%r11
                  │    0x00007fc8c8e19f34: jne    0x00007fc8c8e1a6e7  ;*ifnonnull
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.03%    0.08%  │    0x00007fc8c8e19f3a: mov    0xa0(%rsp),%r9
  0.04%    0.07%  │    0x00007fc8c8e19f42: mov    0xc(%r9),%edx      ;*getfield poolSize
                  │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007fc8c8e1b915
  0.14%    0.22%  │    0x00007fc8c8e19f46: test   %edx,%edx
                  │    0x00007fc8c8e19f48: jle    0x00007fc8c8e1af51  ;*ifle
                  │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.15%  │    0x00007fc8c8e19f4e: mov    0x24(%r9),%r11d    ;*getfield pool
                  │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.06%  │    0x00007fc8c8e19f52: mov    %edx,%ebp
  0.04%    0.05%  │    0x00007fc8c8e19f54: dec    %ebp               ;*isub
                  │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.20%  │    0x00007fc8c8e19f56: mov    %ebp,0xc(%r9)      ;*putfield poolSize
                  │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.10%  │    0x00007fc8c8e19f5a: mov    0xc(%r12,%r11,8),%esi  ; implicit exception: dispatches to 0x00007fc8c8e1b929
  0.05%    0.05%  │    0x00007fc8c8e19f5f: cmp    %esi,%ebp
                  │    0x00007fc8c8e19f61: jae    0x00007fc8c8e1aad1
  0.03%    0.06%  │    0x00007fc8c8e19f67: shl    $0x3,%r11
  0.15%    0.20%  │    0x00007fc8c8e19f6b: mov    0xc(%r11,%rdx,4),%r11d  ;*aaload
                  │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.19%  │    0x00007fc8c8e19f70: mov    %ecx,0x10(%r12,%r11,8)  ;*putfield inst
                  │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007fc8c8e1b939
  1.21%    1.50%  │    0x00007fc8c8e19f75: shl    $0x3,%r11          ;*aaload
                  │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%  │    0x00007fc8c8e19f79: mov    %r11,%r10
  0.01%    0.03%  │    0x00007fc8c8e19f7c: shr    $0x9,%r10
  0.02%    0.00%  │    0x00007fc8c8e19f80: movabs $0x7fc8c4601000,%rcx
  0.36%    0.33%  │    0x00007fc8c8e19f8a: mov    %r12b,(%rcx,%r10,1)  ;*aload_3
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.48%    0.58%  │    0x00007fc8c8e19f8e: mov    0x58(%rsp),%r10
  0.02%    0.01%  │    0x00007fc8c8e19f93: mov    0xc(%r10),%ebp     ;*arraylength
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007fc8c8e1b8e9
  0.01%    0.01%  │    0x00007fc8c8e19f97: test   %ebp,%ebp
                  │    0x00007fc8c8e19f99: jg     0x00007fc8c8e1aeed  ;*ifle
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.07%  │    0x00007fc8c8e19f9f: mov    %r8d,%r10d
  0.24%    0.32%  │    0x00007fc8c8e19fa2: inc    %r10d              ;*iadd
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%  │    0x00007fc8c8e19fa5: mov    0x60(%rsp),%rcx
  0.02%           │    0x00007fc8c8e19faa: mov    %r10d,0xc(%rcx)    ;*putfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.08%  │    0x00007fc8c8e19fae: vmovd  %xmm0,%ecx
  0.29%    0.33%  │    0x00007fc8c8e19fb2: mov    0xc(%r12,%rcx,8),%edi  ; implicit exception: dispatches to 0x00007fc8c8e1b8f9
  0.01%    0.04%  │    0x00007fc8c8e19fb7: cmp    %edi,%r8d
                  │    0x00007fc8c8e19fba: jae    0x00007fc8c8e1aa81
           0.03%  │    0x00007fc8c8e19fc0: mov    %r11,%rcx
  0.07%    0.06%  │    0x00007fc8c8e19fc3: shr    $0x3,%rcx          ;*aastore
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.23%    0.30%  │    0x00007fc8c8e19fc7: vmovd  %xmm0,%edi
  0.02%    0.02%  │    0x00007fc8c8e19fcb: lea    (%r12,%rdi,8),%r11  ;*getfield denseThreads
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%  │    0x00007fc8c8e19fcf: lea    0x10(%r11,%r8,4),%r11
  0.04%    0.06%  │    0x00007fc8c8e19fd4: mov    %ecx,(%r11)
  0.23%    0.38%  │    0x00007fc8c8e19fd7: shr    $0x9,%r11
  0.01%    0.02%  │    0x00007fc8c8e19fdb: movabs $0x7fc8c4601000,%r8
  0.00%    0.02%  │    0x00007fc8c8e19fe5: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.08%  │    0x00007fc8c8e19fe9: xor    %eax,%eax
  0.28%    0.27%  │    0x00007fc8c8e19feb: mov    0x8(%rsp),%rdx     ;*getfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.02%    0.02%  │    0x00007fc8c8e19ff0: mov    %rbx,%rdi
           0.00%  │    0x00007fc8c8e19ff3: mov    %r10d,%ebx
  0.07%    0.09%  │    0x00007fc8c8e19ff6: jmpq   0x00007fc8c8e1a128  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%           ↘    0x00007fc8c8e19ffb: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e19fff: cmp    $0x40,%ecx
                       0x00007fc8c8e1a002: jg     0x00007fc8c8e1ab1d  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.19%    0.02%       0x00007fc8c8e1a008: mov    $0x1,%r8d
                       0x00007fc8c8e1a00e: shl    %cl,%r8            ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.00%       0x00007fc8c8e1a011: mov    %rdi,%rbx
                       0x00007fc8c8e1a014: and    %r8,%rbx           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a017: test   %rbx,%rbx
                       0x00007fc8c8e1a01a: jne    0x00007fc8c8e1a818  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%                0x00007fc8c8e1a020: mov    %ecx,%eax
  0.11%    0.01%       0x00007fc8c8e1a022: mov    %r11,%rcx
                       0x00007fc8c8e1a025: mov    %r9d,%r14d
  0.00%                0x00007fc8c8e1a028: mov    %r10d,%r13d
                       0x00007fc8c8e1a02b: xor    %ebp,%ebp          ;*ireturn
                                                                     ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.04%       0x00007fc8c8e1a02d: test   %rbx,%rbx
                       0x00007fc8c8e1a030: jne    0x00007fc8c8e1ab69  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a036: cmp    $0x40,%eax
                       0x00007fc8c8e1a039: jge    0x00007fc8c8e1aba9  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a03f: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a042: mov    0x60(%rsp),%r10
  0.17%                0x00007fc8c8e1a047: mov    %rdi,0x10(%r10)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%                0x00007fc8c8e1a04b: mov    %rcx,%r11
                       0x00007fc8c8e1a04e: shr    $0x3,%rcx          ;*putfield inst
                                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a052: vmovq  %xmm2,%r10
  0.12%                0x00007fc8c8e1a057: test   %r10,%r10
                       0x00007fc8c8e1a05a: jne    0x00007fc8c8e1a6cc  ;*ifnonnull
                                                                     ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007fc8c8e1a060: mov    0xa0(%rsp),%r9
                       0x00007fc8c8e1a068: mov    0xc(%r9),%r10d     ;*getfield poolSize
                                                                     ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                     ; implicit exception: dispatches to 0x00007fc8c8e1b879
                       0x00007fc8c8e1a06c: test   %r10d,%r10d
....................................................................................................
 20.54%   22.14%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.34%   57.07%         C2, level 4  com.google.re2j.Machine::match, version 589 (1762 bytes) 
 20.54%   22.14%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 546 (1079 bytes) 
  9.03%    9.21%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 546 (604 bytes) 
  5.66%    7.08%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 546 (561 bytes) 
  1.14%    0.13%         C1, level 3  jdk.internal.org.objectweb.asm.Item::&lt;init&gt;, version 76 (14 bytes) 
  0.96%    0.12%         C2, level 4  com.google.re2j.Machine::init, version 590 (299 bytes) 
  0.79%    0.78%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.69%    0.87%         C2, level 4  com.google.re2j.Machine::match, version 589 (61 bytes) 
  0.52%    0.35%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 540 (100 bytes) 
  0.33%    0.12%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 540 (78 bytes) 
  0.20%    0.00%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 546 (4 bytes) 
  0.14%    0.03%         C2, level 4  com.google.re2j.Machine::init, version 590 (40 bytes) 
  0.12%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 590 (79 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 600 (33 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 600 (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 600 (30 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 600 (5 bytes) 
  2.13%    1.88%  <...other 452 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.25%   58.09%         C2, level 4  com.google.re2j.Machine::match, version 589 
 35.44%   38.43%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 546 
  1.60%    1.40%   [kernel.kallsyms]  [unknown] 
  1.27%    0.19%         C2, level 4  com.google.re2j.Machine::init, version 590 
  1.14%    0.13%         C1, level 3  jdk.internal.org.objectweb.asm.Item::&lt;init&gt;, version 76 
  0.85%    0.47%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 540 
  0.38%    0.18%         C2, level 4  com.google.re2j.RE2::match, version 600 
  0.08%    0.05%         C2, level 4  com.google.re2j.MachineInput$UTF16Input::indexOf, version 609 
  0.07%    0.02%         C2, level 4  java.util.Collections::shuffle, version 625 
  0.07%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.06%    0.02%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.04%    0.04%        libc-2.26.so  _IO_fwrite 
  0.04%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 676 
  0.02%    0.07%           libjvm.so  RelocIterator::initialize 
  0.02%    0.00%           libjvm.so  os::PlatformEvent::park 
  0.02%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.00%              [vdso]  [unknown] 
  0.02%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.53%    0.36%  <...other 82 warm methods...>
....................................................................................................
100.00%   99.67%  <totals>

....[Distribution by Source]........................................................................
 96.37%   97.44%         C2, level 4
  1.60%    1.40%   [kernel.kallsyms]
  1.15%    0.13%         C1, level 3
  0.54%    0.61%           libjvm.so
  0.14%    0.26%        libc-2.26.so
  0.07%    0.03%      hsdis-amd64.so
  0.06%    0.07%  libpthread-2.26.so
  0.04%    0.01%         interpreter
  0.02%    0.01%              [vdso]
  0.01%    0.02%        runtime stub
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  6273.626 ± 43.902  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
