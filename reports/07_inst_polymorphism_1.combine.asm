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
# Warmup Iteration   1: 1062.575 ops/s
# Warmup Iteration   2: 4240.364 ops/s
# Warmup Iteration   3: 4280.513 ops/s
# Warmup Iteration   4: 4243.201 ops/s
# Warmup Iteration   5: 4350.936 ops/s
# Warmup Iteration   6: 4352.826 ops/s
# Warmup Iteration   7: 4342.130 ops/s
# Warmup Iteration   8: 4335.611 ops/s
# Warmup Iteration   9: 4323.709 ops/s
# Warmup Iteration  10: 4330.931 ops/s
# Warmup Iteration  11: 4324.671 ops/s
# Warmup Iteration  12: 4325.152 ops/s
# Warmup Iteration  13: 4318.954 ops/s
# Warmup Iteration  14: 4337.082 ops/s
# Warmup Iteration  15: 4334.284 ops/s
# Warmup Iteration  16: 4045.744 ops/s
# Warmup Iteration  17: 4180.212 ops/s
# Warmup Iteration  18: 4349.286 ops/s
# Warmup Iteration  19: 4349.014 ops/s
# Warmup Iteration  20: 4340.869 ops/s
Iteration   1: 4348.743 ops/s
Iteration   2: 4345.690 ops/s
Iteration   3: 4344.086 ops/s
Iteration   4: 4344.804 ops/s
Iteration   5: 4355.129 ops/s
Iteration   6: 4352.988 ops/s
Iteration   7: 4357.885 ops/s
Iteration   8: 4359.331 ops/s
Iteration   9: 4354.893 ops/s
Iteration  10: 4356.152 ops/s
Iteration  11: 4353.647 ops/s
Iteration  12: 4354.882 ops/s
Iteration  13: 4356.478 ops/s
Iteration  14: 4353.792 ops/s
Iteration  15: 4183.718 ops/s
Iteration  16: 4350.968 ops/s
Iteration  17: 4353.351 ops/s
Iteration  18: 4357.183 ops/s
Iteration  19: 4356.220 ops/s
Iteration  20: 4352.501 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4344.622 ±(99.9%) 33.097 ops/s [Average]
  (min, avg, max) = (4183.718, 4344.622, 4359.331), stdev = 38.115
  CI (99.9%): [4311.525, 4377.719] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 205485 total address lines.
Perf output processed (skipped 23.415 seconds):
 Column 1: cycles (20590 events)
 Column 2: instructions (20577 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 503 (361 bytes) 

                                                                      ; - com.google.re2j.Machine::free@1 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
                        0x00007ff69521c113: mov    0x24(%r10),%r9d    ;*getfield pool
                                                                      ; - com.google.re2j.Machine::free@5 (line 167)
                                                                      ; - com.google.re2j.Machine::step@224 (line 303)
                        0x00007ff69521c117: mov    0x80(%rsp),%r14d
                        0x00007ff69521c11f: mov    %ebp,%ebx
                        0x00007ff69521c121: mov    0x74(%rsp),%r13d
                  ╭     0x00007ff69521c126: jmp    0x00007ff69521c144
                  │     0x00007ff69521c128: nopl   0x0(%rax,%rax,1)
  0.57%    0.67%  │  ↗  0x00007ff69521c130: xor    %r10d,%r10d
  0.06%    0.02%  │ ↗│  0x00007ff69521c133: test   %r10d,%r10d
                  │ ││  0x00007ff69521c136: jne    0x00007ff69521c0b8
  0.47%    0.50%  │ ││  0x00007ff69521c13c: mov    0x80(%rsp),%r14d   ;*getfield size
                  │ ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.02%    0.01%  ↘ ││  0x00007ff69521c144: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength
                    ││                                                ; - com.google.re2j.Machine::free@8 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
                    ││                                                ; implicit exception: dispatches to 0x00007ff69521c819
  0.76%    0.67%    ││  0x00007ff69521c149: cmp    %ebp,%ecx
                    ││  0x00007ff69521c14b: jge    0x00007ff69521c5a9  ;*if_icmplt
                    ││                                                ; - com.google.re2j.Machine::free@9 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.00%    0.01%    ││  0x00007ff69521c151: mov    %ecx,%r11d
  0.46%    0.55%    ││  0x00007ff69521c154: inc    %r11d
  0.01%    0.01%    ││  0x00007ff69521c157: mov    0x28(%rsp),%r10
  0.69%    0.55%    ││  0x00007ff69521c15c: mov    %r11d,0xc(%r10)    ;*putfield poolSize
                    ││                                                ; - com.google.re2j.Machine::free@45 (line 170)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.01%    0.00%    ││  0x00007ff69521c160: cmp    %ebp,%ecx
                    ││  0x00007ff69521c162: jae    0x00007ff69521c551  ;*aastore
                    ││                                                ; - com.google.re2j.Machine::free@49 (line 170)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.51%    0.53%    ││  0x00007ff69521c168: mov    0x8(%rsp),%r10
  0.01%    0.01%    ││  0x00007ff69521c16d: mov    0xc(%r10),%r10d    ;*getfield size
                    ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.69%    0.41%    ││  0x00007ff69521c171: mov    %rax,%r11
  0.01%             ││  0x00007ff69521c174: shr    $0x3,%r11
  0.49%    0.59%    ││  0x00007ff69521c178: lea    (%r12,%r9,8),%r8   ;*getfield pool
                    ││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  0.02%    0.02%    ││  0x00007ff69521c17c: lea    0x10(%r8,%rcx,4),%r8
  0.75%    0.47%    ││  0x00007ff69521c181: mov    %r11d,(%r8)
  0.01%    0.01%    ││  0x00007ff69521c184: mov    %r8,%r11
  0.46%    0.40%    ││  0x00007ff69521c187: shr    $0x9,%r11
  0.02%             ││  0x00007ff69521c18b: movabs $0x7ff6a6160000,%r8
  0.73%    0.50%    ││  0x00007ff69521c195: mov    %r12b,(%r8,%r11,1)  ; OopMap{[8]=Oop [16]=Oop [40]=Oop off=345}
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
  0.06%    0.08%    ││  0x00007ff69521c199: test   %eax,0x1853be61(%rip)        # 0x00007ff6ad758000
                    ││                                                ;*goto
                    ││                                                ; - com.google.re2j.Machine::step@230 (line 277)
                    ││                                                ;   {poll}
  0.50%    0.36%    ││  0x00007ff69521c19f: cmp    %edx,%r13d
                    ││  0x00007ff69521c1a2: jge    0x00007ff69521c2d5
  0.01%    0.02%    ││  0x00007ff69521c1a8: mov    %r10d,%edx
  0.73%    0.35%    ││  0x00007ff69521c1ab: mov    %r14d,0x80(%rsp)
  0.03%    0.03%    ││  0x00007ff69521c1b3: mov    %r13d,%ebx         ;*getfield size
                    ││                                                ; - com.google.re2j.Machine::step@15 (line 277)
  0.36%    0.30%    ││  0x00007ff69521c1b6: mov    0x8(%rsp),%r10
  0.04%    0.04%    ││  0x00007ff69521c1bb: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                    ││                                                ; - com.google.re2j.Machine::step@22 (line 278)
  0.92%    0.74%    ││  0x00007ff69521c1bf: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007ff69521c7e5
  1.00%    1.13%    ││  0x00007ff69521c1c4: cmp    %r8d,%ebx
                    ││  0x00007ff69521c1c7: jae    0x00007ff69521c4d4
  0.61%    0.67%    ││  0x00007ff69521c1cd: shl    $0x3,%r10
  0.02%    0.02%    ││  0x00007ff69521c1d1: mov    0x10(%r10,%rbx,4),%r10d  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  0.64%    0.38%    ││  0x00007ff69521c1d6: mov    0x10(%r12,%r10,8),%r9d  ;*getfield inst
                    ││                                                ; - com.google.re2j.Machine::step@78 (line 283)
                    ││                                                ; implicit exception: dispatches to 0x00007ff69521c7f9
  2.34%    2.50%    ││  0x00007ff69521c1db: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00007ff69521c809
  4.23%    4.85%    ││  0x00007ff69521c1e0: lea    (%r12,%r9,8),%r11
  0.00%    0.01%    ││  0x00007ff69521c1e4: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007ff69521c1eb: jne    0x00007ff69521c492  ;*invokevirtual isMatch
                    ││                                                ; - com.google.re2j.Machine::step@85 (line 285)
  1.24%    1.23%    ││  0x00007ff69521c1f1: mov    0xc(%r11),%r9d
  0.07%    0.14%    ││  0x00007ff69521c1f5: cmp    $0x6,%r9d
                    ││  0x00007ff69521c1f9: je     0x00007ff69521c4b4  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst::isMatch@6 (line 78)
                    ││                                                ; - com.google.re2j.Inst$MatchInst::isMatch@1 (line 82)
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  1.13%    1.28%    ││  0x00007ff69521c1ff: xor    %edi,%edi          ;*synchronization entry
                    ││                                                ; - com.google.re2j.Machine::step@-1 (line 276)
  0.01%             ││  0x00007ff69521c201: mov    0xc(%r12,%r10,8),%r8d  ;*getfield cap
                    ││                                                ; - com.google.re2j.Machine::step@104 (line 289)
  0.23%    0.19%    ││  0x00007ff69521c206: mov    0x28(%rsp),%r9
           0.00%    ││  0x00007ff69521c20b: mov    0xc(%r9),%ecx      ;*getfield poolSize
                    ││                                                ; - com.google.re2j.Machine::free@1 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
  1.14%    1.44%    ││  0x00007ff69521c20f: mov    0x24(%r9),%r9d     ;*getfield pool
                    ││                                                ; - com.google.re2j.Machine::free@5 (line 167)
                    ││                                                ; - com.google.re2j.Machine::step@224 (line 303)
                    ││  0x00007ff69521c213: mov    %ebx,%r13d
  0.24%    0.26%    ││  0x00007ff69521c216: inc    %r13d              ;*iadd
                    ││                                                ; - com.google.re2j.Machine::step@171 (line 295)
                    ││  0x00007ff69521c219: lea    (%r12,%r10,8),%rax  ;*aaload
                    ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
  1.09%    1.12%    ││  0x00007ff69521c21d: test   %edi,%edi
                    ││  0x00007ff69521c21f: jne    0x00007ff69521c339  ;*ifeq
                    ││                                                ; - com.google.re2j.Machine::step@88 (line 285)
  0.00%    0.00%    ││  0x00007ff69521c225: mov    0x8(%r11),%esi
  0.27%    0.29%    ││  0x00007ff69521c229: cmp    $0xf8019992,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                    ││  0x00007ff69521c22f: jne    0x00007ff69521c511  ;*invokevirtual matchRune
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
                    ││  0x00007ff69521c235: mov    0xc(%r11),%ebp     ;*getfield op
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@1 (line 134)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  1.02%    1.16%    ││  0x00007ff69521c239: cmp    $0xa,%ebp
                    ││  0x00007ff69521c23c: je     0x00007ff69521c0b8  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@6 (line 134)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.01%    0.01%    ││  0x00007ff69521c242: cmp    $0xb,%ebp
                    ││  0x00007ff69521c245: je     0x00007ff69521c5ed  ;*if_icmpne
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@17 (line 138)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.24%    0.29%    ││  0x00007ff69521c24b: mov    0x20(%r11),%edi    ;*getfield f0
                    ││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@42 (line 143)
                    ││                                                ; - com.google.re2j.Machine::step@187 (line 299)
           0.00%    ││  0x00007ff69521c24f: cmp    $0x9,%ebp
                   ╭││  0x00007ff69521c252: jne    0x00007ff69521c266  ;*if_icmpne
                   │││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@38 (line 142)
                   │││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.16%    0.28%   │││  0x00007ff69521c254: cmp    0x20(%rsp),%edi
                   │││  0x00007ff69521c258: je     0x00007ff69521c32e  ;*if_icmpne
                   │││                                                ; - com.google.re2j.Inst$RuneInst::matchRune@46 (line 143)
                   │││                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.02%    0.01%   │││  0x00007ff69521c25e: xor    %r10d,%r10d
  0.10%    0.09%   │╰│  0x00007ff69521c261: jmpq   0x00007ff69521c133
  0.87%    0.74%   ↘ │  0x00007ff69521c266: cmp    $0xc,%ebp
                     │  0x00007ff69521c269: jne    0x00007ff69521c621  ;*if_icmpne
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@61 (line 146)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.13%    0.08%     │  0x00007ff69521c26f: cmp    0x20(%rsp),%edi
                     │  0x00007ff69521c273: je     0x00007ff69521c30e  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@69 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.43%    0.47%     │  0x00007ff69521c279: mov    0x24(%r11),%edi    ;*getfield f1
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@73 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
                     │  0x00007ff69521c27d: cmp    0x20(%rsp),%edi
                     │  0x00007ff69521c281: je     0x00007ff69521c30e  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@77 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.70%    0.91%     │  0x00007ff69521c287: mov    0x28(%r11),%ebp    ;*getfield f2
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@81 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.03%    0.02%     │  0x00007ff69521c28b: cmp    0x20(%rsp),%ebp
                     │  0x00007ff69521c28f: je     0x00007ff69521c655  ;*if_icmpeq
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@85 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.51%    0.63%     │  0x00007ff69521c295: mov    0x2c(%r11),%ebp    ;*getfield f3
                     │                                                ; - com.google.re2j.Inst$RuneInst::matchRune@89 (line 147)
                     │                                                ; - com.google.re2j.Machine::step@187 (line 299)
  0.00%              │  0x00007ff69521c299: cmp    0x20(%rsp),%ebp
                     ╰  0x00007ff69521c29d: jne    0x00007ff69521c130  ;*if_icmpne
                                                                      ; - com.google.re2j.Inst$RuneInst::matchRune@93 (line 147)
                                                                      ; - com.google.re2j.Machine::step@187 (line 299)
                        0x00007ff69521c2a3: mov    $0xffffff65,%esi
                        0x00007ff69521c2a8: mov    %ebx,0x74(%rsp)
                        0x00007ff69521c2ac: mov    0x18(%rsp),%r9d
                        0x00007ff69521c2b1: mov    %r9d,0x7c(%rsp)
                        0x00007ff69521c2b6: mov    0x1c(%rsp),%r8d
....................................................................................................
 27.92%   28.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 507 (1162 bytes) 

                         # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                         # parm5:    [sp+0xb0]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                         0x00007ff695226400: mov    0x8(%rsi),%r10d
                         0x00007ff695226404: shl    $0x3,%r10
                         0x00007ff695226408: cmp    %r10,%rax
                         0x00007ff69522640b: jne    0x00007ff695045e20  ;   {runtime_call}
                         0x00007ff695226411: data16 xchg %ax,%ax
                         0x00007ff695226414: nopl   0x0(%rax,%rax,1)
                         0x00007ff69522641c: data16 data16 xchg %ax,%ax
                       [Verified Entry Point]
  0.91%    0.51%         0x00007ff695226420: mov    %eax,-0x14000(%rsp)
  0.18%    0.17%         0x00007ff695226427: push   %rbp
  0.00%                  0x00007ff695226428: sub    $0xa0,%rsp         ;*getfield pcsl
                                                                       ; - com.google.re2j.Machine$Queue::add@8 (line 57)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.32%    0.31%         0x00007ff69522642f: mov    %r9d,0x54(%rsp)
  0.14%    0.11%         0x00007ff695226434: mov    %r8,0x58(%rsp)
           0.00%         0x00007ff695226439: mov    %ecx,0x30(%rsp)
  0.34%    0.25%         0x00007ff69522643d: mov    %rsi,0x38(%rsp)
  0.00%    0.02%         0x00007ff695226442: mov    0x18(%rsi),%ecx    ;*if_icmpge
                                                                       ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.11%         0x00007ff695226445: mov    %rdx,%r14
  0.00%                  0x00007ff695226448: mov    0x10(%rdx),%r10    ;*synchronization entry
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                       ; implicit exception: dispatches to 0x00007ff695228c48
  0.26%    0.24%         0x00007ff69522644c: cmp    $0x40,%ecx
                         0x00007ff69522644f: jg     0x00007ff695227861  ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%         0x00007ff695226455: mov    $0x1,%r11d
  0.14%    0.17%         0x00007ff69522645b: shl    %cl,%r11           ;*synchronization entry
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.19%         0x00007ff69522645e: mov    %r11,%r8
  0.16%    0.18%         0x00007ff695226461: and    %r10,%r8
                         0x00007ff695226464: test   %r8,%r8
                         0x00007ff695226467: jne    0x00007ff69522719f  ;*getfield cap
                                                                       ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.25%    0.16%         0x00007ff69522646d: cmp    $0x40,%ecx
                         0x00007ff695226470: jge    0x00007ff69522788d  ;*invokevirtual addThread
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%         0x00007ff695226476: mov    %r12b,0x18(%rdx)   ;*invokestatic arraycopy
                                                                       ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.12%         0x00007ff69522647a: mov    0x1c(%rsi),%r8d
                         0x00007ff69522647e: or     %r10,%r11          ;*new  ; - com.google.re2j.Machine::alloc@30 (line 136)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.25%    0.16%         0x00007ff695226481: mov    %r11,0x10(%rdx)    ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%         0x00007ff695226485: mov    0x8(%r12,%r8,8),%r9d  ;*aastore
                                                                       ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                       ; implicit exception: dispatches to 0x00007ff695228c59
  0.14%    0.24%         0x00007ff69522648a: mov    0x58(%rsp),%r10
  0.01%    0.01%         0x00007ff69522648f: add    $0x10,%r10         ;*if_icmpgt
                                                                       ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.30%    0.20%         0x00007ff695226493: mov    %r10,0x10(%rsp)
  0.02%    0.00%         0x00007ff695226498: lea    (%r12,%r8,8),%r10
  0.14%    0.11%         0x00007ff69522649c: mov    $0xf8019c2c,%ecx   ;   {metadata(&apos;com/google/re2j/Machine$Thread&apos;)}
                         0x00007ff6952264a1: shl    $0x3,%rcx
  0.27%    0.23%         0x00007ff6952264a5: mov    %rcx,0x18(%rsp)
  0.02%    0.01%         0x00007ff6952264aa: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ╭      0x00007ff6952264b1: je     0x00007ff69522686a  ;*synchronization entry
                  │                                                    ; - com.google.re2j.Machine::alloc@-1 (line 132)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.19%  │      0x00007ff6952264b7: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │      0x00007ff6952264be: jne    0x00007ff6952278b9  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  │      0x00007ff6952264c4: mov    0x18(%r10),%ecx    ;*ifnonnull
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.29%  │      0x00007ff6952264c8: cmp    $0x40,%ecx
                  │      0x00007ff6952264cb: jg     0x00007ff695227c1d  ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.01%  │      0x00007ff6952264d1: mov    $0x1,%r8d
  0.17%    0.29%  │      0x00007ff6952264d7: shl    %cl,%r8            ;*synchronization entry
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.23%    0.24%  │      0x00007ff6952264da: mov    %r11,%r9
  0.14%    0.20%  │      0x00007ff6952264dd: and    %r8,%r9
  0.00%    0.00%  │      0x00007ff6952264e0: test   %r9,%r9
                  │      0x00007ff6952264e3: jne    0x00007ff6952271bc  ;*getfield pc
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.14%  │      0x00007ff6952264e9: cmp    $0x40,%ecx
                  │      0x00007ff6952264ec: jge    0x00007ff695227c69  ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │      0x00007ff6952264f2: mov    0x1c(%r10),%ebp    ;*arraylength
                  │                                                    ; - com.google.re2j.Machine::alloc@38 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.14%  │      0x00007ff6952264f6: or     %r8,%r11           ;*getfield matchcap
                  │                                                    ; - com.google.re2j.Machine::alloc@35 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  │      0x00007ff6952264f9: mov    %r11,0x10(%rdx)    ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.20%    0.22%  │      0x00007ff6952264fd: mov    0x8(%r12,%rbp,8),%r9d  ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007ff695228d1d
  0.02%    0.02%  │      0x00007ff695226502: lea    (%r12,%rbp,8),%rax
  0.16%    0.24%  │      0x00007ff695226506: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │╭     0x00007ff69522650d: je     0x00007ff69522656f  ;*invokevirtual alloc
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.01%  ││     0x00007ff69522650f: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  ││     0x00007ff695226516: jne    0x00007ff695227cb5  ;*aastore
                  ││                                                   ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.14%    0.12%  ││     0x00007ff69522651c: mov    %r10,0x20(%rsp)
  0.00%           ││     0x00007ff695226521: mov    %rdx,0x8(%rsp)
           0.01%  ││     0x00007ff695226526: mov    %rax,%rsi          ;*invokevirtual alloc
                  ││                                                   ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  ││     0x00007ff695226529: mov    0x30(%rsp),%ecx
  0.10%    0.14%  ││     0x00007ff69522652d: mov    0x58(%rsp),%r8
  0.00%           ││     0x00007ff695226532: mov    0x54(%rsp),%r9d
  0.01%           ││     0x00007ff695226537: mov    0xb0(%rsp),%r10
  0.00%    0.00%  ││     0x00007ff69522653f: mov    %r10,(%rsp)
  0.11%    0.22%  ││     0x00007ff695226543: mov    %ecx,0x28(%rsp)
  0.00%           ││     0x00007ff695226547: mov    %r8,0x40(%rsp)
           0.00%  ││     0x00007ff69522654c: mov    %r9d,0x2c(%rsp)
           0.00%  ││     0x00007ff695226551: xchg   %ax,%ax
  0.17%    0.21%  ││     0x00007ff695226553: callq  0x00007ff695046020  ; OopMap{[176]=Oop [8]=Oop [16]=Derived_oop_[64] [32]=Oop [56]=Oop [64]=Oop [88]=Oop off=344}
                  ││                                                   ;*invokevirtual add
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                   ;   {optimized virtual_call}
  0.05%    0.05%  ││     0x00007ff695226558: mov    0x8(%rsp),%r14
  0.10%    0.14%  ││     0x00007ff69522655d: mov    0xb0(%rsp),%r13
  0.00%           ││     0x00007ff695226565: mov    0x20(%rsp),%r10
  0.06%    0.07%  ││╭    0x00007ff69522656a: jmpq   0x00007ff6952266e1  ;*invokevirtual alloc
                  │││                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%           │↘│    0x00007ff69522656f: mov    0x18(%rax),%ecx    ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.01%  │ │    0x00007ff695226572: cmp    $0x40,%ecx
                  │ │    0x00007ff695226575: jg     0x00007ff695227fd5  ;*invokevirtual addThread
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.03%  │ │    0x00007ff69522657b: mov    $0x1,%r8d
  0.16%    0.15%  │ │    0x00007ff695226581: shl    %cl,%r8            ;*synchronization entry
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.02%  │ │    0x00007ff695226584: mov    %r11,%r9
  0.15%    0.16%  │ │    0x00007ff695226587: and    %r8,%r9            ;*invokevirtual alloc
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │    0x00007ff69522658a: test   %r9,%r9
                  │ │    0x00007ff69522658d: jne    0x00007ff6952272c7  ;*invokevirtual contains
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  │ │    0x00007ff695226593: xor    %ebp,%ebp          ;*invokevirtual alloc
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.02%  │ │    0x00007ff695226595: test   %r9,%r9
                  │ │    0x00007ff695226598: jne    0x00007ff695228025
  0.16%    0.15%  │ │    0x00007ff69522659e: cmp    $0x40,%ecx
                  │ │    0x00007ff6952265a1: jge    0x00007ff69522806d  ;*aastore
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%           │ │    0x00007ff6952265a7: or     %r8,%r11
  0.00%           │ │    0x00007ff6952265aa: mov    %r11,0x10(%rdx)    ;*invokestatic arraycopy
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%  │ │    0x00007ff6952265ae: mov    %rax,%rsi
  0.12%    0.19%  │ │    0x00007ff6952265b1: shr    $0x3,%rsi          ;*ireturn
                  │ │                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │    0x00007ff6952265b5: mov    %rdi,%rbx
  0.01%           │ │    0x00007ff6952265b8: test   %rdi,%rdi
                  │ │    0x00007ff6952265bb: jne    0x00007ff6952270a5  ;*synchronization entry
                  │ │                                                  ; - com.google.re2j.Machine$Queue::contains@-1 (line 46)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.02%  │ │    0x00007ff6952265c1: mov    0xb0(%rsp),%r13
  0.15%    0.09%  │ │    0x00007ff6952265c9: mov    0xc(%r13),%ecx     ;*aastore
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; implicit exception: dispatches to 0x00007ff695228e21
  0.01%           │ │    0x00007ff6952265cd: test   %ecx,%ecx
                  │ │    0x00007ff6952265cf: jle    0x00007ff6952274d5  ;*if_icmpgt
                  │ │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
           0.00%  │ │    0x00007ff6952265d5: mov    0x24(%r13),%r11d   ;*invokespecial &lt;init&gt;
                  │ │                                                  ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.01%  │ │    0x00007ff6952265d9: mov    %ecx,%ebp
  0.12%    0.12%  │ │    0x00007ff6952265db: dec    %ebp               ;*invokevirtual alloc
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │    0x00007ff6952265dd: mov    %ebp,0xc(%r13)
                  │ │    0x00007ff6952265e1: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007ff695228e51
  0.00%    0.01%  │ │    0x00007ff6952265e6: cmp    %r9d,%ebp
                  │ │    0x00007ff6952265e9: jae    0x00007ff695227d01  ;*aastore
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.14%    0.18%  │ │    0x00007ff6952265ef: shl    $0x3,%r11
  0.00%           │ │    0x00007ff6952265f3: mov    0xc(%r11,%rcx,4),%r8d  ;*aload_3
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.01%    0.03%  │ │    0x00007ff6952265f8: test   %r8d,%r8d
                  │ │    0x00007ff6952265fb: je     0x00007ff695227d51  ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.03%    0.01%  │ │    0x00007ff695226601: mov    %r8,%rbx
  0.13%    0.15%  │ │    0x00007ff695226604: shl    $0x3,%rbx          ;*invokevirtual contains
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
           0.02%  │ │    0x00007ff695226608: mov    %esi,0x10(%rbx)
  0.60%    0.69%  │ │    0x00007ff69522660b: mov    %rbx,%r11
                  │ │    0x00007ff69522660e: shr    $0x9,%r11
  0.02%    0.01%  │ │    0x00007ff695226612: movabs $0x7ff6a6160000,%r8
                  │ │    0x00007ff69522661c: mov    %r12b,(%r8,%r11,1)
  0.32%    0.38%  │ │    0x00007ff695226620: mov    0x58(%rsp),%r11
                  │ │    0x00007ff695226625: mov    0xc(%r11),%r11d    ;*ifle
                  │ │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; implicit exception: dispatches to 0x00007ff695228df5
  0.01%    0.02%  │ │    0x00007ff695226629: test   %r11d,%r11d
                  │ │    0x00007ff69522662c: jle    0x00007ff695227f84  ;*invokevirtual addThread
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │    0x00007ff695226632: mov    0xc(%rbx),%r8d     ;*aastore
                  │ │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%    0.17%  │ │    0x00007ff695226636: mov    %r8,%r9
                  │ │    0x00007ff695226639: shl    $0x3,%r9
  0.00%    0.01%  │ │    0x00007ff69522663d: cmp    0x58(%rsp),%r9
                  │ │╭   0x00007ff695226642: je     0x00007ff69522669a  ;*synchronization entry
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@-1 (line 93)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ ││   0x00007ff695226644: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007ff695228e35
  0.18%    0.24%  │ ││   0x00007ff695226649: lea    (%r12,%r8,8),%rcx  ;*invokevirtual contains
                  │ ││                                                 ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ ││                                                 ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ ││   0x00007ff69522664d: cmp    %r11d,%r9d
                  │ ││   0x00007ff695226650: jb     0x00007ff695227d65  ;*aload_2
                  │ ││                                                 ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.34%  │ ││   0x00007ff695226656: mov    %r10,0x20(%rsp)
                  │ ││   0x00007ff69522665b: mov    %r13,0x8(%rsp)
  0.00%           │ ││   0x00007ff695226660: mov    %rbx,0xb0(%rsp)
                  │ ││   0x00007ff695226668: mov    %r14,%rbp
  0.13%    0.16%  │ ││   0x00007ff69522666b: lea    0x10(%r12,%r8,8),%rsi
                  │ ││   0x00007ff695226670: movslq %r11d,%rdx         ;*invokevirtual addThread
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ ││   0x00007ff695226673: mov    0x10(%rsp),%rdi
                  │ ││   0x00007ff695226678: movabs $0x7ff695052640,%r10
  0.15%    0.18%  │ ││   0x00007ff695226682: callq  *%r10              ;*invokespecial &lt;init&gt;
                  │ ││                                                 ; - com.google.re2j.Machine$Thread::&lt;init&gt;@1 (line 20)
                  │ ││                                                 ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │ ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ ││   0x00007ff695226685: mov    %rbp,%r14
  0.00%    0.00%  │ ││   0x00007ff695226688: mov    0xb0(%rsp),%rbx
  0.17%    0.11%  │ ││   0x00007ff695226690: mov    0x8(%rsp),%r13
                  │ ││   0x00007ff695226695: mov    0x20(%rsp),%r10    ;*invokevirtual add
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%           │ │↘   0x00007ff69522669a: mov    0xc(%r14),%r11d    ;*putfield empty
                  │ │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.15%    0.05%  │ │    0x00007ff69522669e: mov    0x20(%r14),%ebp    ;*invokespecial &lt;init&gt;
                  │ │                                                  ; - com.google.re2j.Machine$Thread::&lt;init&gt;@1 (line 20)
                  │ │                                                  ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │    0x00007ff6952266a2: mov    %r11d,%r8d
                  │ │    0x00007ff6952266a5: inc    %r8d
  0.00%           │ │    0x00007ff6952266a8: mov    %r8d,0xc(%r14)     ;*synchronization entry
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.18%    0.03%  │ │    0x00007ff6952266ac: mov    0xc(%r12,%rbp,8),%r8d  ;*arraylength
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; implicit exception: dispatches to 0x00007ff695228e05
                  │ │    0x00007ff6952266b1: cmp    %r8d,%r11d
                  │ │    0x00007ff6952266b4: jae    0x00007ff695227afd  ;*synchronization entry
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.00%  │ │    0x00007ff6952266ba: lea    (%r12,%rbp,8),%r8  ;*if_icmpgt
                  │ │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │                                                  ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │ │    0x00007ff6952266be: lea    0x10(%r8,%r11,4),%r11
  0.16%    0.14%  │ │    0x00007ff6952266c3: mov    %rbx,%r9
                  │ │    0x00007ff6952266c6: shr    $0x3,%r9           ;*invokevirtual add
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%  │ │    0x00007ff6952266ca: mov    %r9d,(%r11)        ;*aaload
                  │ │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.04%  │ │    0x00007ff6952266cd: shr    $0x9,%r11
  0.14%    0.03%  │ │    0x00007ff6952266d1: movabs $0x7ff6a6160000,%r8
                  │ │    0x00007ff6952266db: mov    %r12b,(%r8,%r11,1)  ;*invokespecial &lt;init&gt;
                  │ │                                                  ; - com.google.re2j.Machine$Thread::&lt;init&gt;@1 (line 20)
                  │ │                                                  ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%  │ │    0x00007ff6952266df: xor    %eax,%eax          ;*getfield pool
                  │ │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │ │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.10%    0.15%  │ ↘    0x00007ff6952266e1: mov    0x20(%r10),%r8d    ;*newarray
                  │                                                    ; - com.google.re2j.Machine$Thread::&lt;init&gt;@6 (line 21)
                  │                                                    ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.14%    0.14%  │      0x00007ff6952266e5: mov    0x8(%r12,%r8,8),%r11d  ;*invokevirtual addThread
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007ff695228d35
  0.30%    0.20%  │      0x00007ff6952266ea: mov    0x10(%r14),%r9     ;*synchronization entry
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.04%  │      0x00007ff6952266ee: lea    (%r12,%r8,8),%r10
  0.07%    0.06%  │      0x00007ff6952266f2: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │      0x00007ff6952266f9: jne    0x00007ff695226f6d
  0.22%    0.23%  │      0x00007ff6952266ff: mov    0x18(%r10),%ecx    ;*aaload
                  │                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%  │      0x00007ff695226703: cmp    $0x40,%ecx
                  │      0x00007ff695226706: jg     0x00007ff695227dd1  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.19%    0.16%  │      0x00007ff69522670c: mov    $0x1,%r11d
  0.05%    0.03%  │      0x00007ff695226712: shl    %cl,%r11           ;*synchronization entry
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.31%    0.43%  │      0x00007ff695226715: mov    %r11,%r8
  0.04%    0.02%  │      0x00007ff695226718: and    %r9,%r8            ;*arraylength
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.08%    0.03%  │      0x00007ff69522671b: test   %r8,%r8
                  │      0x00007ff69522671e: jne    0x00007ff6952271cc  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.09%  │      0x00007ff695226724: xor    %ebp,%ebp          ;*aaload
                  │                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.11%  │      0x00007ff695226726: test   %r8,%r8
                  │      0x00007ff695226729: jne    0x00007ff695227e21
  0.11%    0.12%  │      0x00007ff69522672f: cmp    $0x40,%ecx
                  │      0x00007ff695226732: jge    0x00007ff695227e65  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.12%  │      0x00007ff695226738: mov    %r12b,0x18(%r14)
  0.00%    0.00%  │      0x00007ff69522673c: or     %r9,%r11
  0.12%    0.08%  │      0x00007ff69522673f: mov    %r11,0x10(%r14)    ;*invokestatic arraycopy
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.12%  │      0x00007ff695226743: mov    %r10,%rsi
  0.12%    0.10%  │      0x00007ff695226746: shr    $0x3,%rsi          ;*ifnonnull
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%    0.01%  │      0x00007ff69522674a: test   %rax,%rax
                  │      0x00007ff69522674d: jne    0x00007ff695227088  ;*if_icmpge
                  │                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.07%    0.09%  │      0x00007ff695226753: mov    0xc(%r13),%r11d    ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; implicit exception: dispatches to 0x00007ff695228db9
  0.10%    0.17%  │      0x00007ff695226757: test   %r11d,%r11d
                  │      0x00007ff69522675a: jle    0x00007ff6952273da  ;*if_icmpge
                  │                                                    ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.10%    0.10%  │      0x00007ff695226760: mov    0x24(%r13),%r9d    ;*newarray
                  │                                                    ; - com.google.re2j.Machine$Thread::&lt;init&gt;@6 (line 21)
                  │                                                    ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │      0x00007ff695226764: mov    %r11d,%ebp
  0.13%    0.13%  │      0x00007ff695226767: dec    %ebp               ;*aaload
                  │                                                    ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.16%  │      0x00007ff695226769: mov    %ebp,0xc(%r13)
  0.14%    0.06%  │      0x00007ff69522676d: mov    0xc(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007ff695228de5
  0.01%    0.00%  │      0x00007ff695226772: cmp    %ecx,%ebp
                  │      0x00007ff695226774: jae    0x00007ff695227a41  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.12%  │      0x00007ff69522677a: lea    (%r12,%r9,8),%r8
  0.19%    0.17%  │      0x00007ff69522677e: mov    0xc(%r8,%r11,4),%r11d  ;*getfield cap
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@51 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.09%    0.15%  │      0x00007ff695226783: test   %r11d,%r11d
                  │      0x00007ff695226786: je     0x00007ff695227a85
           0.00%  │      0x00007ff69522678c: mov    %r11,%rax
  0.11%    0.07%  │      0x00007ff69522678f: shl    $0x3,%rax          ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.14%    0.16%  │      0x00007ff695226793: mov    %esi,0x10(%rax)
  0.55%    0.64%  │      0x00007ff695226796: mov    %rax,%r10
           0.01%  │      0x00007ff695226799: shr    $0x9,%r10
  0.03%    0.03%  │      0x00007ff69522679d: movabs $0x7ff6a6160000,%r11
  0.04%    0.04%  │      0x00007ff6952267a7: mov    %r12b,(%r11,%r10,1)
  0.25%    0.29%  │      0x00007ff6952267ab: mov    0x58(%rsp),%r10
           0.00%  │      0x00007ff6952267b0: mov    0xc(%r10),%r11d    ;*new  ; - com.google.re2j.Machine::alloc@30 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; implicit exception: dispatches to 0x00007ff695228d91
  0.00%    0.00%  │      0x00007ff6952267b4: test   %r11d,%r11d
                  │      0x00007ff6952267b7: jle    0x00007ff695227d9d  ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.05%  │      0x00007ff6952267bd: mov    0xc(%rax),%r10d    ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.34%    0.19%  │      0x00007ff6952267c1: mov    %r10,%r8
                  │      0x00007ff6952267c4: shl    $0x3,%r8
  0.02%    0.01%  │      0x00007ff6952267c8: cmp    0x58(%rsp),%r8
                  │   ╭  0x00007ff6952267cd: je     0x00007ff69522681b  ;*synchronization entry
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.05%    0.03%  │   │  0x00007ff6952267cf: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007ff695228dcd
  0.47%    0.44%  │   │  0x00007ff6952267d4: lea    (%r12,%r10,8),%rcx  ;*invokevirtual add
                  │   │                                                ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.00%           │   │  0x00007ff6952267d8: cmp    %r11d,%r9d
                  │   │  0x00007ff6952267db: jb     0x00007ff695227a99  ;*aload_2
                  │   │                                                ; - com.google.re2j.Machine::alloc@43 (line 138)
                  │   │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.43%    0.50%  │   │  0x00007ff6952267e1: mov    %rax,0x8(%rsp)
  0.01%    0.03%  │   │  0x00007ff6952267e6: mov    %r13,0xb0(%rsp)
  0.02%    0.02%  │   │  0x00007ff6952267ee: mov    %r14,%rbp
                  │   │  0x00007ff6952267f1: lea    0x10(%r12,%r10,8),%rsi
  0.17%    0.26%  │   │  0x00007ff6952267f6: movslq %r11d,%rdx         ;*synchronization entry
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.02%    0.02%  │   │  0x00007ff6952267f9: mov    0x10(%rsp),%rdi
  0.01%    0.05%  │   │  0x00007ff6952267fe: movabs $0x7ff695052640,%r10
  0.01%           │   │  0x00007ff695226808: callq  *%r10              ;*synchronization entry
                  │   │                                                ; - com.google.re2j.Machine::alloc@-1 (line 132)
                  │   │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │   │  0x00007ff69522680b: mov    %rbp,%r14
  0.04%    0.02%  │   │  0x00007ff69522680e: mov    0xb0(%rsp),%r13
  0.36%    0.30%  │   │  0x00007ff695226816: mov    0x8(%rsp),%rax     ;*invokevirtual add
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │   │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │   ↘  0x00007ff69522681b: mov    0x20(%r14),%r10d   ;*synchronization entry
                  │                                                    ; - com.google.re2j.Machine::alloc@-1 (line 132)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%  │      0x00007ff69522681f: mov    0xc(%r14),%ebp     ;*new  ; - com.google.re2j.Machine::alloc@30 (line 136)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  │      0x00007ff695226823: mov    %ebp,%r11d
  0.27%    0.24%  │      0x00007ff695226826: inc    %r11d
                  │      0x00007ff695226829: mov    %r11d,0xc(%r14)    ;*synchronization entry
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@-1 (line 248)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.06%  │      0x00007ff69522682d: mov    0xc(%r12,%r10,8),%r11d  ;*if_acmpeq
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                    ; implicit exception: dispatches to 0x00007ff695228da1
  0.01%    0.00%  │      0x00007ff695226832: cmp    %r11d,%ebp
                  │      0x00007ff695226835: jae    0x00007ff695227999  ;*getfield pc
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@2 (line 248)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.33%    0.19%  │      0x00007ff69522683b: shl    $0x3,%r10          ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@19 (line 251)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │      0x00007ff69522683f: lea    0x10(%r10,%rbp,4),%r10
  0.01%    0.01%  │      0x00007ff695226844: mov    %rax,%r11
                  │      0x00007ff695226847: shr    $0x3,%r11          ;*aastore
                  │                                                    ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.33%    0.35%  │      0x00007ff69522684b: mov    %r11d,(%r10)       ;*putfield inst
                  │                                                    ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.11%    0.17%  │      0x00007ff69522684e: shr    $0x9,%r10
  0.03%    0.02%  │      0x00007ff695226852: movabs $0x7ff6a6160000,%r11
                  │      0x00007ff69522685c: mov    %r12b,(%r11,%r10,1)  ;*invokestatic arraycopy
                  │                                                    ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.31%    0.30%  │      0x00007ff695226860: xor    %eax,%eax          ;*invokevirtual add
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                    ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.04%  │      0x00007ff695226862: mov    %rax,%rbx
  0.01%    0.01%  │      0x00007ff695226865: jmpq   0x00007ff6952269d6
                  ↘      0x00007ff69522686a: mov    0x18(%r10),%ecx    ;*new  ; - com.google.re2j.Machine::alloc@30 (line 136)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007ff69522686e: cmp    $0x40,%ecx
                         0x00007ff695226871: jg     0x00007ff695227b49  ;*invokevirtual add
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.12%    0.09%         0x00007ff695226877: mov    $0x1,%r8d
                         0x00007ff69522687d: shl    %cl,%r8            ;*synchronization entry
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.05%         0x00007ff695226880: mov    %r11,%r9
                         0x00007ff695226883: and    %r8,%r9            ;*if_acmpeq
                                                                       ; - com.google.re2j.Inst$MatchInst::add@55 (line 103)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                         0x00007ff695226886: test   %r9,%r9
                         0x00007ff695226889: jne    0x00007ff6952271b2  ;*invokevirtual alloc
                                                                       ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                         0x00007ff69522688f: xor    %ebp,%ebp          ;*invokevirtual add
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.01%         0x00007ff695226891: test   %r9,%r9
                         0x00007ff695226894: jne    0x00007ff695227b95
                         0x00007ff69522689a: cmp    $0x40,%ecx
                         0x00007ff69522689d: jge    0x00007ff695227bd1  ;*invokevirtual contains
                                                                       ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                                                                       ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                         0x00007ff6952268a3: or     %r8,%r11
                         0x00007ff6952268a6: mov    %r11,0x10(%rdx)    ;*invokestatic arraycopy
                                                                       ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                       ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.01%         0x00007ff6952268aa: mov    %r10,%r11
                         0x00007ff6952268ad: shr    $0x3,%r11          ;*ifle
                                                                       ; - com.google.re2j.Machine::alloc@4 (line 132)
                                                                       ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                       ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                         0x00007ff6952268b1: mov    %rdi,%rbx
                         0x00007ff6952268b4: test   %rdi,%rdi
                         0x00007ff6952268b7: jne    0x00007ff695227062  ;*invokevirtual alloc
....................................................................................................
 19.29%   18.77%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 556 (1248 bytes) 

                                    0x00007ff69524f779: and    $0x4,%r11d
                                    0x00007ff69524f77d: mov    %r11d,0x4c(%rsp)
                                    0x00007ff69524f782: mov    %r9,0x68(%rsp)
                                    0x00007ff69524f787: xor    %edi,%edi
                                    0x00007ff69524f789: xor    %r9d,%r9d
                                    0x00007ff69524f78c: mov    %r9d,0x64(%rsp)
                  ╭                 0x00007ff69524f791: jmpq   0x00007ff69524f9e0  ;*if_icmpne
                  │                                                               ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │                                                               ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.20%    0.16%  │         ↗       0x00007ff69524f796: vmovd  %xmm0,%r11d
                  │         │       0x00007ff69524f79b: mov    %r11,%r8
  0.00%           │         │       0x00007ff69524f79e: shl    $0x3,%r8           ;*invokestatic isHighSurrogate
                  │         │                                                     ; - java.lang.Character::codePointAt@9 (line 4867)
                  │         │                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                     ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%           │         │       0x00007ff69524f7a2: mov    %r10,%rsi
  0.12%    0.15%  │         │       0x00007ff69524f7a5: mov    0x18(%rsp),%rdx
                  │         │       0x00007ff69524f7aa: mov    0x74(%rsp),%r9d
           0.01%  │         │       0x00007ff69524f7af: xor    %edi,%edi
                  │         │       0x00007ff69524f7b1: mov    0x40(%rsp),%r10
  0.24%    0.17%  │         │       0x00007ff69524f7b6: mov    %r10,(%rsp)
                  │         │       0x00007ff69524f7ba: nop
                  │         │       0x00007ff69524f7bb: callq  0x00007ff695046020  ; OopMap{[24]=Oop [48]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=672}
                  │         │                                                     ;*invokevirtual add
                  │         │                                                     ; - com.google.re2j.Machine::match@315 (line 239)
                  │         │                                                     ;   {optimized virtual_call}
  0.03%    0.02%  │         │       0x00007ff69524f7c0: mov    0x30(%rsp),%r11d   ;*synchronization entry
                  │         │                                                     ; - com.google.re2j.Machine$Queue::isEmpty@-1 (line 53)
                  │         │                                                     ; - com.google.re2j.Machine::match@138 (line 207)
  0.14%    0.15%  │         │ ↗     0x00007ff69524f7c5: mov    0x70(%rsp),%ebx
  0.02%    0.03%  │         │ │     0x00007ff69524f7c9: test   %ebx,%ebx
                  │╭        │ │     0x00007ff69524f7cb: jl     0x00007ff69524fc67  ;*invokestatic codePointAt
                  ││        │ │                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  ││        │ │                                                   ; - com.google.re2j.Machine::match@226 (line 225)
  0.05%    0.04%  ││        │ │     0x00007ff69524f7d1: xor    %r8d,%r8d          ;*aload_0
                  ││        │ │                                                   ; - java.lang.String::indexOf@79 (line 1772)
                  ││        │ │                                                   ; - java.lang.String::indexOf@21 (line 1718)
                  ││        │ │                                                   ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││        │ │                                                   ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││        │ │                                                   ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.19%  ││        │ │↗    0x00007ff69524f7d4: cmp    $0xa,%ebx
                  ││        │ ││    0x00007ff69524f7d7: je     0x00007ff69524fe66  ;*arraylength
                  ││        │ ││                                                  ; - java.lang.String::indexOf@9 (line 1718)
                  ││        │ ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││        │ ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││        │ ││                                                  ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.05%  ││        │ ││    0x00007ff69524f7dd: mov    0x38(%rsp),%r10d
  0.01%    0.02%  ││        │ ││    0x00007ff69524f7e2: test   %r10d,%r10d
                  ││╭       │ ││    0x00007ff69524f7e5: jl     0x00007ff69524fc72  ;*getfield empty
                  │││       │ ││                                                  ; - com.google.re2j.Machine$Queue::isEmpty@1 (line 53)
                  │││       │ ││                                                  ; - com.google.re2j.Machine::match@138 (line 207)
  0.06%    0.07%  │││       │ ││↗   0x00007ff69524f7eb: cmp    $0xa,%r10d
                  │││       │ │││   0x00007ff69524f7ef: je     0x00007ff69524fe6f  ;*if_icmplt
                  │││       │ │││                                                 ; - java.lang.Character::charCount@3 (line 4818)
                  │││       │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.16%    0.21%  │││       │ │││   0x00007ff69524f7f5: mov    %rax,-0x8(%rsp)
  0.07%    0.05%  │││       │ │││   0x00007ff69524f7fa: mov    0x38(%rsp),%eax
  0.01%    0.02%  │││       │ │││   0x00007ff69524f7fe: mov    %eax,0x28(%rsp)
  0.08%    0.08%  │││       │ │││   0x00007ff69524f802: mov    -0x8(%rsp),%rax
  0.21%    0.20%  │││       │ │││   0x00007ff69524f807: mov    %r11d,0x20(%rsp)   ;*if_icmpne
                  │││       │ │││                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │││       │ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.06%  │││       │ │││   0x00007ff69524f80c: mov    0x50(%rsp),%r10
  0.01%    0.01%  │││       │ │││   0x00007ff69524f811: mov    0x10(%r10),%ecx    ;*invokestatic codePointAt
                  │││       │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.07%    0.03%  │││       │ │││   0x00007ff69524f815: mov    0x5c(%rsp),%r11d
  0.16%    0.15%  │││       │ │││   0x00007ff69524f81a: add    0x2c(%rsp),%r11d   ;*invokeinterface charAt
                  │││       │ │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.03%    0.04%  │││       │ │││   0x00007ff69524f81f: mov    %r11d,0x64(%rsp)
  0.03%    0.04%  │││       │ │││   0x00007ff69524f824: add    $0xffffffbf,%ebx
  0.06%    0.08%  │││       │ │││   0x00007ff69524f827: mov    0x38(%rsp),%r10d
  0.18%    0.20%  │││       │ │││   0x00007ff69524f82c: add    $0xffffffbf,%r10d
  0.03%    0.04%  │││       │ │││   0x00007ff69524f830: cmp    $0x1a,%ebx
                  │││╭      │ │││   0x00007ff69524f833: jb     0x00007ff69524f848  ;*invokestatic indexOf
                  ││││      │ │││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  ││││      │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││││      │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││││      │ │││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.02%  ││││      │ │││   0x00007ff69524f835: mov    0x70(%rsp),%r9d
  0.06%    0.06%  ││││      │ │││   0x00007ff69524f83a: add    $0xffffff9f,%r9d
  0.15%    0.20%  ││││      │ │││   0x00007ff69524f83e: cmp    $0x1a,%r9d
                  ││││      │ │││   0x00007ff69524f842: jae    0x00007ff695250152  ;*getfield value
                  ││││      │ │││                                                 ; - java.lang.String::indexOf@11 (line 1718)
                  ││││      │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││││      │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││││      │ │││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.03%  │││↘      │ │││   0x00007ff69524f848: mov    $0x1,%ebp          ;*if_icmplt
                  │││       │ │││                                                 ; - java.lang.Character::charCount@3 (line 4818)
                  │││       │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.04%    0.05%  │││       │ │││   0x00007ff69524f84d: cmp    $0x1a,%r10d
                  │││ ╭     │ │││   0x00007ff69524f851: jb     0x00007ff69524f866  ;*invokeinterface charAt
                  │││ │     │ │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││ │     │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││ │     │ │││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.05%    0.04%  │││ │     │ │││   0x00007ff69524f853: mov    0x38(%rsp),%r11d
  0.10%    0.11%  │││ │     │ │││   0x00007ff69524f858: add    $0xffffff9f,%r11d
  0.06%    0.07%  │││ │     │ │││   0x00007ff69524f85c: cmp    $0x1a,%r11d
                  │││ │     │ │││   0x00007ff69524f860: jae    0x00007ff695250128  ;*if_icmpne
                  │││ │     │ │││                                                 ; - java.lang.String::indexOf@150 (line 1782)
                  │││ │     │ │││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││ │     │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││ │     │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││ │     │ │││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.06%  │││ ↘     │ │││   0x00007ff69524f866: mov    $0x1,%r11d         ;*invokeinterface charAt
                  │││       │ │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││       │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││       │ │││                                                 ; - com.google.re2j.Machine::match@226 (line 225)
  0.14%    0.10%  │││       │ │││   0x00007ff69524f86c: cmp    %r11d,%ebp
                  │││  ╭    │ │││   0x00007ff69524f86f: jne    0x00007ff69524f87c  ;*aload_0
                  │││  │    │ │││                                                 ; - java.lang.String::indexOf@60 (line 1771)
                  │││  │    │ │││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││  │    │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││  │    │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││  │    │ │││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.11%    0.10%  │││  │    │ │││   0x00007ff69524f871: or     $0x20,%r8d         ;*invokestatic isWordRune
                  │││  │    │ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││  │    │ │││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.03%  │││  │    │ │││   0x00007ff69524f875: mov    %r8d,0x74(%rsp)
  0.04%    0.03%  │││  │╭   │ │││   0x00007ff69524f87a: jmp    0x00007ff69524f885
  0.06%    0.09%  │││  ↘│   │ │││   0x00007ff69524f87c: or     $0x10,%r8d         ;*bipush
                  │││   │   │ │││                                                 ; - com.google.re2j.Utils::isWordRune@24 (line 149)
                  │││   │   │ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││   │   │ │││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.04%  │││   │   │ │││   0x00007ff69524f880: mov    %r8d,0x74(%rsp)    ;*invokeinterface charAt
                  │││   │   │ │││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││   │   │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││   │   │ │││                                                 ; - com.google.re2j.Machine::match@96 (line 195)
  0.25%    0.25%  │││   ↘   │ │││   0x00007ff69524f885: mov    0x5c(%rsp),%r10d
  0.18%    0.19%  │││       │ │││   0x00007ff69524f88a: cmp    %ecx,%r10d
                  │││    ╭  │ │││   0x00007ff69524f88d: je     0x00007ff69524fc7b  ;*caload
                  │││    │  │ │││                                                 ; - java.lang.String::indexOf@36 (line 1766)
                  │││    │  │ │││                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │  │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ │││                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ │││                                                 ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.08%  │││    │  │ │││   0x00007ff69524f893: xor    %ebx,%ebx          ;*if_icmpne
                  │││    │  │ │││                                                 ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                  │││    │  │ │││                                                 ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │││    │  │ │││                                                 ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.04%  │││    │  │ │││↗  0x00007ff69524f895: mov    %r10d,0x30(%rsp)
  0.07%    0.06%  │││    │  │ ││││  0x00007ff69524f89a: mov    0x40(%rsp),%rsi
  0.08%    0.12%  │││    │  │ ││││  0x00007ff69524f89f: mov    0x18(%rsp),%rdx
  0.07%    0.06%  │││    │  │ ││││  0x00007ff69524f8a4: mov    0x68(%rsp),%rcx
  0.01%    0.03%  │││    │  │ ││││  0x00007ff69524f8a9: mov    %r10d,%r8d
  0.07%    0.11%  │││    │  │ ││││  0x00007ff69524f8ac: mov    0x64(%rsp),%r9d
  0.10%    0.09%  │││    │  │ ││││  0x00007ff69524f8b1: mov    0x70(%rsp),%edi
  0.04%    0.10%  │││    │  │ ││││  0x00007ff69524f8b5: mov    0x74(%rsp),%r10d
  0.03%    0.03%  │││    │  │ ││││  0x00007ff69524f8ba: mov    %r10d,(%rsp)
  0.07%    0.06%  │││    │  │ ││││  0x00007ff69524f8be: mov    0x3c(%rsp),%r10d
  0.14%    0.05%  │││    │  │ ││││  0x00007ff69524f8c3: mov    %r10d,0x8(%rsp)
  0.12%    0.02%  │││    │  │ ││││  0x00007ff69524f8c8: mov    %ebx,0x10(%rsp)
  0.10%    0.04%  │││    │  │ ││││  0x00007ff69524f8cc: data16 xchg %ax,%ax
  0.07%    0.06%  │││    │  │ ││││  0x00007ff69524f8cf: callq  0x00007ff695046020  ; OopMap{[24]=Oop [32]=NarrowOop [64]=Oop [80]=Oop [104]=Oop off=948}
                  │││    │  │ ││││                                                ;*invokespecial step
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                  │││    │  │ ││││                                                ;   {optimized virtual_call}
  0.12%    0.04%  │││    │  │ ││││  0x00007ff69524f8d4: mov    0x40(%rsp),%r10
  0.21%    0.11%  │││    │  │ ││││  0x00007ff69524f8d9: mov    0x24(%r10),%ebx    ;*synchronization entry
                  │││    │  │ ││││                                                ; - java.lang.Character::charCount@-1 (line 4818)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.02%  │││    │  │ ││││  0x00007ff69524f8dd: mov    0xc(%r10),%r8d     ;*if_icmplt
                  │││    │  │ ││││                                                ; - java.lang.Character::charCount@3 (line 4818)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.10%    0.06%  │││    │  │ ││││  0x00007ff69524f8e1: mov    0x2c(%rsp),%r11d
  0.01%    0.00%  │││    │  │ ││││  0x00007ff69524f8e6: test   %r11d,%r11d
                  │││    │  │ ││││  0x00007ff69524f8e9: je     0x00007ff69524fd93  ;*invokevirtual canCheckPrefix
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@194 (line 218)
  0.17%    0.11%  │││    │  │ ││││  0x00007ff69524f8ef: mov    0x28(%r10),%r10d   ;*caload
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@133 (line 1779)
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.02%  │││    │  │ ││││  0x00007ff69524f8f3: vmovd  %r10d,%xmm0
  0.11%    0.07%  │││    │  │ ││││  0x00007ff69524f8f8: mov    0xc(%r12,%r10,8),%ebp  ;*iconst_1
                  │││    │  │ ││││                                                ; - java.lang.Character::charCount@10 (line 4818)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                  │││    │  │ ││││                                                ; implicit exception: dispatches to 0x00007ff69525159d
  0.04%    0.07%  │││    │  │ ││││  0x00007ff69524f8fd: test   %ebp,%ebp
                  │││    │  │ ││││  0x00007ff69524f8ff: je     0x00007ff69525064d  ;*synchronization entry
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@-1 (line 178)
  0.14%    0.18%  │││    │  │ ││││  0x00007ff69524f905: mov    0x50(%rsp),%r10
  0.02%    0.01%  │││    │  │ ││││  0x00007ff69524f90a: mov    0x10(%r10),%r9d    ;*invokeinterface charAt
                  │││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.08%    0.08%  │││    │  │ ││││  0x00007ff69524f90e: mov    0xc(%r10),%esi     ;*if_icmple
                  │││    │  │ ││││                                                ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                  │││    │  │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
           0.01%  │││    │  │ ││││  0x00007ff69524f912: mov    0x14(%r10),%eax    ;*getfield value
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@16 (line 1718)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.19%  │││    │  │ ││││  0x00007ff69524f916: mov    0x38(%rsp),%r10d
  0.02%    0.01%  │││    │  │ ││││  0x00007ff69524f91b: cmp    $0xffffffff,%r10d
                  │││    │  │ ││││  0x00007ff69524f91f: je     0x00007ff69524fe4a  ;*if_icmpgt
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@76 (line 1772)
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.10%  │││    │  │ ││││  0x00007ff69524f925: mov    0x34(%rsp),%ecx
  0.01%    0.00%  │││    │  │ ││││  0x00007ff69524f929: add    0x64(%rsp),%ecx
  0.22%    0.26%  │││    │  │ ││││  0x00007ff69524f92d: add    %esi,%ecx          ;*invokeinterface charAt
                  │││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.03%    0.01%  │││    │  │ ││││  0x00007ff69524f92f: cmp    %r9d,%ecx
                  │││    │  │ ││││  0x00007ff69524f932: jge    0x00007ff69524fe59  ;*caload
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@82 (line 1772)
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.15%  │││    │  │ ││││  0x00007ff69524f938: mov    0x8(%r12,%rax,8),%r10d  ; implicit exception: dispatches to 0x00007ff6952515ad
  0.00%    0.02%  │││    │  │ ││││  0x00007ff69524f93d: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │││    │  │ ││││  0x00007ff69524f944: jne    0x00007ff6952503e9  ;*iand
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@147 (line 208)
  0.13%    0.21%  │││    │  │ ││││  0x00007ff69524f94a: lea    (%r12,%rax,8),%rdi  ;*invokeinterface charAt
                  │││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%    0.02%  │││    │  │ ││││  0x00007ff69524f94e: test   %ecx,%ecx
                  │││    │  │ ││││  0x00007ff69524f950: jl     0x00007ff695250519  ;*ifeq
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.09%    0.16%  │││    │  │ ││││  0x00007ff69524f956: mov    0xc(%rdi),%r10d    ;*invokevirtual indexOf
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%           │││    │  │ ││││  0x00007ff69524f95a: mov    0xc(%r12,%r10,8),%ebp  ;*ifne
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@115 (line 200)
                  │││    │  │ ││││                                                ; implicit exception: dispatches to 0x00007ff6952515c1
  0.33%    0.56%  │││    │  │ ││││  0x00007ff69524f95f: cmp    %ebp,%ecx
                  │││    │  │ ││││  0x00007ff69524f961: jge    0x00007ff6952506d5  ;*ifeq
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@148 (line 208)
  0.14%    0.21%  │││    │  │ ││││  0x00007ff69524f967: cmp    %ebp,%ecx
                  │││    │  │ ││││  0x00007ff69524f969: jae    0x00007ff69525037d  ;*aload
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.11%    0.18%  │││    │  │ ││││  0x00007ff69524f96f: shl    $0x3,%r10
           0.00%  │││    │  │ ││││  0x00007ff69524f973: movzwl 0x10(%r10,%rcx,2),%r11d  ;*invokeinterface charAt
                  │││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.16%    0.15%  │││    │  │ ││││  0x00007ff69524f979: cmp    $0xd800,%r11d
  0.16%    0.22%  │││    │  │ ││││  0x00007ff69524f980: jge    0x00007ff695250741  ;*if_icmpgt
                  │││    │  │ ││││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                  │││    │  │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.25%    0.35%  │││    │  │ ││││  0x00007ff69524f986: shl    $0x3,%r11d         ;*if_icmpne
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@134 (line 1779)
                  │││    │  │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                  │││    │  │ ││││  0x00007ff69524f98a: mov    %r11d,%ecx
  0.09%    0.08%  │││    │  │ ││││  0x00007ff69524f98d: or     $0x1,%ecx
  0.03%    0.06%  │││    │  │ ││││  0x00007ff69524f990: and    $0x7,%r11d
  0.20%    0.22%  │││    │  │ ││││  0x00007ff69524f994: sar    $0x3,%ecx
  0.03%    0.06%  │││    │  │ ││││  0x00007ff69524f997: or     $0x1,%r11d         ; OopMap{rbx=NarrowOop rax=NarrowOop xmm0=NarrowOop [24]=Oop [64]=Oop [80]=Oop [104]=Oop off=1147}
                  │││    │  │ ││││                                                ;*goto
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@439 (line 262)
  0.06%    0.11%  │││    │  │ ││││  0x00007ff69524f99b: test   %eax,0x1850865f(%rip)        # 0x00007ff6ad758000
                  │││    │  │ ││││                                                ;*arraylength
                  │││    │  │ ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@175 (line 216)
                  │││    │  │ ││││                                                ;   {poll}
  0.01%    0.00%  │││    │  │ ││││  0x00007ff69524f9a1: mov    0x40(%rsp),%r10
  0.19%    0.21%  │││    │  │ ││││  0x00007ff69524f9a6: movzbl 0x10(%r10),%edi    ;*invokeinterface charAt
                  │││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.02%    0.05%  │││    │  │ ││││  0x00007ff69524f9ab: mov    0x68(%rsp),%r10
  0.08%    0.08%  │││    │  │ ││││  0x00007ff69524f9b0: mov    %r10,%rdx
  0.00%    0.00%  │││    │  │ ││││  0x00007ff69524f9b3: shr    $0x3,%rdx          ;*newarray
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine$Thread::&lt;init&gt;@6 (line 21)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::alloc@39 (line 136)
                  │││    │  │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.19%    0.16%  │││    │  │ ││││  0x00007ff69524f9b7: mov    %edx,0x30(%rsp)
  0.03%    0.04%  │││    │  │ ││││  0x00007ff69524f9bb: mov    0x38(%rsp),%r10d
  0.10%    0.11%  │││    │  │ ││││  0x00007ff69524f9c0: mov    %ecx,0x38(%rsp)
  0.00%           │││    │  │ ││││  0x00007ff69524f9c4: mov    0x18(%rsp),%rcx
  0.18%    0.16%  │││    │  │ ││││  0x00007ff69524f9c9: mov    %rcx,0x68(%rsp)
  0.03%    0.05%  │││    │  │ ││││  0x00007ff69524f9ce: mov    0x34(%rsp),%ecx
  0.09%    0.08%  │││    │  │ ││││  0x00007ff69524f9d2: mov    %ecx,0x2c(%rsp)
  0.00%           │││    │  │ ││││  0x00007ff69524f9d6: mov    %r11d,0x34(%rsp)
  0.16%    0.27%  │││    │  │ ││││  0x00007ff69524f9db: mov    %r9d,0x14(%rsp)    ;*ifeq
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                  │││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.06%  ↘││    │  │ ││││  0x00007ff69524f9e0: mov    0x30(%rsp),%r9d
  0.12%    0.11%   ││    │  │ ││││  0x00007ff69524f9e5: movzbl 0x18(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007ff69525155d
  0.01%    0.01%   ││    │  │ ││││  0x00007ff69524f9eb: shl    $0x3,%r9           ;*invokestatic arraycopy
                   ││    │  │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.18%    0.18%   ││    │  │ ││││  0x00007ff69524f9ef: mov    %r9,0x18(%rsp)
  0.02%    0.03%   ││    │  │ ││││  0x00007ff69524f9f4: test   %r11d,%r11d
                   ││    │╭ │ ││││  0x00007ff69524f9f7: je     0x00007ff69524fa42  ;*ifne
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.03%   ││    ││ │ ││││  0x00007ff69524f9f9: mov    0x4c(%rsp),%r11d
                   ││    ││ │ ││││  0x00007ff69524f9fe: test   %r11d,%r11d
                   ││    ││ │ ││││  0x00007ff69524fa01: jne    0x00007ff6952508e1  ;*bipush
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::isWordRune@12 (line 149)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.06%    0.11%   ││    ││ │ ││││  0x00007ff69524fa07: test   %edi,%edi
                   ││    ││ │ ││││  0x00007ff69524fa09: jne    0x00007ff695250929  ;*if_icmpgt
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.01%   ││    ││ │ ││││  0x00007ff69524fa0f: mov    0x40(%rsp),%r11
  0.02%    0.03%   ││    ││ │ ││││  0x00007ff69524fa14: mov    0x14(%r11),%ecx    ;*if_icmpge
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@123 (line 1779)
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%            ││    ││ │ ││││  0x00007ff69524fa18: mov    0x24(%r12,%rcx,8),%r11d  ;*if_icmpgt
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                   ││    ││ │ ││││                                                ; implicit exception: dispatches to 0x00007ff6952515f5
  0.11%    0.08%   ││    ││ │ ││││  0x00007ff69524fa1d: mov    %r11d,%edx
  0.02%    0.00%   ││    ││ │ ││││  0x00007ff69524fa20: mov    0xc(%r12,%r11,8),%r11d  ;*ifeq
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@197 (line 218)
                   ││    ││ │ ││││                                                ; implicit exception: dispatches to 0x00007ff695251605
  0.16%    0.17%   ││    ││ │ ││││  0x00007ff69524fa25: mov    %r11d,%r14d
  0.00%            ││    ││ │ ││││  0x00007ff69524fa28: mov    0xc(%r12,%r11,8),%r11d  ;*invokeinterface charAt
                   ││    ││ │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    ││ │ ││││                                                ; implicit exception: dispatches to 0x00007ff695251615
  0.54%    0.56%   ││    ││ │ ││││  0x00007ff69524fa2d: mov    %r11d,0x28(%rsp)
  0.09%    0.13%   ││    ││ │ ││││  0x00007ff69524fa32: test   %r11d,%r11d
                   ││    ││ │ ││││  0x00007ff69524fa35: jne    0x00007ff69524ff30  ;*iadd
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@50 (line 1769)
                   ││    ││ │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    ││ │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    ││ │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    ││ │ ││││  0x00007ff69524fa3b: mov    %r10d,0x70(%rsp)
                   ││    ││╭│ ││││  0x00007ff69524fa40: jmp    0x00007ff69524fa47
  0.08%    0.09%   ││    │↘││ ││││  0x00007ff69524fa42: mov    %r10d,0x70(%rsp)   ;*invokeinterface charAt
                   ││    │ ││ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    │ ││ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │ ││ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.00%    0.01%   ││    │ ↘│ ││││  0x00007ff69524fa47: test   %edi,%edi
                   ││    │  │ ││││  0x00007ff69524fa49: jne    0x00007ff69525043d  ;*goto
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@126 (line 201)
  0.25%    0.20%   ││    │  │ ││││  0x00007ff69524fa4f: mov    0x64(%rsp),%r10d
  0.01%    0.03%   ││    │  │ ││││  0x00007ff69524fa54: test   %r10d,%r10d
                   ││    │  │ ││││  0x00007ff69524fa57: je     0x00007ff69524fe78  ;*iinc
                   ││    │  │ ││││                                                ; - java.lang.String::indexOf@69 (line 1772)
                   ││    │  │ ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.06%    0.09%   ││    │  │ ││││  0x00007ff69524fa5d: mov    0x3c(%rsp),%r9d
  0.01%            ││    │  │ ││││  0x00007ff69524fa62: test   %r9d,%r9d
                   ││    │  │ ││││  0x00007ff69524fa65: jne    0x00007ff6952504cd  ;*instanceof
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.21%   ││    │  │ ││││  0x00007ff69524fa6b: vmovd  %xmm0,%r11d
  0.03%    0.01%   ││    │  │ ││││  0x00007ff69524fa70: mov    0xc(%r12,%r11,8),%ecx  ;*invokeinterface charAt
                   ││    │  │ ││││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
                   ││    │  │ ││││                                                ; implicit exception: dispatches to 0x00007ff69525156d
  0.05%    0.10%   ││    │  │ ││││  0x00007ff69524fa75: test   %ecx,%ecx
                   ││    │  │ ││││  0x00007ff69524fa77: jle    0x00007ff69525047d
  0.02%            ││    │  │ ││││  0x00007ff69524fa7d: test   %ecx,%ecx
                   ││    │  │ ││││  0x00007ff69524fa7f: jbe    0x00007ff69525032e  ;*goto
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@126 (line 201)
  0.29%    0.29%   ││    │  │ ││││  0x00007ff69524fa85: mov    %ecx,0x14(%rsp)
  0.03%    0.02%   ││    │  │ ││││  0x00007ff69524fa89: mov    %rax,-0x8(%rsp)
  0.05%    0.02%   ││    │  │ ││││  0x00007ff69524fa8e: mov    0x64(%rsp),%eax
                   ││    │  │ ││││  0x00007ff69524fa92: mov    %eax,0x5c(%rsp)
  0.19%    0.21%   ││    │  │ ││││  0x00007ff69524fa96: mov    -0x8(%rsp),%rax
  0.03%    0.05%   ││    │  │ ││││  0x00007ff69524fa9b: vmovss %xmm0,0x58(%rsp)
  0.07%    0.06%   ││    │  │ ││││  0x00007ff69524faa1: mov    %r9d,0x3c(%rsp)
  0.01%    0.00%   ││    │  │ ││││  0x00007ff69524faa6: mov    0x40(%rsp),%r10
  0.25%    0.23%   ││    │  │ ││││  0x00007ff69524faab: mov    0x18(%r10),%r10d   ;*ireturn
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@32 (line 205)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.04%   ││    │  │ ││││  0x00007ff69524faaf: shl    $0x3,%r11          ;*invokestatic arraycopy
                   ││    │  │ ││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.04%    0.08%   ││    │  │ ││││  0x00007ff69524fab3: mov    %r11,0x20(%rsp)
  0.00%    0.01%   ││    │  │ ││││  0x00007ff69524fab8: vmovd  %xmm0,%r11d
  0.21%    0.27%   ││    │  │ ││││  0x00007ff69524fabd: lea    0x10(%r12,%r11,8),%r11  ;*getfield prefixRune
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.02%    0.03%   ││    │  │ ││││  0x00007ff69524fac2: mov    %r11,0x60(%rsp)
  0.05%    0.05%   ││    │  │ ││││  0x00007ff69524fac7: mov    0x5c(%rsp),%ecx
                   ││    │  │ ││││  0x00007ff69524facb: mov    %ecx,(%r11)        ;*invokestatic isWordRune
                   ││    │  │ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.21%    0.22%   ││    │  │ ││││  0x00007ff69524face: mov    0x1c(%r12,%r10,8),%ebp  ;*instanceof
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                   ││    │  │ ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    │  │ ││││                                                ; implicit exception: dispatches to 0x00007ff69525157d
  0.16%    0.22%   ││    │  │ ││││  0x00007ff69524fad3: mov    0x8(%r12,%rbp,8),%r11d  ;*invokevirtual index
                   ││    │  │ ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    │  │ ││││                                                ; implicit exception: dispatches to 0x00007ff69525158d
  0.33%    0.40%   ││    │  │ ││││  0x00007ff69524fad8: lea    (%r12,%rbp,8),%r10
           0.01%   ││    │  │ ││││  0x00007ff69524fadc: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ││    │  ╰ ││││  0x00007ff69524fae3: je     0x00007ff69524f796  ;*ifne
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@178 (line 216)
  0.09%    0.08%   ││    │    ││││  0x00007ff69524fae9: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   ││    │    ││││  0x00007ff69524faf0: jne    0x00007ff69525068d
  0.01%    0.01%   ││    │    ││││  0x00007ff69524faf6: mov    0x18(%r10),%ecx    ;*if_icmplt
                   ││    │    ││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    │    ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.06%    0.02%   ││    │    ││││  0x00007ff69524fafa: cmp    $0x40,%ecx
                   ││    │    ││││  0x00007ff69524fafd: jg     0x00007ff6952507b5  ;*aload
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.11%    0.12%   ││    │    ││││  0x00007ff69524fb03: mov    %r10,0x78(%rsp)
  0.02%    0.02%   ││    │    ││││  0x00007ff69524fb08: mov    $0x1,%edi
  0.01%    0.00%   ││    │    ││││  0x00007ff69524fb0d: shl    %cl,%rdi
  0.17%    0.19%   ││    │    ││││  0x00007ff69524fb10: mov    0x30(%rsp),%r10d
                   ││    │    ││││  0x00007ff69524fb15: mov    0x10(%r12,%r10,8),%r10  ;*getfield prefixRune
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.00%    0.03%   ││    │    ││││  0x00007ff69524fb1a: mov    %rdi,%r11
  0.00%            ││    │    ││││  0x00007ff69524fb1d: and    %r10,%r11          ;*caload
                   ││    │    ││││                                                ; - java.lang.String::indexOf@129 (line 1779)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.10%   ││    │    ││││  0x00007ff69524fb20: test   %r11,%r11
                   ││    │    ││││  0x00007ff69524fb23: jne    0x00007ff69525019c  ;*aload_0
                   ││    │    ││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    │    ││││  0x00007ff69524fb29: xor    %ebp,%ebp          ;*invokestatic isHighSurrogate
                   ││    │    ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.02%    0.01%   ││    │    ││││  0x00007ff69524fb2b: test   %r11,%r11
                   ││    │    ││││  0x00007ff69524fb2e: jne    0x00007ff69525081d
           0.00%   ││    │    ││││  0x00007ff69524fb34: cmp    $0x40,%ecx
                   ││    │    ││││  0x00007ff69524fb37: jge    0x00007ff69525087d  ;*aload
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.11%    0.12%   ││    │    ││││  0x00007ff69524fb3d: mov    0x30(%rsp),%r9d
                   ││    │    ││││  0x00007ff69524fb42: mov    %r12b,0x18(%r12,%r9,8)  ;*synchronization entry
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@-1 (line 185)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%    0.02%   ││    │    ││││  0x00007ff69524fb47: or     %r10,%rdi
  0.02%    0.00%   ││    │    ││││  0x00007ff69524fb4a: mov    %rdi,0x10(%r12,%r9,8)  ;*invokevirtual step
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.12%    0.08%   ││    │    ││││  0x00007ff69524fb4f: movslq 0x14(%rsp),%r10    ;*if_icmpne
                   ││    │    ││││                                                ; - java.lang.String::indexOf@134 (line 1779)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
           0.00%   ││    │    ││││  0x00007ff69524fb54: mov    %r10,0x80(%rsp)
  0.02%    0.03%   ││    │    ││││  0x00007ff69524fb5c: test   %r8d,%r8d
                   ││    │    ││││  0x00007ff69524fb5f: jle    0x00007ff6952501b1  ;*ifne
                   ││    │    ││││                                                ; - java.lang.String::indexOf@27 (line 1762)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%   ││    │    ││││  0x00007ff69524fb65: mov    %r8d,%ebp
  0.15%    0.11%   ││    │    ││││  0x00007ff69524fb68: dec    %ebp               ;*if_icmplt
                   ││    │    ││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    │    ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.01%    0.00%   ││    │    ││││  0x00007ff69524fb6a: mov    0x40(%rsp),%r10
  0.02%    0.01%   ││    │    ││││  0x00007ff69524fb6f: mov    %ebp,0xc(%r10)
  0.01%    0.03%   ││    │    ││││  0x00007ff69524fb73: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007ff6952515e5
  0.09%    0.14%   ││    │    ││││  0x00007ff69524fb78: cmp    %r10d,%ebp
                   ││    │    ││││  0x00007ff69524fb7b: jae    0x00007ff6952505ed  ;*aload
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@136 (line 207)
  0.01%    0.01%   ││    │    ││││  0x00007ff69524fb81: lea    (%r12,%rbx,8),%r10
  0.01%    0.01%   ││    │    ││││  0x00007ff69524fb85: mov    0xc(%r10,%r8,4),%r11d  ;*aload_0
                   ││    │    ││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.01%   ││    │    ││││  0x00007ff69524fb8a: test   %r11d,%r11d
                   ││    │    ││││  0x00007ff69524fb8d: je     0x00007ff695250639  ;*invokestatic isHighSurrogate
                   ││    │    ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.07%    0.14%   ││    │    ││││  0x00007ff69524fb93: mov    %r11,%r8
           0.00%   ││    │    ││││  0x00007ff69524fb96: shl    $0x3,%r8           ;*if_icmplt
                   ││    │    ││││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││    │    ││││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.00%    0.02%   ││    │    ││││  0x00007ff69524fb9a: mov    0xc(%r8),%r11d     ;*if_icmpgt
                   ││    │    ││││                                                ; - java.lang.String::indexOf@95 (line 1776)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.03%   ││    │    ││││  0x00007ff69524fb9e: mov    %r8,%r10
  0.09%    0.10%   ││    │    ││││  0x00007ff69524fba1: mov    %r8,0x88(%rsp)
           0.00%   ││    │    ││││  0x00007ff69524fba9: mov    0x78(%rsp),%r8
  0.01%    0.02%   ││    │    ││││  0x00007ff69524fbae: mov    %r8,%r9
  0.01%    0.03%   ││    │    ││││  0x00007ff69524fbb1: shr    $0x3,%r9           ;*getfield prefixRune
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@187 (line 216)
  0.11%    0.15%   ││    │    ││││  0x00007ff69524fbb5: mov    0x88(%rsp),%r8
  0.02%    0.01%   ││    │    ││││  0x00007ff69524fbbd: mov    %r9d,0x10(%r8)     ;*invokestatic isWordRune
                   ││    │    ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.13%    0.18%   ││    │    ││││  0x00007ff69524fbc1: shr    $0x9,%r10
  0.01%    0.04%   ││    │    ││││  0x00007ff69524fbc5: movabs $0x7ff6a6160000,%r8
  0.08%    0.07%   ││    │    ││││  0x00007ff69524fbcf: mov    %r12b,(%r8,%r10,1)  ;*synchronization entry
                   ││    │    ││││                                                ; - com.google.re2j.Utils::emptyOpContext@-1 (line 172)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.00%    0.00%   ││    │    ││││  0x00007ff69524fbd3: mov    0x58(%rsp),%r8d
  0.05%    0.06%   ││    │    ││││  0x00007ff69524fbd8: cmp    %r8d,%r11d
                   ││    │   ╭││││  0x00007ff69524fbdb: je     0x00007ff69524fc10  ;*aload_0
                   ││    │   │││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    │   │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │   │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.02%   ││    │   │││││  0x00007ff69524fbdd: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007ff695251625
  0.10%    0.08%   ││    │   │││││  0x00007ff69524fbe2: lea    (%r12,%r11,8),%rcx  ;*invokestatic arraycopy
                   ││    │   │││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    │   │││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.01%    0.00%   ││    │   │││││  0x00007ff69524fbe6: cmp    0x14(%rsp),%r8d
                   ││    │   │││││  0x00007ff69524fbeb: jb     0x00007ff695250799  ;*caload
                   ││    │   │││││                                                ; - java.lang.String::indexOf@36 (line 1766)
                   ││    │   │││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │   │││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │   │││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.10%   ││    │   │││││  0x00007ff69524fbf1: lea    0x10(%r12,%r11,8),%rsi  ;*iadd
                   ││    │   │││││                                                ; - com.google.re2j.Machine::match@222 (line 224)
  0.01%    0.01%   ││    │   │││││  0x00007ff69524fbf6: mov    0x60(%rsp),%rdi
  0.11%    0.03%   ││    │   │││││  0x00007ff69524fbfb: mov    0x80(%rsp),%rdx
           0.01%   ││    │   │││││  0x00007ff69524fc03: movabs $0x7ff695052640,%r10
  0.03%    0.05%   ││    │   │││││  0x00007ff69524fc0d: callq  *%r10              ;*invokevirtual isEmpty
                   ││    │   │││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
                   ││    │   ↘││││  0x00007ff69524fc10: mov    0x30(%rsp),%r11d
  0.09%    0.13%   ││    │    ││││  0x00007ff69524fc15: mov    0xc(%r12,%r11,8),%ecx  ;*invokestatic charCount
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@96 (line 195)
  0.06%    0.09%   ││    │    ││││  0x00007ff69524fc1a: mov    0x20(%r12,%r11,8),%ebp  ;*arraylength
                   ││    │    ││││                                                ; - java.lang.String::indexOf@9 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    │    ││││  0x00007ff69524fc1f: mov    %ecx,%r8d
  0.08%    0.09%   ││    │    ││││  0x00007ff69524fc22: inc    %r8d
  0.00%    0.02%   ││    │    ││││  0x00007ff69524fc25: mov    %r8d,0xc(%r12,%r11,8)  ;*invokevirtual isEmpty
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
  0.08%    0.11%   ││    │    ││││  0x00007ff69524fc2a: mov    0xc(%r12,%rbp,8),%r8d  ;*caload
                   ││    │    ││││                                                ; - java.lang.String::indexOf@129 (line 1779)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                   ││    │    ││││                                                ; implicit exception: dispatches to 0x00007ff6952515d1
  0.01%    0.02%   ││    │    ││││  0x00007ff69524fc2f: cmp    %r8d,%ecx
                   ││    │    ││││  0x00007ff69524fc32: jae    0x00007ff695250581  ;*invokevirtual isEmpty
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@138 (line 207)
  0.08%    0.11%   ││    │    ││││  0x00007ff69524fc38: lea    (%r12,%rbp,8),%r10  ;*invokestatic arraycopy
                   ││    │    ││││                                                ; - com.google.re2j.Inst$MatchInst::add@68 (line 104)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.02%    0.01%   ││    │    ││││  0x00007ff69524fc3c: lea    0x10(%r10,%rcx,4),%r10
  0.04%    0.04%   ││    │    ││││  0x00007ff69524fc41: mov    0x88(%rsp),%r8
                   ││    │    ││││  0x00007ff69524fc49: shr    $0x3,%r8           ;*aload_0
                   ││    │    ││││                                                ; - java.lang.String::indexOf@79 (line 1772)
                   ││    │    ││││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││    │    ││││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││    │    ││││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.08%   ││    │    ││││  0x00007ff69524fc4d: mov    %r8d,(%r10)
  0.26%    0.36%   ││    │    ││││  0x00007ff69524fc50: shr    $0x9,%r10
  0.03%    0.03%   ││    │    ││││  0x00007ff69524fc54: movabs $0x7ff6a6160000,%r8
                   ││    │    ││││  0x00007ff69524fc5e: mov    %r12b,(%r8,%r10,1)
  0.16%    0.14%   ││    │    ╰│││  0x00007ff69524fc62: jmpq   0x00007ff69524f7c5
                   ↘│    │     │││  0x00007ff69524fc67: mov    $0x5,%r8d
                    │    │     ╰││  0x00007ff69524fc6d: jmpq   0x00007ff69524f7d4
  0.00%             ↘    │      ││  0x00007ff69524fc72: or     $0xa,%r8d          ;*arraylength
                         │      ││                                                ; - java.lang.String::indexOf@9 (line 1718)
                         │      ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │      ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │      ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
           0.00%         │      ╰│  0x00007ff69524fc76: jmpq   0x00007ff69524f7eb
                         ↘       │  0x00007ff69524fc7b: mov    $0x1,%ebx
                                 ╰  0x00007ff69524fc80: jmpq   0x00007ff69524f895
                                    0x00007ff69524fc85: mov    0x5c(%rsp),%r10d
                                    0x00007ff69524fc8a: test   %r10d,%r10d
                                    0x00007ff69524fc8d: jl     0x00007ff69524fd93  ;*invokevirtual step
                                                                                  ; - com.google.re2j.Machine::match@249 (line 228)
....................................................................................................
 16.59%   18.20%  <total for region 3>

....[Hottest Regions]...............................................................................
 27.92%   28.09%         C2, level 4  com.google.re2j.Machine::step, version 503 (361 bytes) 
 19.29%   18.77%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 (1162 bytes) 
 16.59%   18.20%         C2, level 4  com.google.re2j.Machine::match, version 556 (1248 bytes) 
  8.90%    9.97%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 (635 bytes) 
  7.58%    9.27%        runtime stub  StubRoutines::jint_disjoint_arraycopy (128 bytes) 
  6.42%    6.93%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 (718 bytes) 
  4.20%    2.70%         C2, level 4  com.google.re2j.Machine::step, version 503 (170 bytes) 
  1.60%    0.98%         C2, level 4  com.google.re2j.Machine::step, version 503 (84 bytes) 
  0.65%    0.66%         C2, level 4  com.google.re2j.Machine::match, version 556 (108 bytes) 
  0.61%    0.17%         C1, level 3  jdk.internal.org.objectweb.asm.MethodWriter::visitVarInsn, version 182 (14 bytes) 
  0.61%    0.60%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.47%    0.17%         C2, level 4  com.google.re2j.Machine::init, version 553 (250 bytes) 
  0.41%    0.21%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 493 (115 bytes) 
  0.37%    0.17%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 493 (118 bytes) 
  0.28%    0.01%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 (24 bytes) 
  0.26%    0.01%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 (21 bytes) 
  0.14%    0.02%         C2, level 4  com.google.re2j.Machine::init, version 553 (118 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.06%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 556 (143 bytes) 
  3.43%    3.01%  <...other 592 warm regions...>
....................................................................................................
100.00%   99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 35.15%   35.70%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 507 
 33.73%   31.78%         C2, level 4  com.google.re2j.Machine::step, version 503 
 17.51%   19.02%         C2, level 4  com.google.re2j.Machine::match, version 556 
  7.58%    9.27%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
  2.01%    1.87%   [kernel.kallsyms]  [unknown] 
  0.84%    0.39%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 493 
  0.73%    0.26%         C2, level 4  com.google.re2j.Machine::init, version 553 
  0.61%    0.17%         C1, level 3  jdk.internal.org.objectweb.asm.MethodWriter::visitVarInsn, version 182 
  0.32%    0.15%         C2, level 4  com.google.re2j.Matcher::find, version 578 
  0.14%    0.06%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 668 
  0.08%    0.04%      hsdis-amd64.so  [unknown] 
  0.07%    0.01%         C2, level 4  com.github.arnaudroger.re2j.Re2jFindRegex::testCombine, version 601 
  0.06%    0.04%         C2, level 4  java.util.Collections::shuffle, version 600 
  0.06%    0.09%        libc-2.26.so  vfprintf 
  0.04%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.04%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.00%        runtime stub  StubRoutines::arrayof_jint_fill 
  0.03%    0.01%              [vdso]  [unknown] 
  0.90%    0.65%  <...other 119 warm methods...>
....................................................................................................
100.00%   99.65%  <totals>

....[Distribution by Source]........................................................................
 88.57%   87.40%         C2, level 4
  7.64%    9.30%        runtime stub
  2.01%    1.87%   [kernel.kallsyms]
  0.69%    0.79%           libjvm.so
  0.62%    0.17%         C1, level 3
  0.23%    0.34%        libc-2.26.so
  0.11%    0.06%  libpthread-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.03%    0.01%              [vdso]
  0.02%    0.01%         interpreter
....................................................................................................
100.00%   99.99%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  4344.622 ± 33.097  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
