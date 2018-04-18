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
# Warmup Iteration   1: 1360.117 ops/s
# Warmup Iteration   2: 4965.586 ops/s
# Warmup Iteration   3: 4987.175 ops/s
# Warmup Iteration   4: 4986.432 ops/s
# Warmup Iteration   5: 4980.107 ops/s
# Warmup Iteration   6: 5073.194 ops/s
# Warmup Iteration   7: 4120.837 ops/s
# Warmup Iteration   8: 5077.493 ops/s
# Warmup Iteration   9: 5081.220 ops/s
# Warmup Iteration  10: 5082.392 ops/s
# Warmup Iteration  11: 5066.284 ops/s
# Warmup Iteration  12: 5072.736 ops/s
# Warmup Iteration  13: 5076.408 ops/s
# Warmup Iteration  14: 5077.313 ops/s
# Warmup Iteration  15: 5075.036 ops/s
# Warmup Iteration  16: 5054.543 ops/s
# Warmup Iteration  17: 5085.828 ops/s
# Warmup Iteration  18: 5084.705 ops/s
# Warmup Iteration  19: 5075.735 ops/s
# Warmup Iteration  20: 5083.980 ops/s
Iteration   1: 4870.285 ops/s
Iteration   2: 5082.882 ops/s
Iteration   3: 5060.103 ops/s
Iteration   4: 5066.231 ops/s
Iteration   5: 5067.618 ops/s
Iteration   6: 5058.377 ops/s
Iteration   7: 5066.254 ops/s
Iteration   8: 5064.315 ops/s
Iteration   9: 5061.457 ops/s
Iteration  10: 5063.210 ops/s
Iteration  11: 4983.487 ops/s
Iteration  12: 5036.622 ops/s
Iteration  13: 5038.206 ops/s
Iteration  14: 5038.458 ops/s
Iteration  15: 5037.214 ops/s
Iteration  16: 5028.166 ops/s
Iteration  17: 4738.323 ops/s
Iteration  18: 5055.733 ops/s
Iteration  19: 5057.421 ops/s
Iteration  20: 5054.865 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5026.461 ±(99.9%) 70.879 ops/s [Average]
  (min, avg, max) = (4738.323, 5026.461, 5082.882), stdev = 81.624
  CI (99.9%): [4955.582, 5097.340] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 200584 total address lines.
Perf output processed (skipped 23.398 seconds):
 Column 1: cycles (20785 events)
 Column 2: instructions (20862 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 553 (1214 bytes) 

                                 0x00007f1fd1254d81: lea    (%r12,%rbx,8),%rax  ;*synchronization entry
                                                                               ; - com.google.re2j.Machine$Queue::clear@-1 (line 69)
                                                                               ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                                                                               ; - com.google.re2j.Machine::step@174 (line 295)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
                                 0x00007f1fd1254d85: mov    $0x80000000,%ebx
                                 0x00007f1fd1254d8a: cmp    %r11d,%r8d
                                 0x00007f1fd1254d8d: cmovl  %ebx,%r11d         ;*arraylength
                                                                               ; - com.google.re2j.Machine::step@109 (line 289)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
           0.00%                 0x00007f1fd1254d91: mov    0x3c(%rsp),%ebx
                                 0x00007f1fd1254d95: jmpq   0x00007f1fd12555c5  ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.02%                 0x00007f1fd1254d9a: test   %ecx,%ecx
                                 0x00007f1fd1254d9c: jne    0x00007f1fd1255ef1  ;*getfield prefixRune
                                                                               ; - com.google.re2j.Machine::match@187 (line 216)
  0.03%    0.05%                 0x00007f1fd1254da2: test   %r10d,%r10d
                  ╭              0x00007f1fd1254da5: je     0x00007f1fd1254db5  ;*arraylength
                  │                                                            ; - java.lang.String::charAt@9 (line 657)
                  │                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │                                                            ; - com.google.re2j.Machine::match@226 (line 225)
  0.12%    0.13%  │              0x00007f1fd1254da7: mov    0x64(%rsp),%r8d
  0.19%    0.29%  │              0x00007f1fd1254dac: test   %r8d,%r8d
                  │              0x00007f1fd1254daf: jne    0x00007f1fd1255f3d  ;*aload_0
                  │                                                            ; - java.lang.String::indexOf@79 (line 1772)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.05%  ↘              0x00007f1fd1254db5: mov    %r10d,0x18(%rsp)
  0.02%    0.06%                 0x00007f1fd1254dba: vmovd  %xmm7,%r8d
  0.07%    0.15%                 0x00007f1fd1254dbf: mov    0xc(%r12,%r8,8),%ebp  ;*ifge
                                                                               ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                                                               ; implicit exception: dispatches to 0x00007f1fd1257239
  0.19%    0.26%                 0x00007f1fd1254dc4: test   %ebp,%ebp
                                 0x00007f1fd1254dc6: jg     0x00007f1fd12560cd
  0.01%    0.02%                 0x00007f1fd1254dcc: mov    0x78(%rsp),%r10
  0.03%    0.03%                 0x00007f1fd1254dd1: mov    0x18(%r10),%r11d   ;*aload_0
                                                                               ; - com.google.re2j.Machine::match@267 (line 233)
  0.08%    0.11%                 0x00007f1fd1254dd5: mov    0x1c(%r12,%r11,8),%ebp  ;*caload
                                                                               ; - java.lang.String::indexOf@82 (line 1772)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
                                                                               ; implicit exception: dispatches to 0x00007f1fd1257249
  0.18%    0.24%                 0x00007f1fd1254dda: mov    0x8(%r12,%rbp,8),%r11d  ;*aload_0
                                                                               ; - com.google.re2j.Machine::match@267 (line 233)
                                                                               ; implicit exception: dispatches to 0x00007f1fd1257259
  0.33%    0.46%                 0x00007f1fd1254ddf: lea    (%r12,%rbp,8),%r10
           0.01%                 0x00007f1fd1254de3: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                   ╭             0x00007f1fd1254dea: je     0x00007f1fd1254efd  ;*if_icmpeq
                   │                                                           ; - java.lang.String::indexOf@85 (line 1772)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.21%   │             0x00007f1fd1254df0: cmp    $0xf8019992,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │             0x00007f1fd1254df7: jne    0x00007f1fd1256141  ;*invokestatic emptyOpContext
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.05%    0.07%   │             0x00007f1fd1254dfd: mov    0x18(%r10),%ecx    ;*iload_0
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                   │             0x00007f1fd1254e01: cmp    $0x40,%ecx
                   │             0x00007f1fd1254e04: jg     0x00007f1fd12562fd  ;*getfield prefixRune
                   │                                                           ; - com.google.re2j.Machine::match@187 (line 216)
  0.10%    0.16%   │             0x00007f1fd1254e0a: mov    %r10,%rbx
  0.01%    0.01%   │             0x00007f1fd1254e0d: mov    $0x1,%edi
  0.06%    0.05%   │             0x00007f1fd1254e12: shl    %cl,%rdi
  0.26%    0.35%   │             0x00007f1fd1254e15: mov    0x48(%rsp),%r10d
  0.01%    0.01%   │             0x00007f1fd1254e1a: mov    0x10(%r12,%r10,8),%r10  ;*getfield value
                   │                                                           ; - java.lang.String::charAt@23 (line 660)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
                   │             0x00007f1fd1254e1f: mov    %rdi,%r11
                   │             0x00007f1fd1254e22: and    %r10,%r11          ;*getfield value
                   │                                                           ; - java.lang.String::charAt@6 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@249 (line 228)
  0.15%    0.21%   │             0x00007f1fd1254e25: test   %r11,%r11
                   │             0x00007f1fd1254e28: jne    0x00007f1fd12558bb  ;*if_icmplt
                   │                                                           ; - java.lang.String::charAt@10 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
  0.02%    0.02%   │             0x00007f1fd1254e2e: xor    %ebp,%ebp          ;*iload_0
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                   │             0x00007f1fd1254e30: test   %r11,%r11
                   │             0x00007f1fd1254e33: jne    0x00007f1fd1256371  ;*getfield prefixRune
                   │                                                           ; - com.google.re2j.Machine::match@187 (line 216)
  0.04%    0.07%   │             0x00007f1fd1254e39: cmp    $0x40,%ecx
                   │             0x00007f1fd1254e3c: jge    0x00007f1fd12563d1
  0.05%    0.12%   │             0x00007f1fd1254e42: mov    0x48(%rsp),%r9d
  0.02%    0.03%   │             0x00007f1fd1254e47: mov    %r12b,0x18(%r12,%r9,8)
                   │             0x00007f1fd1254e4c: or     %r10,%rdi
  0.04%    0.07%   │             0x00007f1fd1254e4f: mov    %rdi,0x10(%r12,%r9,8)
  0.08%    0.09%   │             0x00007f1fd1254e54: vmovd  %xmm2,%r11d
  0.02%    0.01%   │             0x00007f1fd1254e59: test   %r11d,%r11d
                   │             0x00007f1fd1254e5c: jle    0x00007f1fd125628d  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
                   │             0x00007f1fd1254e62: mov    %r11d,%ebp
  0.06%    0.09%   │             0x00007f1fd1254e65: dec    %ebp               ;*invokestatic isWordRune
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.09%    0.14%   │             0x00007f1fd1254e67: mov    0x78(%rsp),%r10
           0.01%   │             0x00007f1fd1254e6c: mov    %ebp,0xc(%r10)
  0.00%    0.00%   │             0x00007f1fd1254e70: vmovd  %xmm1,%r10d
  0.07%    0.05%   │             0x00007f1fd1254e75: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f1fd12572c1
  0.04%    0.10%   │             0x00007f1fd1254e7a: cmp    %r10d,%ebp
                   │             0x00007f1fd1254e7d: jae    0x00007f1fd1256015  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
  0.01%    0.00%   │             0x00007f1fd1254e83: vmovd  %xmm1,%r11d
                   │             0x00007f1fd1254e88: lea    (%r12,%r11,8),%r10
  0.04%    0.07%   │             0x00007f1fd1254e8c: vmovd  %xmm2,%r11d
  0.11%    0.12%   │             0x00007f1fd1254e91: mov    0xc(%r10,%r11,4),%r8d  ;*if_icmpgt
                   │                                                           ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
           0.00%   │             0x00007f1fd1254e96: test   %r8d,%r8d
                   │             0x00007f1fd1254e99: je     0x00007f1fd125606d  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
  0.00%    0.00%   │             0x00007f1fd1254e9f: mov    0x48(%rsp),%r11d
  0.04%    0.06%   │             0x00007f1fd1254ea4: mov    0x20(%r12,%r11,8),%r9d  ;*iadd
                   │                                                           ; - java.lang.String::indexOf@108 (line 1778)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.10%   │             0x00007f1fd1254ea9: mov    0xc(%r12,%r11,8),%ebp  ;*ireturn
                   │                                                           ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%   │             0x00007f1fd1254eae: lea    (%r12,%r8,8),%r10
           0.00%   │             0x00007f1fd1254eb2: mov    %ebp,%ecx
  0.07%    0.06%   │             0x00007f1fd1254eb4: inc    %ecx
  0.07%    0.12%   │             0x00007f1fd1254eb6: mov    %ecx,0xc(%r12,%r11,8)  ;*getfield prefix
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%   │             0x00007f1fd1254ebb: mov    %rbx,%rcx
                   │             0x00007f1fd1254ebe: shr    $0x3,%rcx          ;*if_icmpgt
                   │                                                           ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.09%   │             0x00007f1fd1254ec2: mov    %ecx,0x10(%r12,%r8,8)  ;*iadd
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@5 (line 203)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.13%   │             0x00007f1fd1254ec7: shr    $0x9,%r10
           0.01%   │             0x00007f1fd1254ecb: movabs $0x7f1fe19be000,%r11
           0.00%   │             0x00007f1fd1254ed5: mov    %r12b,(%r11,%r10,1)  ;*getfield start
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@2 (line 203)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.10%   │             0x00007f1fd1254ed9: mov    0xc(%r12,%r9,8),%r10d  ;*if_icmplt
                   │                                                           ; - java.lang.String::charAt@10 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@249 (line 228)
                   │                                                           ; implicit exception: dispatches to 0x00007f1fd12572d1
  0.08%    0.11%   │             0x00007f1fd1254ede: cmp    %r10d,%ebp
                   │             0x00007f1fd1254ee1: jae    0x00007f1fd1256081  ;*getfield prefix
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.03%   │             0x00007f1fd1254ee7: lea    (%r12,%r9,8),%r10  ;*getfield poolSize
                   │                                                           ; - com.google.re2j.Machine::freeQueue@60 (line 161)
                   │                                                           ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │                                                           ; - com.google.re2j.Machine::step@174 (line 295)
                   │                                                           ; - com.google.re2j.Machine::match@356 (line 242)
                   │             0x00007f1fd1254eeb: lea    0x10(%r10,%rbp,4),%r10  ;*invokestatic isHighSurrogate
                   │                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
  0.07%    0.06%   │             0x00007f1fd1254ef0: mov    %r8d,(%r10)
  0.11%    0.19%   │             0x00007f1fd1254ef3: shr    $0x9,%r10
  0.00%            │             0x00007f1fd1254ef7: mov    %r12b,(%r11,%r10,1)  ;*if_icmpge
                   │                                                           ; - java.lang.String::indexOf@123 (line 1779)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.05%    0.07%   │╭            0x00007f1fd1254efb: jmp    0x00007f1fd1254f20  ;*invokevirtual canCheckPrefix
                   ││                                                          ; - com.google.re2j.Machine::match@194 (line 218)
  0.12%    0.08%   ↘│            0x00007f1fd1254efd: shl    $0x3,%r8           ;*iload_1
                    │                                                          ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.07%    0.05%    │            0x00007f1fd1254f01: mov    %r10,%rsi
  0.02%    0.03%    │            0x00007f1fd1254f04: mov    0x8(%rsp),%rdx
  0.00%    0.01%    │            0x00007f1fd1254f09: mov    0x18(%rsp),%ecx
  0.08%    0.08%    │            0x00007f1fd1254f0d: xor    %edi,%edi
  0.04%    0.06%    │            0x00007f1fd1254f0f: mov    0x78(%rsp),%r10
  0.02%    0.02%    │            0x00007f1fd1254f14: mov    %r10,(%rsp)
  0.00%             │            0x00007f1fd1254f18: data16 xchg %ax,%ax
  0.07%    0.12%    │            0x00007f1fd1254f1b: callq  0x00007f1fd1046020  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=1664}
                    │                                                          ;*invokevirtual add
                    │                                                          ; - com.google.re2j.Machine::match@315 (line 239)
                    │                                                          ;   {optimized virtual_call}
  0.06%    0.05%    ↘            0x00007f1fd1254f20: mov    0x3c(%rsp),%r10d
  0.16%    0.21%                 0x00007f1fd1254f25: test   %r10d,%r10d
                                 0x00007f1fd1254f28: jl     0x00007f1fd1254ad6  ;*invokevirtual add
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.11%    0.09%                 0x00007f1fd1254f2e: xor    %r11d,%r11d        ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.04%    0.01%                 0x00007f1fd1254f31: cmp    $0xa,%r10d
                                 0x00007f1fd1254f35: je     0x00007f1fd125551d  ;*invokestatic indexOf
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.05%                 0x00007f1fd1254f3b: mov    0x44(%rsp),%r8d
  0.14%    0.13%                 0x00007f1fd1254f40: test   %r8d,%r8d
                                 0x00007f1fd1254f43: jl     0x00007f1fd1255301  ;*instanceof
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
  0.13%    0.12%                 0x00007f1fd1254f49: cmp    $0xa,%r8d
                                 0x00007f1fd1254f4d: je     0x00007f1fd1255526  ;*invokestatic isWordRune
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.02%    0.03%                 0x00007f1fd1254f53: mov    0x3c(%rsp),%ecx
  0.07%    0.08%                 0x00007f1fd1254f57: add    $0xffffffbf,%ecx
  0.15%    0.14%                 0x00007f1fd1254f5a: cmp    $0x1a,%ecx
                     ╭           0x00007f1fd1254f5d: jb     0x00007f1fd1254f72
  0.11%    0.12%     │           0x00007f1fd1254f5f: mov    0x3c(%rsp),%r9d
  0.03%    0.06%     │           0x00007f1fd1254f64: add    $0xffffff9f,%r9d
  0.08%    0.10%     │           0x00007f1fd1254f68: cmp    $0x1a,%r9d
                     │           0x00007f1fd1254f6c: jae    0x00007f1fd12556de  ;*aload_0
                     │                                                         ; - java.lang.String::indexOf@126 (line 1779)
                     │                                                         ; - java.lang.String::indexOf@21 (line 1718)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.15%     ↘           0x00007f1fd1254f72: mov    $0x1,%ebp          ;*invokestatic isWordRune
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.05%    0.19%                 0x00007f1fd1254f77: mov    0x44(%rsp),%ecx
  0.05%    0.06%                 0x00007f1fd1254f7b: add    $0xffffffbf,%ecx
  0.08%    0.12%                 0x00007f1fd1254f7e: cmp    $0x1a,%ecx
                      ╭          0x00007f1fd1254f81: jb     0x00007f1fd1254f96  ;*invokevirtual add
                      │                                                        ; - com.google.re2j.Machine::match@315 (line 239)
  0.10%    0.14%      │          0x00007f1fd1254f83: mov    0x44(%rsp),%r9d
  0.09%    0.05%      │          0x00007f1fd1254f88: add    $0xffffff9f,%r9d
  0.02%    0.08%      │          0x00007f1fd1254f8c: cmp    $0x1a,%r9d
                      │          0x00007f1fd1254f90: jae    0x00007f1fd12556ff  ;*invokevirtual step
                      │                                                        ; - com.google.re2j.Machine::match@249 (line 228)
  0.08%    0.11%      ↘          0x00007f1fd1254f96: mov    $0x1,%ecx          ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 228)
  0.12%    0.15%                 0x00007f1fd1254f9b: cmp    %ecx,%ebp
                       ╭         0x00007f1fd1254f9d: je     0x00007f1fd1254faa  ;*invokeinterface charAt
                       │                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                       │                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                       │                                                       ; - com.google.re2j.Machine::match@226 (line 225)
  0.05%    0.03%       │         0x00007f1fd1254f9f: or     $0x10,%r11d        ;*invokevirtual isEmpty
                       │                                                       ; - com.google.re2j.Machine::match@175 (line 216)
  0.01%    0.00%       │         0x00007f1fd1254fa3: mov    %r11d,0x68(%rsp)
  0.12%    0.18%       │╭        0x00007f1fd1254fa8: jmp    0x00007f1fd1254fb3
  0.07%    0.14%       ↘│        0x00007f1fd1254faa: or     $0x20,%r11d
  0.02%    0.03%        │        0x00007f1fd1254fae: mov    %r11d,0x68(%rsp)   ;*if_icmplt
                        │                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                        │                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                        │                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │                                                      ; - com.google.re2j.Machine::match@96 (line 195)
  0.13%    0.16%        ↘        0x00007f1fd1254fb3: mov    0x30(%rsp),%r11
  0.09%    0.12%                 0x00007f1fd1254fb8: mov    0x10(%r11),%ebx    ;*invokevirtual add
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.35%                 0x00007f1fd1254fbc: mov    0x18(%rsp),%ecx
  0.03%    0.03%                 0x00007f1fd1254fc0: cmp    %ebx,%ecx
                                 0x00007f1fd1254fc2: je     0x00007f1fd125530a  ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.24%    0.21%                 0x00007f1fd1254fc8: xor    %edi,%edi
  0.09%    0.20%                 0x00007f1fd1254fca: mov    %edi,0x6c(%rsp)    ;*if_icmpgt
                                                                               ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.14%    0.18%                 0x00007f1fd1254fce: mov    %ecx,0x70(%rsp)
  0.05%    0.06%                 0x00007f1fd1254fd2: mov    %rax,-0x8(%rsp)
  0.17%    0.16%                 0x00007f1fd1254fd7: mov    0x44(%rsp),%eax
  0.04%    0.17%                 0x00007f1fd1254fdb: mov    %eax,0x3c(%rsp)
  0.13%    0.15%                 0x00007f1fd1254fdf: mov    -0x8(%rsp),%rax
  0.15%    0.09%                 0x00007f1fd1254fe4: mov    %r10d,0x84(%rsp)
  0.13%    0.10%                 0x00007f1fd1254fec: rex.W pushq 0x30(%rsp)
  0.16%    0.26%                 0x00007f1fd1254ff1: rex.W popq 0x10(%rsp)
  0.77%    0.70%                 0x00007f1fd1254ff6: mov    0x78(%rsp),%r10
  0.12%    0.11%                 0x00007f1fd1254ffb: mov    0x14(%r10),%r10d   ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 228)
  0.09%    0.10%                 0x00007f1fd1254fff: vmovd  %r10d,%xmm4
  0.13%    0.14%                 0x00007f1fd1255004: movzbl 0x18(%r12,%r10,8),%r11d  ;*if_icmpgt
                                                                               ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                                                               ; implicit exception: dispatches to 0x00007f1fd125727d
  0.30%    0.14%                 0x00007f1fd125500a: mov    0x48(%rsp),%r10d
  0.04%    0.06%                 0x00007f1fd125500f: mov    0xc(%r12,%r10,8),%edi  ;*ifle
                                                                               ; - com.google.re2j.Machine::match@287 (line 236)
  0.08%    0.09%                 0x00007f1fd1255014: mov    %ecx,%r8d
  0.12%    0.10%                 0x00007f1fd1255017: add    0x38(%rsp),%r8d    ;*synchronization entry
                                                                               ; - java.lang.Character::isHighSurrogate@-1 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.11%    0.10%                 0x00007f1fd125501c: mov    %r8d,0x60(%rsp)
  0.04%    0.10%                 0x00007f1fd1255021: test   %edi,%edi
                                 0x00007f1fd1255023: jle    0x00007f1fd1254af3  ;*synchronization entry
                                                                               ; - java.lang.Character::codePointAt@-1 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.08%    0.09%                 0x00007f1fd1255029: test   %r11d,%r11d
                                 0x00007f1fd125502c: jne    0x00007f1fd1255e75  ;*ior
                                                                               ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                                                               ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.11%                 0x00007f1fd1255032: mov    %r11d,0x74(%rsp)
  0.09%    0.05%                 0x00007f1fd1255037: xor    %r10d,%r10d
  0.07%    0.08%                 0x00007f1fd125503a: mov    %r10d,0x8c(%rsp)
  0.08%    0.08%         ╭       0x00007f1fd1255042: jmpq   0x00007f1fd1255147
                         │       0x00007f1fd1255047: nopw   0x0(%rax,%rax,1)
  0.77%    0.60%         │    ↗  0x00007f1fd1255050: xor    %ebx,%ebx          ;*invokevirtual add
                         │    │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.11%    0.12%         │   ↗│  0x00007f1fd1255052: test   %ebx,%ebx
                         │╭  ││  0x00007f1fd1255054: je     0x00007f1fd12550c8  ;*goto
                         ││  ││                                                ; - java.lang.String::indexOf@88 (line 1772)
                         ││  ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                         ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         ││  ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.01%         ││↗ ││  0x00007f1fd1255056: mov    0x1c(%r10),%r9d
  0.08%    0.05%         │││ ││  0x00007f1fd125505a: mov    %r11,%r8
                         │││ ││  0x00007f1fd125505d: shl    $0x3,%r8           ;*instanceof
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │││ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.11%    0.15%         │││ ││  0x00007f1fd1255061: mov    %r9,%rsi
                         │││ ││  0x00007f1fd1255064: shl    $0x3,%rsi          ;*iinc
                         │││ ││                                                ; - java.lang.String::indexOf@69 (line 1772)
                         │││ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │││ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.06%                  │││ ││  0x00007f1fd1255068: mov    0x58(%rsp),%rdx
  0.00%                  │││ ││  0x00007f1fd125506d: mov    0x60(%rsp),%ecx
  0.18%    0.14%         │││ ││  0x00007f1fd1255071: mov    0x68(%rsp),%r9d
  0.08%                  │││ ││  0x00007f1fd1255076: mov    0x90(%rsp),%rdi
  0.01%                  │││ ││  0x00007f1fd125507e: mov    0x78(%rsp),%r10
  0.01%                  │││ ││  0x00007f1fd1255083: mov    %r10,(%rsp)
  0.26%    0.19%         │││ ││  0x00007f1fd1255087: mov    0x70(%rsp),%r10d
                         │││ ││  0x00007f1fd125508c: mov    %r10d,0x24(%rsp)
  0.04%                  │││ ││  0x00007f1fd1255091: movabs $0xffffffffffffffff,%rax
                         │││ ││  0x00007f1fd125509b: callq  0x00007f1fd1046220  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2048}
                         │││ ││                                                ;*invokevirtual add
                         │││ ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
                         │││ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                         │││ ││                                                ;   {virtual_call}
  0.13%    0.13%         │││ ││  0x00007f1fd12550a0: mov    0x48(%rsp),%r11d
  0.02%    0.07%         │││ ││  0x00007f1fd12550a5: mov    0xc(%r12,%r11,8),%edi  ;*ifle
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.08%         │││ ││  0x00007f1fd12550aa: test   %rax,%rax
                         │││ ││  0x00007f1fd12550ad: je     0x00007f1fd1254aeb  ;*getfield poolSize
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@9 (line 133)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f1fd12550b3: mov    0x78(%rsp),%r10
                         │││ ││  0x00007f1fd12550b8: mov    0xc(%r10),%r8d     ;*ifle
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f1fd12550bc: mov    0x24(%r10),%ecx    ;*getfield poolSize
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f1fd12550c0: mov    %rax,0x90(%rsp)    ;*aaload
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  1.30%    1.21%         │↘│ ││  0x00007f1fd12550c8: mov    0xc(%r12,%rcx,8),%r9d  ;*if_icmpne
                         │ │ ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                         │ │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                         │ │ ││                                                ; implicit exception: dispatches to 0x00007f1fd1257219
  0.00%                  │ │ ││  0x00007f1fd12550cd: cmp    %r9d,%r8d
                         │ │ ││  0x00007f1fd12550d0: jge    0x00007f1fd1255ae5  ;*arraylength
                         │ │ ││                                                ; - java.lang.String::indexOf@9 (line 1718)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                         │ │ ││  0x00007f1fd12550d6: mov    %r8d,%r10d
  0.00%                  │ │ ││  0x00007f1fd12550d9: inc    %r10d
  1.51%    1.07%         │ │ ││  0x00007f1fd12550dc: mov    0x78(%rsp),%r11
                         │ │ ││  0x00007f1fd12550e1: mov    %r10d,0xc(%r11)
  0.01%                  │ │ ││  0x00007f1fd12550e5: cmp    %r9d,%r8d
                         │ │ ││  0x00007f1fd12550e8: jae    0x00007f1fd1255a51  ;*getfield value
                         │ │ ││                                                ; - java.lang.String::indexOf@11 (line 1718)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%                  │ │ ││  0x00007f1fd12550ee: mov    0x48(%rsp),%r11d
  1.20%    0.92%         │ │ ││  0x00007f1fd12550f3: mov    0xc(%r12,%r11,8),%r9d  ;*aaload
                         │ │ ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                         │ │ ││  0x00007f1fd12550f8: mov    0x90(%rsp),%r10
  0.00%                  │ │ ││  0x00007f1fd1255100: mov    %r10,%r11
  0.00%                  │ │ ││  0x00007f1fd1255103: shr    $0x3,%r11
  1.25%    0.77%         │ │ ││  0x00007f1fd1255107: lea    (%r12,%rcx,8),%r10  ;*aload_1
                         │ │ ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                         │ │ ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.00%                  │ │ ││  0x00007f1fd125510b: lea    0x10(%r10,%r8,4),%r10  ;*invokeinterface charAt
                         │ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.00%    0.01%         │ │ ││  0x00007f1fd1255110: mov    %r11d,(%r10)
  0.02%                  │ │ ││  0x00007f1fd1255113: shr    $0x9,%r10
  1.29%    0.59%         │ │ ││  0x00007f1fd1255117: movabs $0x7f1fe19be000,%r11
                         │ │ ││  0x00007f1fd1255121: mov    %r12b,(%r11,%r10,1)  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2181}
                         │ │ ││                                                ;*goto
                         │ │ ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.20%    0.20%         │ │ ││  0x00007f1fd1255125: test   %eax,0x17d60ed5(%rip)        # 0x00007f1fe8fb6000
                         │ │ ││                                                ;*invokeinterface charAt
                         │ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
                         │ │ ││                                                ;   {poll}
  0.01%                  │ │ ││  0x00007f1fd125512b: mov    0x88(%rsp),%r11d
  1.35%    0.41%         │ │ ││  0x00007f1fd1255133: cmp    %edi,%r11d
                         │ │ ││  0x00007f1fd1255136: jge    0x00007f1fd1254afa  ;*invokestatic codePointAt
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.06%    0.07%         │ │ ││  0x00007f1fd125513c: mov    %r9d,%edi
  0.13%    0.12%         │ │ ││  0x00007f1fd125513f: mov    %r11d,0x8c(%rsp)   ;*if_icmpgt
                         │ │ ││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                         │ │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.10%    0.12%         ↘ │ ││  0x00007f1fd1255147: mov    0x48(%rsp),%r10d
  1.21%    0.25%           │ ││  0x00007f1fd125514c: mov    0x20(%r12,%r10,8),%edx  ;*aload_0
                           │ ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.20%    0.14%           │ ││  0x00007f1fd1255151: mov    0xc(%r12,%rdx,8),%r11d  ; implicit exception: dispatches to 0x00007f1fd12571e9
  0.48%    0.57%           │ ││  0x00007f1fd1255156: mov    0x8c(%rsp),%r8d
  1.07%    0.47%           │ ││  0x00007f1fd125515e: cmp    %r11d,%r8d
                           │ ││  0x00007f1fd1255161: jae    0x00007f1fd1255921
  1.39%    0.68%           │ ││  0x00007f1fd1255167: lea    (%r12,%rdx,8),%r10
  0.12%    0.12%           │ ││  0x00007f1fd125516b: mov    0x10(%r10,%r8,4),%r11d  ;*instanceof
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.36%    0.29%           │ ││  0x00007f1fd1255170: mov    %r11d,0x80(%rsp)
  0.21%    0.23%           │ ││  0x00007f1fd1255178: mov    0x10(%r12,%r11,8),%r9d  ;*caload
                           │ ││                                                ; - java.lang.String::indexOf@129 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                           │ ││                                                ; implicit exception: dispatches to 0x00007f1fd12571f9
  3.94%    3.83%           │ ││  0x00007f1fd125517d: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f1fd1257209
  7.26%    9.22%           │ ││  0x00007f1fd1255182: mov    0xc(%r12,%r11,8),%r11d  ;*aload_0
                           │ ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                           │ ││  0x00007f1fd1255187: mov    0x78(%rsp),%r8
  0.00%                    │ ││  0x00007f1fd125518c: mov    0xc(%r8),%r8d      ;*ifle
                           │ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                           │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                           │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.17%    0.03%           │ ││  0x00007f1fd1255190: mov    0x78(%rsp),%rcx
  1.41%    1.53%           │ ││  0x00007f1fd1255195: mov    0x24(%rcx),%ecx    ;*getfield poolSize
                           │ ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                           │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                           │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
           0.00%           │ ││  0x00007f1fd1255198: mov    0x8c(%rsp),%ebx
                           │ ││  0x00007f1fd125519f: inc    %ebx               ;*if_icmple
                           │ ││                                                ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.16%    0.11%           │ ││  0x00007f1fd12551a1: mov    %ebx,0x88(%rsp)
  1.30%    1.52%           │ ││  0x00007f1fd12551a8: mov    0x80(%rsp),%esi
                           │ ││  0x00007f1fd12551af: lea    (%r12,%rsi,8),%rbx  ;*aload_1
                           │ ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                           │ ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                           │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                           │ ││  0x00007f1fd12551b3: mov    %rbx,0x90(%rsp)
  0.18%    0.22%           │ ││  0x00007f1fd12551bb: cmp    $0x6,%r10d
                           │ ││  0x00007f1fd12551bf: je     0x00007f1fd1255745  ;*if_icmplt
                           │ ││                                                ; - java.lang.Character::charCount@3 (line 4818)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                           │ ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  1.35%    1.69%           │ ││  0x00007f1fd12551c5: mov    0x8(%r12,%r9,8),%r10d
  0.01%    0.00%           │ ││  0x00007f1fd12551ca: cmp    $0xf8019992,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                           │ ││  0x00007f1fd12551d1: jne    0x00007f1fd12559b1  ;*invokevirtual indexOf
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.06%    0.06%           │ ││  0x00007f1fd12551d7: lea    (%r12,%r9,8),%r10
  0.18%    0.23%           │ ││  0x00007f1fd12551db: mov    0xc(%r10),%r9d     ;*if_icmple
                           │ ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  1.30%    1.30%           │ ││  0x00007f1fd12551df: cmp    $0xa,%r9d
                           ╰ ││  0x00007f1fd12551e3: je     0x00007f1fd1255056  ;*invokestatic charCount
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                             ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.02%    0.01%             ││  0x00007f1fd12551e9: cmp    $0xb,%r9d
                             ││  0x00007f1fd12551ed: je     0x00007f1fd1255b7d  ;*invokevirtual indexOf
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.09%    0.09%             ││  0x00007f1fd12551f3: mov    0x20(%r10),%ebx    ;*land
                             ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                             ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                             ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.19%    0.23%             ││  0x00007f1fd12551f7: cmp    $0x9,%r9d
                            ╭││  0x00007f1fd12551fb: jne    0x00007f1fd1255211  ;*ireturn
                            │││                                                ; - java.lang.Character::charCount@11 (line 4818)
                            │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                            │││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.21%    0.35%            │││  0x00007f1fd12551fd: cmp    0x84(%rsp),%ebx
                            │││  0x00007f1fd1255204: je     0x00007f1fd1255513  ;*if_icmpgt
                            │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                            │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                            │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.09%    0.13%            │││  0x00007f1fd125520a: xor    %ebx,%ebx
                            │╰│  0x00007f1fd125520c: jmpq   0x00007f1fd1255052
  1.00%    1.13%            ↘ │  0x00007f1fd1255211: cmp    $0xc,%r9d
                              │  0x00007f1fd1255215: jne    0x00007f1fd1255c5d  ;*getfield value
                              │                                                ; - java.lang.String::indexOf@1 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.25%    0.26%              │  0x00007f1fd125521b: cmp    0x84(%rsp),%ebx
                              │  0x00007f1fd1255222: je     0x00007f1fd1254ae1  ;*arraylength
                              │                                                ; - com.google.re2j.Machine::match@286 (line 236)
  0.63%    0.68%              │  0x00007f1fd1255228: mov    0x24(%r10),%ebx    ;*invokevirtual add
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.05%    0.07%              │  0x00007f1fd125522c: cmp    0x84(%rsp),%ebx
                              │  0x00007f1fd1255233: je     0x00007f1fd1254ae1  ;*iadd
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@29 (line 188)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.93%    0.89%              │  0x00007f1fd1255239: mov    0x28(%r10),%r9d    ;*if_icmpne
                              │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.04%    0.05%              │  0x00007f1fd125523d: cmp    0x84(%rsp),%r9d
                              │  0x00007f1fd1255245: je     0x00007f1fd1255d11  ;*getfield value
                              │                                                ; - java.lang.String::indexOf@1 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.73%    0.70%              │  0x00007f1fd125524b: mov    0x2c(%r10),%r9d
  0.02%    0.02%              │  0x00007f1fd125524f: cmp    0x84(%rsp),%r9d
                              ╰  0x00007f1fd1255257: jne    0x00007f1fd1255050  ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                 0x00007f1fd125525d: mov    $0xffffff65,%esi   ;*goto
                                                                               ; - com.google.re2j.Machine::step@182 (line 297)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
                                 0x00007f1fd1255262: mov    0x78(%rsp),%rbp
                                 0x00007f1fd1255267: mov    0x10(%rsp),%r11
                                 0x00007f1fd125526c: mov    %r11,0x8(%rsp)
....................................................................................................
 47.29%   46.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$AltInst::add, version 501 (1052 bytes) 

                       # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                       # parm5:    [sp+0xa0]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                       0x00007f1fd1222bc0: mov    0x8(%rsi),%r10d
                       0x00007f1fd1222bc4: shl    $0x3,%r10
                       0x00007f1fd1222bc8: cmp    %r10,%rax
                       0x00007f1fd1222bcb: jne    0x00007f1fd1045e20  ;   {runtime_call}
                       0x00007f1fd1222bd1: data16 xchg %ax,%ax
                       0x00007f1fd1222bd4: nopl   0x0(%rax,%rax,1)
                       0x00007f1fd1222bdc: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.97%    0.55%       0x00007f1fd1222be0: mov    %eax,-0x14000(%rsp)
  0.14%    0.14%       0x00007f1fd1222be7: push   %rbp
  0.10%    0.12%       0x00007f1fd1222be8: sub    $0x90,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.30%    0.37%       0x00007f1fd1222bef: mov    %rdi,%r14
  0.13%    0.14%       0x00007f1fd1222bf2: mov    %r9d,0x54(%rsp)
  0.07%    0.13%       0x00007f1fd1222bf7: mov    %r8,0x58(%rsp)
  0.25%    0.37%       0x00007f1fd1222bfc: mov    %ecx,0x30(%rsp)
  0.06%    0.03%       0x00007f1fd1222c00: mov    %rdx,0x60(%rsp)
  0.14%    0.13%       0x00007f1fd1222c05: mov    %rsi,%rdx
  0.08%    0.15%       0x00007f1fd1222c08: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
  0.28%    0.27%       0x00007f1fd1222c0b: mov    0x60(%rsp),%r10
  0.27%    0.15%       0x00007f1fd1222c10: mov    0x10(%r10),%r10    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                                                                     ; implicit exception: dispatches to 0x00007f1fd122479a
  1.11%    1.23%       0x00007f1fd1222c14: cmp    $0x40,%ecx
                       0x00007f1fd1222c17: jg     0x00007f1fd1223931  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.03%    0.03%       0x00007f1fd1222c1d: mov    $0x1,%edi
  0.18%    0.22%       0x00007f1fd1222c22: shl    %cl,%rdi           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.39%    0.40%       0x00007f1fd1222c25: mov    %r10,%r11
  0.16%    0.22%       0x00007f1fd1222c28: and    %rdi,%r11
  0.00%    0.02%       0x00007f1fd1222c2b: test   %r11,%r11
                       0x00007f1fd1222c2e: jne    0x00007f1fd12237c8  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
  0.25%    0.44%       0x00007f1fd1222c34: cmp    $0x40,%ecx
                       0x00007f1fd1222c37: jge    0x00007f1fd1223961  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.03%    0.07%       0x00007f1fd1222c3d: mov    0x60(%rsp),%r11
  0.11%    0.12%       0x00007f1fd1222c42: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                     ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.10%    0.13%       0x00007f1fd1222c46: mov    0x1c(%rsi),%ecx    ;*getfield outInst
                                                                     ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
  0.25%    0.25%       0x00007f1fd1222c49: or     %r10,%rdi          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.08%    0.10%       0x00007f1fd1222c4c: mov    %rdi,0x10(%r11)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
  0.61%    0.61%       0x00007f1fd1222c50: mov    0x8(%r12,%rcx,8),%r8d  ;*invokevirtual add
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; implicit exception: dispatches to 0x00007f1fd12247ad
  0.04%    0.03%       0x00007f1fd1222c55: mov    0xc(%r11),%r10d    ;*getfield size
                                                                     ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.13%       0x00007f1fd1222c59: mov    0x20(%r11),%r11d   ;*getfield denseThreads
                                                                     ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.03%       0x00007f1fd1222c5d: vmovd  %r11d,%xmm1
  0.42%    0.29%       0x00007f1fd1222c62: movslq %r10d,%rsi
  0.05%    0.04%       0x00007f1fd1222c65: mov    %r10d,%r9d
  0.11%    0.11%       0x00007f1fd1222c68: inc    %r9d               ;*iadd
                                                                     ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                                                                     ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%       0x00007f1fd1222c6b: shl    $0x2,%rsi          ;*aastore
                                                                     ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.36%    0.21%       0x00007f1fd1222c6f: lea    (%r12,%rcx,8),%r11
  0.04%    0.01%       0x00007f1fd1222c73: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  ╭    0x00007f1fd1222c7a: je     0x00007f1fd1222fa1
  0.11%    0.09%  │    0x00007f1fd1222c80: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  │    0x00007f1fd1222c87: jne    0x00007f1fd12238ed  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.03%  │    0x00007f1fd1222c8d: mov    0x18(%r11),%ecx    ;*getfield pc
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@2 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.19%    0.19%  │    0x00007f1fd1222c91: cmp    $0x40,%ecx
                  │    0x00007f1fd1222c94: jg     0x00007f1fd1223c8d  ;*if_icmpgt
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.04%  │    0x00007f1fd1222c9a: mov    $0x1,%r8d
  0.09%    0.10%  │    0x00007f1fd1222ca0: shl    %cl,%r8            ;*lshl
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.23%    0.26%  │    0x00007f1fd1222ca3: mov    %rdi,%rbx
  0.09%    0.10%  │    0x00007f1fd1222ca6: and    %r8,%rbx
  0.05%    0.07%  │    0x00007f1fd1222ca9: test   %rbx,%rbx
                  │    0x00007f1fd1222cac: jne    0x00007f1fd12237f2  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@5 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.20%  │    0x00007f1fd1222cb2: cmp    $0x40,%ecx
                  │    0x00007f1fd1222cb5: jge    0x00007f1fd1223cd5  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.01%  │    0x00007f1fd1222cbb: mov    0x1c(%r11),%ebp    ;*getfield outInst
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@23 (line 192)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.08%  │    0x00007f1fd1222cbf: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.07%  │    0x00007f1fd1222cc2: mov    0x60(%rsp),%r8
  0.18%    0.16%  │    0x00007f1fd1222cc7: mov    %rdi,0x10(%r8)     ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@19 (line 190)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.06%  │    0x00007f1fd1222ccb: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f1fd1224875
  0.14%    0.07%  │    0x00007f1fd1222cd0: lea    (%r12,%rbp,8),%rbx
  0.03%    0.04%  │    0x00007f1fd1222cd4: cmp    $0xf8019992,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │╭   0x00007f1fd1222cdb: je     0x00007f1fd1222d4a
  0.10%    0.10%  ││   0x00007f1fd1222cdd: cmp    $0xf8019843,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$AltInst&apos;)}
                  ││   0x00007f1fd1222ce4: jne    0x00007f1fd1223b3d
  0.01%    0.02%  ││   0x00007f1fd1222cea: mov    %r11,0x68(%rsp)
  0.03%    0.02%  ││   0x00007f1fd1222cef: mov    %rdx,0x8(%rsp)
  0.03%    0.03%  ││   0x00007f1fd1222cf4: mov    %rbx,%rsi
  0.06%    0.09%  ││   0x00007f1fd1222cf7: mov    0x60(%rsp),%rdx
  0.04%    0.01%  ││   0x00007f1fd1222cfc: mov    0x30(%rsp),%ecx
  0.05%    0.03%  ││   0x00007f1fd1222d00: mov    0x58(%rsp),%r8
  0.04%    0.05%  ││   0x00007f1fd1222d05: mov    0x54(%rsp),%r9d
  0.10%    0.07%  ││   0x00007f1fd1222d0a: mov    0xa0(%rsp),%r10
  0.01%    0.01%  ││   0x00007f1fd1222d12: mov    %r10,(%rsp)
  0.02%    0.04%  ││   0x00007f1fd1222d16: mov    %ecx,0x10(%rsp)
  0.02%    0.06%  ││   0x00007f1fd1222d1a: mov    %r8,0x18(%rsp)
  0.07%    0.10%  ││   0x00007f1fd1222d1f: mov    %r9d,0x14(%rsp)
  0.02%    0.04%  ││   0x00007f1fd1222d24: mov    %r14,%rdi
  0.03%    0.01%  ││   0x00007f1fd1222d27: callq  0x00007f1fd1046020  ; OopMap{[160]=Oop [8]=Oop [24]=Oop [88]=Oop [96]=Oop [104]=Oop off=364}
                  ││                                                 ;*invokevirtual add
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ││                                                 ;   {optimized virtual_call}
  0.00%           ││   0x00007f1fd1222d2c: mov    0x60(%rsp),%r10
  0.06%    0.06%  ││   0x00007f1fd1222d31: mov    0xc(%r10),%r8d     ;*getfield size
                  ││                                                 ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.10%    0.17%  ││   0x00007f1fd1222d35: mov    0x10(%r10),%rdi    ;*getfield pcsl
                  ││                                                 ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                  ││                                                 ; - com.google.re2j.Inst$CaptureInst::add@5 (line 248)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.01%  ││   0x00007f1fd1222d39: mov    0x20(%r10),%r10d   ;*getfield denseThreads
                  ││                                                 ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  ││                                                 ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.04%    0.03%  ││   0x00007f1fd1222d3d: vmovd  %r10d,%xmm1
  0.06%    0.05%  ││   0x00007f1fd1222d42: mov    %rax,%r11
  0.10%    0.12%  ││╭  0x00007f1fd1222d45: jmpq   0x00007f1fd1222e67  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │││                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.05%  │↘│  0x00007f1fd1222d4a: mov    0x18(%rbx),%ecx    ;*getfield pc
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.01%  │ │  0x00007f1fd1222d4d: cmp    $0x40,%ecx
                  │ │  0x00007f1fd1222d50: jg     0x00007f1fd1223f79  ;*if_icmpgt
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.03%  │ │  0x00007f1fd1222d56: mov    $0x1,%r8d
  0.01%    0.00%  │ │  0x00007f1fd1222d5c: shl    %cl,%r8            ;*lshl
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.21%    0.05%  │ │  0x00007f1fd1222d5f: mov    %rdi,%rax
  0.01%    0.01%  │ │  0x00007f1fd1222d62: and    %r8,%rax           ;*land
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.02%  │ │  0x00007f1fd1222d65: test   %rax,%rax
                  │ │  0x00007f1fd1222d68: jne    0x00007f1fd122380f  ;*ifeq
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │ │  0x00007f1fd1222d6e: mov    %r11,0x68(%rsp)
  0.05%    0.02%  │ │  0x00007f1fd1222d73: mov    %r9d,%r11d
  0.01%    0.01%  │ │  0x00007f1fd1222d76: mov    %r10d,%r13d
  0.10%    0.03%  │ │  0x00007f1fd1222d79: mov    %rdx,0x8(%rsp)
  0.01%           │ │  0x00007f1fd1222d7e: xor    %ebp,%ebp          ;*ireturn
                  │ │                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.02%  │ │  0x00007f1fd1222d80: test   %rax,%rax
                  │ │  0x00007f1fd1222d83: jne    0x00007f1fd1223fc9  ;*ifeq
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.00%  │ │  0x00007f1fd1222d89: cmp    $0x40,%ecx
                  │ │  0x00007f1fd1222d8c: jge    0x00007f1fd1224001  ;*if_icmpge
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.04%  │ │  0x00007f1fd1222d92: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.03%  │ │  0x00007f1fd1222d95: mov    0x60(%rsp),%r10
  0.08%           │ │  0x00007f1fd1222d9a: mov    %rdi,0x10(%r10)    ;*putfield pcsl
                  │ │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.00%  │ │  0x00007f1fd1222d9e: mov    %rbx,%r9
  0.10%    0.10%  │ │  0x00007f1fd1222da1: shr    $0x3,%rbx          ;*putfield inst
                  │ │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
           0.00%  │ │  0x00007f1fd1222da5: test   %r14,%r14
                  │ │  0x00007f1fd1222da8: jne    0x00007f1fd12236d0  ;*ifnonnull
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.00%  │ │  0x00007f1fd1222dae: mov    0xa0(%rsp),%rcx
  0.01%    0.01%  │ │  0x00007f1fd1222db6: mov    0xc(%rcx),%r8d     ;*getfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007f1fd1224975
  0.06%    0.09%  │ │  0x00007f1fd1222dba: test   %r8d,%r8d
                  │ │  0x00007f1fd1222dbd: jle    0x00007f1fd1224081  ;*ifle
                  │ │                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.01%  │ │  0x00007f1fd1222dc3: mov    %r9,%rdx
  0.08%    0.00%  │ │  0x00007f1fd1222dc6: mov    0x24(%rcx),%r10d   ;*getfield pool
                  │ │                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.02%  │ │  0x00007f1fd1222dca: mov    %r8d,%ebp
  0.09%    0.13%  │ │  0x00007f1fd1222dcd: dec    %ebp               ;*isub
                  │ │                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.00%  │ │  0x00007f1fd1222dcf: mov    %ebp,0xc(%rcx)     ;*putfield poolSize
                  │ │                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.07%  │ │  0x00007f1fd1222dd2: mov    0xc(%r12,%r10,8),%r9d  ; implicit exception: dispatches to 0x00007f1fd1224989
  0.01%    0.01%  │ │  0x00007f1fd1222dd7: cmp    %r9d,%ebp
                  │ │  0x00007f1fd1222dda: jae    0x00007f1fd1223d1d
  0.08%    0.05%  │ │  0x00007f1fd1222de0: shl    $0x3,%r10
  0.02%    0.01%  │ │  0x00007f1fd1222de4: mov    0xc(%r10,%r8,4),%r10d  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.08%    0.06%  │ │  0x00007f1fd1222de9: mov    %ebx,0x10(%r12,%r10,8)  ;*putfield inst
                  │ │                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007f1fd1224999
  0.15%    0.13%  │ │  0x00007f1fd1222dee: lea    (%r12,%r10,8),%r14  ;*aaload
                  │ │                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.01%  │ │  0x00007f1fd1222df2: mov    %r14,%r10
                  │ │  0x00007f1fd1222df5: shr    $0x9,%r10
  0.03%    0.07%  │ │  0x00007f1fd1222df9: movabs $0x7f1fe19be000,%r8
  0.07%    0.06%  │ │  0x00007f1fd1222e03: mov    %r12b,(%r8,%r10,1)  ;*aload_3
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.17%  │ │  0x00007f1fd1222e07: mov    0x58(%rsp),%r10
  0.00%           │ │  0x00007f1fd1222e0c: mov    0xc(%r10),%ebp     ;*arraylength
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; implicit exception: dispatches to 0x00007f1fd1224949
  0.04%    0.03%  │ │  0x00007f1fd1222e10: test   %ebp,%ebp
                  │ │  0x00007f1fd1222e12: jg     0x00007f1fd122404d  ;*ifle
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.03%  │ │  0x00007f1fd1222e18: mov    %r11d,%r8d
  0.18%    0.12%  │ │  0x00007f1fd1222e1b: mov    0x60(%rsp),%r10
  0.01%           │ │  0x00007f1fd1222e20: mov    %r11d,0xc(%r10)    ;*putfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.04%  │ │  0x00007f1fd1222e24: vmovd  %xmm1,%r11d
  0.01%    0.01%  │ │  0x00007f1fd1222e29: mov    0xc(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f1fd1224959
  0.10%    0.20%  │ │  0x00007f1fd1222e2e: cmp    %r11d,%r13d
                  │ │  0x00007f1fd1222e31: jae    0x00007f1fd1223af1
                  │ │  0x00007f1fd1222e37: mov    %r14,%r10
  0.01%    0.03%  │ │  0x00007f1fd1222e3a: shr    $0x3,%r10          ;*aastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.02%  │ │  0x00007f1fd1222e3e: vmovd  %xmm1,%r11d
  0.17%    0.19%  │ │  0x00007f1fd1222e43: shl    $0x3,%r11          ;*getfield denseThreads
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%           │ │  0x00007f1fd1222e47: lea    0x10(%r11,%rsi,1),%r11
  0.04%    0.05%  │ │  0x00007f1fd1222e4c: mov    %r10d,(%r11)
  0.01%    0.03%  │ │  0x00007f1fd1222e4f: mov    %r11,%r10
  0.10%    0.12%  │ │  0x00007f1fd1222e52: shr    $0x9,%r10
  0.01%           │ │  0x00007f1fd1222e56: movabs $0x7f1fe19be000,%r11
  0.03%    0.01%  │ │  0x00007f1fd1222e60: mov    %r12b,(%r11,%r10,1)  ;*aastore
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.05%  │ │  0x00007f1fd1222e64: xor    %r11d,%r11d        ;*getfield size
                  │ │                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │ │                                                ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.15%  │ ↘  0x00007f1fd1222e67: mov    0x68(%rsp),%r10
  0.02%    0.03%  │    0x00007f1fd1222e6c: mov    0x20(%r10),%ecx    ;*getfield argInst
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@41 (line 193)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.11%    0.11%  │    0x00007f1fd1222e70: mov    0x8(%r12,%rcx,8),%r9d  ; implicit exception: dispatches to 0x00007f1fd1224891
  0.30%    0.40%  │    0x00007f1fd1222e75: lea    (%r12,%rcx,8),%r10
  0.14%    0.18%  │    0x00007f1fd1222e79: cmp    $0xf8019992,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
  0.03%    0.12%  │    0x00007f1fd1222e80: jne    0x00007f1fd12235aa  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.17%    0.15%  │    0x00007f1fd1222e86: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.23%    0.22%  │    0x00007f1fd1222e8a: cmp    $0x40,%ecx
                  │    0x00007f1fd1222e8d: jg     0x00007f1fd1223da1  ;*if_icmpgt
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.21%  │    0x00007f1fd1222e93: mov    $0x1,%ebx
  0.02%    0.01%  │    0x00007f1fd1222e98: shl    %cl,%rbx           ;*lshl
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.42%    0.49%  │    0x00007f1fd1222e9b: mov    %rbx,%r9
  0.02%    0.01%  │    0x00007f1fd1222e9e: and    %rdi,%r9           ;*land
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.07%  │    0x00007f1fd1222ea1: test   %r9,%r9
                  │    0x00007f1fd1222ea4: jne    0x00007f1fd1223805  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.13%    0.14%  │    0x00007f1fd1222eaa: xor    %ebp,%ebp          ;*ireturn
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.18%  │    0x00007f1fd1222eac: test   %r9,%r9
                  │    0x00007f1fd1222eaf: jne    0x00007f1fd1223ded  ;*ifeq
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.07%  │    0x00007f1fd1222eb5: cmp    $0x40,%ecx
                  │    0x00007f1fd1222eb8: jge    0x00007f1fd1223e25  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.08%  │    0x00007f1fd1222ebe: mov    0x60(%rsp),%r9
  0.09%    0.11%  │    0x00007f1fd1222ec3: mov    %r12b,0x18(%r9)    ;*putfield empty
                  │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.15%    0.20%  │    0x00007f1fd1222ec7: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.06%  │    0x00007f1fd1222eca: mov    %rbx,0x10(%r9)     ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.09%    0.07%  │    0x00007f1fd1222ece: mov    %r10,%rdi
  0.09%    0.12%  │    0x00007f1fd1222ed1: shr    $0x3,%rdi          ;*putfield inst
                  │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.19%    0.19%  │    0x00007f1fd1222ed5: test   %r11,%r11
                  │    0x00007f1fd1222ed8: jne    0x00007f1fd12236aa  ;*ifnonnull
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.05%  │    0x00007f1fd1222ede: mov    0xa0(%rsp),%r9
  0.03%    0.06%  │    0x00007f1fd1222ee6: mov    0xc(%r9),%r11d     ;*getfield poolSize
                  │                                                  ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007f1fd1224911
  0.08%    0.11%  │    0x00007f1fd1222eea: test   %r11d,%r11d
                  │    0x00007f1fd1222eed: jle    0x00007f1fd1223eb5  ;*ifle
                  │                                                  ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.17%  │    0x00007f1fd1222ef3: mov    0x24(%r9),%edx     ;*getfield pool
                  │                                                  ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.02%    0.05%  │    0x00007f1fd1222ef7: mov    %r11d,%ebp
  0.04%    0.06%  │    0x00007f1fd1222efa: dec    %ebp               ;*isub
                  │                                                  ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.07%  │    0x00007f1fd1222efc: mov    %ebp,0xc(%r9)      ;*putfield poolSize
                  │                                                  ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.19%    0.17%  │    0x00007f1fd1222f00: mov    0xc(%r12,%rdx,8),%ecx  ; implicit exception: dispatches to 0x00007f1fd1224925
  0.03%    0.04%  │    0x00007f1fd1222f05: cmp    %ecx,%ebp
                  │    0x00007f1fd1222f07: jae    0x00007f1fd1223a85
  0.09%    0.11%  │    0x00007f1fd1222f0d: lea    (%r12,%rdx,8),%rcx
  0.08%    0.08%  │    0x00007f1fd1222f11: mov    0xc(%rcx,%r11,4),%ecx  ;*aaload
                  │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.16%    0.12%  │    0x00007f1fd1222f16: mov    %edi,0x10(%r12,%rcx,8)  ;*putfield inst
                  │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007f1fd1224935
  0.83%    0.90%  │    0x00007f1fd1222f1b: lea    (%r12,%rcx,8),%r11  ;*aaload
                  │                                                  ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.01%    0.03%  │    0x00007f1fd1222f1f: mov    %r11,%r10
  0.02%    0.01%  │    0x00007f1fd1222f22: shr    $0x9,%r10
  0.07%    0.01%  │    0x00007f1fd1222f26: movabs $0x7f1fe19be000,%rcx
  0.27%    0.31%  │    0x00007f1fd1222f30: mov    %r12b,(%rcx,%r10,1)  ;*aload_3
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.39%    0.42%  │    0x00007f1fd1222f34: mov    0x58(%rsp),%r10
  0.03%    0.02%  │    0x00007f1fd1222f39: mov    0xc(%r10),%ebp     ;*arraylength
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; implicit exception: dispatches to 0x00007f1fd12248e5
  0.08%    0.07%  │    0x00007f1fd1222f3d: test   %ebp,%ebp
                  │    0x00007f1fd1222f3f: jg     0x00007f1fd1223e71  ;*ifle
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.07%    0.03%  │    0x00007f1fd1222f45: mov    %r8d,%r10d
  0.28%    0.27%  │    0x00007f1fd1222f48: inc    %r10d              ;*iadd
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.02%  │    0x00007f1fd1222f4b: mov    0x60(%rsp),%rcx
  0.04%    0.00%  │    0x00007f1fd1222f50: mov    %r10d,0xc(%rcx)    ;*putfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.07%  │    0x00007f1fd1222f54: vmovd  %xmm1,%ecx
  0.22%    0.29%  │    0x00007f1fd1222f58: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f1fd12248f5
  0.02%    0.03%  │    0x00007f1fd1222f5d: cmp    %ecx,%r8d
                  │    0x00007f1fd1222f60: jae    0x00007f1fd12239cd
  0.04%    0.04%  │    0x00007f1fd1222f66: shr    $0x3,%r11          ;*aastore
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.05%    0.03%  │    0x00007f1fd1222f6a: vmovd  %xmm1,%edi
  0.29%    0.23%  │    0x00007f1fd1222f6e: lea    (%r12,%rdi,8),%rcx  ;*getfield denseThreads
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.00%    0.02%  │    0x00007f1fd1222f72: lea    0x10(%rcx,%r8,4),%r8
  0.03%    0.03%  │    0x00007f1fd1222f77: mov    %r11d,(%r8)
  0.04%    0.04%  │    0x00007f1fd1222f7a: mov    %r8,%r11
  0.27%    0.23%  │    0x00007f1fd1222f7d: shr    $0x9,%r11
  0.02%           │    0x00007f1fd1222f81: movabs $0x7f1fe19be000,%r8
  0.03%    0.04%  │    0x00007f1fd1222f8b: mov    %r12b,(%r8,%r11,1)  ;*aastore
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
  0.06%    0.06%  │    0x00007f1fd1222f8f: xor    %eax,%eax
  0.27%    0.30%  │    0x00007f1fd1222f91: mov    0x8(%rsp),%rdx     ;*getfield size
                  │                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  │                                                  ; - com.google.re2j.Inst$CaptureInst::add@87 (line 259)
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@53 (line 193)
  0.02%    0.01%  │    0x00007f1fd1222f96: mov    %rbx,%rdi
  0.02%    0.02%  │    0x00007f1fd1222f99: mov    %r10d,%ebx
  0.07%    0.04%  │    0x00007f1fd1222f9c: jmpq   0x00007f1fd12230c9  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$AltInst::add@35 (line 192)
                  ↘    0x00007f1fd1222fa1: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1222fa5: cmp    $0x40,%ecx
                       0x00007f1fd1222fa8: jg     0x00007f1fd1223b85  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.14%                0x00007f1fd1222fae: mov    $0x1,%r8d
                       0x00007f1fd1222fb4: shl    %cl,%r8            ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.16%                0x00007f1fd1222fb7: mov    %rdi,%rbx
                       0x00007f1fd1222fba: and    %r8,%rbx           ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1222fbd: test   %rbx,%rbx
                       0x00007f1fd1222fc0: jne    0x00007f1fd12237db  ;*ifeq
                                                                     ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.13%    0.01%       0x00007f1fd1222fc6: vmovd  %ecx,%xmm0
                       0x00007f1fd1222fca: mov    %r11,%r13
                       0x00007f1fd1222fcd: mov    %r9d,%eax
                       0x00007f1fd1222fd0: mov    %r10d,%ecx
  0.17%    0.02%       0x00007f1fd1222fd3: xor    %ebp,%ebp          ;*ireturn
                                                                     ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1222fd5: test   %rbx,%rbx
                       0x00007f1fd1222fd8: jne    0x00007f1fd1223bcd  ;*ifeq
                                                                     ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1222fde: vmovd  %xmm0,%r10d
                       0x00007f1fd1222fe3: cmp    $0x40,%r10d
                       0x00007f1fd1222fe7: jge    0x00007f1fd1223c09  ;*if_icmpge
                                                                     ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.15%                0x00007f1fd1222fed: or     %r8,%rdi           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1222ff0: mov    0x60(%rsp),%r10
                       0x00007f1fd1222ff5: mov    %rdi,0x10(%r10)    ;*putfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
  0.00%                0x00007f1fd1222ff9: mov    %r13,%r11
  0.16%                0x00007f1fd1222ffc: mov    %r13,%r8
                       0x00007f1fd1222fff: shr    $0x3,%r8           ;*putfield inst
                                                                     ; - com.google.re2j.Machine::alloc@45 (line 138)
                                                                     ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd1223003: test   %r14,%r14
                       0x00007f1fd1223006: jne    0x00007f1fd122368c  ;*ifnonnull
                                                                     ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                                                                     ; - com.google.re2j.Inst$AltInst::add@-1 (line 187)
                       0x00007f1fd122300c: mov    0xa0(%rsp),%r9
                       0x00007f1fd1223014: mov    0xc(%r9),%r10d     ;*getfield poolSize
....................................................................................................
 21.36%   20.30%  <total for region 2>

....[Hottest Regions]...............................................................................
 47.29%   46.69%         C2, level 4  com.google.re2j.Machine::match, version 553 (1214 bytes) 
 21.36%   20.30%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 501 (1052 bytes) 
  8.92%    9.90%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 501 (598 bytes) 
  7.40%    8.66%         C2, level 4  com.google.re2j.Machine::match, version 553 (519 bytes) 
  5.36%    7.49%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 501 (588 bytes) 
  2.46%    2.45%   [kernel.kallsyms]  [unknown] (6 bytes) 
  1.33%    0.44%         C1, level 3  java.util.concurrent.ConcurrentHashMap::get, version 188 (14 bytes) 
  0.87%    0.14%         C2, level 4  com.google.re2j.Machine::init, version 538 (289 bytes) 
  0.66%    0.87%         C2, level 4  com.google.re2j.Machine::match, version 553 (143 bytes) 
  0.53%    0.30%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 492 (100 bytes) 
  0.30%    0.10%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 492 (90 bytes) 
  0.28%    0.00%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 501 (21 bytes) 
  0.15%    0.05%         C2, level 4  com.google.re2j.Machine::init, version 538 (40 bytes) 
  0.13%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 538 (66 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (47 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 556 (30 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (38 bytes) 
  0.07%    0.03%         C2, level 4  com.google.re2j.Machine::match, version 553 (141 bytes) 
  2.46%    2.43%  <...other 440 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.67%   56.45%         C2, level 4  com.google.re2j.Machine::match, version 553 
 35.92%   37.70%         C2, level 4  com.google.re2j.Inst$AltInst::add, version 501 
  3.60%    3.39%   [kernel.kallsyms]  [unknown] 
  1.33%    0.44%         C1, level 3  java.util.concurrent.ConcurrentHashMap::get, version 188 
  1.22%    0.23%         C2, level 4  com.google.re2j.Machine::init, version 538 
  0.83%    0.39%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 492 
  0.35%    0.23%         C2, level 4  com.google.re2j.RE2::match, version 556 
  0.07%    0.11%        libc-2.26.so  vfprintf 
  0.06%    0.05%         C2, level 4  java.util.Collections::shuffle, version 580 
  0.06%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 637 
  0.06%    0.08%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.03%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.02%    0.06%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.00%              [vdso]  [unknown] 
  0.01%    0.02%        libc-2.26.so  __strchr_avx2 
  0.01%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.02%        libc-2.26.so  __strchrnul_avx2 
  0.59%    0.39%  <...other 98 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 94.13%   95.08%         C2, level 4
  3.60%    3.39%   [kernel.kallsyms]
  1.34%    0.45%         C1, level 3
  0.51%    0.58%           libjvm.so
  0.25%    0.35%        libc-2.26.so
  0.08%    0.09%  libpthread-2.26.so
  0.05%    0.04%      hsdis-amd64.so
  0.02%    0.00%              [vdso]
  0.01%    0.00%        runtime stub
  0.01%                  interpreter
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  5026.461 ± 70.879  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
