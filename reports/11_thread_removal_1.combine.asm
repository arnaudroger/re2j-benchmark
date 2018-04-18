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
# Warmup Iteration   1: 3375.326 ops/s
# Warmup Iteration   2: 7685.895 ops/s
# Warmup Iteration   3: 7691.250 ops/s
# Warmup Iteration   4: 7689.787 ops/s
# Warmup Iteration   5: 7689.118 ops/s
# Warmup Iteration   6: 7687.830 ops/s
# Warmup Iteration   7: 7687.864 ops/s
# Warmup Iteration   8: 7688.061 ops/s
# Warmup Iteration   9: 7670.433 ops/s
# Warmup Iteration  10: 7636.294 ops/s
# Warmup Iteration  11: 7448.547 ops/s
# Warmup Iteration  12: 7697.951 ops/s
# Warmup Iteration  13: 7702.393 ops/s
# Warmup Iteration  14: 7708.629 ops/s
# Warmup Iteration  15: 7707.099 ops/s
# Warmup Iteration  16: 7793.541 ops/s
# Warmup Iteration  17: 7793.258 ops/s
# Warmup Iteration  18: 7794.925 ops/s
# Warmup Iteration  19: 7793.366 ops/s
# Warmup Iteration  20: 7795.755 ops/s
Iteration   1: 7791.527 ops/s
Iteration   2: 7775.280 ops/s
Iteration   3: 7763.484 ops/s
Iteration   4: 7764.095 ops/s
Iteration   5: 7765.086 ops/s
Iteration   6: 7758.132 ops/s
Iteration   7: 7763.942 ops/s
Iteration   8: 7763.002 ops/s
Iteration   9: 7761.790 ops/s
Iteration  10: 7762.754 ops/s
Iteration  11: 7764.179 ops/s
Iteration  12: 7762.481 ops/s
Iteration  13: 7762.296 ops/s
Iteration  14: 7760.865 ops/s
Iteration  15: 7795.127 ops/s
Iteration  16: 7793.164 ops/s
Iteration  17: 7794.897 ops/s
Iteration  18: 7790.753 ops/s
Iteration  19: 7790.197 ops/s
Iteration  20: 7784.837 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  7773.394 ±(99.9%) 12.262 ops/s [Average]
  (min, avg, max) = (7758.132, 7773.394, 7795.127), stdev = 14.121
  CI (99.9%): [7761.133, 7785.656] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 198055 total address lines.
Perf output processed (skipped 23.344 seconds):
 Column 1: cycles (20307 events)
 Column 2: instructions (20364 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 550 (1024 bytes) 

                                                                               ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@322 (line 245)
                                 0x00007f748d2463ab: vmovd  %xmm4,%r11d
                                 0x00007f748d2463b0: lea    (%r12,%r11,8),%rbx
                                 0x00007f748d2463b4: vmovd  %xmm2,%r11d
                                 0x00007f748d2463b9: lea    (%r12,%r11,8),%rdx  ;*aaload
                                                                               ; - com.google.re2j.Machine::step@83 (line 294)
                                                                               ; - com.google.re2j.Machine::match@355 (line 246)
                                 0x00007f748d2463bd: mov    $0x80000000,%r8d
  0.00%                          0x00007f748d2463c3: cmp    %esi,%edi
                                 0x00007f748d2463c5: cmovl  %r8d,%esi          ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                               ; - com.google.re2j.Machine::match@322 (line 245)
           0.00%                 0x00007f748d2463c9: mov    0x3c(%rsp),%r8d
                                 0x00007f748d2463ce: jmpq   0x00007f748d246b00  ;*ireturn
                                                                               ; - java.lang.Character::charCount@11 (line 4818)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                                                                               ; - com.google.re2j.Machine::match@96 (line 199)
  0.12%    0.17%                 0x00007f748d2463d3: test   %eax,%eax
                                 0x00007f748d2463d5: jne    0x00007f748d247225  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 212)
  0.15%    0.21%                 0x00007f748d2463db: test   %r10d,%r10d
                                 0x00007f748d2463de: je     0x00007f748d246a3a  ;*iinc
                                                                               ; - java.lang.String::indexOf@69 (line 1772)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.18%                 0x00007f748d2463e4: mov    0x64(%rsp),%r8d
  0.14%    0.21%                 0x00007f748d2463e9: test   %r8d,%r8d
                                 0x00007f748d2463ec: jne    0x00007f748d247271  ;*getfield value
                                                                               ; - java.lang.String::indexOf@11 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.12%                 0x00007f748d2463f2: vmovd  %xmm1,%r11d
  0.15%    0.17%                 0x00007f748d2463f7: test   %r11d,%r11d
                                 0x00007f748d2463fa: jne    0x00007f748d247399  ;*ifeq
                                                                               ; - com.google.re2j.Machine::match@148 (line 212)
  0.14%    0.18%                 0x00007f748d246400: vmovq  %xmm0,%rdi
  0.14%    0.13%                 0x00007f748d246405: mov    0x18(%rdi),%r11d   ;*getfield value
                                                                               ; - java.lang.String::charAt@6 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.13%    0.15%                 0x00007f748d246409: mov    0x1c(%r12,%r11,8),%ebp  ;*arraylength
                                                                               ; - java.lang.String::indexOf@19 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
                                                                               ; implicit exception: dispatches to 0x00007f748d2483ad
  0.09%    0.32%                 0x00007f748d24640e: mov    0x8(%r12,%rbp,8),%ecx  ;*getfield value
                                                                               ; - java.lang.String::charAt@6 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
                                                                               ; implicit exception: dispatches to 0x00007f748d2483bd
  0.35%    0.40%                 0x00007f748d246413: lea    (%r12,%rbp,8),%rbx
  0.07%    0.09%                 0x00007f748d246417: cmp    $0xf8019a53,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                  ╭              0x00007f748d24641d: je     0x00007f748d2464ef  ;*getfield prefix
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.09%    0.17%  │              0x00007f748d246423: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │              0x00007f748d246429: jne    0x00007f748d24747d  ;*ifeq
                  │                                                            ; - com.google.re2j.Machine::match@148 (line 212)
  0.09%    0.13%  │              0x00007f748d24642f: mov    0x18(%rbx),%ecx    ;*ifne
                  │                                                            ; - com.google.re2j.Machine::match@115 (line 204)
           0.00%  │              0x00007f748d246432: cmp    $0x40,%ecx
                  │              0x00007f748d246435: jg     0x00007f748d247651  ;*ifeq
                  │                                                            ; - com.google.re2j.Machine::match@148 (line 212)
  0.05%    0.09%  │              0x00007f748d24643b: mov    $0x1,%r11d
  0.10%    0.12%  │              0x00007f748d246441: shl    %cl,%r11
  0.24%    0.33%  │              0x00007f748d246444: mov    0x48(%rsp),%r9d
  0.05%    0.09%  │              0x00007f748d246449: mov    0x10(%r12,%r9,8),%rdx  ;*if_icmpgt
                  │                                                            ; - java.lang.String::indexOf@95 (line 1776)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.09%    0.12%  │              0x00007f748d24644e: mov    %r11,%rsi
  0.01%           │              0x00007f748d246451: and    %rdx,%rsi          ;*ifge
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.16%  │              0x00007f748d246454: test   %rsi,%rsi
                  │              0x00007f748d246457: jne    0x00007f748d246cb8  ;*if_icmpgt
                  │                                                            ; - java.lang.String::indexOf@95 (line 1776)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.02%    0.09%  │              0x00007f748d24645d: mov    %r10d,0x18(%rsp)
  0.07%    0.08%  │              0x00007f748d246462: mov    %r8d,0x64(%rsp)
  0.00%           │              0x00007f748d246467: vmovsd %xmm0,0x50(%rsp)
  0.12%    0.11%  │              0x00007f748d24646d: xor    %ebp,%ebp          ;*ifne
                  │                                                            ; - com.google.re2j.Machine::match@115 (line 204)
  0.10%    0.04%  │              0x00007f748d24646f: test   %rsi,%rsi
                  │              0x00007f748d246472: jne    0x00007f748d2476c5  ;*getfield matched
                  │                                                            ; - com.google.re2j.Machine::match@159 (line 216)
  0.09%    0.13%  │              0x00007f748d246478: cmp    $0x40,%ecx
                  │              0x00007f748d24647b: jge    0x00007f748d24772d
                  │              0x00007f748d246481: mov    0x48(%rsp),%r10d
  0.11%    0.15%  │              0x00007f748d246486: mov    %r12b,0x18(%r12,%r10,8)  ;*ifeq
                  │                                                            ; - com.google.re2j.Machine::match@162 (line 216)
  0.06%    0.11%  │              0x00007f748d24648b: mov    0xc(%r12,%r10,8),%r9d  ;*invokestatic emptyOpContext
                  │                                                            ; - com.google.re2j.Machine::match@121 (line 205)
  0.11%    0.11%  │              0x00007f748d246490: mov    0x20(%r12,%r10,8),%ebp  ;*invokestatic indexOf
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
                  │              0x00007f748d246495: or     %rdx,%r11
  0.08%    0.15%  │              0x00007f748d246498: mov    %r11,0x10(%r12,%r10,8)  ;*ifeq
                  │                                                            ; - com.google.re2j.Machine::match@162 (line 216)
  0.05%    0.10%  │              0x00007f748d24649d: mov    %r9d,%r8d
  0.09%    0.07%  │              0x00007f748d2464a0: inc    %r8d
  0.01%    0.00%  │              0x00007f748d2464a3: mov    %r8d,0xc(%r12,%r10,8)
  0.10%    0.14%  │              0x00007f748d2464a8: mov    0xc(%r12,%rbp,8),%r8d  ;*ifge
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@22 (line 205)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
                  │                                                            ; implicit exception: dispatches to 0x00007f748d248415
  0.11%    0.05%  │              0x00007f748d2464ad: cmp    %r8d,%r9d
                  │              0x00007f748d2464b0: jae    0x00007f748d247345
  0.11%    0.17%  │              0x00007f748d2464b6: mov    0x8(%r12,%rbp,8),%r8d
  0.02%    0.02%  │              0x00007f748d2464bb: cmp    $0xf8019808,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │              0x00007f748d2464c2: jne    0x00007f748d2474e5  ;*ifeq
                  │                                                            ; - com.google.re2j.Machine::match@162 (line 216)
  0.07%    0.09%  │              0x00007f748d2464c8: mov    %rbx,%r8
  0.05%    0.08%  │              0x00007f748d2464cb: shr    $0x3,%r8           ;*aload_0
                  │                                                            ; - java.lang.String::indexOf@79 (line 1772)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.11%  │              0x00007f748d2464cf: lea    (%r12,%rbp,8),%r11  ;*aaload
                  │                                                            ; - com.google.re2j.Machine::step@83 (line 294)
                  │                                                            ; - com.google.re2j.Machine::match@355 (line 246)
           0.00%  │              0x00007f748d2464d3: lea    0x10(%r11,%r9,4),%r11  ;*aload_0
                  │                                                            ; - java.lang.String::indexOf@79 (line 1772)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.10%  │              0x00007f748d2464d8: mov    %r8d,(%r11)
  0.51%    0.52%  │              0x00007f748d2464db: shr    $0x9,%r11
  0.04%    0.08%  │              0x00007f748d2464df: movabs $0x7f749d8ff000,%r8
  0.00%           │              0x00007f748d2464e9: mov    %r12b,(%r8,%r11,1)  ;*instanceof
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 224)
  0.25%    0.31%  │╭             0x00007f748d2464ed: jmp    0x00007f748d246529
  0.13%    0.14%  ↘│             0x00007f748d2464ef: mov    %r10d,0x18(%rsp)
  0.02%    0.01%   │             0x00007f748d2464f4: mov    %r8d,0x64(%rsp)
  0.09%    0.08%   │             0x00007f748d2464f9: vmovsd %xmm0,0x50(%rsp)   ;*ireturn
                   │                                                           ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 205)
  0.05%    0.13%   │             0x00007f748d2464ff: mov    %r14,%r8
  0.15%    0.13%   │             0x00007f748d246502: shl    $0x3,%r8           ;*iload_2
                   │                                                           ; - com.google.re2j.Machine::match@114 (line 204)
  0.01%    0.04%   │             0x00007f748d246506: mov    %rbx,%rsi
  0.08%    0.07%   │             0x00007f748d246509: mov    0x8(%rsp),%rdx
  0.07%    0.03%   │             0x00007f748d24650e: mov    %r10d,%ecx
  0.14%    0.11%   │             0x00007f748d246511: xor    %edi,%edi
  0.01%    0.03%   │             0x00007f748d246513: vmovq  %xmm0,%r10
  0.09%    0.04%   │             0x00007f748d246518: mov    %r10,(%rsp)
  0.09%    0.05%   │             0x00007f748d24651c: data16 xchg %ax,%ax
  0.12%    0.12%   │             0x00007f748d24651f: callq  0x00007f748d046020  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [80]=Oop [88]=Oop off=1604}
                   │                                                           ;*invokevirtual add
                   │                                                           ; - com.google.re2j.Machine::match@314 (line 243)
                   │                                                           ;   {optimized virtual_call}
  0.00%    0.05%   │             0x00007f748d246524: mov    0x48(%rsp),%r10d   ;*arraylength
                   │                                                           ; - java.lang.String::charAt@9 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@96 (line 199)
  0.21%    0.20%   ↘             0x00007f748d246529: mov    0x3c(%rsp),%r11d
  0.11%    0.15%                 0x00007f748d24652e: test   %r11d,%r11d
                                 0x00007f748d246531: jl     0x00007f748d24611f  ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.05%    0.02%                 0x00007f748d246537: xor    %ecx,%ecx          ;*if_icmpge
                                                                               ; - java.lang.String::indexOf@123 (line 1779)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.21%    0.29%                 0x00007f748d246539: cmp    $0xa,%r11d
                                 0x00007f748d24653d: je     0x00007f748d246a2a  ;*if_icmplt
                                                                               ; - java.lang.String::indexOf@3 (line 1756)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.13%    0.15%                 0x00007f748d246543: mov    0x44(%rsp),%r9d
  0.12%    0.11%                 0x00007f748d246548: test   %r9d,%r9d
                                 0x00007f748d24654b: jl     0x00007f748d24688e  ;*getfield prefix
                                                                               ; - com.google.re2j.Machine::match@172 (line 220)
  0.04%    0.05%                 0x00007f748d246551: cmp    $0xa,%r9d
                                 0x00007f748d246555: je     0x00007f748d246a32  ;*ifge
                                                                               ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
  0.26%    0.29%                 0x00007f748d24655b: mov    0x3c(%rsp),%r8d
  0.14%    0.12%                 0x00007f748d246560: add    $0xffffffbf,%r8d
  0.11%    0.16%                 0x00007f748d246564: cmp    $0x1a,%r8d
                    ╭            0x00007f748d246568: jb     0x00007f748d24657a
  0.05%    0.06%    │            0x00007f748d24656a: mov    0x3c(%rsp),%ebx
  0.29%    0.27%    │            0x00007f748d24656e: add    $0xffffff9f,%ebx
  0.12%    0.13%    │            0x00007f748d246571: cmp    $0x1a,%ebx
                    │            0x00007f748d246574: jae    0x00007f748d246c28  ;*ifne
                    │                                                          ; - java.lang.String::indexOf@8 (line 1757)
                    │                                                          ; - java.lang.String::indexOf@21 (line 1718)
                    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │                                                          ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │                                                          ; - com.google.re2j.Machine::match@206 (line 224)
  0.10%    0.14%    ↘            0x00007f748d24657a: mov    $0x1,%ebp          ;*arraylength
                                                                               ; - java.lang.String::indexOf@9 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.10%                 0x00007f748d24657f: mov    0x44(%rsp),%r8d
  0.21%    0.32%                 0x00007f748d246584: add    $0xffffffbf,%r8d
  0.12%    0.15%                 0x00007f748d246588: cmp    $0x1a,%r8d
                     ╭           0x00007f748d24658c: jb     0x00007f748d24659e  ;*if_icmplt
                     │                                                         ; - java.lang.Character::charCount@3 (line 4818)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                     │                                                         ; - com.google.re2j.Machine::match@226 (line 229)
  0.12%    0.12%     │           0x00007f748d24658e: mov    0x44(%rsp),%ebx
  0.07%    0.10%     │           0x00007f748d246592: add    $0xffffff9f,%ebx
  0.23%    0.28%     │           0x00007f748d246595: cmp    $0x1a,%ebx
                     │           0x00007f748d246598: jae    0x00007f748d246c4c  ;*invokeinterface charAt
                     │                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                     │                                                         ; - com.google.re2j.Machine::match@226 (line 229)
  0.19%    0.18%     ↘           0x00007f748d24659e: mov    $0x1,%r8d          ;*caload
                                                                               ; - java.lang.String::charAt@27 (line 660)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.17%    0.27%                 0x00007f748d2465a4: cmp    %r8d,%ebp
                      ╭          0x00007f748d2465a7: je     0x00007f748d2465b2  ;*aload_0
                      │                                                        ; - java.lang.String::indexOf@79 (line 1772)
                      │                                                        ; - java.lang.String::indexOf@21 (line 1718)
                      │                                                        ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │                                                        ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │                                                        ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.10%      │          0x00007f748d2465a9: or     $0x10,%ecx
  0.03%    0.04%      │          0x00007f748d2465ac: mov    %ecx,0x78(%rsp)
  0.08%    0.13%      │╭         0x00007f748d2465b0: jmp    0x00007f748d2465b9
  0.12%    0.09%      ↘│         0x00007f748d2465b2: or     $0x20,%ecx
  0.22%    0.17%       │         0x00007f748d2465b5: mov    %ecx,0x78(%rsp)    ;*invokeinterface charAt
                       │                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                       │                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                       │                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.21%    0.27%       ↘         0x00007f748d2465b9: mov    0x30(%rsp),%rdi
  0.13%    0.21%                 0x00007f748d2465be: mov    0x10(%rdi),%ecx    ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.39%    0.33%                 0x00007f748d2465c1: mov    0x18(%rsp),%esi
  0.16%    0.15%                 0x00007f748d2465c5: cmp    %ecx,%esi
                                 0x00007f748d2465c7: je     0x00007f748d2468a1  ;*aload_0
                                                                               ; - java.lang.String::indexOf@126 (line 1779)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.32%    0.18%                 0x00007f748d2465cd: xor    %eax,%eax          ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
  0.18%    0.16%                 0x00007f748d2465cf: mov    0x50(%rsp),%r8
  0.05%    0.02%                 0x00007f748d2465d4: mov    0x14(%r8),%ebx     ;*invokevirtual step
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.15%    0.22%                 0x00007f748d2465d8: movzbl 0x18(%r12,%rbx,8),%edx  ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
                                                                               ; implicit exception: dispatches to 0x00007f748d2483e1
  0.58%    0.29%                 0x00007f748d2465de: mov    %edx,0x6c(%rsp)
  0.29%    0.17%                 0x00007f748d2465e2: mov    %eax,0x68(%rsp)
  0.04%    0.06%                 0x00007f748d2465e6: mov    %rax,-0x8(%rsp)
  0.18%    0.17%                 0x00007f748d2465eb: mov    0x18(%rsp),%eax
  0.08%    0.08%                 0x00007f748d2465ef: mov    %eax,0x60(%rsp)
  0.26%    0.23%                 0x00007f748d2465f3: mov    -0x8(%rsp),%rax
  0.13%    0.11%                 0x00007f748d2465f8: mov    %rax,-0x8(%rsp)
  0.20%    0.09%                 0x00007f748d2465fd: mov    0x44(%rsp),%eax
  0.05%    0.10%                 0x00007f748d246601: mov    %eax,0x34(%rsp)
  0.20%    0.23%                 0x00007f748d246605: mov    -0x8(%rsp),%rax
  0.53%    0.30%                 0x00007f748d24660a: mov    %rax,-0x8(%rsp)
  0.30%    0.31%                 0x00007f748d24660f: mov    0x3c(%rsp),%eax
  0.06%    0.05%                 0x00007f748d246613: mov    %eax,0x84(%rsp)
  0.10%    0.08%                 0x00007f748d24661a: mov    -0x8(%rsp),%rax
  1.08%    1.31%                 0x00007f748d24661f: mov    %rdi,0x10(%rsp)
  0.09%    0.05%                 0x00007f748d246624: mov    %r10d,0x1c(%rsp)
  0.04%    0.02%                 0x00007f748d246629: mov    0xc(%r12,%r10,8),%r10d  ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 229)
  0.03%    0.05%                 0x00007f748d24662e: mov    0x18(%rsp),%r9d
  0.33%    0.28%                 0x00007f748d246633: add    0x38(%rsp),%r9d    ;*if_icmplt
                                                                               ; - java.lang.String::charAt@10 (line 657)
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 199)
  0.04%    0.04%                 0x00007f748d246638: mov    %r9d,0x70(%rsp)
  0.03%    0.04%                 0x00007f748d24663d: test   %r10d,%r10d
  0.05%    0.03%                 0x00007f748d246640: jle    0x00007f748d246881  ;*instanceof
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 224)
  0.37%    0.30%                 0x00007f748d246646: xor    %r9d,%r9d
  0.07%    0.06%        ╭        0x00007f748d246649: jmpq   0x00007f748d2466ee
                        │        0x00007f748d24664e: xchg   %ax,%ax
  1.09%    1.30%        │     ↗  0x00007f748d246650: xor    %r10d,%r10d        ;*caload
                        │     │                                                ; - java.lang.String::charAt@27 (line 660)
                        │     │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                        │     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │     │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.24%    0.28%        │    ↗│  0x00007f748d246653: test   %r10d,%r10d
                        │╭   ││  0x00007f748d246656: jne    0x00007f748d24666e  ;*if_icmpeq
                        ││   ││                                                ; - java.lang.String::indexOf@66 (line 1771)
                        ││   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                        ││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        ││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        ││   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.55%    0.59%        ││   ││  0x00007f748d246658: mov    0x50(%rsp),%r8
  0.30%    0.16%        ││   ││  0x00007f748d24665d: mov    0x1c(%rsp),%r11d
  1.22%    1.24%        ││   ││  0x00007f748d246662: mov    0x6c(%rsp),%r10d   ;*caload
                        ││   ││                                                ; - java.lang.String::indexOf@36 (line 1766)
                        ││   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                        ││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        ││   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        ││   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.20%    0.20%        ││   ││  0x00007f748d246667: mov    0xc(%r12,%r11,8),%edi  ;*ifne
                        ││   ││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.48%    0.51%        ││╭  ││  0x00007f748d24666c: jmp    0x00007f748d2466cd  ;*synchronization entry
                        │││  ││                                                ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                        │││  ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.08%        │↘│↗ ││  0x00007f748d24666e: mov    0x1c(%r8),%r10d
  0.19%    0.09%        │ ││ ││  0x00007f748d246672: mov    %r10,%rsi
           0.00%        │ ││ ││  0x00007f748d246675: shl    $0x3,%rsi          ;*if_icmpeq
                        │ ││ ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │ ││ ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.15%        │ ││ ││  0x00007f748d246679: mov    0x58(%rsp),%rdx
  0.06%    0.06%        │ ││ ││  0x00007f748d24667e: mov    0x70(%rsp),%ecx
  0.05%    0.04%        │ ││ ││  0x00007f748d246682: xor    %r8d,%r8d
           0.01%        │ ││ ││  0x00007f748d246685: mov    0x78(%rsp),%r9d
  0.18%    0.18%        │ ││ ││  0x00007f748d24668a: xor    %edi,%edi
  0.11%    0.07%        │ ││ ││  0x00007f748d24668c: mov    0x50(%rsp),%r10
  0.04%    0.05%        │ ││ ││  0x00007f748d246691: mov    %r10,(%rsp)
  0.14%    0.00%        │ ││ ││  0x00007f748d246695: mov    0x60(%rsp),%r10d
  0.12%    0.12%        │ ││ ││  0x00007f748d24669a: mov    %r10d,0x18(%rsp)
  0.13%    0.08%        │ ││ ││  0x00007f748d24669f: xchg   %ax,%ax
  0.07%    0.06%        │ ││ ││  0x00007f748d2466a1: movabs $0xffffffffffffffff,%rax
  0.02%                 │ ││ ││  0x00007f748d2466ab: callq  0x00007f748d046220  ; OopMap{[8]=Oop [16]=Oop [28]=NarrowOop [80]=Oop [88]=Oop off=2000}
                        │ ││ ││                                                ;*invokevirtual add
                        │ ││ ││                                                ; - com.google.re2j.Machine::step@202 (line 311)
                        │ ││ ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
                        │ ││ ││                                                ;   {virtual_call}
  0.39%    0.29%        │ ││ ││  0x00007f748d2466b0: test   %rax,%rax
                        │ ││ ││  0x00007f748d2466b3: jne    0x00007f748d2473e9  ;*arraylength
                        │ ││ ││                                                ; - java.lang.String::isEmpty@4 (line 635)
                        │ ││ ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.04%    0.00%        │ ││ ││  0x00007f748d2466b9: mov    0x1c(%rsp),%r11d
  0.04%    0.02%        │ ││ ││  0x00007f748d2466be: mov    0xc(%r12,%r11,8),%edi  ;*ifne
                        │ ││ ││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.29%    0.24%        │ ││ ││  0x00007f748d2466c3: mov    0x50(%rsp),%r8
  0.02%    0.00%        │ ││ ││  0x00007f748d2466c8: mov    0x6c(%rsp),%r10d   ;*caload
                        │ ││ ││                                                ; - java.lang.String::indexOf@133 (line 1779)
                        │ ││ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │ ││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │ ││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │ ││ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.20%    0.17%        │ ↘│ ││  0x00007f748d2466cd: mov    0x74(%rsp),%r9d
  1.06%    1.28%        │  │ ││  0x00007f748d2466d2: inc    %r9d               ; OopMap{r11=NarrowOop r8=Oop [8]=Oop [16]=Oop [88]=Oop off=2037}
                        │  │ ││                                                ;*goto
                        │  │ ││                                                ; - com.google.re2j.Machine::step@221 (line 281)
                        │  │ ││                                                ; - com.google.re2j.Machine::match@355 (line 246)
  0.47%    0.42%        │  │ ││  0x00007f748d2466d5: test   %eax,0x17cb0925(%rip)        # 0x00007f74a4ef7000
                        │  │ ││                                                ;*aload_0
                        │  │ ││                                                ; - java.lang.String::indexOf@79 (line 1772)
                        │  │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                        │  │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │  │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │  │ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
                        │  │ ││                                                ;   {poll}
  0.48%    0.73%        │  │ ││  0x00007f748d2466db: cmp    %edi,%r9d
                        │  │ ││  0x00007f748d2466de: jge    0x00007f748d246134  ;*instanceof
                        │  │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                        │  │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │  │ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.15%    0.15%        │  │ ││  0x00007f748d2466e4: mov    %r11d,0x1c(%rsp)
  1.06%    1.15%        │  │ ││  0x00007f748d2466e9: mov    %r10d,0x6c(%rsp)   ;*iload_1
                        │  │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                        │  │ ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.45%    0.46%        ↘  │ ││  0x00007f748d2466ee: movzbl 0x11(%r8),%ecx     ;*ifge
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.46%    0.57%           │ ││  0x00007f748d2466f3: test   %ecx,%ecx
                           │ ││  0x00007f748d2466f5: jne    0x00007f748d246ed5  ;*getfield prefix
                           │ ││                                                ; - com.google.re2j.Machine::match@172 (line 220)
  0.51%    0.47%           │ ││  0x00007f748d2466fb: mov    %r9d,0x74(%rsp)
  1.01%    1.01%           │ ││  0x00007f748d246700: mov    %r8,0x50(%rsp)
  0.45%    0.65%           │ ││  0x00007f748d246705: mov    0x1c(%rsp),%r11d
  0.60%    0.65%           │ ││  0x00007f748d24670a: mov    0x20(%r12,%r11,8),%r10d  ;*ifge
                           │ ││                                                ; - java.lang.String::indexOf@19 (line 1759)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.59%    0.53%           │ ││  0x00007f748d24670f: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f748d24837a
  1.87%    1.77%           │ ││  0x00007f748d246714: cmp    %r11d,%r9d
                           │ ││  0x00007f748d246717: jae    0x00007f748d246daf  ;*invokevirtual isEmpty
                           │ ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.69%    0.87%           │ ││  0x00007f748d24671d: shl    $0x3,%r10
  0.52%    0.54%           │ ││  0x00007f748d246721: mov    0x10(%r10,%r9,4),%r8d  ;*ifne
                           │ ││                                                ; - java.lang.String::indexOf@27 (line 1762)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.37%    0.43%           │ ││  0x00007f748d246726: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f748d24838d
  6.42%    5.75%           │ ││  0x00007f748d24672b: cmp    $0x6,%r11d
                           │ ││  0x00007f748d24672f: je     0x00007f748d246c9a  ;*aload_0
                           │ ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  2.00%    1.59%           │ ││  0x00007f748d246735: mov    0x8(%r12,%r8,8),%r10d
  0.16%    0.27%           │ ││  0x00007f748d24673a: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                           │ ││  0x00007f748d246741: jne    0x00007f748d246e39  ;*invokevirtual isEmpty
                           │ ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.14%    0.97%           │ ││  0x00007f748d246747: shl    $0x3,%r8
  0.21%    0.10%           │ ││  0x00007f748d24674b: mov    0xc(%r8),%r11d     ;*invokestatic isWordRune
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.81%    0.89%           │ ││  0x00007f748d24674f: cmp    $0xa,%r11d
                           ╰ ││  0x00007f748d246753: je     0x00007f748d24666e  ;*if_icmpeq
                             ││                                                ; - java.lang.String::indexOf@66 (line 1771)
                             ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.06%    0.86%             ││  0x00007f748d246759: cmp    $0xb,%r11d
                             ││  0x00007f748d24675d: je     0x00007f748d246f59  ;*getfield value
                             ││                                                ; - java.lang.String::isEmpty@1 (line 635)
                             ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.80%    0.78%             ││  0x00007f748d246763: mov    0x20(%r8),%r10d    ;*invokevirtual step
                             ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.17%    0.09%             ││  0x00007f748d246767: cmp    $0x9,%r11d
                            ╭││  0x00007f748d24676b: jne    0x00007f748d246783  ;*aload_0
                            │││                                                ; - java.lang.String::indexOf@126 (line 1779)
                            │││                                                ; - java.lang.String::indexOf@21 (line 1718)
                            │││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.22%            │││  0x00007f748d24676d: cmp    0x84(%rsp),%r10d
                            │││  0x00007f748d246775: je     0x00007f748d246896  ;*invokestatic charCount
                            │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                            │││                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.24%    0.22%            │││  0x00007f748d24677b: xor    %r10d,%r10d
  0.05%    0.05%            │╰│  0x00007f748d24677e: jmpq   0x00007f748d246653
  1.15%    1.19%            ↘ │  0x00007f748d246783: cmp    $0xc,%r11d
                              │  0x00007f748d246787: jne    0x00007f748d247037  ;*arraylength
                              │                                                ; - java.lang.String::isEmpty@4 (line 635)
                              │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.00%    1.10%              │  0x00007f748d24678d: cmp    0x84(%rsp),%r10d
                              │  0x00007f748d246795: je     0x00007f748d246129  ;*if_icmplt
                              │                                                ; - java.lang.String::charAt@10 (line 657)
                              │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.74%    0.80%              │  0x00007f748d24679b: mov    0x24(%r8),%r11d    ;*ifeq
                              │                                                ; - java.lang.Character::codePointAt@12 (line 4867)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.12%    0.05%              │  0x00007f748d24679f: cmp    0x84(%rsp),%r11d
                              │  0x00007f748d2467a7: je     0x00007f748d246129  ;*aload_0
                              │                                                ; - java.lang.String::indexOf@126 (line 1779)
                              │                                                ; - java.lang.String::indexOf@21 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.28%    1.18%              │  0x00007f748d2467ad: mov    0x28(%r8),%r9d     ;*if_icmpgt
                              │                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.42%    0.35%              │  0x00007f748d2467b1: cmp    0x84(%rsp),%r9d
                              │  0x00007f748d2467b9: je     0x00007f748d2470e9  ;*arraylength
                              │                                                ; - java.lang.String::isEmpty@4 (line 635)
                              │                                                ; - com.google.re2j.Machine::match@175 (line 220)
  0.95%    0.97%              │  0x00007f748d2467bf: mov    0x2c(%r8),%r9d
  0.02%    0.00%              │  0x00007f748d2467c3: cmp    0x84(%rsp),%r9d
                              ╰  0x00007f748d2467cb: jne    0x00007f748d246650  ;*if_icmpgt
                                                                               ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 205)
                                 0x00007f748d2467d1: mov    $0xffffff65,%esi   ;*if_icmpne
                                                                               ; - com.google.re2j.Machine::step@99 (line 299)
                                                                               ; - com.google.re2j.Machine::match@355 (line 246)
                                 0x00007f748d2467d6: mov    0x50(%rsp),%rbp
                                 0x00007f748d2467db: mov    0x10(%rsp),%r10
                                 0x00007f748d2467e0: mov    %r10,0x8(%rsp)
....................................................................................................
 52.68%   52.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 523 (893 bytes) 

                            # parm4:    rdi:rdi   = &apos;[I&apos;
                            # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            0x00007f748d224c80: mov    0x8(%rsi),%r10d
                            0x00007f748d224c84: shl    $0x3,%r10
                            0x00007f748d224c88: cmp    %r10,%rax
                            0x00007f748d224c8b: jne    0x00007f748d045e20  ;   {runtime_call}
                            0x00007f748d224c91: data16 xchg %ax,%ax
                            0x00007f748d224c94: nopl   0x0(%rax,%rax,1)
                            0x00007f748d224c9c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.07%    0.12%            0x00007f748d224ca0: mov    %eax,-0x14000(%rsp)
  0.15%    0.13%            0x00007f748d224ca7: push   %rbp
  0.05%    0.04%            0x00007f748d224ca8: sub    $0x60,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 275)
  0.12%    0.13%            0x00007f748d224cac: vmovd  %r9d,%xmm5
  0.12%    0.11%            0x00007f748d224cb1: vmovq  %r8,%xmm4
  0.01%    0.04%            0x00007f748d224cb6: vmovq  %rsi,%xmm3
  0.08%    0.07%            0x00007f748d224cbb: mov    %ecx,%r13d
  0.09%    0.13%            0x00007f748d224cbe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 275)
  0.15%    0.12%            0x00007f748d224cc1: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
                                                                          ; implicit exception: dispatches to 0x00007f748d225619
  0.03%    0.01%            0x00007f748d224cc5: cmp    $0x40,%ecx
                            0x00007f748d224cc8: jg     0x00007f748d2251fd  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.06%    0.07%            0x00007f748d224cce: mov    $0x1,%esi
  0.08%    0.09%            0x00007f748d224cd3: mov    $0x1,%r9d
  0.12%    0.09%            0x00007f748d224cd9: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.12%    0.18%            0x00007f748d224cdc: mov    %r11,%r10
  0.05%    0.14%            0x00007f748d224cdf: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.03%    0.01%            0x00007f748d224ce2: test   %r10,%r10
                  ╭         0x00007f748d224ce5: jne    0x00007f748d22501e  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.05%    0.07%  │         0x00007f748d224ceb: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.07%    0.09%  │   ↗     0x00007f748d224ced: test   %r10,%r10
                  │   │     0x00007f748d224cf0: jne    0x00007f748d225231  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 275)
  0.12%    0.18%  │   │     0x00007f748d224cf6: cmp    $0x40,%ecx
                  │   │     0x00007f748d224cf9: jge    0x00007f748d225261  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.04%    0.04%  │   │     0x00007f748d224cff: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.07%    0.07%  │   │     0x00007f748d224d03: vmovq  %xmm3,%r10
  0.06%    0.09%  │   │     0x00007f748d224d08: mov    0x1c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 280)
  0.08%    0.17%  │   │     0x00007f748d224d0c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.02%    0.03%  │   │     0x00007f748d224d0f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 278)
  0.04%    0.05%  │   │     0x00007f748d224d13: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f748d22562d
  0.08%    0.09%  │   │     0x00007f748d224d18: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │   │     0x00007f748d224d1f: jne    0x00007f748d2250d5
  0.09%    0.14%  │   │     0x00007f748d224d25: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.04%  │   │     0x00007f748d224d29: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.05%  │   │     0x00007f748d224d2d: cmp    $0x40,%ecx
                  │   │     0x00007f748d224d30: jg     0x00007f748d225295  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.10%  │   │     0x00007f748d224d36: mov    $0x1,%r10d
  0.16%    0.14%  │   │     0x00007f748d224d3c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.17%    0.22%  │   │     0x00007f748d224d3f: mov    %r9,%r8
  0.11%    0.09%  │   │     0x00007f748d224d42: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.02%    0.04%  │   │     0x00007f748d224d45: test   %r8,%r8
                  │╭  │     0x00007f748d224d48: jne    0x00007f748d225028  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.07%    0.09%  ││  │     0x00007f748d224d4e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.09%  ││  │↗    0x00007f748d224d50: test   %r8,%r8
                  ││  ││    0x00007f748d224d53: jne    0x00007f748d2252d1  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.10%  ││  ││    0x00007f748d224d59: cmp    $0x40,%ecx
                  ││  ││    0x00007f748d224d5c: jge    0x00007f748d225305  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.01%    0.03%  ││  ││    0x00007f748d224d62: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.06%    0.12%  ││  ││    0x00007f748d224d65: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.18%  ││  ││    0x00007f748d224d69: mov    0x70(%rsp),%rax
  0.10%    0.13%  ││  ││    0x00007f748d224d6e: movzbl 0x11(%rax),%ebp    ;*getfield captures
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
                  ││  ││                                                  ; implicit exception: dispatches to 0x00007f748d225655
  0.03%    0.05%  ││  ││    0x00007f748d224d72: test   %ebp,%ebp
                  ││  ││    0x00007f748d224d74: jne    0x00007f748d225345  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@27 (line 98)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.07%    0.09%  ││  ││    0x00007f748d224d7a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.09%  ││  ││    0x00007f748d224d7d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.15%    0.03%  ││  ││    0x00007f748d224d80: mov    %ecx,%r8d
  0.02%    0.04%  ││  ││    0x00007f748d224d83: inc    %r8d               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.07%    0.10%  ││  ││    0x00007f748d224d86: mov    %r8d,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.08%    0.10%  ││  ││    0x00007f748d224d8a: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f748d225665
  0.16%    0.11%  ││  ││    0x00007f748d224d8f: cmp    %r10d,%ecx
                  ││  ││    0x00007f748d224d92: jae    0x00007f748d22505a
  0.01%    0.04%  ││  ││    0x00007f748d224d98: vmovd  %r8d,%xmm2
  0.08%    0.08%  ││  ││    0x00007f748d224d9d: vmovd  %ebx,%xmm0
  0.15%    0.09%  ││  ││    0x00007f748d224da1: mov    %ecx,%r14d
  0.09%    0.20%  ││  ││    0x00007f748d224da4: mov    %r11,%r8
  0.04%    0.01%  ││  ││    0x00007f748d224da7: mov    0x8(%r12,%rbx,8),%r11d
  0.06%    0.07%  ││  ││    0x00007f748d224dac: cmp    $0xf8019808,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f748d224db3: jne    0x00007f748d225105  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.10%    0.08%  ││  ││    0x00007f748d224db9: vmovq  %xmm3,%r11
  0.12%    0.08%  ││  ││    0x00007f748d224dbe: mov    0x20(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 281)
  0.03%    0.03%  ││  ││    0x00007f748d224dc2: mov    %r8,%rcx
  0.05%    0.10%  ││  ││    0x00007f748d224dc5: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.05%    0.08%  ││  ││    0x00007f748d224dc9: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.13%    0.08%  ││  ││    0x00007f748d224dcd: lea    0x10(%r11,%r14,4),%r8
  0.02%    0.01%  ││  ││    0x00007f748d224dd2: mov    %ecx,(%r8)
  0.05%    0.04%  ││  ││    0x00007f748d224dd5: mov    %r8,%rcx
  0.03%    0.05%  ││  ││    0x00007f748d224dd8: shr    $0x9,%rcx
  0.11%    0.08%  ││  ││    0x00007f748d224ddc: movabs $0x7f749d8ff000,%r8
  0.04%    0.00%  ││  ││    0x00007f748d224de6: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 280)
  0.11%    0.05%  ││  ││    0x00007f748d224dea: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f748d22567d
  0.06%    0.04%  ││  ││    0x00007f748d224def: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││  ││    0x00007f748d224df5: jne    0x00007f748d225141
  0.11%    0.08%  ││  ││    0x00007f748d224dfb: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.01%    0.03%  ││  ││    0x00007f748d224dff: vmovq  %rcx,%xmm1
  0.06%    0.06%  ││  ││    0x00007f748d224e04: mov    0x18(%rcx),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.08%  ││  ││    0x00007f748d224e07: mov    %ecx,%edi
  0.12%    0.10%  ││  ││    0x00007f748d224e09: cmp    $0x40,%ecx
                  ││  ││    0x00007f748d224e0c: jg     0x00007f748d225381  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.04%  ││  ││    0x00007f748d224e12: mov    $0x1,%ebx
  0.05%    0.09%  ││  ││    0x00007f748d224e17: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.27%    0.19%  ││  ││    0x00007f748d224e1a: mov    %r9,%rcx
  0.06%    0.09%  ││  ││    0x00007f748d224e1d: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.04%  ││  ││    0x00007f748d224e20: test   %rcx,%rcx
                  ││╭ ││    0x00007f748d224e23: jne    0x00007f748d225032  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.10%    0.10%  │││ ││    0x00007f748d224e29: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.01%  │││ ││↗   0x00007f748d224e2b: test   %rcx,%rcx
                  │││ │││   0x00007f748d224e2e: jne    0x00007f748d2253c1  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.12%    0.07%  │││ │││   0x00007f748d224e34: mov    %edi,%ecx
  0.08%    0.08%  │││ │││   0x00007f748d224e36: cmp    $0x40,%ecx
                  │││ │││   0x00007f748d224e39: jge    0x00007f748d2253f9  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.07%    0.15%  │││ │││   0x00007f748d224e3f: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.02%  │││ │││   0x00007f748d224e42: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.09%    0.14%  │││ │││   0x00007f748d224e46: mov    %r14d,%ecx
  0.14%    0.11%  │││ │││   0x00007f748d224e49: add    $0x2,%ecx
  0.16%    0.15%  │││ │││   0x00007f748d224e4c: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.02%    0.03%  │││ │││   0x00007f748d224e4f: mov    %r14d,%edi
  0.07%    0.09%  │││ │││   0x00007f748d224e52: add    $0x4,%edi          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.11%    0.07%  │││ │││   0x00007f748d224e55: cmp    %r10d,%edi
                  │││ │││   0x00007f748d224e58: jae    0x00007f748d225095  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.13%    0.13%  │││ │││   0x00007f748d224e5e: vmovq  %xmm3,%r10
  0.03%    0.03%  │││ │││   0x00007f748d224e63: mov    0x24(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 282)
  0.08%    0.09%  │││ │││   0x00007f748d224e67: vmovq  %xmm1,%r10
  0.05%    0.09%  │││ │││   0x00007f748d224e6c: mov    %r10,%rcx
  0.15%    0.14%  │││ │││   0x00007f748d224e6f: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.00%    0.04%  │││ │││   0x00007f748d224e73: movslq %r14d,%r10
  0.10%    0.10%  │││ │││   0x00007f748d224e76: lea    (%r11,%r10,4),%rbx  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.07%  │││ │││   0x00007f748d224e7a: mov    %rbx,%r10
  0.11%    0.04%  │││ │││   0x00007f748d224e7d: add    $0x14,%r10
  0.02%    0.01%  │││ │││   0x00007f748d224e81: mov    %ecx,(%r10)
  0.11%    0.05%  │││ │││   0x00007f748d224e84: shr    $0x9,%r10
  0.07%    0.10%  │││ │││   0x00007f748d224e88: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 281)
  0.11%    0.13%  │││ │││   0x00007f748d224e8c: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f748d2256a5
  0.01%    0.02%  │││ │││   0x00007f748d224e91: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││ │││   0x00007f748d224e97: jne    0x00007f748d225171
  0.06%    0.11%  │││ │││   0x00007f748d224e9d: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.11%  │││ │││   0x00007f748d224ea1: vmovq  %r10,%xmm0
  0.13%    0.19%  │││ │││   0x00007f748d224ea6: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.01%    0.03%  │││ │││   0x00007f748d224eaa: vmovd  %ecx,%xmm2
  0.06%    0.10%  │││ │││   0x00007f748d224eae: cmp    $0x40,%ecx
                  │││ │││   0x00007f748d224eb1: jg     0x00007f748d225439  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.07%    0.10%  │││ │││   0x00007f748d224eb7: mov    $0x1,%r10d
  0.09%    0.13%  │││ │││   0x00007f748d224ebd: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.11%    0.14%  │││ │││   0x00007f748d224ec0: mov    %r9,%rcx
  0.12%    0.10%  │││ │││   0x00007f748d224ec3: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.03%  │││ │││   0x00007f748d224ec6: test   %rcx,%rcx
                  │││╭│││   0x00007f748d224ec9: jne    0x00007f748d22503c  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.06%    0.12%  │││││││   0x00007f748d224ecf: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.10%    0.10%  │││││││↗  0x00007f748d224ed1: test   %rcx,%rcx
                  ││││││││  0x00007f748d224ed4: jne    0x00007f748d225479  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.16%    0.16%  ││││││││  0x00007f748d224eda: vmovd  %xmm2,%ecx
  0.02%    0.01%  ││││││││  0x00007f748d224ede: cmp    $0x40,%ecx
                  ││││││││  0x00007f748d224ee1: jge    0x00007f748d2254b1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.07%    0.14%  ││││││││  0x00007f748d224ee7: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.09%    0.10%  ││││││││  0x00007f748d224eea: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.13%    0.14%  ││││││││  0x00007f748d224eee: vmovq  %xmm3,%r10
  0.04%    0.03%  ││││││││  0x00007f748d224ef3: mov    0x28(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 283)
  0.07%    0.12%  ││││││││  0x00007f748d224ef7: mov    %rbx,%r10
  0.07%    0.10%  ││││││││  0x00007f748d224efa: add    $0x18,%r10
  0.10%    0.07%  ││││││││  0x00007f748d224efe: vmovq  %xmm0,%rcx
  0.02%    0.01%  ││││││││  0x00007f748d224f03: shr    $0x3,%rcx
  0.06%    0.10%  ││││││││  0x00007f748d224f07: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.02%    0.07%  ││││││││  0x00007f748d224f0a: mov    %r14d,%ecx
  0.08%    0.12%  ││││││││  0x00007f748d224f0d: add    $0x3,%ecx
  0.01%    0.00%  ││││││││  0x00007f748d224f10: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.10%    0.08%  ││││││││  0x00007f748d224f13: shr    $0x9,%r10
  0.07%    0.09%  ││││││││  0x00007f748d224f17: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 282)
  0.08%    0.12%  ││││││││  0x00007f748d224f1b: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f748d2256cd
  0.01%    0.02%  ││││││││  0x00007f748d224f20: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f748d224f26: jne    0x00007f748d2251a1
  0.07%    0.10%  ││││││││  0x00007f748d224f2c: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.09%  ││││││││  0x00007f748d224f30: vmovq  %r10,%xmm0
  0.14%    0.14%  ││││││││  0x00007f748d224f35: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.02%    0.02%  ││││││││  0x00007f748d224f39: vmovd  %ecx,%xmm1
  0.06%    0.10%  ││││││││  0x00007f748d224f3d: cmp    $0x40,%ecx
  0.05%    0.14%  ││││││││  0x00007f748d224f40: jg     0x00007f748d2254f1  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.09%    0.13%  ││││││││  0x00007f748d224f46: mov    $0x1,%r10d
  0.01%    0.03%  ││││││││  0x00007f748d224f4c: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.20%    0.16%  ││││││││  0x00007f748d224f4f: mov    %r9,%rcx
  0.01%    0.02%  ││││││││  0x00007f748d224f52: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.13%    0.10%  ││││││││  0x00007f748d224f55: test   %rcx,%rcx
                  ││││││││  0x00007f748d224f58: jne    0x00007f748d225046  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.09%    0.13%  ││││││││  0x00007f748d224f5e: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.14%    0.19%  ││││││││  0x00007f748d224f60: test   %rcx,%rcx
                  ││││││││  0x00007f748d224f63: jne    0x00007f748d22552d  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.04%    0.04%  ││││││││  0x00007f748d224f69: vmovd  %xmm1,%ecx
  0.03%    0.13%  ││││││││  0x00007f748d224f6d: cmp    $0x40,%ecx
                  ││││││││  0x00007f748d224f70: jge    0x00007f748d225565  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.09%    0.13%  ││││││││  0x00007f748d224f76: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.10%    0.18%  ││││││││  0x00007f748d224f79: vmovq  %xmm3,%rcx
  0.03%    0.03%  ││││││││  0x00007f748d224f7e: mov    0x2c(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 284)
  0.04%    0.07%  ││││││││  0x00007f748d224f81: mov    %rbx,%rcx
  0.05%    0.10%  ││││││││  0x00007f748d224f84: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.16%    0.08%  ││││││││  0x00007f748d224f88: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.03%    0.06%  ││││││││  0x00007f748d224f8b: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.07%    0.09%  ││││││││  0x00007f748d224f8f: vmovq  %xmm0,%r10
  0.05%    0.14%  ││││││││  0x00007f748d224f94: shr    $0x3,%r10
  0.14%    0.15%  ││││││││  0x00007f748d224f98: mov    %r10d,(%rcx)
  0.02%    0.02%  ││││││││  0x00007f748d224f9b: mov    %rcx,%r10
  0.05%    0.07%  ││││││││  0x00007f748d224f9e: shr    $0x9,%r10
  0.06%    0.06%  ││││││││  0x00007f748d224fa2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 283)
  0.13%    0.16%  ││││││││  0x00007f748d224fa6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f748d2256f5
  0.01%    0.04%  ││││││││  0x00007f748d224fab: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││││││││  0x00007f748d224fb2: jne    0x00007f748d2251d1
  0.07%    0.10%  ││││││││  0x00007f748d224fb8: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.04%    0.04%  ││││││││  0x00007f748d224fbc: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.07%    0.09%  ││││││││  0x00007f748d224fc0: cmp    $0x40,%ecx
                  ││││││││  0x00007f748d224fc3: jg     0x00007f748d2255a5  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.03%  ││││││││  0x00007f748d224fc9: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.32%    0.37%  ││││││││  0x00007f748d224fcc: mov    %r9,%rdi
  0.04%    0.03%  ││││││││  0x00007f748d224fcf: and    %rsi,%rdi          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.10%  ││││││││  0x00007f748d224fd2: test   %rdi,%rdi
                  ││││││││  0x00007f748d224fd5: jne    0x00007f748d225050  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.14%    0.10%  ││││││││  0x00007f748d224fd7: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.05%    0.18%  ││││││││  0x00007f748d224fd9: test   %rdi,%rdi
                  ││││││││  0x00007f748d224fdc: jne    0x00007f748d2255cd  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.03%    0.04%  ││││││││  0x00007f748d224fe2: cmp    $0x40,%ecx
                  ││││││││  0x00007f748d224fe5: jge    0x00007f748d2255f1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.09%    0.11%  ││││││││  0x00007f748d224feb: or     %rsi,%r9
  0.07%    0.05%  ││││││││  0x00007f748d224fee: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.05%    0.06%  ││││││││  0x00007f748d224ff2: add    $0x20,%rbx
  0.02%    0.02%  ││││││││  0x00007f748d224ff6: shr    $0x3,%r10
  0.07%    0.04%  ││││││││  0x00007f748d224ffa: mov    %r10d,(%rbx)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.06%    0.08%  ││││││││  0x00007f748d224ffd: mov    %rbx,%r10
  0.14%    0.10%  ││││││││  0x00007f748d225000: add    $0x5,%r14d
  0.02%    0.07%  ││││││││  0x00007f748d225004: mov    %r14d,0xc(%rdx)    ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 107)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 284)
  0.11%    0.11%  ││││││││  0x00007f748d225008: shr    $0x9,%r10
  0.05%    0.12%  ││││││││  0x00007f748d22500c: mov    %r12b,(%r8,%r10,1)  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 275)
  0.09%    0.20%  ││││││││  0x00007f748d225010: xor    %eax,%eax
  0.05%    0.03%  ││││││││  0x00007f748d225012: add    $0x60,%rsp
  0.07%    0.11%  ││││││││  0x00007f748d225016: pop    %rbp
  0.06%    0.06%  ││││││││  0x00007f748d225017: test   %eax,0x17cd1fe3(%rip)        # 0x00007f74a4ef7000
                  ││││││││                                                ;   {poll_return}
  0.12%    0.12%  ││││││││  0x00007f748d22501d: retq   
                  ↘│││││││  0x00007f748d22501e: mov    $0x1,%ebp
                   │││╰│││  0x00007f748d225023: jmpq   0x00007f748d224ced
                   ↘││ │││  0x00007f748d225028: mov    $0x1,%ebp
                    ││ ╰││  0x00007f748d22502d: jmpq   0x00007f748d224d50
                    ↘│  ││  0x00007f748d225032: mov    $0x1,%ebp
                     │  ╰│  0x00007f748d225037: jmpq   0x00007f748d224e2b
                     ↘   │  0x00007f748d22503c: mov    $0x1,%ebp
                         ╰  0x00007f748d225041: jmpq   0x00007f748d224ed1
                            0x00007f748d225046: mov    $0x1,%ebp
....................................................................................................
 14.45%   16.80%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 550 (764 bytes) 

                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                       0x00007f748d246083: shl    $0x3,%r10d         ;*caload
                                                                     ; - java.lang.String::indexOf@63 (line 1771)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                       0x00007f748d246087: mov    %r10d,%r8d
                       0x00007f748d24608a: or     $0x1,%r8d
                       0x00007f748d24608e: and    $0x7,%r10d
           0.00%       0x00007f748d246092: sar    $0x3,%r8d
                       0x00007f748d246096: or     $0x1,%r10d         ;*invokevirtual add
                                                                     ; - com.google.re2j.Machine::match@314 (line 243)
                       0x00007f748d24609a: vmovd  %xmm1,%r11d
                       0x00007f748d24609f: test   %r11d,%r11d
                       0x00007f748d2460a2: jne    0x00007f748d247be5  ;*if_icmpgt
                                                                     ; - com.google.re2j.Utils::isWordRune@27 (line 149)
                                                                     ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                0x00007f748d2460a8: vmovd  %xmm2,%r11d
                       0x00007f748d2460ad: test   %r11d,%r11d
                       0x00007f748d2460b0: jl     0x00007f748d246cd2  ;*caload
                                                                     ; - java.lang.String::indexOf@133 (line 1779)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                       0x00007f748d2460b6: mov    %r8d,0x44(%rsp)
                       0x00007f748d2460bb: mov    %r10d,0x40(%rsp)
  0.00%    0.01%       0x00007f748d2460c0: mov    %r11d,0x3c(%rsp)
                       0x00007f748d2460c5: mov    $0x5,%r9d          ;*caload
                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                       0x00007f748d2460cb: mov    0x3c(%rsp),%r11d
                       0x00007f748d2460d0: cmp    $0xa,%r11d
                       0x00007f748d2460d4: je     0x00007f748d246d7b  ;*invokestatic codePointAt
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%       0x00007f748d2460da: mov    0x3c(%rsp),%r10d
                       0x00007f748d2460df: add    $0xffffffbf,%r10d
                       0x00007f748d2460e3: cmp    $0x1a,%r10d
                  ╭    0x00007f748d2460e7: jb     0x00007f748d2460f7  ;*invokestatic indexOf
                  │                                                  ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                  ; - com.google.re2j.Machine::match@206 (line 224)
                  │    0x00007f748d2460e9: add    $0xffffff9f,%r11d
  0.00%    0.01%  │    0x00007f748d2460ed: cmp    $0x1a,%r11d
                  │    0x00007f748d2460f1: jae    0x00007f748d246d84  ;*getfield re2
                  │                                                  ; - com.google.re2j.Machine::match@202 (line 224)
  0.00%           ↘    0x00007f748d2460f7: or     $0x10,%r9d
                       0x00007f748d2460fb: mov    0x20(%rsp),%r11d
                       0x00007f748d246100: and    $0x4,%r11d         ;*invokeinterface charAt
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                       0x00007f748d246104: mov    %r11d,0x4c(%rsp)
                       0x00007f748d246109: mov    %rcx,%r10
           0.01%       0x00007f748d24610c: shl    $0x3,%r10
                       0x00007f748d246110: mov    %r10,0x58(%rsp)
  0.00%                0x00007f748d246115: xor    %eax,%eax
                       0x00007f748d246117: xor    %r10d,%r10d
           0.00%   ╭   0x00007f748d24611a: jmpq   0x00007f748d24628e
                   │   0x00007f748d24611f: mov    $0x5,%ecx
                   │   0x00007f748d246124: jmpq   0x00007f748d246539  ;*caload
                   │                                                 ; - java.lang.String::charAt@27 (line 660)
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.50%    0.46%   │   0x00007f748d246129: mov    $0x1,%r10d
  0.17%    0.15%   │   0x00007f748d24612f: jmpq   0x00007f748d246653
  0.16%    0.04%   │   0x00007f748d246134: mov    0x10(%rsp),%r9
  0.25%    0.27%   │   0x00007f748d246139: mov    0x10(%r9),%ecx     ;*if_icmplt
                   │                                                 ; - java.lang.Character::charCount@3 (line 4818)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   │                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.06%    0.06%   │   0x00007f748d24613d: mov    0x14(%r8),%ebx     ;*arraylength
                   │                                                 ; - java.lang.String::charAt@9 (line 657)
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@60 (line 193)
  0.08%    0.16%   │   0x00007f748d246141: movzbl 0x18(%r12,%r11,8),%edi
  0.12%    0.05%   │   0x00007f748d246147: test   %edi,%edi
                   │╭  0x00007f748d246149: jne    0x00007f748d246168  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.26%    0.25%   ││  0x00007f748d24614b: mov    %r12d,0xc(%r12,%r11,8)
  0.05%    0.07%   ││  0x00007f748d246150: mov    0x1c(%r12,%r11,8),%ebp
  0.10%    0.12%   ││  0x00007f748d246155: movb   $0x1,0x18(%r12,%r11,8)
  0.16%    0.04%   ││  0x00007f748d24615b: mov    %r12,0x10(%r12,%r11,8)
  0.24%    0.30%   ││  0x00007f748d246160: test   %ebp,%ebp
                   ││  0x00007f748d246162: jne    0x00007f748d247581  ;*aload
                   ││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.04%    0.04%   │↘  0x00007f748d246168: movzbl 0x10(%r8),%eax     ;*bipush
                   │                                                 ; - com.google.re2j.Utils::isWordRune@24 (line 149)
                   │                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.10%    0.12%   │   0x00007f748d24616d: movzbl 0x11(%r8),%edi     ;*if_icmpgt
                   │                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   │                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.14%    0.09%   │   0x00007f748d246172: mov    0x38(%rsp),%r10d
  0.28%    0.18%   │   0x00007f748d246177: test   %r10d,%r10d
                   │   0x00007f748d24617a: je     0x00007f748d2468ab  ;*iload_2
                   │                                                 ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.04%    0.05%   │   0x00007f748d246180: test   %edi,%edi
                   │   0x00007f748d246182: jne    0x00007f748d2472b9
  0.09%    0.14%   │   0x00007f748d246188: test   %eax,%eax
                   │   0x00007f748d24618a: jne    0x00007f748d247539  ;*ifne
                   │                                                 ; - java.lang.String::isEmpty@5 (line 635)
                   │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.15%    0.15%   │   0x00007f748d246190: mov    0xc(%r9),%edi      ;*aload
                   │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.24%    0.29%   │   0x00007f748d246194: mov    %edi,0x14(%rsp)
  0.05%    0.04%   │   0x00007f748d246198: mov    0x14(%r9),%r13d    ;*if_icmpgt
                   │                                                 ; - java.lang.String::indexOf@57 (line 1769)
                   │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.10%    0.17%   │   0x00007f748d24619c: mov    0x34(%rsp),%r10d
  0.11%    0.24%   │   0x00007f748d2461a1: cmp    $0xffffffff,%r10d
                   │   0x00007f748d2461a5: je     0x00007f748d246a0e  ;*caload
                   │                                                 ; - java.lang.String::indexOf@133 (line 1779)
                   │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.21%    0.16%   │   0x00007f748d2461ab: mov    0x40(%rsp),%edi
  0.07%    0.02%   │   0x00007f748d2461af: add    0x70(%rsp),%edi
  0.12%    0.17%   │   0x00007f748d2461b3: add    0x14(%rsp),%edi    ;*if_icmplt
                   │                                                 ; - java.lang.String::charAt@10 (line 657)
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.15%    0.17%   │   0x00007f748d2461b7: cmp    %ecx,%edi
                   │   0x00007f748d2461b9: jge    0x00007f748d246a1d  ;*caload
                   │                                                 ; - java.lang.String::indexOf@129 (line 1779)
                   │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.25%    0.15%   │   0x00007f748d2461bf: mov    %r10d,%r14d
  0.03%    0.01%   │   0x00007f748d2461c2: mov    %r9,%r10
  0.10%    0.08%   │   0x00007f748d2461c5: mov    %r11d,%r9d
  0.13%    0.15%   │   0x00007f748d2461c8: mov    0x8(%r12,%r13,8),%edx  ; implicit exception: dispatches to 0x00007f748d2483f1
  0.25%    0.14%   │   0x00007f748d2461cd: cmp    $0xf80002da,%edx   ;   {metadata(&apos;java/lang/String&apos;)}
                   │   0x00007f748d2461d3: jne    0x00007f748d2471e1  ;*invokevirtual isEmpty
                   │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.04%    0.03%   │   0x00007f748d2461d9: lea    (%r12,%r13,8),%r11  ;*if_icmplt
                   │                                                 ; - java.lang.String::charAt@10 (line 657)
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.10%    0.07%   │   0x00007f748d2461dd: vmovq  %r11,%xmm0
  0.12%    0.11%   │   0x00007f748d2461e2: test   %edi,%edi
                   │   0x00007f748d2461e4: jl     0x00007f748d247301  ;*ireturn
                   │                                                 ; - java.lang.String::isEmpty@13 (line 635)
                   │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.23%    0.14%   │   0x00007f748d2461ea: mov    0xc(%r11),%edx     ;*aload_0
                   │                                                 ; - java.lang.String::indexOf@60 (line 1771)
                   │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.04%    0.03%   │   0x00007f748d2461ee: mov    0xc(%r12,%rdx,8),%ebp  ;*synchronization entry
                   │                                                 ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                   │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                   │                                                 ; implicit exception: dispatches to 0x00007f748d248405
  0.13%    0.18%   │   0x00007f748d2461f3: cmp    %ebp,%edi
                   │   0x00007f748d2461f5: jge    0x00007f748d2475bd  ;*ireturn
                   │                                                 ; - java.lang.String::isEmpty@13 (line 635)
                   │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.25%    0.26%   │   0x00007f748d2461fb: cmp    %ebp,%edi
                   │   0x00007f748d2461fd: jae    0x00007f748d247199  ;*synchronization entry
                   │                                                 ; - com.google.re2j.Machine::match@-1 (line 182)
  0.19%    0.22%   │   0x00007f748d246203: lea    (%r12,%rdx,8),%r11
  0.06%    0.05%   │   0x00007f748d246207: movzwl 0x10(%r11,%rdi,2),%r11d  ;*if_icmplt
                   │                                                 ; - java.lang.String::charAt@10 (line 657)
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.23%    0.24%   │   0x00007f748d24620d: cmp    $0xd800,%r11d
                   │   0x00007f748d246214: jge    0x00007f748d247605  ;*aload
                   │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.25%    0.38%   │   0x00007f748d24621a: shl    $0x3,%r11d         ;*invokeinterface charAt
                   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.14%    0.17%   │   0x00007f748d24621e: mov    %r11d,%edi
  0.02%    0.06%   │   0x00007f748d246221: and    $0x7,%edi
  0.20%    0.32%   │   0x00007f748d246224: or     $0x1,%r11d
  0.36%    0.38%   │   0x00007f748d246228: or     $0x1,%edi
  0.26%    0.27%   │   0x00007f748d24622b: sar    $0x3,%r11d         ;*invokevirtual add
                   │                                                 ; - com.google.re2j.Machine::match@314 (line 243)
  0.09%    0.18%   │   0x00007f748d24622f: mov    %r10,%r9
  0.04%    0.02%   │   0x00007f748d246232: mov    %r14d,%r10d        ;*goto
                   │                                                 ; - com.google.re2j.Machine::match@126 (line 205)
  0.13%    0.18%   │   0x00007f748d246235: vmovq  %r8,%xmm0
  0.26%    0.31%   │   0x00007f748d24623a: mov    %r9,0x30(%rsp)
  0.13%    0.15%   │   0x00007f748d24623f: mov    %r10d,0x3c(%rsp)   ; OopMap{r8=Oop r9=Oop rbx=NarrowOop r13=NarrowOop xmm0=Oop [8]=Oop [48]=Oop [88]=Oop off=868}
                   │                                                 ;*goto
                   │                                                 ; - com.google.re2j.Machine::match@437 (line 266)
  0.05%    0.03%   │   0x00007f748d246244: test   %eax,0x17cb0db6(%rip)        # 0x00007f74a4ef7000
                   │                                                 ;*aload
                   │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
                   │                                                 ;   {poll}
  0.09%    0.13%   │   0x00007f748d24624a: mov    0x28(%r8),%r14d    ;*ifne
                   │                                                 ; - com.google.re2j.Machine::match@271 (line 237)
  0.25%    0.36%   │   0x00007f748d24624e: mov    0x58(%rsp),%r10
  0.13%    0.13%   │   0x00007f748d246253: mov    %r10,%r8
  0.04%    0.03%   │   0x00007f748d246256: shr    $0x3,%r8           ;*aload_0
                   │                                                 ; - com.google.re2j.Machine::step@21 (line 284)
                   │                                                 ; - com.google.re2j.Machine::match@355 (line 246)
  0.09%    0.17%   │   0x00007f748d24625a: mov    %r8d,0x48(%rsp)
  0.25%    0.38%   │   0x00007f748d24625f: mov    0x78(%rsp),%r9d
  0.10%    0.16%   │   0x00007f748d246264: mov    0x70(%rsp),%r10d
  0.04%    0.02%   │   0x00007f748d246269: mov    %r11d,0x44(%rsp)
  0.10%    0.20%   │   0x00007f748d24626e: mov    0x8(%rsp),%r11
  0.18%    0.35%   │   0x00007f748d246273: mov    %r11,0x58(%rsp)
  0.12%    0.12%   │   0x00007f748d246278: mov    0x40(%rsp),%r11d
  0.04%    0.08%   │   0x00007f748d24627d: mov    %r11d,0x38(%rsp)
  0.15%    0.12%   │   0x00007f748d246282: mov    %edi,0x40(%rsp)
  0.28%    0.29%   │   0x00007f748d246286: vmovd  %ebx,%xmm5
  0.10%    0.15%   │   0x00007f748d24628a: mov    %ecx,0x10(%rsp)    ;*aload_0
                   │                                                 ; - com.google.re2j.Machine::match@158 (line 216)
  0.05%    0.05%   ↘   0x00007f748d24628e: mov    0x48(%rsp),%r11d
  0.14%    0.10%       0x00007f748d246293: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f748d24839d
  0.31%    0.37%       0x00007f748d246299: vmovq  %xmm0,%r8
  0.12%    0.16%       0x00007f748d24629e: movzbl 0x11(%r8),%r8d     ;*ishl
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
  0.03%    0.07%       0x00007f748d2462a3: vmovd  %r8d,%xmm1
  0.11%    0.14%       0x00007f748d2462a8: mov    0x48(%rsp),%r8d
  0.28%    0.33%       0x00007f748d2462ad: shl    $0x3,%r8           ;*aaload
                                                                     ; - com.google.re2j.Machine::step@83 (line 294)
                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
  0.12%    0.15%       0x00007f748d2462b1: mov    %r8,0x8(%rsp)
  0.01%    0.02%       0x00007f748d2462b6: test   %r11d,%r11d
                       0x00007f748d2462b9: je     0x00007f748d2463d3  ;*caload
                                                                     ; - java.lang.String::indexOf@63 (line 1771)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
  0.01%    0.01%       0x00007f748d2462bf: mov    0x4c(%rsp),%r8d
  0.09%    0.23%       0x00007f748d2462c4: test   %r8d,%r8d
                       0x00007f748d2462c7: jne    0x00007f748d2477a1  ;*invokestatic isWordRune
                                                                     ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.10%    0.14%       0x00007f748d2462cd: test   %eax,%eax
                       0x00007f748d2462cf: jne    0x00007f748d2477e9  ;*if_icmpne
                                                                     ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                     ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%    0.01%       0x00007f748d2462d5: vmovd  %xmm5,%r8d
  0.02%    0.00%       0x00007f748d2462da: mov    0x24(%r12,%r8,8),%r11d  ;*if_icmpeq
                                                                     ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                                     ; implicit exception: dispatches to 0x00007f748d24842d
  0.10%    0.13%       0x00007f748d2462df: mov    %r11d,%ebx
  0.10%    0.11%       0x00007f748d2462e2: mov    0xc(%r12,%r11,8),%r11d  ;*instanceof
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                                                                     ; implicit exception: dispatches to 0x00007f748d24843d
  0.00%    0.01%       0x00007f748d2462e7: vmovd  %r11d,%xmm2
           0.00%       0x00007f748d2462ec: mov    0xc(%r12,%r11,8),%r11d  ;*caload
                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                                                     ; implicit exception: dispatches to 0x00007f748d24844d
  0.14%    0.23%       0x00007f748d2462f1: mov    %r11d,0x50(%rsp)
  0.09%    0.14%       0x00007f748d2462f6: test   %r11d,%r11d
                       0x00007f748d2462f9: je     0x00007f748d2463d3  ;*iload
                                                                     ; - java.lang.String::indexOf@91 (line 1776)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                       0x00007f748d2462ff: mov    0x14(%r12,%r8,8),%ebp  ;*invokeinterface charAt
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                       0x00007f748d246304: mov    0x44(%rsp),%r8d
                       0x00007f748d246309: cmp    %ebp,%r8d
                       0x00007f748d24630c: je     0x00007f748d247f11  ;*if_icmpeq
                                                                     ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%    0.00%       0x00007f748d246312: mov    %r10d,%r11d
                       0x00007f748d246315: add    0x14(%rsp),%r11d   ;*iflt
                                                                     ; - java.lang.String::charAt@1 (line 657)
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%       0x00007f748d24631a: mov    %r11d,0x3c(%rsp)
                       0x00007f748d24631f: mov    0x8(%r12,%r13,8),%r8d  ; implicit exception: dispatches to 0x00007f748d2484c5
                       0x00007f748d246324: cmp    $0xf80002da,%r8d   ;   {metadata(&apos;java/lang/String&apos;)}
                       0x00007f748d24632b: jne    0x00007f748d248331  ;*if_icmpeq
                                                                     ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                       0x00007f748d246331: shl    $0x3,%r13          ;*if_icmpne
                                                                     ; - java.lang.String::indexOf@134 (line 1779)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%                0x00007f748d246335: mov    0xc(%r13),%r11d    ;*instanceof
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
                       0x00007f748d246339: vmovd  %r11d,%xmm4
                       0x00007f748d24633e: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                                                                     ; - java.lang.String::charAt@23 (line 660)
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                                                     ; implicit exception: dispatches to 0x00007f748d2484f1
                       0x00007f748d246343: mov    %r11d,0x40(%rsp)
  0.00%    0.00%       0x00007f748d246348: mov    0x3c(%rsp),%r11d
                       0x00007f748d24634d: cmp    0x40(%rsp),%r11d
                       0x00007f748d246352: jge    0x00007f748d2469c6  ;*aload_0
                                                                     ; - java.lang.String::indexOf@79 (line 1772)
                                                                     ; - java.lang.String::indexOf@21 (line 1718)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                     ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%                0x00007f748d246358: test   %r11d,%r11d
                       0x00007f748d24635b: jl     0x00007f748d247f59
                       0x00007f748d246361: mov    0x50(%rsp),%r11d
  0.00%                0x00007f748d246366: test   %r11d,%r11d
                       0x00007f748d246369: jbe    0x00007f748d247e35  ;*aload
                                                                     ; - com.google.re2j.Machine::match@136 (line 211)
                       0x00007f748d24636f: mov    0x40(%rsp),%r11d
  0.00%                0x00007f748d246374: sub    0x50(%rsp),%r11d   ;*invokeinterface charAt
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                       0x00007f748d246379: mov    %r11d,0x38(%rsp)
                       0x00007f748d24637e: mov    0x3c(%rsp),%r11d
                       0x00007f748d246383: cmp    0x38(%rsp),%r11d
                       0x00007f748d246388: jg     0x00007f748d2469c6  ;*invokeinterface charAt
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@226 (line 229)
  0.00%                0x00007f748d24638e: vmovd  %xmm2,%r11d
                       0x00007f748d246393: movzwl 0x10(%r12,%r11,8),%r11d  ;*caload
                                                                     ; - java.lang.String::charAt@27 (line 660)
                                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                       0x00007f748d246399: mov    %r11d,0x44(%rsp)
                       0x00007f748d24639e: mov    0x38(%rsp),%edi
....................................................................................................
 11.99%   13.49%  <total for region 3>

....[Hottest Regions]...............................................................................
 52.68%   52.76%         C2, level 4  com.google.re2j.Machine::match, version 550 (1024 bytes) 
 14.45%   16.80%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 523 (893 bytes) 
 11.99%   13.49%         C2, level 4  com.google.re2j.Machine::match, version 550 (764 bytes) 
  6.09%    2.69%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 508 (362 bytes) 
  5.03%    6.22%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 508 (359 bytes) 
  2.31%    1.52%         C1, level 3  java.lang.invoke.LambdaForm$BasicType::basicType, version 189 (14 bytes) 
  1.89%    2.07%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 508 (115 bytes) 
  1.22%    0.59%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 499 (188 bytes) 
  1.02%    1.17%         C2, level 4  com.google.re2j.Machine::match, version 550 (119 bytes) 
  0.37%    0.36%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%            [kernel.kallsyms]  [unknown] (49 bytes) 
  0.12%    0.01%         C2, level 4  com.google.re2j.Pattern::find, version 556 (210 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.Pattern::find, version 556 (8 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 556 (0 bytes) 
  0.09%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 556 (28 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 550 (104 bytes) 
  0.08%    0.09%         C2, level 4  com.google.re2j.Pattern::find, version 556 (20 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.02%   [kernel.kallsyms]  [unknown] (27 bytes) 
  2.03%    1.87%  <...other 386 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 65.96%   67.65%         C2, level 4  com.google.re2j.Machine::match, version 550 
 14.45%   16.80%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 523 
 13.01%   10.98%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 508 
  2.31%    1.52%         C1, level 3  java.lang.invoke.LambdaForm$BasicType::basicType, version 189 
  1.41%    1.07%   [kernel.kallsyms]  [unknown] 
  1.22%    0.59%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 499 
  0.67%    0.30%         C2, level 4  com.google.re2j.Pattern::find, version 556 
  0.08%    0.07%         C2, level 4  java.util.Collections::shuffle, version 574 
  0.06%                       [vdso]  [unknown] 
  0.05%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.09%        libc-2.26.so  vfprintf 
  0.04%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.14%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.02%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 631 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%           libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.46%    0.27%  <...other 71 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 95.44%   96.41%         C2, level 4
  2.32%    1.52%         C1, level 3
  1.41%    1.07%   [kernel.kallsyms]
  0.45%    0.58%           libjvm.so
  0.20%    0.34%        libc-2.26.so
  0.06%                       [vdso]
  0.04%    0.05%      hsdis-amd64.so
  0.04%    0.01%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%                  C1, level 1
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  7773.394 ± 12.262  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
