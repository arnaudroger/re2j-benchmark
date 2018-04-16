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
# Warmup Iteration   1: 2917.666 ops/s
# Warmup Iteration   2: 6002.770 ops/s
# Warmup Iteration   3: 6183.498 ops/s
# Warmup Iteration   4: 6192.028 ops/s
# Warmup Iteration   5: 6292.930 ops/s
# Warmup Iteration   6: 6247.074 ops/s
# Warmup Iteration   7: 6311.995 ops/s
# Warmup Iteration   8: 6274.759 ops/s
# Warmup Iteration   9: 6394.008 ops/s
# Warmup Iteration  10: 6418.843 ops/s
# Warmup Iteration  11: 6349.617 ops/s
# Warmup Iteration  12: 6242.714 ops/s
# Warmup Iteration  13: 6360.877 ops/s
# Warmup Iteration  14: 6418.922 ops/s
# Warmup Iteration  15: 6419.113 ops/s
# Warmup Iteration  16: 6416.701 ops/s
# Warmup Iteration  17: 6316.004 ops/s
# Warmup Iteration  18: 6338.738 ops/s
# Warmup Iteration  19: 6400.020 ops/s
# Warmup Iteration  20: 6409.595 ops/s
Iteration   1: 6367.366 ops/s
Iteration   2: 6341.461 ops/s
Iteration   3: 6315.724 ops/s
Iteration   4: 6269.000 ops/s
Iteration   5: 6372.538 ops/s
Iteration   6: 6430.536 ops/s
Iteration   7: 6396.026 ops/s
Iteration   8: 6361.459 ops/s
Iteration   9: 6314.008 ops/s
Iteration  10: 6432.759 ops/s
Iteration  11: 6431.296 ops/s
Iteration  12: 6419.891 ops/s
Iteration  13: 6377.604 ops/s
Iteration  14: 6418.725 ops/s
Iteration  15: 6431.400 ops/s
Iteration  16: 6397.425 ops/s
Iteration  17: 6404.079 ops/s
Iteration  18: 6385.113 ops/s
Iteration  19: 6431.969 ops/s
Iteration  20: 6420.930 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  6385.966 ±(99.9%) 40.529 ops/s [Average]
  (min, avg, max) = (6269.000, 6385.966, 6432.759), stdev = 46.673
  CI (99.9%): [6345.436, 6426.495] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 219225 total address lines.
Perf output processed (skipped 23.232 seconds):
 Column 1: cycles (20488 events)
 Column 2: instructions (20472 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 600 (401 bytes) 

                                                                      ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                        0x00007f1908a2835c: mov    0x24(%r10),%ecx    ;*getfield poolSize
                                                                      ; - com.google.re2j.Machine::alloc@1 (line 132)
                                                                      ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                      ; - com.google.re2j.Machine::match@315 (line 239)
                        0x00007f1908a28360: mov    %rax,0x90(%rsp)
                  ╭     0x00007f1908a28368: jmp    0x00007f1908a2837a
                  │     0x00007f1908a2836a: nopw   0x0(%rax,%rax,1)
  0.88%    0.52%  │  ↗  0x00007f1908a28370: xor    %ebx,%ebx          ;*invokevirtual add
                  │  │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.14%  │ ↗│  0x00007f1908a28372: test   %ebx,%ebx
                  │ ││  0x00007f1908a28374: jne    0x00007f1908a282f3  ;*aaload
                  │ ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.41%    0.48%  ↘ ││  0x00007f1908a2837a: mov    0xc(%r12,%rcx,8),%r9d  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                    ││                                                ; implicit exception: dispatches to 0x00007f1908a2a4e9
  0.21%    0.23%    ││  0x00007f1908a2837f: cmp    %r9d,%r8d
                    ││  0x00007f1908a28382: jge    0x00007f1908a28db5  ;*arraylength
                    ││                                                ; - java.lang.String::indexOf@9 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.82%    0.49%    ││  0x00007f1908a28388: mov    %r8d,%r10d
  0.04%    0.04%    ││  0x00007f1908a2838b: inc    %r10d
  0.39%    0.38%    ││  0x00007f1908a2838e: mov    0x78(%rsp),%r11
  0.19%    0.23%    ││  0x00007f1908a28393: mov    %r10d,0xc(%r11)
  0.62%    0.36%    ││  0x00007f1908a28397: cmp    %r9d,%r8d
                    ││  0x00007f1908a2839a: jae    0x00007f1908a28d21  ;*getfield value
                    ││                                                ; - java.lang.String::indexOf@11 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.06%    ││  0x00007f1908a283a0: mov    0x48(%rsp),%r11d
  0.39%    0.32%    ││  0x00007f1908a283a5: mov    0xc(%r12,%r11,8),%r9d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.19%    0.25%    ││  0x00007f1908a283aa: mov    0x90(%rsp),%r10
  0.77%    0.17%    ││  0x00007f1908a283b2: mov    %r10,%r11
  0.03%    0.08%    ││  0x00007f1908a283b5: shr    $0x3,%r11
  0.46%    0.23%    ││  0x00007f1908a283b9: lea    (%r12,%rcx,8),%r10  ;*aload_1
                    ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                    ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.16%    0.16%    ││  0x00007f1908a283bd: lea    0x10(%r10,%r8,4),%r10  ;*invokeinterface charAt
                    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.74%    0.17%    ││  0x00007f1908a283c2: mov    %r11d,(%r10)
  0.04%    0.04%    ││  0x00007f1908a283c5: shr    $0x9,%r10
  0.40%    0.10%    ││  0x00007f1908a283c9: movabs $0x7f19041db000,%r11
  0.20%    0.08%    ││  0x00007f1908a283d3: mov    %r12b,(%r11,%r10,1)  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2167}
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.92%    0.28%    ││  0x00007f1908a283d7: test   %eax,0x15fa5c23(%rip)        # 0x00007f191e9ce000
                    ││                                                ;*invokeinterface charAt
                    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
                    ││                                                ;   {poll}
  0.05%    0.06%    ││  0x00007f1908a283dd: mov    0x88(%rsp),%r11d
  0.44%    0.09%    ││  0x00007f1908a283e5: cmp    %edi,%r11d
                    ││  0x00007f1908a283e8: jge    0x00007f1908a27da8  ;*invokestatic codePointAt
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.15%    0.04%    ││  0x00007f1908a283ee: mov    %r9d,%edi
  0.77%    0.28%    ││  0x00007f1908a283f1: mov    %r11d,0x8c(%rsp)   ;*if_icmpgt
                    ││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.07%    0.07%    ││  0x00007f1908a283f9: mov    0x48(%rsp),%r10d
  0.45%    0.10%    ││  0x00007f1908a283fe: mov    0x20(%r12,%r10,8),%edx  ;*aload_0
                    ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.20%    0.08%    ││  0x00007f1908a28403: mov    0xc(%r12,%rdx,8),%r11d  ; implicit exception: dispatches to 0x00007f1908a2a4b9
  1.10%    0.48%    ││  0x00007f1908a28408: mov    0x8c(%rsp),%r8d
  0.74%    0.39%    ││  0x00007f1908a28410: cmp    %r11d,%r8d
                    ││  0x00007f1908a28413: jae    0x00007f1908a28bf1
  0.67%    0.30%    ││  0x00007f1908a28419: lea    (%r12,%rdx,8),%r10
  0.21%    0.07%    ││  0x00007f1908a2841d: mov    0x10(%r10,%r8,4),%r11d  ;*instanceof
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.74%    0.47%    ││  0x00007f1908a28422: mov    %r11d,0x80(%rsp)
  0.10%    0.19%    ││  0x00007f1908a2842a: mov    0x10(%r12,%r11,8),%r9d  ;*caload
                    ││                                                ; - java.lang.String::indexOf@129 (line 1779)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                    ││                                                ; implicit exception: dispatches to 0x00007f1908a2a4c9
  3.89%    3.86%    ││  0x00007f1908a2842f: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a2a4d9
  8.51%   10.03%    ││  0x00007f1908a28434: mov    0xc(%r12,%r11,8),%r11d  ;*aload_0
                    ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                    ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.03%    ││  0x00007f1908a28439: mov    0x78(%rsp),%r8
                    ││  0x00007f1908a2843e: mov    0xc(%r8),%r8d      ;*ifle
                    ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.07%    0.00%    ││  0x00007f1908a28442: mov    0x78(%rsp),%rcx
  1.44%    1.68%    ││  0x00007f1908a28447: mov    0x24(%rcx),%ecx    ;*getfield poolSize
                    ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                    ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.03%    ││  0x00007f1908a2844a: mov    0x8c(%rsp),%ebx
  0.00%    0.00%    ││  0x00007f1908a28451: inc    %ebx               ;*if_icmple
                    ││                                                ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.05%    0.02%    ││  0x00007f1908a28453: mov    %ebx,0x88(%rsp)
  1.53%    1.65%    ││  0x00007f1908a2845a: mov    0x80(%rsp),%esi
  0.03%    0.07%    ││  0x00007f1908a28461: lea    (%r12,%rsi,8),%rbx  ;*aload_1
                    ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                    ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                    ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                    ││  0x00007f1908a28465: mov    %rbx,0x90(%rsp)
  0.02%    0.02%    ││  0x00007f1908a2846d: cmp    $0x6,%r10d
                    ││  0x00007f1908a28471: je     0x00007f1908a28a15  ;*if_icmplt
                    ││                                                ; - java.lang.Character::charCount@3 (line 4818)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                    ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  1.53%    1.74%    ││  0x00007f1908a28477: mov    0x8(%r12,%r9,8),%r10d
  0.03%    0.06%    ││  0x00007f1908a2847c: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007f1908a28483: jne    0x00007f1908a28c81  ;*invokevirtual indexOf
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.01%    ││  0x00007f1908a28489: lea    (%r12,%r9,8),%r10
  0.02%    0.04%    ││  0x00007f1908a2848d: mov    0xc(%r10),%r9d     ;*if_icmple
                    ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                    ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                    ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  1.47%    1.64%    ││  0x00007f1908a28491: cmp    $0xa,%r9d
                    ││  0x00007f1908a28495: je     0x00007f1908a282f3  ;*invokestatic charCount
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                    ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.04%    0.06%    ││  0x00007f1908a2849b: cmp    $0xb,%r9d
                    ││  0x00007f1908a2849f: je     0x00007f1908a28e4d  ;*invokevirtual indexOf
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.00%    ││  0x00007f1908a284a5: mov    0x20(%r10),%ebx    ;*land
                    ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                    ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.05%    ││  0x00007f1908a284a9: cmp    $0x9,%r9d
                   ╭││  0x00007f1908a284ad: jne    0x00007f1908a284c3  ;*ireturn
                   │││                                                ; - java.lang.Character::charCount@11 (line 4818)
                   │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   │││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.27%    0.45%   │││  0x00007f1908a284af: cmp    0x84(%rsp),%ebx
                   │││  0x00007f1908a284b6: je     0x00007f1908a287dc  ;*if_icmpgt
                   │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                   │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                   │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.23%    0.21%   │││  0x00007f1908a284bc: xor    %ebx,%ebx
                   │╰│  0x00007f1908a284be: jmpq   0x00007f1908a28372
  1.17%    1.33%   ↘ │  0x00007f1908a284c3: cmp    $0xc,%r9d
                     │  0x00007f1908a284c7: jne    0x00007f1908a28f2d  ;*getfield value
                     │                                                ; - java.lang.String::indexOf@1 (line 1718)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.25%    0.26%     │  0x00007f1908a284cd: cmp    0x84(%rsp),%ebx
                     │  0x00007f1908a284d4: je     0x00007f1908a27d96  ;*arraylength
                     │                                                ; - com.google.re2j.Machine::match@286 (line 236)
  0.57%    0.79%     │  0x00007f1908a284da: mov    0x24(%r10),%ebx    ;*invokevirtual add
                     │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.02%     │  0x00007f1908a284de: cmp    0x84(%rsp),%ebx
                     │  0x00007f1908a284e5: je     0x00007f1908a27d96  ;*iadd
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@29 (line 188)
                     │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  1.05%    1.13%     │  0x00007f1908a284eb: mov    0x28(%r10),%r9d    ;*if_icmpne
                     │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.06%    0.08%     │  0x00007f1908a284ef: cmp    0x84(%rsp),%r9d
                     │  0x00007f1908a284f7: je     0x00007f1908a28fe1  ;*getfield value
                     │                                                ; - java.lang.String::indexOf@1 (line 1718)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.75%    0.75%     │  0x00007f1908a284fd: mov    0x2c(%r10),%r9d
  0.00%    0.01%     │  0x00007f1908a28501: cmp    0x84(%rsp),%r9d
                     ╰  0x00007f1908a28509: jne    0x00007f1908a28370  ;*if_icmpne
                                                                      ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                      ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                      ; - com.google.re2j.Machine::match@121 (line 201)
                        0x00007f1908a2850f: mov    $0xffffff65,%esi   ;*goto
                                                                      ; - com.google.re2j.Machine::step@182 (line 297)
                                                                      ; - com.google.re2j.Machine::match@356 (line 242)
                        0x00007f1908a28514: mov    0x78(%rsp),%rbp
                        0x00007f1908a28519: mov    0x10(%rsp),%r11
                        0x00007f1908a2851e: mov    %r11,0x8(%rsp)
....................................................................................................
 36.78%   33.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 552 (1416 bytes) 

                                                                       ; - com.google.re2j.Machine::alloc@25 (line 134)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007f1908a063b1: mov    %rdi,%r10
                         0x00007f1908a063b4: shr    $0x9,%r10
                         0x00007f1908a063b8: movabs $0x7f19041db000,%r11
                         0x00007f1908a063c2: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                                                                       ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007f1908a063c6: mov    0x58(%rsp),%r10
  0.15%                  0x00007f1908a063cb: mov    0xc(%r10),%ebp     ;*arraylength
                                                                       ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; implicit exception: dispatches to 0x00007f1908a07f1d
                         0x00007f1908a063cf: test   %ebp,%ebp
                         0x00007f1908a063d1: jg     0x00007f1908a07375  ;*ifle
                                                                       ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007f1908a063d7: mov    0x60(%rsp),%r10
                         0x00007f1908a063dc: mov    %esi,0xc(%r10)     ;*putfield size
                                                                       ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.18%         0x00007f1908a063e0: vmovd  %xmm1,%r11d
                         0x00007f1908a063e5: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007f1908a07f2d
                         0x00007f1908a063ea: cmp    %r8d,%r14d
                         0x00007f1908a063ed: jae    0x00007f1908a06f51
                         0x00007f1908a063f3: mov    %rdi,%r11
  0.17%    0.18%         0x00007f1908a063f6: shr    $0x3,%r11          ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007f1908a063fa: vmovd  %xmm1,%r8d
                         0x00007f1908a063ff: lea    (%r12,%r8,8),%r10  ;*getfield denseThreads
                                                                       ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007f1908a06403: lea    0x10(%r10,%r9,1),%r10
  0.19%    0.21%         0x00007f1908a06408: mov    %r11d,(%r10)
                         0x00007f1908a0640b: shr    $0x9,%r10
                         0x00007f1908a0640f: movabs $0x7f19041db000,%r11
                         0x00007f1908a06419: mov    %r12b,(%r11,%r10,1)  ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.17%         0x00007f1908a0641d: mov    %rdx,%r9
                         0x00007f1908a06420: xor    %eax,%eax
                         0x00007f1908a06422: mov    %r13,%rbx
                         0x00007f1908a06425: mov    0xa0(%rsp),%rdi
  0.17%    0.12%         0x00007f1908a0642d: mov    %esi,%r13d
                  ╭      0x00007f1908a06430: jmpq   0x00007f1908a06746  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │      0x00007f1908a06435: mov    0x18(%r11),%r10d   ;*getfield pc
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.05%  │      0x00007f1908a06439: cmp    $0x40,%r10d
                  │      0x00007f1908a0643d: jg     0x00007f1908a071c1  ;*if_icmpgt
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.21%  │      0x00007f1908a06443: mov    $0x1,%r8d
  0.13%    0.14%  │      0x00007f1908a06449: mov    %r10d,%ecx
  0.01%    0.00%  │      0x00007f1908a0644c: shl    %cl,%r8            ;*lshl
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.34%  │      0x00007f1908a0644f: mov    %rdx,%rcx
  0.02%    0.01%  │      0x00007f1908a06452: and    %r8,%rcx
  0.05%    0.06%  │      0x00007f1908a06455: test   %rcx,%rcx
                  │      0x00007f1908a06458: jne    0x00007f1908a06e6f  ;*ifeq
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.18%  │      0x00007f1908a0645e: cmp    $0x40,%r10d
                  │      0x00007f1908a06462: jge    0x00007f1908a0720d  ;*if_icmpge
                  │                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.18%  │      0x00007f1908a06468: mov    0x1c(%r11),%ebp    ;*getfield outInst
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.03%  │      0x00007f1908a0646c: or     %r8,%rdx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.05%  │      0x00007f1908a0646f: mov    0x60(%rsp),%r10
  0.20%    0.23%  │      0x00007f1908a06474: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                  │                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%    0.16%  │      0x00007f1908a06478: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a07ee5
  0.01%    0.00%  │      0x00007f1908a0647d: lea    (%r12,%rbp,8),%r8
  0.06%    0.04%  │      0x00007f1908a06481: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │╭     0x00007f1908a06488: je     0x00007f1908a065ba
  0.03%    0.01%  ││     0x00007f1908a0648e: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ││     0x00007f1908a06495: jne    0x00007f1908a07259  ;*invokevirtual add
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.09%  ││     0x00007f1908a0649b: mov    0x18(%r8),%r10d    ;*getfield pc
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%           ││     0x00007f1908a0649f: cmp    $0x40,%r10d
                  ││     0x00007f1908a064a3: jg     0x00007f1908a075e9  ;*if_icmpgt
                  ││                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  ││     0x00007f1908a064a9: mov    $0x1,%eax
  0.03%    0.01%  ││     0x00007f1908a064ae: mov    %r10d,%ecx
  0.07%    0.06%  ││     0x00007f1908a064b1: shl    %cl,%rax           ;*lshl
                  ││                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.04%  ││     0x00007f1908a064b4: mov    %rdx,%rcx
  0.08%    0.07%  ││     0x00007f1908a064b7: and    %rax,%rcx          ;*land
                  ││                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%           ││     0x00007f1908a064ba: test   %rcx,%rcx
                  ││     0x00007f1908a064bd: jne    0x00007f1908a06e9f  ;*ifeq
                  ││                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.02%  ││     0x00007f1908a064c3: mov    %r8,%r14
  0.03%    0.03%  ││     0x00007f1908a064c6: mov    %r11,0x68(%rsp)
  0.10%    0.06%  ││     0x00007f1908a064cb: mov    %rbx,0x8(%rsp)
  0.02%           ││     0x00007f1908a064d0: xor    %ebp,%ebp          ;*ireturn
                  ││                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.02%  ││     0x00007f1908a064d2: test   %rcx,%rcx
                  ││     0x00007f1908a064d5: jne    0x00007f1908a07635  ;*ifeq
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  ││     0x00007f1908a064db: mov    %r10d,%r11d
  0.09%    0.09%  ││     0x00007f1908a064de: cmp    $0x40,%r10d
                  ││     0x00007f1908a064e2: jge    0x00007f1908a0766d  ;*if_icmpge
                  ││                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%           ││     0x00007f1908a064e8: or     %rax,%rdx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  ││     0x00007f1908a064eb: mov    0x60(%rsp),%r10
  0.03%    0.02%  ││     0x00007f1908a064f0: mov    %rdx,0x10(%r10)    ;*putfield pcsl
                  ││                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.04%  ││     0x00007f1908a064f4: mov    %r14,%r10
  0.02%           ││     0x00007f1908a064f7: shr    $0x3,%r10          ;*putfield inst
                  ││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.00%  ││     0x00007f1908a064fb: test   %rdi,%rdi
                  ││     0x00007f1908a064fe: jne    0x00007f1908a06d66  ;*ifnonnull
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.01%  ││     0x00007f1908a06504: mov    0xa0(%rsp),%rbx
  0.08%    0.02%  ││     0x00007f1908a0650c: mov    0xc(%rbx),%r11d    ;*getfield poolSize
                  ││                                                   ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                   ; implicit exception: dispatches to 0x00007f1908a08011
  0.01%           ││     0x00007f1908a06510: test   %r11d,%r11d
                  ││     0x00007f1908a06513: jle    0x00007f1908a07709  ;*ifle
                  ││                                                   ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.00%  ││     0x00007f1908a06519: mov    0x24(%rbx),%ecx    ;*getfield pool
                  ││                                                   ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.03%  ││     0x00007f1908a0651c: mov    %r11d,%ebp
  0.06%    0.02%  ││     0x00007f1908a0651f: dec    %ebp               ;*isub
                  ││                                                   ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.01%  ││     0x00007f1908a06521: mov    %ebp,0xc(%rbx)     ;*putfield poolSize
                  ││                                                   ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.06%  ││     0x00007f1908a06524: mov    0xc(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x00007f1908a08025
  0.03%    0.00%  ││     0x00007f1908a06529: cmp    %r8d,%ebp
                  ││     0x00007f1908a0652c: jae    0x00007f1908a073ad
  0.07%    0.01%  ││     0x00007f1908a06532: lea    (%r12,%rcx,8),%r8
  0.01%    0.02%  ││     0x00007f1908a06536: mov    0xc(%r8,%r11,4),%r11d  ;*aaload
                  ││                                                   ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  ││     0x00007f1908a0653b: mov    %r10d,0x10(%r12,%r11,8)  ;*putfield inst
                  ││                                                   ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                   ; implicit exception: dispatches to 0x00007f1908a08035
  0.18%    0.08%  ││     0x00007f1908a06540: lea    (%r12,%r11,8),%rdi  ;*aaload
                  ││                                                   ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%           ││     0x00007f1908a06544: mov    %rdi,%r10
  0.01%    0.02%  ││     0x00007f1908a06547: shr    $0x9,%r10
  0.01%           ││     0x00007f1908a0654b: movabs $0x7f19041db000,%r11
  0.09%    0.05%  ││     0x00007f1908a06555: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.18%    0.13%  ││     0x00007f1908a06559: mov    0x58(%rsp),%r10
  0.01%    0.01%  ││     0x00007f1908a0655e: mov    0xc(%r10),%ebp     ;*arraylength
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                   ; implicit exception: dispatches to 0x00007f1908a07fe5
  0.05%    0.02%  ││     0x00007f1908a06562: test   %ebp,%ebp
                  ││     0x00007f1908a06564: jg     0x00007f1908a076b9  ;*ifle
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.06%  ││     0x00007f1908a0656a: mov    %esi,%r8d
  0.11%    0.13%  ││     0x00007f1908a0656d: mov    0x60(%rsp),%r10
  0.00%    0.01%  ││     0x00007f1908a06572: mov    %esi,0xc(%r10)     ;*putfield size
                  ││                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%           ││     0x00007f1908a06576: vmovd  %xmm1,%r10d
  0.04%    0.05%  ││     0x00007f1908a0657b: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f1908a07ff5
  0.08%    0.11%  ││     0x00007f1908a06580: cmp    %r11d,%r13d
                  ││     0x00007f1908a06583: jae    0x00007f1908a07175
  0.00%    0.03%  ││     0x00007f1908a06589: mov    %rdi,%r10
  0.05%    0.03%  ││     0x00007f1908a0658c: shr    $0x3,%r10          ;*aastore
                  ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.06%  ││     0x00007f1908a06590: vmovd  %xmm1,%ecx
  0.06%    0.12%  ││     0x00007f1908a06594: lea    (%r12,%rcx,8),%r11  ;*getfield denseThreads
                  ││                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.04%  ││     0x00007f1908a06598: lea    0x10(%r11,%r9,1),%r11
  0.05%    0.03%  ││     0x00007f1908a0659d: mov    %r10d,(%r11)
  0.01%    0.05%  ││     0x00007f1908a065a0: mov    %r11,%r10
  0.11%    0.11%  ││     0x00007f1908a065a3: shr    $0x9,%r10
  0.00%           ││     0x00007f1908a065a7: movabs $0x7f19041db000,%r11
  0.02%    0.01%  ││     0x00007f1908a065b1: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.02%  ││     0x00007f1908a065b5: xor    %r11d,%r11d
  0.13%    0.18%  ││╭    0x00007f1908a065b8: jmp    0x00007f1908a06615
  0.11%    0.16%  │↘│    0x00007f1908a065ba: mov    %r11,0x68(%rsp)
  0.07%    0.04%  │ │    0x00007f1908a065bf: mov    %rbx,0x8(%rsp)     ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  │ │    0x00007f1908a065c4: mov    %r8,%rsi           ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  │ │    0x00007f1908a065c7: mov    0x60(%rsp),%rdx
  0.12%    0.16%  │ │    0x00007f1908a065cc: mov    0x30(%rsp),%ecx
  0.04%    0.03%  │ │    0x00007f1908a065d0: mov    0x58(%rsp),%r8
                  │ │    0x00007f1908a065d5: mov    0x54(%rsp),%r9d
  0.01%    0.01%  │ │    0x00007f1908a065da: mov    0xa0(%rsp),%r10
  0.11%    0.13%  │ │    0x00007f1908a065e2: mov    %r10,(%rsp)
  0.08%    0.03%  │ │    0x00007f1908a065e6: mov    %ecx,0x10(%rsp)
                  │ │    0x00007f1908a065ea: mov    %r8,0x18(%rsp)
  0.01%    0.01%  │ │    0x00007f1908a065ef: mov    %r9d,0x14(%rsp)
  0.11%    0.15%  │ │    0x00007f1908a065f4: data16 xchg %ax,%ax
  0.02%    0.04%  │ │    0x00007f1908a065f7: callq  0x00007f19087f3020  ; OopMap{[160]=Oop [8]=Oop [24]=Oop [88]=Oop [96]=Oop [104]=Oop off=956}
                  │ │                                                  ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ;   {optimized virtual_call}
           0.01%  │ │    0x00007f1908a065fc: mov    0x60(%rsp),%r10
  0.04%    0.04%  │ │    0x00007f1908a06601: mov    0xc(%r10),%r8d     ;*getfield size
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.12%  │ │    0x00007f1908a06605: mov    0x10(%r10),%rdx    ;*getfield pcsl
                  │ │                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%  │ │    0x00007f1908a06609: mov    0x20(%r10),%r11d   ;*getfield denseThreads
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.06%  │ │    0x00007f1908a0660d: vmovd  %r11d,%xmm1
  0.02%    0.02%  │ │    0x00007f1908a06612: mov    %rax,%r11          ;*getfield size
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.17%  │ ↘    0x00007f1908a06615: mov    0x68(%rsp),%r10
  0.04%    0.06%  │      0x00007f1908a0661a: mov    0x20(%r10),%r9d    ;*getfield argInst
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.09%  │      0x00007f1908a0661e: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f1908a07f01
  0.13%    0.22%  │      0x00007f1908a06623: lea    (%r12,%r9,8),%r10
  0.09%    0.14%  │      0x00007f1908a06627: cmp    $0xf8019992,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │      0x00007f1908a0662d: jne    0x00007f1908a06c45  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.07%  │      0x00007f1908a06633: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.09%  │      0x00007f1908a06637: cmp    $0x40,%ecx
                  │      0x00007f1908a0663a: jg     0x00007f1908a073ed  ;*if_icmpgt
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.26%  │      0x00007f1908a06640: mov    $0x1,%r9d
  0.09%    0.12%  │      0x00007f1908a06646: shl    %cl,%r9            ;*lshl
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.36%    0.39%  │      0x00007f1908a06649: mov    %r9,%rbx
  0.11%    0.09%  │      0x00007f1908a0664c: and    %rdx,%rbx          ;*land
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.08%  │      0x00007f1908a0664f: test   %rbx,%rbx
                  │      0x00007f1908a06652: jne    0x00007f1908a06e95  ;*ifeq
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.14%  │      0x00007f1908a06658: xor    %ebp,%ebp          ;*ireturn
                  │                                                    ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.14%  │      0x00007f1908a0665a: test   %rbx,%rbx
                  │      0x00007f1908a0665d: jne    0x00007f1908a07439  ;*ifeq
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.19%  │      0x00007f1908a06663: cmp    $0x40,%ecx
                  │      0x00007f1908a06666: jge    0x00007f1908a07471  ;*if_icmpge
                  │                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%  │      0x00007f1908a0666c: mov    0x60(%rsp),%rcx
  0.08%    0.07%  │      0x00007f1908a06671: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │                                                    ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.24%  │      0x00007f1908a06675: or     %rdx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.14%  │      0x00007f1908a06678: mov    %r9,0x10(%rcx)     ;*putfield pcsl
                  │                                                    ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.07%  │      0x00007f1908a0667c: mov    %r10,%rcx
  0.05%    0.04%  │      0x00007f1908a0667f: shr    $0x3,%rcx          ;*putfield inst
                  │                                                    ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.21%  │      0x00007f1908a06683: test   %r11,%r11
                  │      0x00007f1908a06686: jne    0x00007f1908a06d40  ;*ifnonnull
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.12%  │      0x00007f1908a0668c: mov    0xa0(%rsp),%rdi
  0.04%    0.07%  │      0x00007f1908a06694: mov    0xc(%rdi),%r11d    ;*getfield poolSize
                  │                                                    ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007f1908a07fad
  0.07%    0.08%  │      0x00007f1908a06698: test   %r11d,%r11d
                  │      0x00007f1908a0669b: jle    0x00007f1908a07545  ;*ifle
                  │                                                    ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.15%  │      0x00007f1908a066a1: mov    0x24(%rdi),%edx    ;*getfield pool
                  │                                                    ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.22%  │      0x00007f1908a066a4: mov    %r11d,%ebp
  0.04%    0.04%  │      0x00007f1908a066a7: dec    %ebp               ;*isub
                  │                                                    ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.09%  │      0x00007f1908a066a9: mov    %ebp,0xc(%rdi)     ;*putfield poolSize
                  │                                                    ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.16%  │      0x00007f1908a066ac: mov    0xc(%r12,%rdx,8),%ebx  ; implicit exception: dispatches to 0x00007f1908a07fc1
  0.15%    0.14%  │      0x00007f1908a066b1: cmp    %ebx,%ebp
                  │      0x00007f1908a066b3: jae    0x00007f1908a07109
  0.06%    0.14%  │      0x00007f1908a066b9: lea    (%r12,%rdx,8),%rbx
  0.08%    0.05%  │      0x00007f1908a066bd: mov    0xc(%rbx,%r11,4),%ebx  ;*aaload
                  │                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%    0.20%  │      0x00007f1908a066c2: mov    %ecx,0x10(%r12,%rbx,8)  ;*putfield inst
                  │                                                    ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007f1908a07fd1
  0.89%    1.12%  │      0x00007f1908a066c7: lea    (%r12,%rbx,8),%r11  ;*aaload
                  │                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.05%  │      0x00007f1908a066cb: mov    %r11,%r10
  0.05%    0.02%  │      0x00007f1908a066ce: shr    $0x9,%r10
  0.04%    0.00%  │      0x00007f1908a066d2: movabs $0x7f19041db000,%rcx
  0.29%    0.30%  │      0x00007f1908a066dc: mov    %r12b,(%rcx,%r10,1)  ;*aload_3
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.39%    0.42%  │      0x00007f1908a066e0: mov    0x58(%rsp),%r10
  0.02%    0.00%  │      0x00007f1908a066e5: mov    0xc(%r10),%ebp     ;*arraylength
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007f1908a07f49
  0.04%    0.02%  │      0x00007f1908a066e9: test   %ebp,%ebp
                  │      0x00007f1908a066eb: jg     0x00007f1908a074bd  ;*ifle
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.05%  │      0x00007f1908a066f1: mov    %r8d,%r13d
  0.33%    0.27%  │      0x00007f1908a066f4: inc    %r13d              ;*iadd
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.00%  │      0x00007f1908a066f7: mov    0x60(%rsp),%r10
  0.04%    0.04%  │      0x00007f1908a066fc: mov    %r13d,0xc(%r10)    ;*putfield size
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.07%  │      0x00007f1908a06700: vmovd  %xmm1,%r10d
  0.21%    0.41%  │      0x00007f1908a06705: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a07f59
  0.01%    0.02%  │      0x00007f1908a0670a: cmp    %r10d,%r8d
                  │      0x00007f1908a0670d: jae    0x00007f1908a07015
  0.06%    0.02%  │      0x00007f1908a06713: mov    %r11,%r10
  0.03%    0.06%  │      0x00007f1908a06716: shr    $0x3,%r10          ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.38%  │      0x00007f1908a0671a: vmovd  %xmm1,%ecx
  0.02%    0.03%  │      0x00007f1908a0671e: lea    (%r12,%rcx,8),%r11  ;*getfield denseThreads
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.02%  │      0x00007f1908a06722: lea    0x10(%r11,%r8,4),%r11
  0.04%    0.03%  │      0x00007f1908a06727: mov    %r10d,(%r11)
  0.22%    0.38%  │      0x00007f1908a0672a: mov    %r11,%r10
  0.01%    0.02%  │      0x00007f1908a0672d: shr    $0x9,%r10
  0.04%    0.02%  │      0x00007f1908a06731: movabs $0x7f19041db000,%r11
  0.05%    0.06%  │      0x00007f1908a0673b: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.30%  │      0x00007f1908a0673f: xor    %eax,%eax
  0.01%    0.01%  │      0x00007f1908a06741: mov    0x8(%rsp),%rbx     ;*getfield size
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.09%    0.08%  ↘      0x00007f1908a06746: mov    0x20(%rbx),%r11d   ;*getfield argInst
                                                                       ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
  0.08%    0.05%         0x00007f1908a0674a: mov    0x8(%r12,%r11,8),%r8d  ;*invokevirtual add
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                       ; implicit exception: dispatches to 0x00007f1908a07e61
  0.55%    0.60%         0x00007f1908a0674f: lea    (%r12,%r11,8),%r10
  0.01%                  0x00007f1908a06753: movslq %r13d,%r14
  0.04%    0.04%         0x00007f1908a06756: mov    %r13d,%esi
  0.03%    0.02%         0x00007f1908a06759: inc    %esi               ;*iadd
                                                                       ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.46%    0.64%         0x00007f1908a0675b: shl    $0x2,%r14          ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.01%         0x00007f1908a0675f: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                     ╭   0x00007f1908a06766: jne    0x00007f1908a06882  ;*invokevirtual add
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.03%    0.02%     │   0x00007f1908a0676c: mov    0x18(%r10),%r8d    ;*getfield pc
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%     │   0x00007f1908a06770: cmp    $0x40,%r8d
                     │   0x00007f1908a06774: jg     0x00007f1908a0707d  ;*if_icmpgt
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.34%     │   0x00007f1908a0677a: mov    $0x1,%ebx
  0.00%    0.01%     │   0x00007f1908a0677f: mov    %r8d,%ecx
  0.01%    0.06%     │   0x00007f1908a06782: shl    %cl,%rbx           ;*lshl
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.41%    0.56%     │   0x00007f1908a06785: mov    %rbx,%rcx
  0.00%    0.02%     │   0x00007f1908a06788: and    %r9,%rcx           ;*land
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%     │   0x00007f1908a0678b: test   %rcx,%rcx
                     │   0x00007f1908a0678e: jne    0x00007f1908a06e64  ;*ifeq
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.28%    0.33%     │   0x00007f1908a06794: xor    %r11d,%r11d        ;*ireturn
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.01%     │   0x00007f1908a06797: test   %rcx,%rcx
                     │   0x00007f1908a0679a: jne    0x00007f1908a070a5  ;*ifeq
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%     │   0x00007f1908a067a0: cmp    $0x40,%r8d
                     │   0x00007f1908a067a4: jge    0x00007f1908a070cd  ;*if_icmpge
                     │                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%     │   0x00007f1908a067aa: mov    0x60(%rsp),%r11
  0.31%    0.34%     │   0x00007f1908a067af: mov    %r12b,0x18(%r11)   ;*putfield empty
                     │                                                 ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.04%     │   0x00007f1908a067b3: or     %r9,%rbx
  0.06%    0.08%     │   0x00007f1908a067b6: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                     │                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.05%     │   0x00007f1908a067ba: mov    %r10,%r9
  0.32%    0.24%     │   0x00007f1908a067bd: shr    $0x3,%r9           ;*putfield inst
                     │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.03%     │   0x00007f1908a067c1: test   %rax,%rax
                     │   0x00007f1908a067c4: jne    0x00007f1908a06c27  ;*ifnonnull
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.04%     │   0x00007f1908a067ca: mov    0xc(%rdi),%r11d    ;*getfield poolSize
                     │                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                 ; implicit exception: dispatches to 0x00007f1908a07ead
  0.05%    0.02%     │   0x00007f1908a067ce: test   %r11d,%r11d
                     │   0x00007f1908a067d1: jle    0x00007f1908a07151  ;*ifle
                     │                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.22%    0.18%     │   0x00007f1908a067d7: mov    0x24(%rdi),%r8d    ;*getfield pool
                     │                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.03%    0.04%     │   0x00007f1908a067db: mov    %r11d,%ebp
  0.03%    0.08%     │   0x00007f1908a067de: dec    %ebp               ;*isub
                     │                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.06%    0.03%     │   0x00007f1908a067e0: mov    %ebp,0xc(%rdi)     ;*putfield poolSize
                     │                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.10%     │   0x00007f1908a067e3: mov    0xc(%r12,%r8,8),%ebx  ; implicit exception: dispatches to 0x00007f1908a07ec1
  0.02%    0.03%     │   0x00007f1908a067e8: cmp    %ebx,%ebp
                     │   0x00007f1908a067ea: jae    0x00007f1908a06f35
  0.05%    0.10%     │   0x00007f1908a067f0: shl    $0x3,%r8
  0.04%    0.02%     │   0x00007f1908a067f4: mov    0xc(%r8,%r11,4),%r11d  ;*aaload
                     │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.20%    0.12%     │   0x00007f1908a067f9: mov    %r9d,0x10(%r12,%r11,8)  ;*putfield inst
                     │                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                 ; implicit exception: dispatches to 0x00007f1908a07ed1
  0.03%    0.07%     │   0x00007f1908a067fe: lea    (%r12,%r11,8),%rax  ;*aaload
                     │                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.04%    0.02%     │   0x00007f1908a06802: mov    %rax,%r10
  0.03%    0.04%     │   0x00007f1908a06805: shr    $0x9,%r10
  0.24%    0.27%     │   0x00007f1908a06809: movabs $0x7f19041db000,%r11
  0.03%    0.05%     │   0x00007f1908a06813: mov    %r12b,(%r11,%r10,1)  ;*aload_3
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.06%     │   0x00007f1908a06817: mov    0x58(%rsp),%r10
  0.04%    0.03%     │   0x00007f1908a0681c: mov    0xc(%r10),%ebp     ;*arraylength
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                     │                                                 ; implicit exception: dispatches to 0x00007f1908a07e81
  0.27%    0.04%     │   0x00007f1908a06820: test   %ebp,%ebp
                     │   0x00007f1908a06822: jg     0x00007f1908a070f5  ;*ifle
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.02%     │   0x00007f1908a06828: mov    0x60(%rsp),%r10
  0.06%    0.09%     │   0x00007f1908a0682d: mov    %esi,0xc(%r10)     ;*putfield size
                     │                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.05%     │   0x00007f1908a06831: vmovd  %xmm1,%r10d
  0.19%    0.34%     │   0x00007f1908a06836: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a07e91
  0.03%    0.02%     │   0x00007f1908a0683b: cmp    %r10d,%r13d
                     │   0x00007f1908a0683e: jae    0x00007f1908a06f15
  0.04%    0.06%     │   0x00007f1908a06844: mov    %rax,%r10
  0.03%    0.08%     │   0x00007f1908a06847: shr    $0x3,%r10          ;*aastore
                     │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.24%    0.21%     │   0x00007f1908a0684b: vmovd  %xmm1,%r8d
  0.02%    0.04%     │   0x00007f1908a06850: lea    (%r12,%r8,8),%r11  ;*getfield denseThreads
                     │                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                     │                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.04%    0.06%     │   0x00007f1908a06854: lea    0x10(%r11,%r14,1),%r11
  0.04%    0.06%     │   0x00007f1908a06859: mov    %r10d,(%r11)
  0.19%    0.31%     │   0x00007f1908a0685c: mov    %r11,%r10
  0.02%    0.03%     │   0x00007f1908a0685f: shr    $0x9,%r10
  0.05%    0.07%     │   0x00007f1908a06863: movabs $0x7f19041db000,%r11
  0.03%    0.08%     │   0x00007f1908a0686d: mov    %r12b,(%r11,%r10,1)  ;*aastore
                     │                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                     │                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.21%    0.23%     │   0x00007f1908a06871: xor    %eax,%eax          ;*if_icmpgt
                     │                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                     │                                                 ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.17%    0.18%     │↗  0x00007f1908a06873: add    $0x90,%rsp
  0.05%    0.04%     ││  0x00007f1908a0687a: pop    %rbp
  0.03%    0.05%     ││  0x00007f1908a0687b: test   %eax,0x15fc777f(%rip)        # 0x00007f191e9ce000
                     ││                                                ;   {poll_return}
  0.30%    0.32%     ││  0x00007f1908a06881: retq   
                     ↘│  0x00007f1908a06882: cmp    $0xf8019886,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                      │  0x00007f1908a06889: jne    0x00007f1908a07589  ;*invokevirtual add
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a0688f: mov    0x18(%r10),%r8d    ;*getfield pc
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.22%      │  0x00007f1908a06893: cmp    $0x40,%r8d
                      │  0x00007f1908a06897: jg     0x00007f1908a0780d  ;*if_icmpgt
                      │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a0689d: mov    $0x1,%ebx
                      │  0x00007f1908a068a2: mov    %r8d,%ecx
                      │  0x00007f1908a068a5: shl    %cl,%rbx           ;*lshl
                      │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.17%      │  0x00007f1908a068a8: mov    %rbx,%r11
                      │  0x00007f1908a068ab: and    %r9,%r11           ;*land
                      │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.16%    0.39%      │  0x00007f1908a068ae: test   %r11,%r11
                      │  0x00007f1908a068b1: jne    0x00007f1908a06eb6  ;*ifeq
                      │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068b7: xor    %ebp,%ebp          ;*ireturn
                      │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068b9: test   %r11,%r11
                      │  0x00007f1908a068bc: jne    0x00007f1908a07845  ;*ifeq
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@8 (line 248)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068c2: cmp    $0x40,%r8d
                      │  0x00007f1908a068c6: jge    0x00007f1908a07865  ;*if_icmpge
                      │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.12%    0.08%      │  0x00007f1908a068cc: mov    0x60(%rsp),%r11
                      │  0x00007f1908a068d1: mov    %r12b,0x18(%r11)   ;*putfield empty
                      │                                                ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%               │  0x00007f1908a068d5: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068d8: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                      │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.24%      │  0x00007f1908a068dc: mov    0x58(%rsp),%r11
                      │  0x00007f1908a068e1: mov    0xc(%r11),%r8d     ;*arraylength
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@27 (line 253)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │                                                ; implicit exception: dispatches to 0x00007f1908a08049
                      │  0x00007f1908a068e5: mov    0x14(%r10),%ebp    ;*getfield arg
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@23 (line 253)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068e9: cmp    %r8d,%ebp
                      │  0x00007f1908a068ec: jl     0x00007f1908a0789d  ;*if_icmpge
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@28 (line 253)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.13%    0.13%      │  0x00007f1908a068f2: mov    0x1c(%r10),%ebp    ;*getfield outInst
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@75 (line 259)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a068f6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a08059
                      │  0x00007f1908a068fb: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                      │  0x00007f1908a06902: jne    0x00007f1908a075ad
                      │  0x00007f1908a06908: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.17%    0.28%      │  0x00007f1908a0690c: mov    0x18(%rdx),%r10d   ;*getfield pc
                      │                                                ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a06910: cmp    $0x40,%r10d
                      │  0x00007f1908a06914: jg     0x00007f1908a078cd  ;*if_icmpgt
                      │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                      │  0x00007f1908a0691a: mov    $0x1,%r11d
                      │  0x00007f1908a06920: mov    %r10d,%ecx
  0.17%    0.24%      │  0x00007f1908a06923: shl    %cl,%r11           ;*lshl
                      │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                      │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                      │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.01%      │  0x00007f1908a06926: mov    %rbx,%r9
  0.13%    0.25%      │  0x00007f1908a06929: and    %r11,%r9
                      │  0x00007f1908a0692c: test   %r9,%r9
                      ╰  0x00007f1908a0692f: jne    0x00007f1908a06873  ;*ifeq
                                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                       ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                         0x00007f1908a06935: cmp    $0x40,%r10d
                         0x00007f1908a06939: jge    0x00007f1908a07905  ;*if_icmpge
                                                                       ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                       ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                         0x00007f1908a0693f: mov    0x1c(%rdx),%ebp    ;*getfield outInst
                                                                       ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.19%    0.17%         0x00007f1908a06942: or     %r11,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                       ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                         0x00007f1908a06945: mov    0x60(%rsp),%r10
                         0x00007f1908a0694a: mov    %rbx,0x10(%r10)    ;*putfield pcsl
                                                                       ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                       ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                         0x00007f1908a0694e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a08079
  0.17%    0.20%         0x00007f1908a06953: lea    (%r12,%rbp,8),%r9
                         0x00007f1908a06957: cmp    $0xf8019843,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                         0x00007f1908a0695e: je     0x00007f1908a06ab1
                         0x00007f1908a06964: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                         0x00007f1908a0696b: jne    0x00007f1908a0793d  ;*invokevirtual add
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                         0x00007f1908a06971: mov    0x18(%r9),%r10d    ;*getfield pc
                                                                       ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
....................................................................................................
 21.85%   24.32%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 600 (819 bytes) 

                           0x00007f1908a27ffc: jg     0x00007f1908a28710  ;*invokestatic charCount
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                                                                         ; - com.google.re2j.Machine::match@249 (line 228)
                           0x00007f1908a28002: vmovd  %xmm3,%r11d
                           0x00007f1908a28007: movzwl 0x10(%r12,%r11,8),%r11d  ;*ifeq
                                                                         ; - java.lang.Character::codePointAt@12 (line 4867)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@96 (line 195)
                           0x00007f1908a2800d: mov    %r11d,0x44(%rsp)
                           0x00007f1908a28012: mov    0x38(%rsp),%r8d
           0.00%           0x00007f1908a28017: inc    %r8d               ;*if_icmpne
                                                                         ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                         ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                         ; - com.google.re2j.Machine::match@323 (line 241)
                           0x00007f1908a2801a: mov    0x38(%rsp),%r11d
                           0x00007f1908a2801f: add    $0xfffffffe,%r11d  ;*getfield cap
                                                                         ; - com.google.re2j.Machine::step@145 (line 291)
                                                                         ; - com.google.re2j.Machine::match@356 (line 242)
                           0x00007f1908a28023: vmovd  %xmm4,%ebx
                           0x00007f1908a28027: lea    (%r12,%rbx,8),%rsi  ;*aload_1
                                                                         ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                                                                         ; - com.google.re2j.Machine::step@174 (line 295)
                                                                         ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%                    0x00007f1908a2802b: vmovd  %xmm3,%ebx
                           0x00007f1908a2802f: lea    (%r12,%rbx,8),%rax  ;*synchronization entry
                                                                         ; - com.google.re2j.Machine$Queue::clear@-1 (line 69)
                                                                         ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                                                                         ; - com.google.re2j.Machine::step@174 (line 295)
                                                                         ; - com.google.re2j.Machine::match@356 (line 242)
                           0x00007f1908a28033: mov    $0x80000000,%ebx
                           0x00007f1908a28038: cmp    %r11d,%r8d
                           0x00007f1908a2803b: cmovl  %ebx,%r11d         ;*arraylength
                                                                         ; - com.google.re2j.Machine::step@109 (line 289)
                                                                         ; - com.google.re2j.Machine::match@356 (line 242)
  0.00%                    0x00007f1908a2803f: mov    0x3c(%rsp),%ebx
                           0x00007f1908a28043: jmpq   0x00007f1908a28896  ;*if_icmpne
                                                                         ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.07%           0x00007f1908a28048: test   %ecx,%ecx
                           0x00007f1908a2804a: jne    0x00007f1908a291c1  ;*getfield prefixRune
                                                                         ; - com.google.re2j.Machine::match@187 (line 216)
  0.08%    0.12%           0x00007f1908a28050: test   %r10d,%r10d
                  ╭        0x00007f1908a28053: je     0x00007f1908a28063  ;*arraylength
                  │                                                      ; - java.lang.String::charAt@9 (line 657)
                  │                                                      ; - java.lang.Character::codePointAt@2 (line 4866)
                  │                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │                                                      ; - com.google.re2j.Machine::match@226 (line 225)
  0.09%    0.13%  │        0x00007f1908a28055: mov    0x64(%rsp),%r8d
  0.12%    0.16%  │        0x00007f1908a2805a: test   %r8d,%r8d
                  │        0x00007f1908a2805d: jne    0x00007f1908a2920d  ;*aload_0
                  │                                                      ; - java.lang.String::indexOf@79 (line 1772)
                  │                                                      ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                      ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                      ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                      ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.03%  ↘        0x00007f1908a28063: mov    %r10d,0x18(%rsp)
  0.06%    0.11%           0x00007f1908a28068: vmovd  %xmm7,%r8d
  0.09%    0.22%           0x00007f1908a2806d: mov    0xc(%r12,%r8,8),%ebp  ;*ifge
                                                                         ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                                                                         ; implicit exception: dispatches to 0x00007f1908a2a509
  0.11%    0.12%           0x00007f1908a28072: test   %ebp,%ebp
                           0x00007f1908a28074: jg     0x00007f1908a2939d
  0.05%    0.11%           0x00007f1908a2807a: mov    0x78(%rsp),%r10
  0.10%    0.14%           0x00007f1908a2807f: mov    0x18(%r10),%r11d   ;*aload_0
                                                                         ; - com.google.re2j.Machine::match@267 (line 233)
  0.10%    0.19%           0x00007f1908a28083: mov    0x1c(%r12,%r11,8),%ebp  ;*caload
                                                                         ; - java.lang.String::indexOf@82 (line 1772)
                                                                         ; - java.lang.String::indexOf@21 (line 1718)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
                                                                         ; implicit exception: dispatches to 0x00007f1908a2a519
  0.14%    0.14%           0x00007f1908a28088: mov    0x8(%r12,%rbp,8),%r11d  ;*aload_0
                                                                         ; - com.google.re2j.Machine::match@267 (line 233)
                                                                         ; implicit exception: dispatches to 0x00007f1908a2a529
  0.51%    0.74%           0x00007f1908a2808d: lea    (%r12,%rbp,8),%r10
  0.00%    0.02%           0x00007f1908a28091: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ╭       0x00007f1908a28098: je     0x00007f1908a281ab  ;*if_icmpeq
                   │                                                     ; - java.lang.String::indexOf@85 (line 1772)
                   │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.16%    0.24%   │       0x00007f1908a2809e: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │       0x00007f1908a280a5: jne    0x00007f1908a293d9  ;*invokestatic emptyOpContext
                   │                                                     ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.02%   │       0x00007f1908a280ab: mov    0x18(%r10),%ecx    ;*iload_0
                   │                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                     ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%   │       0x00007f1908a280af: cmp    $0x40,%ecx
                   │       0x00007f1908a280b2: jg     0x00007f1908a295cd  ;*getfield prefixRune
                   │                                                     ; - com.google.re2j.Machine::match@187 (line 216)
  0.11%    0.15%   │       0x00007f1908a280b8: mov    %r10,%rbx
  0.00%    0.01%   │       0x00007f1908a280bb: mov    $0x1,%edi
  0.01%    0.01%   │       0x00007f1908a280c0: shl    %cl,%rdi
  0.35%    0.46%   │       0x00007f1908a280c3: mov    0x48(%rsp),%r10d
  0.00%    0.00%   │       0x00007f1908a280c8: mov    0x10(%r12,%r10,8),%r10  ;*getfield value
                   │                                                     ; - java.lang.String::charAt@23 (line 660)
                   │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                     ; - com.google.re2j.Machine::match@226 (line 225)
                   │       0x00007f1908a280cd: mov    %rdi,%r11
                   │       0x00007f1908a280d0: and    %r10,%r11          ;*getfield value
                   │                                                     ; - java.lang.String::charAt@6 (line 657)
                   │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                     ; - com.google.re2j.Machine::match@249 (line 228)
  0.15%    0.20%   │       0x00007f1908a280d3: test   %r11,%r11
                   │       0x00007f1908a280d6: jne    0x00007f1908a28b8b  ;*if_icmplt
                   │                                                     ; - java.lang.String::charAt@10 (line 657)
                   │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                     ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.01%   │       0x00007f1908a280dc: xor    %ebp,%ebp          ;*iload_0
                   │                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                     ; - com.google.re2j.Machine::match@121 (line 201)
                   │       0x00007f1908a280de: test   %r11,%r11
                   │       0x00007f1908a280e1: jne    0x00007f1908a29641  ;*getfield prefixRune
                   │                                                     ; - com.google.re2j.Machine::match@187 (line 216)
  0.04%    0.09%   │       0x00007f1908a280e7: cmp    $0x40,%ecx
                   │       0x00007f1908a280ea: jge    0x00007f1908a296a1
  0.12%    0.09%   │       0x00007f1908a280f0: mov    0x48(%rsp),%r9d
           0.01%   │       0x00007f1908a280f5: mov    %r12b,0x18(%r12,%r9,8)
                   │       0x00007f1908a280fa: or     %r10,%rdi
  0.06%    0.06%   │       0x00007f1908a280fd: mov    %rdi,0x10(%r12,%r9,8)
  0.05%    0.08%   │       0x00007f1908a28102: vmovd  %xmm2,%r11d
  0.00%    0.00%   │       0x00007f1908a28107: test   %r11d,%r11d
                   │       0x00007f1908a2810a: jle    0x00007f1908a2955d  ;*if_icmpeq
                   │                                                     ; - com.google.re2j.Machine::match@190 (line 216)
  0.01%    0.00%   │       0x00007f1908a28110: mov    %r11d,%ebp
  0.07%    0.08%   │       0x00007f1908a28113: dec    %ebp               ;*invokestatic isWordRune
                   │                                                     ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                     ; - com.google.re2j.Machine::match@121 (line 201)
  0.11%    0.09%   │       0x00007f1908a28115: mov    0x78(%rsp),%r10
                   │       0x00007f1908a2811a: mov    %ebp,0xc(%r10)
  0.00%            │       0x00007f1908a2811e: vmovd  %xmm1,%r10d
  0.07%    0.10%   │       0x00007f1908a28123: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1908a2a591
  0.10%    0.10%   │       0x00007f1908a28128: cmp    %r10d,%ebp
                   │       0x00007f1908a2812b: jae    0x00007f1908a292e5  ;*if_icmpeq
                   │                                                     ; - com.google.re2j.Machine::match@190 (line 216)
                   │       0x00007f1908a28131: vmovd  %xmm1,%r11d
                   │       0x00007f1908a28136: lea    (%r12,%r11,8),%r10
  0.06%    0.07%   │       0x00007f1908a2813a: vmovd  %xmm2,%r11d
  0.06%    0.09%   │       0x00007f1908a2813f: mov    0xc(%r10,%r11,4),%r8d  ;*if_icmpgt
                   │                                                     ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
                   │       0x00007f1908a28144: test   %r8d,%r8d
                   │       0x00007f1908a28147: je     0x00007f1908a2933d  ;*if_icmpeq
                   │                                                     ; - com.google.re2j.Machine::match@190 (line 216)
  0.00%    0.00%   │       0x00007f1908a2814d: mov    0x48(%rsp),%r11d
  0.08%    0.09%   │       0x00007f1908a28152: mov    0x20(%r12,%r11,8),%r9d  ;*iadd
                   │                                                     ; - java.lang.String::indexOf@108 (line 1778)
                   │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.10%   │       0x00007f1908a28157: mov    0xc(%r12,%r11,8),%ebp  ;*ireturn
                   │                                                     ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │                                                     ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                     ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%   │       0x00007f1908a2815c: lea    (%r12,%r8,8),%r10
  0.00%            │       0x00007f1908a28160: mov    %ebp,%ecx
  0.05%    0.12%   │       0x00007f1908a28162: inc    %ecx
  0.07%    0.07%   │       0x00007f1908a28164: mov    %ecx,0xc(%r12,%r11,8)  ;*getfield prefix
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
                   │       0x00007f1908a28169: mov    %rbx,%rcx
                   │       0x00007f1908a2816c: shr    $0x3,%rcx          ;*if_icmpgt
                   │                                                     ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.10%    0.15%   │       0x00007f1908a28170: mov    %ecx,0x10(%r12,%r8,8)  ;*iadd
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@5 (line 203)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.11%   │       0x00007f1908a28175: shr    $0x9,%r10
           0.00%   │       0x00007f1908a28179: movabs $0x7f19041db000,%r11
  0.01%    0.00%   │       0x00007f1908a28183: mov    %r12b,(%r11,%r10,1)  ;*getfield start
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@2 (line 203)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.14%    0.10%   │       0x00007f1908a28187: mov    0xc(%r12,%r9,8),%r10d  ;*if_icmplt
                   │                                                     ; - java.lang.String::charAt@10 (line 657)
                   │                                                     ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                     ; - com.google.re2j.Machine::match@249 (line 228)
                   │                                                     ; implicit exception: dispatches to 0x00007f1908a2a5a1
  0.07%    0.10%   │       0x00007f1908a2818c: cmp    %r10d,%ebp
                   │       0x00007f1908a2818f: jae    0x00007f1908a29351  ;*getfield prefix
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%            │       0x00007f1908a28195: lea    (%r12,%r9,8),%r10  ;*getfield poolSize
                   │                                                     ; - com.google.re2j.Machine::freeQueue@60 (line 161)
                   │                                                     ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │                                                     ; - com.google.re2j.Machine::step@174 (line 295)
                   │                                                     ; - com.google.re2j.Machine::match@356 (line 242)
           0.00%   │       0x00007f1908a28199: lea    0x10(%r10,%rbp,4),%r10  ;*invokestatic isHighSurrogate
                   │                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                     ; - com.google.re2j.Machine::match@226 (line 225)
  0.06%    0.07%   │       0x00007f1908a2819e: mov    %r8d,(%r10)
  0.15%    0.12%   │       0x00007f1908a281a1: shr    $0x9,%r10
                   │       0x00007f1908a281a5: mov    %r12b,(%r11,%r10,1)  ;*if_icmpge
                   │                                                     ; - java.lang.String::indexOf@123 (line 1779)
                   │                                                     ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                     ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                     ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.04%   │╭      0x00007f1908a281a9: jmp    0x00007f1908a281cc  ;*invokevirtual canCheckPrefix
                   ││                                                    ; - com.google.re2j.Machine::match@194 (line 218)
  0.10%    0.13%   ↘│      0x00007f1908a281ab: shl    $0x3,%r8           ;*iload_1
                    │                                                    ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │                                                    ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.05%    │      0x00007f1908a281af: mov    %r10,%rsi
                    │      0x00007f1908a281b2: mov    0x8(%rsp),%rdx
  0.00%    0.01%    │      0x00007f1908a281b7: mov    0x18(%rsp),%ecx
  0.10%    0.14%    │      0x00007f1908a281bb: xor    %edi,%edi
  0.04%    0.04%    │      0x00007f1908a281bd: mov    0x78(%rsp),%r10
           0.01%    │      0x00007f1908a281c2: mov    %r10,(%rsp)
           0.01%    │      0x00007f1908a281c6: nop
  0.10%    0.09%    │      0x00007f1908a281c7: callq  0x00007f19087f3020  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=1644}
                    │                                                    ;*invokevirtual add
                    │                                                    ; - com.google.re2j.Machine::match@315 (line 239)
                    │                                                    ;   {optimized virtual_call}
  0.06%    0.02%    ↘      0x00007f1908a281cc: mov    0x3c(%rsp),%r10d
  0.13%    0.11%           0x00007f1908a281d1: test   %r10d,%r10d
                           0x00007f1908a281d4: jl     0x00007f1908a285bf  ;*invokevirtual add
                                                                         ; - com.google.re2j.Machine::match@315 (line 239)
  0.15%    0.15%           0x00007f1908a281da: xor    %r11d,%r11d        ;*if_icmplt
                                                                         ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                         ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@226 (line 225)
  0.03%    0.05%           0x00007f1908a281dd: cmp    $0xa,%r10d
                           0x00007f1908a281e1: je     0x00007f1908a287e6  ;*invokestatic indexOf
                                                                         ; - java.lang.String::indexOf@21 (line 1718)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.11%    0.03%           0x00007f1908a281e7: mov    0x44(%rsp),%r8d
  0.07%    0.06%           0x00007f1908a281ec: test   %r8d,%r8d
                           0x00007f1908a281ef: jl     0x00007f1908a285ca  ;*instanceof
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.18%           0x00007f1908a281f5: cmp    $0xa,%r8d
                           0x00007f1908a281f9: je     0x00007f1908a287ef  ;*invokestatic isWordRune
                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.02%    0.05%           0x00007f1908a281ff: mov    0x3c(%rsp),%ecx
  0.08%    0.11%           0x00007f1908a28203: add    $0xffffffbf,%ecx
  0.08%    0.11%           0x00007f1908a28206: cmp    $0x1a,%ecx
                     ╭     0x00007f1908a28209: jb     0x00007f1908a2821e
  0.15%    0.16%     │     0x00007f1908a2820b: mov    0x3c(%rsp),%r9d
  0.01%    0.02%     │     0x00007f1908a28210: add    $0xffffff9f,%r9d
  0.07%    0.12%     │     0x00007f1908a28214: cmp    $0x1a,%r9d
                     │     0x00007f1908a28218: jae    0x00007f1908a289ae  ;*aload_0
                     │                                                   ; - java.lang.String::indexOf@126 (line 1779)
                     │                                                   ; - java.lang.String::indexOf@21 (line 1718)
                     │                                                   ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                   ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                   ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.12%     ↘     0x00007f1908a2821e: mov    $0x1,%ebp          ;*invokestatic isWordRune
                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.11%    0.13%           0x00007f1908a28223: mov    0x44(%rsp),%ecx
  0.03%    0.04%           0x00007f1908a28227: add    $0xffffffbf,%ecx
  0.08%    0.09%           0x00007f1908a2822a: cmp    $0x1a,%ecx
                      ╭    0x00007f1908a2822d: jb     0x00007f1908a28242  ;*invokevirtual add
                      │                                                  ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.14%      │    0x00007f1908a2822f: mov    0x44(%rsp),%r9d
  0.12%    0.18%      │    0x00007f1908a28234: add    $0xffffff9f,%r9d
  0.05%    0.05%      │    0x00007f1908a28238: cmp    $0x1a,%r9d
                      │    0x00007f1908a2823c: jae    0x00007f1908a289cf  ;*invokevirtual step
                      │                                                  ; - com.google.re2j.Machine::match@249 (line 228)
  0.10%    0.11%      ↘    0x00007f1908a28242: mov    $0x1,%ecx          ;*invokeinterface charAt
                                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@249 (line 228)
  0.11%    0.12%           0x00007f1908a28247: cmp    %ecx,%ebp
                       ╭   0x00007f1908a28249: jne    0x00007f1908a28256  ;*invokeinterface charAt
                       │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                       │                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.13%    0.19%       │   0x00007f1908a2824b: or     $0x20,%r11d        ;*getfield prefix
                       │                                                 ; - com.google.re2j.Machine::match@172 (line 216)
  0.01%    0.02%       │   0x00007f1908a2824f: mov    %r11d,0x68(%rsp)
  0.08%    0.13%       │╭  0x00007f1908a28254: jmp    0x00007f1908a2825f
  0.04%    0.06%       ↘│  0x00007f1908a28256: or     $0x10,%r11d        ;*invokevirtual isEmpty
                        │                                                ; - com.google.re2j.Machine::match@175 (line 216)
  0.01%    0.01%        │  0x00007f1908a2825a: mov    %r11d,0x68(%rsp)   ;*if_icmplt
                        │                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                        │                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                        │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.15%    0.28%        ↘  0x00007f1908a2825f: mov    0x30(%rsp),%r11
  0.09%    0.11%           0x00007f1908a28264: mov    0x10(%r11),%ebx    ;*invokevirtual add
                                                                         ; - com.google.re2j.Machine::match@315 (line 239)
  0.25%    0.24%           0x00007f1908a28268: mov    0x18(%rsp),%ecx
  0.10%    0.09%           0x00007f1908a2826c: cmp    %ebx,%ecx
                           0x00007f1908a2826e: je     0x00007f1908a285d3  ;*if_icmplt
                                                                         ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                         ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@226 (line 225)
  0.20%    0.21%           0x00007f1908a28274: xor    %edi,%edi
  0.06%    0.13%           0x00007f1908a28276: mov    %edi,0x6c(%rsp)    ;*if_icmpgt
                                                                         ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
  0.10%    0.07%           0x00007f1908a2827a: mov    %ecx,0x70(%rsp)
  0.08%    0.12%           0x00007f1908a2827e: mov    %rax,-0x8(%rsp)
  0.13%    0.15%           0x00007f1908a28283: mov    0x44(%rsp),%eax
  0.07%    0.16%           0x00007f1908a28287: mov    %eax,0x3c(%rsp)
  0.06%    0.11%           0x00007f1908a2828b: mov    -0x8(%rsp),%rax
  0.31%    0.21%           0x00007f1908a28290: mov    %r10d,0x84(%rsp)
  0.15%    0.15%           0x00007f1908a28298: rex.W pushq 0x30(%rsp)
  0.16%    0.24%           0x00007f1908a2829d: rex.W popq 0x10(%rsp)
  0.84%    0.91%           0x00007f1908a282a2: mov    0x78(%rsp),%r10
  0.17%    0.10%           0x00007f1908a282a7: mov    0x14(%r10),%r10d   ;*invokeinterface charAt
                                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@249 (line 228)
  0.12%    0.15%           0x00007f1908a282ab: vmovd  %r10d,%xmm4
  0.08%    0.06%           0x00007f1908a282b0: movzbl 0x18(%r12,%r10,8),%r11d  ;*if_icmpgt
                                                                         ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                         ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                         ; - com.google.re2j.Machine::match@121 (line 201)
                                                                         ; implicit exception: dispatches to 0x00007f1908a2a54d
  0.26%    0.28%           0x00007f1908a282b6: mov    0x48(%rsp),%r10d
  0.09%    0.08%           0x00007f1908a282bb: mov    0xc(%r12,%r10,8),%edi  ;*ifle
                                                                         ; - com.google.re2j.Machine::match@287 (line 236)
  0.14%    0.15%           0x00007f1908a282c0: mov    %ecx,%r8d
  0.04%    0.03%           0x00007f1908a282c3: add    0x38(%rsp),%r8d    ;*synchronization entry
                                                                         ; - java.lang.Character::isHighSurrogate@-1 (line 4729)
                                                                         ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@96 (line 195)
  0.16%    0.11%           0x00007f1908a282c8: mov    %r8d,0x60(%rsp)
  0.09%    0.10%           0x00007f1908a282cd: test   %edi,%edi
                           0x00007f1908a282cf: jle    0x00007f1908a285b5  ;*synchronization entry
                                                                         ; - java.lang.Character::codePointAt@-1 (line 4866)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                         ; - com.google.re2j.Machine::match@226 (line 225)
  0.10%    0.12%           0x00007f1908a282d5: test   %r11d,%r11d
                           0x00007f1908a282d8: jne    0x00007f1908a29145  ;*ior
                                                                         ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                                                         ; - com.google.re2j.Machine::match@323 (line 241)
  0.03%    0.03%           0x00007f1908a282de: mov    %r11d,0x74(%rsp)
  0.16%    0.09%           0x00007f1908a282e3: xor    %r10d,%r10d
  0.07%    0.08%           0x00007f1908a282e6: mov    %r10d,0x8c(%rsp)
  0.11%    0.12%           0x00007f1908a282ee: jmpq   0x00007f1908a283f9  ;*goto
                                                                         ; - java.lang.String::indexOf@88 (line 1772)
                                                                         ; - java.lang.String::indexOf@21 (line 1718)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.06%    0.05%           0x00007f1908a282f3: mov    0x1c(%r10),%r9d
  0.15%    0.04%           0x00007f1908a282f7: mov    %r11,%r8
                           0x00007f1908a282fa: shl    $0x3,%r8           ;*instanceof
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.18%    0.15%           0x00007f1908a282fe: mov    %r9,%rsi
  0.01%    0.01%           0x00007f1908a28301: shl    $0x3,%rsi          ;*iinc
                                                                         ; - java.lang.String::indexOf@69 (line 1772)
                                                                         ; - java.lang.String::indexOf@21 (line 1718)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%                    0x00007f1908a28305: mov    0x58(%rsp),%rdx
  0.01%                    0x00007f1908a2830a: mov    0x60(%rsp),%ecx
  0.17%    0.17%           0x00007f1908a2830e: mov    0x68(%rsp),%r9d
  0.02%    0.00%           0x00007f1908a28313: mov    0x90(%rsp),%rdi
                           0x00007f1908a2831b: mov    0x78(%rsp),%r10
  0.01%                    0x00007f1908a28320: mov    %r10,(%rsp)
  0.19%    0.11%           0x00007f1908a28324: mov    0x70(%rsp),%r10d
  0.01%    0.01%           0x00007f1908a28329: mov    %r10d,0x24(%rsp)
  0.05%                    0x00007f1908a2832e: data16 xchg %ax,%ax
                           0x00007f1908a28331: movabs $0xffffffffffffffff,%rax
  0.16%    0.13%           0x00007f1908a2833b: callq  0x00007f19087f3220  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2016}
                                                                         ;*invokevirtual add
                                                                         ; - com.google.re2j.Machine::step@213 (line 300)
                                                                         ; - com.google.re2j.Machine::match@356 (line 242)
                                                                         ;   {virtual_call}
  0.24%    0.22%           0x00007f1908a28340: mov    0x48(%rsp),%r11d
  0.01%    0.00%           0x00007f1908a28345: mov    0xc(%r12,%r11,8),%edi  ;*ifle
                                                                         ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                         ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.04%           0x00007f1908a2834a: test   %rax,%rax
                           0x00007f1908a2834d: je     0x00007f1908a27da0  ;*getfield poolSize
                                                                         ; - com.google.re2j.Machine::alloc@9 (line 133)
                                                                         ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                         ; - com.google.re2j.Machine::match@315 (line 239)
                           0x00007f1908a28353: mov    0x78(%rsp),%r10
                           0x00007f1908a28358: mov    0xc(%r10),%r8d     ;*ifle
                                                                         ; - com.google.re2j.Machine::alloc@4 (line 132)
....................................................................................................
 12.29%   14.14%  <total for region 3>

....[Hottest Regions]...............................................................................
 36.78%   33.49%         C2, level 4  com.google.re2j.Machine::match, version 600 (401 bytes) 
 21.85%   24.32%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (1416 bytes) 
 12.29%   14.14%         C2, level 4  com.google.re2j.Machine::match, version 600 (819 bytes) 
  8.01%    8.96%         C2, level 4  com.google.re2j.Machine::match, version 600 (522 bytes) 
  6.99%    7.27%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (152 bytes) 
  3.32%    4.40%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (312 bytes) 
  2.41%    2.86%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (257 bytes) 
  1.39%    0.27%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 209 (14 bytes) 
  0.89%    0.05%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (76 bytes) 
  0.89%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 591 (299 bytes) 
  0.71%    0.70%         C2, level 4  com.google.re2j.Machine::match, version 600 (80 bytes) 
  0.62%    0.63%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.48%    0.42%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 546 (100 bytes) 
  0.33%    0.07%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 546 (86 bytes) 
  0.21%                  C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 (0 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.11%    0.06%         C2, level 4  com.google.re2j.Machine::init, version 591 (66 bytes) 
  0.11%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 591 (18 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 604 (63 bytes) 
  0.08%    0.00%         C2, level 4  com.google.re2j.Pattern::find, version 604 (104 bytes) 
  2.31%    2.12%  <...other 460 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.03%   57.50%         C2, level 4  com.google.re2j.Machine::match, version 600 
 35.67%   38.89%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 552 
  1.45%    1.35%   [kernel.kallsyms]  [unknown] 
  1.39%    0.27%         C1, level 3  sun.invoke.util.VerifyType::isNullConversion, version 209 
  1.15%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 591 
  0.81%    0.48%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 546 
  0.34%    0.16%         C2, level 4  com.google.re2j.Pattern::find, version 604 
  0.07%    0.05%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.07%    0.08%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.06%    0.04%         C2, level 4  java.util.Collections::shuffle, version 616 
  0.06%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.05%    0.05%           libjvm.so  InstanceKlass::oop_push_contents 
  0.04%    0.00%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 679 
  0.03%    0.03%           libjvm.so  fileStream::write 
  0.03%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.02%           libjvm.so  xmlTextStream::write 
  0.02%    0.02%      hsdis-amd64.so  [unknown] 
  0.02%    0.00%         interpreter  invokevirtual  182 invokevirtual  
  0.01%                 libc-2.26.so  __memmove_sse2_unaligned_erms 
  0.01%    0.01%           libjvm.so  TaskQueueSetSuper::randomParkAndMiller 
  0.63%    0.41%  <...other 87 warm methods...>
....................................................................................................
100.00%   99.70%  <totals>

....[Distribution by Source]........................................................................
 96.11%   97.32%         C2, level 4
  1.45%    1.35%   [kernel.kallsyms]
  1.39%    0.27%         C1, level 3
  0.69%    0.66%           libjvm.so
  0.16%    0.27%        libc-2.26.so
  0.08%    0.04%  libpthread-2.26.so
  0.04%    0.02%         interpreter
  0.02%    0.03%      hsdis-amd64.so
  0.02%    0.01%              [vdso]
  0.02%    0.00%        runtime stub
  0.00%    0.00%           libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  6385.966 ± 40.529  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
