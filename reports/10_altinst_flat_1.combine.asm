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
# Warmup Iteration   1: 1801.468 ops/s
# Warmup Iteration   2: 5690.439 ops/s
# Warmup Iteration   3: 5830.693 ops/s
# Warmup Iteration   4: 5493.150 ops/s
# Warmup Iteration   5: 5480.816 ops/s
# Warmup Iteration   6: 5844.504 ops/s
# Warmup Iteration   7: 5855.945 ops/s
# Warmup Iteration   8: 5857.272 ops/s
# Warmup Iteration   9: 5842.804 ops/s
# Warmup Iteration  10: 5852.828 ops/s
# Warmup Iteration  11: 5854.809 ops/s
# Warmup Iteration  12: 5820.107 ops/s
# Warmup Iteration  13: 5841.771 ops/s
# Warmup Iteration  14: 5868.703 ops/s
# Warmup Iteration  15: 5881.782 ops/s
# Warmup Iteration  16: 5698.027 ops/s
# Warmup Iteration  17: 5835.154 ops/s
# Warmup Iteration  18: 5830.457 ops/s
# Warmup Iteration  19: 5868.735 ops/s
# Warmup Iteration  20: 5800.511 ops/s
Iteration   1: 5906.992 ops/s
Iteration   2: 5905.804 ops/s
Iteration   3: 5867.671 ops/s
Iteration   4: 5871.495 ops/s
Iteration   5: 5869.054 ops/s
Iteration   6: 5868.449 ops/s
Iteration   7: 5867.942 ops/s
Iteration   8: 5898.253 ops/s
Iteration   9: 5899.220 ops/s
Iteration  10: 5900.300 ops/s
Iteration  11: 5884.607 ops/s
Iteration  12: 5885.227 ops/s
Iteration  13: 5883.828 ops/s
Iteration  14: 5884.046 ops/s
Iteration  15: 5883.517 ops/s
Iteration  16: 5877.996 ops/s
Iteration  17: 5870.518 ops/s
Iteration  18: 5885.387 ops/s
Iteration  19: 5883.359 ops/s
Iteration  20: 5868.776 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5883.122 ±(99.9%) 11.425 ops/s [Average]
  (min, avg, max) = (5867.671, 5883.122, 5906.992), stdev = 13.158
  CI (99.9%): [5871.696, 5894.547] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 199021 total address lines.
Perf output processed (skipped 23.377 seconds):
 Column 1: cycles (20478 events)
 Column 2: instructions (20457 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 540 (1215 bytes) 

                                 0x00007f85549f3084: lea    (%r12,%rbx,8),%rax  ;*synchronization entry
                                                                               ; - com.google.re2j.Machine$Queue::clear@-1 (line 69)
                                                                               ; - com.google.re2j.Machine::freeQueue@19 (line 152)
                                                                               ; - com.google.re2j.Machine::step@174 (line 295)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
                                 0x00007f85549f3088: mov    $0x80000000,%ebx
                                 0x00007f85549f308d: cmp    %r11d,%r8d
                                 0x00007f85549f3090: cmovl  %ebx,%r11d         ;*arraylength
                                                                               ; - com.google.re2j.Machine::step@109 (line 289)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
  0.00%                          0x00007f85549f3094: mov    0x3c(%rsp),%ebx
                                 0x00007f85549f3098: jmpq   0x00007f85549f37d5  ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.09%    0.03%                 0x00007f85549f309d: test   %ecx,%ecx
                                 0x00007f85549f309f: jne    0x00007f85549f41f1  ;*getfield prefixRune
                                                                               ; - com.google.re2j.Machine::match@187 (line 216)
  0.14%    0.16%                 0x00007f85549f30a5: test   %r10d,%r10d
                  ╭              0x00007f85549f30a8: je     0x00007f85549f30b8  ;*arraylength
                  │                                                            ; - java.lang.String::charAt@9 (line 657)
                  │                                                            ; - java.lang.Character::codePointAt@2 (line 4866)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │                                                            ; - com.google.re2j.Machine::match@226 (line 225)
  0.16%    0.17%  │              0x00007f85549f30aa: mov    0x64(%rsp),%r8d
  0.02%    0.03%  │              0x00007f85549f30af: test   %r8d,%r8d
                  │              0x00007f85549f30b2: jne    0x00007f85549f423d  ;*aload_0
                  │                                                            ; - java.lang.String::indexOf@79 (line 1772)
                  │                                                            ; - java.lang.String::indexOf@21 (line 1718)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │                                                            ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │                                                            ; - com.google.re2j.Machine::match@206 (line 220)
  0.08%    0.08%  ↘              0x00007f85549f30b8: mov    %r10d,0x18(%rsp)
  0.14%    0.15%                 0x00007f85549f30bd: vmovd  %xmm7,%r8d
  0.20%    0.17%                 0x00007f85549f30c2: mov    0xc(%r12,%r8,8),%ebp  ;*ifge
                                                                               ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                                                               ; implicit exception: dispatches to 0x00007f85549f552d
  0.03%    0.05%                 0x00007f85549f30c7: test   %ebp,%ebp
                                 0x00007f85549f30c9: jg     0x00007f85549f43cd
  0.06%    0.07%                 0x00007f85549f30cf: mov    0x78(%rsp),%r10
  0.17%    0.21%                 0x00007f85549f30d4: mov    0x18(%r10),%r11d   ;*aload_0
                                                                               ; - com.google.re2j.Machine::match@267 (line 233)
  0.23%    0.22%                 0x00007f85549f30d8: mov    0x1c(%r12,%r11,8),%ebp  ;*caload
                                                                               ; - java.lang.String::indexOf@82 (line 1772)
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
                                                                               ; implicit exception: dispatches to 0x00007f85549f553d
  0.06%    0.14%                 0x00007f85549f30dd: mov    0x8(%r12,%rbp,8),%r11d  ;*aload_0
                                                                               ; - com.google.re2j.Machine::match@267 (line 233)
                                                                               ; implicit exception: dispatches to 0x00007f85549f554d
  0.87%    1.09%                 0x00007f85549f30e2: lea    (%r12,%rbp,8),%r10
  0.03%    0.03%                 0x00007f85549f30e6: cmp    $0xf8019a53,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   ╭             0x00007f85549f30ed: je     0x00007f85549f3200  ;*if_icmpeq
                   │                                                           ; - java.lang.String::indexOf@85 (line 1772)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.21%   │             0x00007f85549f30f3: cmp    $0xf8019993,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                   │             0x00007f85549f30fa: jne    0x00007f85549f4409  ;*invokestatic emptyOpContext
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.02%   │             0x00007f85549f3100: mov    0x18(%r10),%ecx    ;*iload_0
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.03%   │             0x00007f85549f3104: cmp    $0x40,%ecx
                   │             0x00007f85549f3107: jg     0x00007f85549f45fd  ;*getfield prefixRune
                   │                                                           ; - com.google.re2j.Machine::match@187 (line 216)
  0.12%    0.12%   │             0x00007f85549f310d: mov    %r10,%rbx
  0.02%    0.10%   │             0x00007f85549f3110: mov    $0x1,%edi
           0.00%   │             0x00007f85549f3115: shl    %cl,%rdi
  0.33%    0.41%   │             0x00007f85549f3118: mov    0x48(%rsp),%r10d
                   │             0x00007f85549f311d: mov    0x10(%r12,%r10,8),%r10  ;*getfield value
                   │                                                           ; - java.lang.String::charAt@23 (line 660)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
           0.01%   │             0x00007f85549f3122: mov    %rdi,%r11
  0.01%    0.00%   │             0x00007f85549f3125: and    %r10,%r11          ;*getfield value
                   │                                                           ; - java.lang.String::charAt@6 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@249 (line 228)
  0.16%    0.22%   │             0x00007f85549f3128: test   %r11,%r11
                   │             0x00007f85549f312b: jne    0x00007f85549f3bd2  ;*if_icmplt
                   │                                                           ; - java.lang.String::charAt@10 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
                   │             0x00007f85549f3131: xor    %ebp,%ebp          ;*iload_0
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
                   │             0x00007f85549f3133: test   %r11,%r11
                   │             0x00007f85549f3136: jne    0x00007f85549f4671  ;*getfield prefixRune
                   │                                                           ; - com.google.re2j.Machine::match@187 (line 216)
  0.03%    0.02%   │             0x00007f85549f313c: cmp    $0x40,%ecx
                   │             0x00007f85549f313f: jge    0x00007f85549f46d1
  0.16%    0.15%   │             0x00007f85549f3145: mov    0x48(%rsp),%r9d
  0.00%            │             0x00007f85549f314a: mov    %r12b,0x18(%r12,%r9,8)
           0.01%   │             0x00007f85549f314f: or     %r10,%rdi
  0.03%    0.04%   │             0x00007f85549f3152: mov    %rdi,0x10(%r12,%r9,8)
  0.18%    0.18%   │             0x00007f85549f3157: vmovd  %xmm2,%r11d
                   │             0x00007f85549f315c: test   %r11d,%r11d
                   │             0x00007f85549f315f: jle    0x00007f85549f458d  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
  0.03%    0.00%   │             0x00007f85549f3165: mov    %r11d,%ebp
  0.03%    0.05%   │             0x00007f85549f3168: dec    %ebp               ;*invokestatic isWordRune
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
  0.11%    0.20%   │             0x00007f85549f316a: mov    0x78(%rsp),%r10
                   │             0x00007f85549f316f: mov    %ebp,0xc(%r10)
  0.01%    0.00%   │             0x00007f85549f3173: vmovd  %xmm1,%r10d
  0.07%    0.03%   │             0x00007f85549f3178: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x00007f85549f55b5
  0.20%    0.14%   │             0x00007f85549f317d: cmp    %r10d,%ebp
                   │             0x00007f85549f3180: jae    0x00007f85549f4315  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
  0.00%    0.00%   │             0x00007f85549f3186: vmovd  %xmm1,%r11d
  0.03%    0.04%   │             0x00007f85549f318b: lea    (%r12,%r11,8),%r10
  0.13%    0.15%   │             0x00007f85549f318f: vmovd  %xmm2,%r11d
           0.00%   │             0x00007f85549f3194: mov    0xc(%r10,%r11,4),%r8d  ;*if_icmpgt
                   │                                                           ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
           0.02%   │             0x00007f85549f3199: test   %r8d,%r8d
                   │             0x00007f85549f319c: je     0x00007f85549f436d  ;*if_icmpeq
                   │                                                           ; - com.google.re2j.Machine::match@190 (line 216)
  0.02%    0.03%   │             0x00007f85549f31a2: mov    0x48(%rsp),%r11d
  0.13%    0.16%   │             0x00007f85549f31a7: mov    0x20(%r12,%r11,8),%r9d  ;*iadd
                   │                                                           ; - java.lang.String::indexOf@108 (line 1778)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
                   │             0x00007f85549f31ac: mov    0xc(%r12,%r11,8),%ebp  ;*ireturn
                   │                                                           ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                   │                                                           ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   │                                                           ; - com.google.re2j.Machine::match@121 (line 201)
           0.01%   │             0x00007f85549f31b1: lea    (%r12,%r8,8),%r10
  0.05%    0.04%   │             0x00007f85549f31b5: mov    %ebp,%ecx
  0.14%    0.15%   │             0x00007f85549f31b7: inc    %ecx
                   │             0x00007f85549f31b9: mov    %ecx,0xc(%r12,%r11,8)  ;*getfield prefix
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.01%   │             0x00007f85549f31be: mov    %rbx,%rcx
  0.02%    0.04%   │             0x00007f85549f31c1: shr    $0x3,%rcx          ;*if_icmpgt
                   │                                                           ; - java.lang.String::indexOf@95 (line 1776)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.13%   │             0x00007f85549f31c5: mov    %ecx,0x10(%r12,%r8,8)  ;*iadd
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@5 (line 203)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
                   │             0x00007f85549f31ca: shr    $0x9,%r10
  0.01%    0.00%   │             0x00007f85549f31ce: movabs $0x7f85501db000,%r11
  0.03%    0.03%   │             0x00007f85549f31d8: mov    %r12b,(%r11,%r10,1)  ;*getfield start
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@2 (line 203)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.17%    0.16%   │             0x00007f85549f31dc: mov    0xc(%r12,%r9,8),%r10d  ;*if_icmplt
                   │                                                           ; - java.lang.String::charAt@10 (line 657)
                   │                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@249 (line 228)
                   │                                                           ; implicit exception: dispatches to 0x00007f85549f55c5
           0.01%   │             0x00007f85549f31e1: cmp    %r10d,%ebp
                   │             0x00007f85549f31e4: jae    0x00007f85549f4381  ;*getfield prefix
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@13 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.04%   │             0x00007f85549f31ea: lea    (%r12,%r9,8),%r10  ;*getfield poolSize
                   │                                                           ; - com.google.re2j.Machine::freeQueue@60 (line 161)
                   │                                                           ; - com.google.re2j.Machine::freeQueue@15 (line 150)
                   │                                                           ; - com.google.re2j.Machine::step@174 (line 295)
                   │                                                           ; - com.google.re2j.Machine::match@356 (line 242)
  0.04%    0.04%   │             0x00007f85549f31ee: lea    0x10(%r10,%rbp,4),%r10  ;*invokestatic isHighSurrogate
                   │                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │                                                           ; - com.google.re2j.Machine::match@226 (line 225)
  0.10%    0.14%   │             0x00007f85549f31f3: mov    %r8d,(%r10)
  0.18%    0.20%   │             0x00007f85549f31f6: shr    $0x9,%r10
  0.00%    0.00%   │             0x00007f85549f31fa: mov    %r12b,(%r11,%r10,1)  ;*if_icmpge
                   │                                                           ; - java.lang.String::indexOf@123 (line 1779)
                   │                                                           ; - java.lang.String::indexOf@21 (line 1718)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   │                                                           ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   │                                                           ; - com.google.re2j.Machine::match@206 (line 220)
  0.10%    0.06%   │╭            0x00007f85549f31fe: jmp    0x00007f85549f3220  ;*invokevirtual canCheckPrefix
                   ││                                                          ; - com.google.re2j.Machine::match@194 (line 218)
  0.16%    0.18%   ↘│            0x00007f85549f3200: shl    $0x3,%r8           ;*iload_1
                    │                                                          ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │                                                          ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%    │            0x00007f85549f3204: mov    %r10,%rsi
  0.01%    0.01%    │            0x00007f85549f3207: mov    0x8(%rsp),%rdx
  0.02%    0.02%    │            0x00007f85549f320c: mov    0x18(%rsp),%ecx
  0.24%    0.26%    │            0x00007f85549f3210: xor    %edi,%edi
  0.00%             │            0x00007f85549f3212: mov    0x78(%rsp),%r10
  0.01%    0.00%    │            0x00007f85549f3217: mov    %r10,(%rsp)
  0.01%    0.02%    │            0x00007f85549f321b: callq  0x00007f85547f3020  ; OopMap{[8]=Oop [48]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=1664}
                    │                                                          ;*invokevirtual add
                    │                                                          ; - com.google.re2j.Machine::match@315 (line 239)
                    │                                                          ;   {optimized virtual_call}
  0.11%    0.16%    ↘            0x00007f85549f3220: mov    0x3c(%rsp),%r10d
  0.17%    0.24%                 0x00007f85549f3225: test   %r10d,%r10d
                                 0x00007f85549f3228: jl     0x00007f85549f360f  ;*invokevirtual add
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.00%    0.02%                 0x00007f85549f322e: xor    %r11d,%r11d        ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.09%    0.12%                 0x00007f85549f3231: cmp    $0xa,%r10d
                                 0x00007f85549f3235: je     0x00007f85549f3723  ;*invokestatic indexOf
                                                                               ; - java.lang.String::indexOf@21 (line 1718)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.12%                 0x00007f85549f323b: mov    0x44(%rsp),%r8d
  0.15%    0.15%                 0x00007f85549f3240: test   %r8d,%r8d
                                 0x00007f85549f3243: jl     0x00007f85549f2ddc  ;*instanceof
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                               ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%    0.00%                 0x00007f85549f3249: cmp    $0xa,%r8d
                                 0x00007f85549f324d: je     0x00007f85549f372c  ;*invokestatic isWordRune
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.13%    0.17%                 0x00007f85549f3253: mov    0x3c(%rsp),%ecx
  0.12%    0.13%                 0x00007f85549f3257: add    $0xffffffbf,%ecx
  0.16%    0.15%                 0x00007f85549f325a: cmp    $0x1a,%ecx
                     ╭           0x00007f85549f325d: jb     0x00007f85549f3272
           0.01%     │           0x00007f85549f325f: mov    0x3c(%rsp),%r9d
  0.14%    0.10%     │           0x00007f85549f3264: add    $0xffffff9f,%r9d
  0.16%    0.18%     │           0x00007f85549f3268: cmp    $0x1a,%r9d
                     │           0x00007f85549f326c: jae    0x00007f85549f38e6  ;*aload_0
                     │                                                         ; - java.lang.String::indexOf@126 (line 1779)
                     │                                                         ; - java.lang.String::indexOf@21 (line 1718)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                     │                                                         ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                     │                                                         ; - com.google.re2j.Machine::match@206 (line 220)
  0.12%    0.14%     ↘           0x00007f85549f3272: mov    $0x1,%ebp          ;*invokestatic isWordRune
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.03%    0.04%                 0x00007f85549f3277: mov    0x44(%rsp),%ecx
  0.12%    0.12%                 0x00007f85549f327b: add    $0xffffffbf,%ecx
  0.15%    0.13%                 0x00007f85549f327e: cmp    $0x1a,%ecx
                      ╭          0x00007f85549f3281: jb     0x00007f85549f3296  ;*invokevirtual add
                      │                                                        ; - com.google.re2j.Machine::match@315 (line 239)
  0.14%    0.14%      │          0x00007f85549f3283: mov    0x44(%rsp),%r9d
  0.03%    0.02%      │          0x00007f85549f3288: add    $0xffffff9f,%r9d
  0.10%    0.15%      │          0x00007f85549f328c: cmp    $0x1a,%r9d
                      │          0x00007f85549f3290: jae    0x00007f85549f3907  ;*invokevirtual step
                      │                                                        ; - com.google.re2j.Machine::match@249 (line 228)
  0.11%    0.07%      ↘          0x00007f85549f3296: mov    $0x1,%ecx          ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 228)
  0.14%    0.14%                 0x00007f85549f329b: cmp    %ecx,%ebp
                       ╭         0x00007f85549f329d: jne    0x00007f85549f32aa  ;*invokeinterface charAt
                       │                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                       │                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                       │                                                       ; - com.google.re2j.Machine::match@226 (line 225)
  0.06%    0.05%       │         0x00007f85549f329f: or     $0x20,%r11d        ;*getfield prefix
                       │                                                       ; - com.google.re2j.Machine::match@172 (line 216)
  0.06%    0.11%       │         0x00007f85549f32a3: mov    %r11d,0x68(%rsp)
  0.16%    0.09%       │╭        0x00007f85549f32a8: jmp    0x00007f85549f32b3
  0.09%    0.07%       ↘│        0x00007f85549f32aa: or     $0x10,%r11d        ;*invokevirtual isEmpty
                        │                                                      ; - com.google.re2j.Machine::match@175 (line 216)
  0.01%    0.01%        │        0x00007f85549f32ae: mov    %r11d,0x68(%rsp)   ;*if_icmplt
                        │                                                      ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                        │                                                      ; - java.lang.Character::codePointAt@9 (line 4867)
                        │                                                      ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │                                                      ; - com.google.re2j.Machine::match@96 (line 195)
  0.18%    0.18%        ↘        0x00007f85549f32b3: mov    0x30(%rsp),%r11
  0.10%    0.15%                 0x00007f85549f32b8: mov    0x10(%r11),%ebx    ;*invokevirtual add
                                                                               ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.31%                 0x00007f85549f32bc: mov    0x18(%rsp),%ecx
  0.08%    0.17%                 0x00007f85549f32c0: cmp    %ebx,%ecx
                                 0x00007f85549f32c2: je     0x00007f85549f3625  ;*if_icmplt
                                                                               ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.37%    0.23%                 0x00007f85549f32c8: xor    %edi,%edi
  0.00%                          0x00007f85549f32ca: mov    %edi,0x6c(%rsp)    ;*if_icmpgt
                                                                               ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
  0.11%    0.10%                 0x00007f85549f32ce: mov    %ecx,0x70(%rsp)
  0.11%    0.12%                 0x00007f85549f32d2: mov    %rax,-0x8(%rsp)
  0.22%    0.17%                 0x00007f85549f32d7: mov    0x44(%rsp),%eax
           0.01%                 0x00007f85549f32db: mov    %eax,0x3c(%rsp)
  0.12%    0.17%                 0x00007f85549f32df: mov    -0x8(%rsp),%rax
  0.31%    0.23%                 0x00007f85549f32e4: mov    %r10d,0x84(%rsp)
  0.19%    0.12%                 0x00007f85549f32ec: rex.W pushq 0x30(%rsp)
  0.12%    0.19%                 0x00007f85549f32f1: rex.W popq 0x10(%rsp)
  0.92%    0.94%                 0x00007f85549f32f6: mov    0x78(%rsp),%r10
  0.17%    0.09%                 0x00007f85549f32fb: mov    0x14(%r10),%r10d   ;*invokeinterface charAt
                                                                               ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@249 (line 228)
  0.10%    0.04%                 0x00007f85549f32ff: vmovd  %r10d,%xmm4
  0.17%    0.15%                 0x00007f85549f3304: movzbl 0x18(%r12,%r10,8),%r11d  ;*if_icmpgt
                                                                               ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                                                               ; implicit exception: dispatches to 0x00007f85549f5571
  0.39%    0.38%                 0x00007f85549f330a: mov    0x48(%rsp),%r10d
  0.14%    0.04%                 0x00007f85549f330f: mov    0xc(%r12,%r10,8),%edi  ;*ifle
                                                                               ; - com.google.re2j.Machine::match@287 (line 236)
           0.01%                 0x00007f85549f3314: mov    %ecx,%r8d
  0.09%    0.10%                 0x00007f85549f3317: add    0x38(%rsp),%r8d    ;*synchronization entry
                                                                               ; - java.lang.Character::isHighSurrogate@-1 (line 4729)
                                                                               ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@96 (line 195)
  0.21%    0.12%                 0x00007f85549f331c: mov    %r8d,0x60(%rsp)
  0.10%    0.05%                 0x00007f85549f3321: test   %edi,%edi
                                 0x00007f85549f3323: jle    0x00007f85549f3605  ;*synchronization entry
                                                                               ; - java.lang.Character::codePointAt@-1 (line 4866)
                                                                               ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                               ; - com.google.re2j.Machine::match@226 (line 225)
  0.01%    0.00%                 0x00007f85549f3329: test   %r11d,%r11d
                                 0x00007f85549f332c: jne    0x00007f85549f4175  ;*ior
                                                                               ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                                                               ; - com.google.re2j.Machine::match@323 (line 241)
  0.09%    0.10%                 0x00007f85549f3332: mov    %r11d,0x74(%rsp)
  0.21%    0.17%                 0x00007f85549f3337: xor    %r10d,%r10d
  0.10%    0.03%                 0x00007f85549f333a: mov    %r10d,0x8c(%rsp)
                         ╭       0x00007f85549f3342: jmpq   0x00007f85549f344b
                         │       0x00007f85549f3347: nopw   0x0(%rax,%rax,1)
  1.11%    1.08%         │    ↗  0x00007f85549f3350: xor    %r9d,%r9d          ;*invokevirtual add
                         │    │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.11%    0.10%         │   ↗│  0x00007f85549f3353: test   %r9d,%r9d
                         │╭  ││  0x00007f85549f3356: je     0x00007f85549f33cc  ;*goto
                         ││  ││                                                ; - java.lang.String::indexOf@88 (line 1772)
                         ││  ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                         ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         ││  ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         ││  ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.16%    0.18%         ││↗ ││  0x00007f85549f3358: mov    0x1c(%r10),%r9d
  0.09%    0.04%         │││ ││  0x00007f85549f335c: mov    %r11,%r8
  0.01%    0.01%         │││ ││  0x00007f85549f335f: shl    $0x3,%r8           ;*instanceof
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │││ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.01%                  │││ ││  0x00007f85549f3363: mov    %r9,%rsi
  0.19%    0.10%         │││ ││  0x00007f85549f3366: shl    $0x3,%rsi          ;*iinc
                         │││ ││                                                ; - java.lang.String::indexOf@69 (line 1772)
                         │││ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │││ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │││ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.02%    0.01%         │││ ││  0x00007f85549f336a: mov    0x58(%rsp),%rdx
  0.05%    0.01%         │││ ││  0x00007f85549f336f: mov    0x60(%rsp),%ecx
  0.02%    0.00%         │││ ││  0x00007f85549f3373: mov    0x68(%rsp),%r9d
  0.24%    0.12%         │││ ││  0x00007f85549f3378: mov    0x90(%rsp),%rdi
  0.00%                  │││ ││  0x00007f85549f3380: mov    0x78(%rsp),%r10
  0.05%    0.00%         │││ ││  0x00007f85549f3385: mov    %r10,(%rsp)
  0.15%    0.02%         │││ ││  0x00007f85549f3389: mov    0x70(%rsp),%r10d
  0.16%    0.14%         │││ ││  0x00007f85549f338e: mov    %r10d,0x24(%rsp)
  0.01%    0.00%         │││ ││  0x00007f85549f3393: xchg   %ax,%ax
  0.00%                  │││ ││  0x00007f85549f3395: movabs $0xffffffffffffffff,%rax
  0.04%    0.01%         │││ ││  0x00007f85549f339f: callq  0x00007f85547f3220  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2052}
                         │││ ││                                                ;*invokevirtual add
                         │││ ││                                                ; - com.google.re2j.Machine::step@213 (line 300)
                         │││ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                         │││ ││                                                ;   {virtual_call}
  0.10%    0.07%         │││ ││  0x00007f85549f33a4: mov    0x48(%rsp),%r11d
  0.04%    0.02%         │││ ││  0x00007f85549f33a9: mov    0xc(%r12,%r11,8),%edi  ;*ifle
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.15%    0.06%         │││ ││  0x00007f85549f33ae: test   %rax,%rax
                         │││ ││  0x00007f85549f33b1: je     0x00007f85549f2df0  ;*getfield poolSize
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@9 (line 133)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f85549f33b7: mov    0x78(%rsp),%r10
                         │││ ││  0x00007f85549f33bc: mov    0xc(%r10),%r8d     ;*ifle
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f85549f33c0: mov    0x24(%r10),%ecx    ;*getfield poolSize
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
                         │││ ││  0x00007f85549f33c4: mov    %rax,0x90(%rsp)    ;*aaload
                         │││ ││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                         │││ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                         │││ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  1.49%    1.61%         │↘│ ││  0x00007f85549f33cc: mov    0xc(%r12,%rcx,8),%r9d  ;*if_icmpne
                         │ │ ││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                         │ │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
                         │ │ ││                                                ; implicit exception: dispatches to 0x00007f85549f550d
                         │ │ ││  0x00007f85549f33d1: cmp    %r9d,%r8d
                         │ │ ││  0x00007f85549f33d4: jge    0x00007f85549f3de5  ;*arraylength
                         │ │ ││                                                ; - java.lang.String::indexOf@9 (line 1718)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%                  │ │ ││  0x00007f85549f33da: mov    %r8d,%r10d
  0.06%    0.06%         │ │ ││  0x00007f85549f33dd: inc    %r10d
  1.49%    1.66%         │ │ ││  0x00007f85549f33e0: mov    0x78(%rsp),%r11
                         │ │ ││  0x00007f85549f33e5: mov    %r10d,0xc(%r11)
  0.02%                  │ │ ││  0x00007f85549f33e9: cmp    %r9d,%r8d
                         │ │ ││  0x00007f85549f33ec: jae    0x00007f85549f3d51  ;*getfield value
                         │ │ ││                                                ; - java.lang.String::indexOf@11 (line 1718)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.07%    0.05%         │ │ ││  0x00007f85549f33f2: mov    0x48(%rsp),%r11d
  1.51%    1.43%         │ │ ││  0x00007f85549f33f7: mov    0xc(%r12,%r11,8),%r9d  ;*aaload
                         │ │ ││                                                ; - com.google.re2j.Machine::step@27 (line 278)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                         │ │ ││  0x00007f85549f33fc: mov    0x90(%rsp),%r10
                         │ │ ││  0x00007f85549f3404: mov    %r10,%r11
  0.03%    0.02%         │ │ ││  0x00007f85549f3407: shr    $0x3,%r11
  1.52%    1.32%         │ │ ││  0x00007f85549f340b: lea    (%r12,%rcx,8),%r10  ;*aload_1
                         │ │ ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                         │ │ ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
                         │ │ ││  0x00007f85549f340f: lea    0x10(%r10,%r8,4),%r10  ;*invokeinterface charAt
                         │ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
  0.00%                  │ │ ││  0x00007f85549f3414: mov    %r11d,(%r10)
  0.10%    0.01%         │ │ ││  0x00007f85549f3417: shr    $0x9,%r10
  1.31%    1.06%         │ │ ││  0x00007f85549f341b: movabs $0x7f85501db000,%r11
                         │ │ ││  0x00007f85549f3425: mov    %r12b,(%r11,%r10,1)  ; OopMap{[8]=Oop [16]=Oop [72]=NarrowOop [88]=Oop [120]=Oop off=2185}
                         │ │ ││                                                ;*goto
                         │ │ ││                                                ; - com.google.re2j.Machine::step@232 (line 277)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.19%    0.11%         │ │ ││  0x00007f85549f3429: test   %eax,0x15f0bbd1(%rip)        # 0x00007f856a8ff000
                         │ │ ││                                                ;*invokeinterface charAt
                         │ │ ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@249 (line 228)
                         │ │ ││                                                ;   {poll}
  0.06%    0.05%         │ │ ││  0x00007f85549f342f: mov    0x88(%rsp),%r11d
  1.49%    1.06%         │ │ ││  0x00007f85549f3437: cmp    %edi,%r11d
                         │ │ ││  0x00007f85549f343a: jge    0x00007f85549f2df8  ;*invokestatic codePointAt
                         │ │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.03%    0.02%         │ │ ││  0x00007f85549f3440: mov    %r9d,%edi
  0.18%    0.12%         │ │ ││  0x00007f85549f3443: mov    %r11d,0x8c(%rsp)   ;*if_icmpgt
                         │ │ ││                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                         │ │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                         │ │ ││                                                ; - com.google.re2j.Machine::match@323 (line 241)
  0.12%    0.20%         ↘ │ ││  0x00007f85549f344b: mov    0x48(%rsp),%r10d
  1.31%    0.66%           │ ││  0x00007f85549f3450: mov    0x20(%r12,%r10,8),%edx  ;*aload_0
                           │ ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.16%    0.06%           │ ││  0x00007f85549f3455: mov    0xc(%r12,%rdx,8),%r11d  ; implicit exception: dispatches to 0x00007f85549f54dd
  0.43%    0.41%           │ ││  0x00007f85549f345a: mov    0x8c(%rsp),%r8d
  0.51%    0.26%           │ ││  0x00007f85549f3462: cmp    %r11d,%r8d
                           │ ││  0x00007f85549f3465: jae    0x00007f85549f3c1e
  1.55%    0.94%           │ ││  0x00007f85549f346b: lea    (%r12,%rdx,8),%r10
  0.14%    0.13%           │ ││  0x00007f85549f346f: mov    0x10(%r10,%r8,4),%r10d  ;*instanceof
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@1 (line 224)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.31%    0.34%           │ ││  0x00007f85549f3474: mov    %r10d,0x80(%rsp)
  0.28%    0.30%           │ ││  0x00007f85549f347c: mov    0x10(%r12,%r10,8),%r9d  ;*caload
                           │ ││                                                ; - java.lang.String::indexOf@129 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
                           │ ││                                                ; implicit exception: dispatches to 0x00007f85549f54ed
  3.24%    3.02%           │ ││  0x00007f85549f3481: mov    0xc(%r12,%r9,8),%esi  ; implicit exception: dispatches to 0x00007f85549f54fd
  6.49%    7.97%           │ ││  0x00007f85549f3486: mov    0xc(%r12,%r10,8),%r11d  ;*aload_0
                           │ ││                                                ; - java.lang.String::indexOf@126 (line 1779)
                           │ ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.00%    0.01%           │ ││  0x00007f85549f348b: mov    0x78(%rsp),%r10
  0.02%    0.01%           │ ││  0x00007f85549f3490: mov    0xc(%r10),%r8d     ;*ifle
                           │ ││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                           │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                           │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.28%    0.18%           │ ││  0x00007f85549f3494: mov    0x24(%r10),%ecx    ;*getfield poolSize
                           │ ││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                           │ ││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                           │ ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  1.57%    1.64%           │ ││  0x00007f85549f3498: mov    0x8c(%rsp),%r10d
  0.02%    0.01%           │ ││  0x00007f85549f34a0: inc    %r10d              ;*if_icmple
                           │ ││                                                ; - com.google.re2j.Utils::isWordRune@21 (line 149)
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.01%    0.01%           │ ││  0x00007f85549f34a3: mov    %r10d,0x88(%rsp)
  0.23%    0.26%           │ ││  0x00007f85549f34ab: mov    0x80(%rsp),%r10d
  1.53%    1.66%           │ ││  0x00007f85549f34b3: shl    $0x3,%r10          ;*aload_1
                           │ ││                                                ; - com.google.re2j.Machine::freeQueue@18 (line 152)
                           │ ││                                                ; - com.google.re2j.Machine::step@174 (line 295)
                           │ ││                                                ; - com.google.re2j.Machine::match@356 (line 242)
  0.01%    0.01%           │ ││  0x00007f85549f34b7: mov    %r10,0x90(%rsp)
  0.03%    0.02%           │ ││  0x00007f85549f34bf: cmp    $0x6,%esi
                           │ ││  0x00007f85549f34c2: je     0x00007f85549f3a3f  ;*if_icmplt
                           │ ││                                                ; - java.lang.Character::charCount@3 (line 4818)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                           │ ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.25%    0.22%           │ ││  0x00007f85549f34c8: mov    0x8(%r12,%r9,8),%ebx
  1.61%    1.92%           │ ││  0x00007f85549f34cd: cmp    $0xf8019993,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                           │ ││  0x00007f85549f34d3: jne    0x00007f85549f3cb1  ;*invokevirtual indexOf
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                           │ ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                           │ ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.04%    0.03%           │ ││  0x00007f85549f34d9: lea    (%r12,%r9,8),%r10
  0.01%    0.03%           │ ││  0x00007f85549f34dd: mov    0xc(%r10),%r9d     ;*if_icmple
                           │ ││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                           │ ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           │ ││                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.25%    0.35%           │ ││  0x00007f85549f34e1: cmp    $0xa,%r9d
                           ╰ ││  0x00007f85549f34e5: je     0x00007f85549f3358  ;*invokestatic charCount
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                             ││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  1.34%    1.75%             ││  0x00007f85549f34eb: cmp    $0xb,%r9d
                             ││  0x00007f85549f34ef: je     0x00007f85549f3e7d  ;*invokevirtual indexOf
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             ││                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.03%    0.05%             ││  0x00007f85549f34f5: mov    0x20(%r10),%edx    ;*land
                             ││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                             ││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                             ││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.30%    0.38%             ││  0x00007f85549f34f9: cmp    $0x9,%r9d
                            ╭││  0x00007f85549f34fd: jne    0x00007f85549f3514  ;*ireturn
                            │││                                                ; - java.lang.Character::charCount@11 (line 4818)
                            │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                            │││                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.09%    0.16%            │││  0x00007f85549f34ff: cmp    0x84(%rsp),%edx
                            │││  0x00007f85549f3506: je     0x00007f85549f361a  ;*if_icmpgt
                            │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                            │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                            │││                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.29%    0.33%            │││  0x00007f85549f350c: xor    %r9d,%r9d
  0.01%    0.01%            │╰│  0x00007f85549f350f: jmpq   0x00007f85549f3353
  0.48%    0.45%            ↘ │  0x00007f85549f3514: cmp    $0xc,%r9d
                              │  0x00007f85549f3518: jne    0x00007f85549f3f5d  ;*getfield value
                              │                                                ; - java.lang.String::indexOf@1 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.93%    1.06%              │  0x00007f85549f351e: cmp    0x84(%rsp),%edx
                              │  0x00007f85549f3525: je     0x00007f85549f2de5  ;*arraylength
                              │                                                ; - com.google.re2j.Machine::match@286 (line 236)
  0.50%    0.47%              │  0x00007f85549f352b: mov    0x24(%r10),%r9d    ;*invokevirtual add
                              │                                                ; - com.google.re2j.Machine::match@315 (line 239)
  0.03%    0.06%              │  0x00007f85549f352f: cmp    0x84(%rsp),%r9d
                              │  0x00007f85549f3537: je     0x00007f85549f2de5  ;*iadd
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@29 (line 188)
                              │                                                ; - com.google.re2j.Machine::match@226 (line 225)
  0.83%    1.09%              │  0x00007f85549f353d: mov    0x28(%r10),%r9d    ;*if_icmpne
                              │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                              │                                                ; - com.google.re2j.Machine::match@121 (line 201)
  0.36%    0.35%              │  0x00007f85549f3541: cmp    0x84(%rsp),%r9d
                              │  0x00007f85549f3549: je     0x00007f85549f4011  ;*getfield value
                              │                                                ; - java.lang.String::indexOf@1 (line 1718)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                              │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                              │                                                ; - com.google.re2j.Machine::match@206 (line 220)
  0.78%    0.78%              │  0x00007f85549f354f: mov    0x2c(%r10),%r9d
  0.04%    0.01%              │  0x00007f85549f3553: cmp    0x84(%rsp),%r9d
                              ╰  0x00007f85549f355b: jne    0x00007f85549f3350  ;*if_icmpne
                                                                               ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                                                                               ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                               ; - com.google.re2j.Machine::match@121 (line 201)
                                 0x00007f85549f3561: mov    $0xffffff65,%esi   ;*goto
                                                                               ; - com.google.re2j.Machine::step@182 (line 297)
                                                                               ; - com.google.re2j.Machine::match@356 (line 242)
                                 0x00007f85549f3566: mov    0x78(%rsp),%rbp
                                 0x00007f85549f356b: mov    0x10(%rsp),%r11
                                 0x00007f85549f3570: mov    %r11,0x8(%rsp)
....................................................................................................
 52.16%   51.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 504 (1332 bytes) 

                       # parm4:    rdi:rdi   = &apos;com/google/re2j/Machine$Thread&apos;
                       # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                       0x00007f85549ceb40: mov    0x8(%rsi),%r10d
                       0x00007f85549ceb44: shl    $0x3,%r10
                       0x00007f85549ceb48: cmp    %r10,%rax
                       0x00007f85549ceb4b: jne    0x00007f85547f2e20  ;   {runtime_call}
                       0x00007f85549ceb51: data16 xchg %ax,%ax
                       0x00007f85549ceb54: nopl   0x0(%rax,%rax,1)
                       0x00007f85549ceb5c: data16 data16 xchg %ax,%ax
                     [Verified Entry Point]
  0.19%    0.22%       0x00007f85549ceb60: mov    %eax,-0x14000(%rsp)
  0.02%    0.02%       0x00007f85549ceb67: push   %rbp
  0.21%    0.22%       0x00007f85549ceb68: sub    $0x60,%rsp         ;*synchronization entry
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 273)
  0.02%                0x00007f85549ceb6c: vmovq  %rsi,%xmm9
  0.01%    0.02%       0x00007f85549ceb71: vmovd  %ecx,%xmm0
  0.16%    0.22%       0x00007f85549ceb75: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 273)
           0.01%       0x00007f85549ceb78: mov    0x10(%rdx),%rbx    ;*getfield pcsl
                                                                     ; - com.google.re2j.Machine$Queue::contains@7 (line 47)
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
                                                                     ; implicit exception: dispatches to 0x00007f85549cf801
           0.01%       0x00007f85549ceb7c: cmp    $0x40,%ecx
                       0x00007f85549ceb7f: jg     0x00007f85549cf3f1  ;*if_icmpgt
                                                                     ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.03%    0.00%       0x00007f85549ceb85: mov    $0x1,%r14d
  0.18%    0.17%       0x00007f85549ceb8b: mov    $0x1,%r11d
           0.01%       0x00007f85549ceb91: shl    %cl,%r11           ;*lshl
                                                                     ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.20%    0.32%       0x00007f85549ceb94: mov    %rbx,%r10
           0.01%       0x00007f85549ceb97: and    %r11,%r10          ;*land
                                                                     ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                                                                     ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.03%    0.01%       0x00007f85549ceb9a: test   %r10,%r10
                  ╭    0x00007f85549ceb9d: jne    0x00007f85549cf0a9  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.01%           │    0x00007f85549ceba3: xor    %ebp,%ebp          ;*ireturn
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.17%    0.23%  │    0x00007f85549ceba5: test   %r10,%r10
                  │    0x00007f85549ceba8: jne    0x00007f85549cf425  ;*ifeq
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 273)
  0.00%    0.00%  │    0x00007f85549cebae: cmp    $0x40,%ecx
                  │    0x00007f85549cebb1: jge    0x00007f85549cf455  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
           0.02%  │    0x00007f85549cebb7: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 61)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.02%    0.01%  │    0x00007f85549cebbb: mov    0x1c(%rsi),%ebp    ;*getfield outInst
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 278)
  0.15%    0.25%  │    0x00007f85549cebbe: or     %rbx,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
           0.00%  │    0x00007f85549cebc1: mov    %r11,0x10(%rdx)    ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 276)
  0.02%    0.01%  │    0x00007f85549cebc5: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85549cf815
  0.02%    0.05%  │    0x00007f85549cebca: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │    0x00007f85549cebd1: jne    0x00007f85549cf21d
  0.21%    0.31%  │    0x00007f85549cebd7: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%           │    0x00007f85549cebdb: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
           0.00%  │    0x00007f85549cebdf: cmp    $0x40,%ecx
                  │    0x00007f85549cebe2: jg     0x00007f85549cf489  ;*if_icmpgt
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.03%  │    0x00007f85549cebe8: mov    $0x1,%ebx
  0.16%    0.25%  │    0x00007f85549cebed: shl    %cl,%rbx           ;*lshl
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.11%    0.24%  │    0x00007f85549cebf0: mov    %r11,%rsi
  0.09%    0.12%  │    0x00007f85549cebf3: and    %rbx,%rsi          ;*land
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.00%  │    0x00007f85549cebf6: test   %rsi,%rsi
                  │    0x00007f85549cebf9: jne    0x00007f85549cf0b3  ;*ifeq
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.09%    0.07%  │    0x00007f85549cebff: xor    %ebp,%ebp          ;*ireturn
                  │                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.06%    0.07%  │    0x00007f85549cec01: test   %rsi,%rsi
                  │    0x00007f85549cec04: jne    0x00007f85549cf4c5  ;*ifeq
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.15%    0.17%  │    0x00007f85549cec0a: cmp    $0x40,%ecx
                  │    0x00007f85549cec0d: jge    0x00007f85549cf4f9  ;*if_icmpge
                  │                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%           │    0x00007f85549cec13: or     %rbx,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.01%  │    0x00007f85549cec16: mov    %r11,0x10(%rdx)    ;*putfield pcsl
                  │                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.04%  │    0x00007f85549cec1a: mov    %r10,%rsi
  0.14%    0.11%  │    0x00007f85549cec1d: shr    $0x3,%rsi          ;*putfield inst
                  │                                                  ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │                                                  ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │                                                  ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
           0.00%  │    0x00007f85549cec21: movabs $0x7f85501db000,%r13
  0.02%    0.02%  │    0x00007f85549cec2b: test   %rdi,%rdi
                  │╭   0x00007f85549cec2e: jne    0x00007f85549cf095  ;*ifnonnull
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@24 (line 98)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.03%    0.02%  ││   0x00007f85549cec34: mov    0x70(%rsp),%rcx
  0.12%    0.09%  ││   0x00007f85549cec39: mov    0xc(%rcx),%ebx     ;*getfield poolSize
                  ││                                                 ; - com.google.re2j.Machine::alloc@1 (line 132)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  ││                                                 ; implicit exception: dispatches to 0x00007f85549cf921
  0.02%    0.00%  ││   0x00007f85549cec3c: test   %ebx,%ebx
                  ││   0x00007f85549cec3e: jle    0x00007f85549cf7c9  ;*ifle
                  ││                                                 ; - com.google.re2j.Machine::alloc@4 (line 132)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%           ││   0x00007f85549cec44: mov    %ebx,%edi
  0.04%    0.04%  ││   0x00007f85549cec46: mov    %r10,%rbx
  0.14%    0.02%  ││   0x00007f85549cec49: mov    0x24(%rcx),%r10d   ;*getfield pool
                  ││                                                 ; - com.google.re2j.Machine::alloc@18 (line 134)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.00%  ││   0x00007f85549cec4d: mov    %edi,%ebp
  0.03%    0.02%  ││   0x00007f85549cec4f: dec    %ebp               ;*isub
                  ││                                                 ; - com.google.re2j.Machine::alloc@13 (line 133)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.02%    0.02%  ││   0x00007f85549cec51: mov    %ebp,0xc(%rcx)     ;*putfield poolSize
                  ││                                                 ; - com.google.re2j.Machine::alloc@14 (line 133)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.11%    0.06%  ││   0x00007f85549cec54: mov    0xc(%r12,%r10,8),%ecx  ; implicit exception: dispatches to 0x00007f85549cf935
           0.00%  ││   0x00007f85549cec59: cmp    %ecx,%ebp
                  ││   0x00007f85549cec5b: jae    0x00007f85549cf2f9
  0.02%    0.03%  ││   0x00007f85549cec61: lea    (%r12,%r10,8),%rcx
  0.04%    0.05%  ││   0x00007f85549cec65: mov    0xc(%rcx,%rdi,4),%ecx  ;*aaload
                  ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.15%    0.16%  ││   0x00007f85549cec69: mov    %esi,0x10(%r12,%rcx,8)  ;*putfield inst
                  ││                                                 ; - com.google.re2j.Machine::alloc@45 (line 138)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  ││                                                 ; implicit exception: dispatches to 0x00007f85549cf945
  0.08%    0.08%  ││   0x00007f85549cec6e: lea    (%r12,%rcx,8),%rdi  ;*aaload
                  ││                                                 ; - com.google.re2j.Machine::alloc@25 (line 134)
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.01%    0.01%  ││   0x00007f85549cec72: mov    %rdi,%r10
  0.02%    0.04%  ││   0x00007f85549cec75: shr    $0x9,%r10
  0.19%    0.16%  ││   0x00007f85549cec79: mov    %r12b,0x0(%r13,%r10,1)  ;*aload_3
                  ││                                                 ; - com.google.re2j.Inst$MatchInst::add@44 (line 103)
                  ││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.33%    0.28%  ││↗  0x00007f85549cec7e: mov    0xc(%r8),%ebp      ;*arraylength
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@45 (line 103)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │││                                                ; implicit exception: dispatches to 0x00007f85549cf83d
  0.00%           │││  0x00007f85549cec82: test   %ebp,%ebp
                  │││  0x00007f85549cec84: jg     0x00007f85549cf535  ;*ifle
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@46 (line 103)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.02%  │││  0x00007f85549cec8a: mov    0xc(%rdx),%ecx     ;*getfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.04%    0.06%  │││  0x00007f85549cec8d: mov    0x20(%rdx),%ebp    ;*getfield denseThreads
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.17%  │││  0x00007f85549cec90: vmovd  %ebp,%xmm2
  0.00%           │││  0x00007f85549cec94: mov    %ecx,0x20(%rsp)
  0.00%    0.00%  │││  0x00007f85549cec98: inc    %ecx               ;*iadd
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.05%    0.03%  │││  0x00007f85549cec9a: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.10%    0.17%  │││  0x00007f85549cec9d: vmovd  %ecx,%xmm1
  0.00%           │││  0x00007f85549ceca1: mov    0xc(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f85549cf84d
           0.00%  │││  0x00007f85549ceca6: mov    0x20(%rsp),%ecx
  0.07%    0.05%  │││  0x00007f85549cecaa: cmp    %esi,%ecx
                  │││  0x00007f85549cecac: jae    0x00007f85549cf0e5  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.16%    0.17%  │││  0x00007f85549cecb2: vmovq  %xmm9,%r10
                  │││  0x00007f85549cecb7: mov    0x20(%r10),%ebp    ;*getfield inst2
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 279)
  0.01%    0.00%  │││  0x00007f85549cecbb: mov    %rdi,%r10
  0.03%    0.04%  │││  0x00007f85549cecbe: shr    $0x3,%r10          ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.12%    0.19%  │││  0x00007f85549cecc2: vmovd  %xmm2,%ecx
                  │││  0x00007f85549cecc6: lea    (%r12,%rcx,8),%rdi  ;*getfield denseThreads
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.00%    0.00%  │││  0x00007f85549cecca: mov    0x20(%rsp),%ebx
  0.03%    0.06%  │││  0x00007f85549cecce: lea    0x10(%rdi,%rbx,4),%rcx
  0.19%    0.17%  │││  0x00007f85549cecd3: mov    %r10d,(%rcx)
  0.09%    0.09%  │││  0x00007f85549cecd6: mov    %rcx,%r10
           0.01%  │││  0x00007f85549cecd9: shr    $0x9,%r10
  0.02%    0.02%  │││  0x00007f85549cecdd: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
  0.21%    0.27%  │││  0x00007f85549cece2: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85549cf861
  0.03%    0.04%  │││  0x00007f85549cece7: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││  0x00007f85549cecee: jne    0x00007f85549cf24d
  0.01%    0.01%  │││  0x00007f85549cecf4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.02%  │││  0x00007f85549cecf8: vmovq  %r10,%xmm3
  0.11%    0.20%  │││  0x00007f85549cecfd: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.02%  │││  0x00007f85549ced01: mov    %ecx,%eax
           0.01%  │││  0x00007f85549ced03: cmp    $0x40,%ecx
                  │││  0x00007f85549ced06: jg     0x00007f85549cf565  ;*if_icmpgt
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.02%  │││  0x00007f85549ced0c: mov    $0x1,%r10d
  0.17%    0.22%  │││  0x00007f85549ced12: shl    %cl,%r10           ;*lshl
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.05%    0.04%  │││  0x00007f85549ced15: mov    %r11,%rcx
  0.17%    0.13%  │││  0x00007f85549ced18: and    %r10,%rcx          ;*land
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%    0.01%  │││  0x00007f85549ced1b: test   %rcx,%rcx
                  │││  0x00007f85549ced1e: jne    0x00007f85549cf0bd  ;*ifeq
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.04%    0.02%  │││  0x00007f85549ced24: xor    %ebp,%ebp          ;*ireturn
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.03%  │││  0x00007f85549ced26: test   %rcx,%rcx
                  │││  0x00007f85549ced29: jne    0x00007f85549cf59d  ;*ifeq
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.12%    0.22%  │││  0x00007f85549ced2f: mov    %eax,%ecx
  0.00%    0.01%  │││  0x00007f85549ced31: cmp    $0x40,%ecx
                  │││  0x00007f85549ced34: jge    0x00007f85549cf5cd  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.02%  │││  0x00007f85549ced3a: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.00%    0.02%  │││  0x00007f85549ced3d: mov    %r11,0x10(%rdx)    ;*putfield pcsl
                  │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.11%    0.25%  │││  0x00007f85549ced41: mov    0x70(%rsp),%r10
  0.00%    0.02%  │││  0x00007f85549ced46: mov    0xc(%r10),%ecx     ;*getfield poolSize
                  │││                                                ; - com.google.re2j.Machine::alloc@1 (line 132)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
                  │││                                                ; implicit exception: dispatches to 0x00007f85549cf885
  0.03%    0.02%  │││  0x00007f85549ced4a: vmovd  %ecx,%xmm4
  0.02%    0.04%  │││  0x00007f85549ced4e: test   %ecx,%ecx
                  │││  0x00007f85549ced50: jle    0x00007f85549cf32d  ;*ifle
                  │││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.15%    0.15%  │││  0x00007f85549ced56: mov    0x24(%r10),%ecx    ;*getfield pool
                  │││                                                ; - com.google.re2j.Machine::alloc@18 (line 134)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.02%  │││  0x00007f85549ced5a: vmovd  %ecx,%xmm6
  0.00%    0.02%  │││  0x00007f85549ced5e: vmovd  %xmm4,%ecx
  0.03%    0.03%  │││  0x00007f85549ced62: dec    %ecx               ;*isub
                  │││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.13%    0.27%  │││  0x00007f85549ced64: vmovd  %ecx,%xmm7
  0.03%    0.02%  │││  0x00007f85549ced68: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.01%  │││  0x00007f85549ced6c: vmovd  %xmm6,%ecx
  0.01%    0.02%  │││  0x00007f85549ced70: mov    0xc(%r12,%rcx,8),%r10d  ; implicit exception: dispatches to 0x00007f85549cf899
  0.25%    0.24%  │││  0x00007f85549ced75: vmovd  %xmm7,%ebx
  0.02%    0.01%  │││  0x00007f85549ced79: cmp    %r10d,%ebx
                  │││  0x00007f85549ced7c: jae    0x00007f85549cf119
  0.16%    0.14%  │││  0x00007f85549ced82: lea    (%r12,%rcx,8),%rax
  0.01%    0.00%  │││  0x00007f85549ced86: vmovd  %xmm4,%ebx
  0.07%    0.09%  │││  0x00007f85549ced8a: mov    0xc(%rax,%rbx,4),%ebx  ;*aaload
                  │││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%    0.02%  │││  0x00007f85549ced8e: vmovd  %ebx,%xmm5
  0.11%    0.12%  │││  0x00007f85549ced92: test   %ebx,%ebx
                  │││  0x00007f85549ced94: je     0x00007f85549cf151  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.00%  │││  0x00007f85549ced9a: vmovd  %r9d,%xmm11
  0.10%    0.05%  │││  0x00007f85549ced9f: vmovq  %r8,%xmm10
  0.01%    0.01%  │││  0x00007f85549ceda4: lea    (%r12,%rbx,8),%r8
  0.06%    0.08%  │││  0x00007f85549ceda8: mov    0x20(%rsp),%ecx
  0.01%    0.02%  │││  0x00007f85549cedac: add    $0x2,%ecx
  0.15%    0.06%  │││  0x00007f85549cedaf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.01%    0.01%  │││  0x00007f85549cedb2: vmovq  %rdx,%xmm8
  0.06%    0.16%  │││  0x00007f85549cedb7: mov    0x20(%rsp),%ebx
  0.01%    0.02%  │││  0x00007f85549cedbb: add    $0x4,%ebx          ;*iadd
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.09%    0.08%  │││  0x00007f85549cedbe: shr    $0x9,%r8
  0.01%    0.01%  │││  0x00007f85549cedc2: mov    %r12b,0x0(%r13,%r8,1)
  0.91%    0.93%  │││  0x00007f85549cedc7: vmovq  %xmm3,%r8
           0.00%  │││  0x00007f85549cedcc: mov    %r8,%rcx
  0.02%    0.00%  │││  0x00007f85549cedcf: shr    $0x3,%rcx
                  │││  0x00007f85549cedd3: vmovd  %xmm5,%ebp
  0.16%    0.23%  │││  0x00007f85549cedd7: mov    %ecx,0x10(%r12,%rbp,8)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.10%    0.15%  │││  0x00007f85549ceddc: cmp    %esi,%ebx
                  │││  0x00007f85549cedde: jae    0x00007f85549cf165  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.02%           │││  0x00007f85549cede4: vmovq  %xmm9,%r8
  0.00%           │││  0x00007f85549cede9: mov    0x24(%r8),%ebp     ;*getfield inst3
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 280)
  0.16%    0.23%  │││  0x00007f85549ceded: movslq 0x20(%rsp),%r8
  0.03%    0.04%  │││  0x00007f85549cedf2: lea    (%rdi,%r8,4),%r9   ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.01%  │││  0x00007f85549cedf6: mov    %r9,%r8
                  │││  0x00007f85549cedf9: add    $0x14,%r8
  0.15%    0.15%  │││  0x00007f85549cedfd: vmovd  %xmm5,%esi
  0.03%    0.03%  │││  0x00007f85549cee01: mov    %esi,(%r8)
           0.02%  │││  0x00007f85549cee04: shr    $0x9,%r8
                  │││  0x00007f85549cee08: mov    %r12b,0x0(%r13,%r8,1)  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 279)
  0.12%    0.21%  │││  0x00007f85549cee0d: mov    0x8(%r12,%rbp,8),%esi  ; implicit exception: dispatches to 0x00007f85549cf8ad
  0.04%    0.04%  │││  0x00007f85549cee12: cmp    $0xf8019993,%esi   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││  0x00007f85549cee18: jne    0x00007f85549cf279
  0.00%    0.02%  │││  0x00007f85549cee1e: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │││  0x00007f85549cee22: vmovq  %r8,%xmm1
  0.10%    0.21%  │││  0x00007f85549cee27: mov    0x18(%r8),%ecx     ;*getfield pc
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.04%    0.03%  │││  0x00007f85549cee2b: mov    %ecx,%edx
  0.01%    0.01%  │││  0x00007f85549cee2d: cmp    $0x40,%ecx
                  │││  0x00007f85549cee30: jg     0x00007f85549cf605  ;*if_icmpgt
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │││  0x00007f85549cee36: mov    $0x1,%r8d
  0.18%    0.16%  │││  0x00007f85549cee3c: shl    %cl,%r8            ;*lshl
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.06%  │││  0x00007f85549cee3f: mov    %r11,%rcx
  0.15%    0.19%  │││  0x00007f85549cee42: and    %r8,%rcx           ;*land
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.06%    0.03%  │││  0x00007f85549cee45: test   %rcx,%rcx
                  │││  0x00007f85549cee48: jne    0x00007f85549cf0c7  ;*ifeq
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.03%    0.00%  │││  0x00007f85549cee4e: xor    %ebp,%ebp          ;*ireturn
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │││  0x00007f85549cee50: test   %rcx,%rcx
                  │││  0x00007f85549cee53: jne    0x00007f85549cf641  ;*ifeq
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.21%    0.22%  │││  0x00007f85549cee59: mov    %edx,%ecx
  0.02%    0.05%  │││  0x00007f85549cee5b: cmp    $0x40,%ecx
                  │││  0x00007f85549cee5e: jge    0x00007f85549cf675  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.01%  │││  0x00007f85549cee64: or     %r8,%r11           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │││  0x00007f85549cee67: vmovq  %xmm8,%r8
  0.20%    0.17%  │││  0x00007f85549cee6c: mov    %r11,0x10(%r8)     ;*putfield pcsl
                  │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%    0.02%  │││  0x00007f85549cee70: vmovd  %xmm7,%ecx
  0.02%           │││  0x00007f85549cee74: test   %ecx,%ecx
                  │││  0x00007f85549cee76: jle    0x00007f85549cf361  ;*ifle
                  │││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.00%           │││  0x00007f85549cee7c: vmovq  %r8,%xmm5
  0.21%    0.18%  │││  0x00007f85549cee81: vmovd  %xmm4,%r8d
  0.04%    0.04%  │││  0x00007f85549cee86: add    $0xfffffffc,%r8d   ;*isub
                  │││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.01%  │││  0x00007f85549cee8a: vmovd  %xmm4,%esi
                  │││  0x00007f85549cee8e: add    $0xfffffffe,%esi   ;*isub
                  │││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.17%    0.27%  │││  0x00007f85549cee91: vmovd  %esi,%xmm3
  0.04%    0.03%  │││  0x00007f85549cee95: mov    0x70(%rsp),%rcx
  0.02%    0.01%  │││  0x00007f85549cee9a: mov    %esi,0xc(%rcx)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
                  │││  0x00007f85549cee9d: cmp    %r10d,%r8d
                  │││  0x00007f85549ceea0: jae    0x00007f85549cf1a1
  0.17%    0.15%  │││  0x00007f85549ceea6: mov    0x10(%rax,%rsi,4),%esi  ;*aaload
                  │││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.01%  │││  0x00007f85549ceeaa: test   %esi,%esi
                  │││  0x00007f85549ceeac: je     0x00007f85549cf1e1  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.01%    0.02%  │││  0x00007f85549ceeb2: mov    %r9,%rcx
                  │││  0x00007f85549ceeb5: add    $0x18,%rcx
  0.17%    0.15%  │││  0x00007f85549ceeb9: mov    %esi,(%rcx)        ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.00%  │││  0x00007f85549ceebb: vmovq  %xmm9,%r10
  0.01%    0.03%  │││  0x00007f85549ceec0: mov    0x28(%r10),%ebp    ;*getfield inst4
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 281)
                  │││  0x00007f85549ceec4: lea    (%r12,%rsi,8),%rdx
  0.17%    0.05%  │││  0x00007f85549ceec8: vmovq  %xmm1,%r10
  0.02%    0.01%  │││  0x00007f85549ceecd: shr    $0x3,%r10
  0.01%    0.02%  │││  0x00007f85549ceed1: mov    %r10d,0x10(%r12,%rsi,8)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.00%  │││  0x00007f85549ceed6: mov    0x20(%rsp),%r10d
  0.20%    0.04%  │││  0x00007f85549ceedb: add    $0x3,%r10d
  0.02%    0.01%  │││  0x00007f85549ceedf: vmovq  %xmm5,%rsi
  0.00%    0.02%  │││  0x00007f85549ceee4: mov    %r10d,0xc(%rsi)    ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
           0.00%  │││  0x00007f85549ceee8: shr    $0x9,%rdx
  0.16%    0.02%  │││  0x00007f85549ceeec: mov    %r12b,0x0(%r13,%rdx,1)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.02%    0.02%  │││  0x00007f85549ceef1: mov    %rcx,%r10
           0.01%  │││  0x00007f85549ceef4: shr    $0x9,%r10
  0.00%    0.00%  │││  0x00007f85549ceef8: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 280)
  0.19%    0.01%  │││  0x00007f85549ceefd: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f85549cf8d1
  0.06%    0.01%  │││  0x00007f85549cef02: cmp    $0xf8019993,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││  0x00007f85549cef09: jne    0x00007f85549cf2a5
  0.01%           │││  0x00007f85549cef0f: lea    (%r12,%rbp,8),%rdx  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%           │││  0x00007f85549cef13: mov    0x18(%rdx),%ecx    ;*getfield pc
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.14%    0.16%  │││  0x00007f85549cef16: vmovd  %ecx,%xmm2
  0.04%    0.02%  │││  0x00007f85549cef1a: cmp    $0x40,%ecx
                  │││  0x00007f85549cef1d: jg     0x00007f85549cf6b1  ;*if_icmpgt
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.03%  │││  0x00007f85549cef23: mov    $0x1,%r10d
  0.01%    0.01%  │││  0x00007f85549cef29: shl    %cl,%r10           ;*lshl
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.17%    0.32%  │││  0x00007f85549cef2c: mov    %r11,%rcx
  0.00%           │││  0x00007f85549cef2f: and    %r10,%rcx          ;*land
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.15%    0.16%  │││  0x00007f85549cef32: test   %rcx,%rcx
                  │││  0x00007f85549cef35: jne    0x00007f85549cf0d1  ;*ifeq
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.02%  │││  0x00007f85549cef3b: xor    %ebp,%ebp          ;*ireturn
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.00%    0.02%  │││  0x00007f85549cef3d: test   %rcx,%rcx
           0.01%  │││  0x00007f85549cef40: jne    0x00007f85549cf6ed  ;*ifeq
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.14%    0.16%  │││  0x00007f85549cef46: vmovd  %xmm2,%ecx
  0.06%    0.06%  │││  0x00007f85549cef4a: cmp    $0x40,%ecx
                  │││  0x00007f85549cef4d: jge    0x00007f85549cf721  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.03%  │││  0x00007f85549cef53: or     %r10,%r11          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.00%  │││  0x00007f85549cef56: mov    %rsi,%r10
  0.20%    0.15%  │││  0x00007f85549cef59: mov    %r11,0x10(%r10)    ;*putfield pcsl
                  │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.05%  │││  0x00007f85549cef5d: vmovd  %xmm3,%ecx
  0.01%    0.02%  │││  0x00007f85549cef61: test   %ecx,%ecx
                  │││  0x00007f85549cef63: jle    0x00007f85549cf399  ;*ifle
                  │││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.00%  │││  0x00007f85549cef69: vmovq  %r10,%xmm2
  0.14%    0.17%  │││  0x00007f85549cef6e: vmovd  %xmm4,%ecx
  0.06%    0.04%  │││  0x00007f85549cef72: add    $0xfffffffd,%ecx   ;*isub
                  │││                                                ; - com.google.re2j.Machine::alloc@13 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.02%    0.01%  │││  0x00007f85549cef75: vmovd  %ecx,%xmm1
  0.00%    0.01%  │││  0x00007f85549cef79: mov    0x70(%rsp),%r10
  0.19%    0.08%  │││  0x00007f85549cef7e: mov    %ecx,0xc(%r10)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.05%    0.04%  │││  0x00007f85549cef82: mov    0x10(%rax,%rcx,4),%esi  ;*aaload
                  │││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.01%  │││  0x00007f85549cef86: test   %esi,%esi
                  │││  0x00007f85549cef88: je     0x00007f85549cf1f5  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.01%  │││  0x00007f85549cef8e: vmovq  %xmm2,%r10
  0.14%    0.23%  │││  0x00007f85549cef93: mov    %ebx,0xc(%r10)     ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.06%    0.06%  │││  0x00007f85549cef97: vmovq  %xmm9,%r10
  0.00%    0.03%  │││  0x00007f85549cef9c: mov    0x2c(%r10),%ebp    ;*getfield inst5
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 282)
  0.01%    0.01%  │││  0x00007f85549cefa0: mov    %r9,%rcx
  0.15%    0.21%  │││  0x00007f85549cefa3: add    $0x1c,%rcx
  0.04%    0.05%  │││  0x00007f85549cefa7: mov    %esi,(%rcx)        ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.01%    0.03%  │││  0x00007f85549cefa9: mov    %rdx,%r10
  0.00%    0.00%  │││  0x00007f85549cefac: shr    $0x3,%r10
  0.13%    0.21%  │││  0x00007f85549cefb0: mov    %r10d,0x10(%r12,%rsi,8)
  0.03%    0.10%  │││  0x00007f85549cefb5: mov    %rcx,%r10
  0.00%    0.01%  │││  0x00007f85549cefb8: lea    (%r12,%rsi,8),%rcx
           0.00%  │││  0x00007f85549cefbc: shr    $0x9,%r10
  0.19%    0.13%  │││  0x00007f85549cefc0: shr    $0x9,%rcx
  0.04%    0.08%  │││  0x00007f85549cefc4: mov    %r12b,0x0(%r13,%rcx,1)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
  0.03%    0.03%  │││  0x00007f85549cefc9: mov    %r12b,0x0(%r13,%r10,1)  ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 281)
           0.00%  │││  0x00007f85549cefce: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f85549cf8f9
  0.11%    0.16%  │││  0x00007f85549cefd3: cmp    $0xf8019993,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$RuneInst&apos;)}
                  │││  0x00007f85549cefd9: jne    0x00007f85549cf2d1
  0.03%    0.05%  │││  0x00007f85549cefdf: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │││  0x00007f85549cefe3: mov    0x18(%r10),%ecx    ;*getfield pc
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.01%  │││  0x00007f85549cefe7: cmp    $0x40,%ecx
                  │││  0x00007f85549cefea: jg     0x00007f85549cf75d  ;*if_icmpgt
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.16%    0.24%  │││  0x00007f85549ceff0: mov    %r10,%rbx
  0.02%    0.05%  │││  0x00007f85549ceff3: mov    %ecx,%esi
  0.02%    0.02%  │││  0x00007f85549ceff5: shl    %cl,%r14           ;*lshl
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.17%    0.26%  │││  0x00007f85549ceff8: mov    %r11,%r10
  0.02%    0.02%  │││  0x00007f85549ceffb: and    %r14,%r10          ;*land
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.00%           │││  0x00007f85549ceffe: test   %r10,%r10
                  │││  0x00007f85549cf001: jne    0x00007f85549cf0db  ;*ifeq
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.12%    0.13%  │││  0x00007f85549cf007: xor    %ecx,%ecx          ;*ireturn
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 47)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.07%    0.03%  │││  0x00007f85549cf009: test   %r10,%r10
                  │││  0x00007f85549cf00c: jne    0x00007f85549cf781  ;*ifeq
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 93)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.04%  │││  0x00007f85549cf012: mov    %esi,%ecx
           0.01%  │││  0x00007f85549cf014: cmp    $0x40,%ecx
                  │││  0x00007f85549cf017: jge    0x00007f85549cf7a5  ;*if_icmpge
                  │││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 56)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.13%    0.18%  │││  0x00007f85549cf01d: or     %r14,%r11
  0.02%    0.06%  │││  0x00007f85549cf020: vmovq  %xmm2,%rcx
  0.04%    0.03%  │││  0x00007f85549cf025: mov    %r11,0x10(%rcx)    ;*putfield pcsl
                  │││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 57)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 96)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.00%    0.01%  │││  0x00007f85549cf029: vmovd  %xmm1,%r10d
  0.20%    0.20%  │││  0x00007f85549cf02e: test   %r10d,%r10d
                  │││  0x00007f85549cf031: jle    0x00007f85549cf3cd  ;*ifle
                  │││                                                ; - com.google.re2j.Machine::alloc@4 (line 132)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.07%  │││  0x00007f85549cf037: mov    0x70(%rsp),%r10
  0.01%    0.02%  │││  0x00007f85549cf03c: mov    %r8d,0xc(%r10)     ;*putfield poolSize
                  │││                                                ; - com.google.re2j.Machine::alloc@14 (line 133)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.02%  │││  0x00007f85549cf040: mov    0x10(%rax,%r8,4),%r11d  ;*aaload
                  │││                                                ; - com.google.re2j.Machine::alloc@25 (line 134)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.15%    0.15%  │││  0x00007f85549cf045: test   %r11d,%r11d
                  │││  0x00007f85549cf048: je     0x00007f85549cf209  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.05%    0.09%  │││  0x00007f85549cf04e: add    $0x20,%r9
  0.03%    0.02%  │││  0x00007f85549cf052: mov    %r11d,(%r9)        ;*aastore
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.00%  │││  0x00007f85549cf055: mov    %rbx,%r10
  0.12%    0.15%  │││  0x00007f85549cf058: shr    $0x3,%r10
  0.04%    0.04%  │││  0x00007f85549cf05c: mov    %r10d,0x10(%r12,%r11,8)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.01%    0.01%  │││  0x00007f85549cf061: mov    %r9,%r10
  0.00%    0.00%  │││  0x00007f85549cf064: mov    0x20(%rsp),%r8d
  0.12%    0.07%  │││  0x00007f85549cf069: add    $0x5,%r8d
  0.04%    0.06%  │││  0x00007f85549cf06d: mov    %r8d,0xc(%rcx)     ;*putfield size
                  │││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 65)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@74 (line 106)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.02%    0.02%  │││  0x00007f85549cf071: shr    $0x9,%r10
  0.00%    0.00%  │││  0x00007f85549cf075: shl    $0x3,%r11
  0.15%    0.15%  │││  0x00007f85549cf079: shr    $0x9,%r11
  0.05%    0.08%  │││  0x00007f85549cf07d: mov    %r12b,0x0(%r13,%r11,1)  ;*putfield inst
                  │││                                                ; - com.google.re2j.Machine::alloc@45 (line 138)
                  │││                                                ; - com.google.re2j.Inst$MatchInst::add@30 (line 99)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 282)
  0.03%    0.02%  │││  0x00007f85549cf082: mov    %r12b,0x0(%r13,%r10,1)  ;*if_icmpgt
                  │││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 46)
                  │││                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 273)
  0.01%    0.02%  │││  0x00007f85549cf087: xor    %eax,%eax
  0.13%    0.19%  │││  0x00007f85549cf089: add    $0x60,%rsp
  0.07%    0.07%  │││  0x00007f85549cf08d: pop    %rbp
  0.77%    0.84%  │││  0x00007f85549cf08e: test   %eax,0x15f2ff6c(%rip)        # 0x00007f856a8ff000
                  │││                                                ;   {poll_return}
           0.01%  │││  0x00007f85549cf094: retq   
                  │↘│  0x00007f85549cf095: mov    %esi,0x10(%rdi)
                  │ │  0x00007f85549cf098: mov    %rdi,%r10
                  │ │  0x00007f85549cf09b: shr    $0x9,%r10
                  │ │  0x00007f85549cf09f: mov    %r12b,0x0(%r13,%r10,1)  ;*putfield inst
                  │ │                                                ; - com.google.re2j.Inst$MatchInst::add@41 (line 101)
                  │ │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 278)
                  │ ╰  0x00007f85549cf0a4: jmpq   0x00007f85549cec7e
                  ↘    0x00007f85549cf0a9: mov    $0x1,%ebp
                       0x00007f85549cf0ae: jmpq   0x00007f85549ceba5
....................................................................................................
 17.74%   19.91%  <total for region 2>

....[Hottest Regions]...............................................................................
 52.16%   51.99%         C2, level 4  com.google.re2j.Machine::match, version 540 (1215 bytes) 
 17.74%   19.91%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 504 (1332 bytes) 
  9.02%   10.08%         C2, level 4  com.google.re2j.Machine::match, version 540 (633 bytes) 
  5.74%    6.70%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (499 bytes) 
  3.13%    2.07%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (191 bytes) 
  2.21%    2.57%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (208 bytes) 
  1.90%    0.96%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 (166 bytes) 
  1.67%    0.88%         C1, level 3  jdk.internal.org.objectweb.asm.MethodWriter::visitVarInsn, version 183 (14 bytes) 
  1.13%    0.25%         C2, level 4  com.google.re2j.Machine::init, version 528 (405 bytes) 
  0.72%    1.00%         C2, level 4  com.google.re2j.Machine::match, version 540 (252 bytes) 
  0.64%    0.36%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 485 (100 bytes) 
  0.63%    0.62%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.33%    0.15%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 485 (78 bytes) 
  0.14%    0.04%         C2, level 4  com.google.re2j.Machine::init, version 528 (40 bytes) 
  0.12%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 544 (28 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 544 (23 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.06%    0.04%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.05%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 540 (94 bytes) 
  2.35%    2.17%  <...other 456 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 62.12%   63.24%         C2, level 4  com.google.re2j.Machine::match, version 540 
 17.74%   19.91%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 504 
 12.98%   12.31%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 496 
  1.78%    1.62%   [kernel.kallsyms]  [unknown] 
  1.67%    0.88%         C1, level 3  jdk.internal.org.objectweb.asm.MethodWriter::visitVarInsn, version 183 
  1.34%    0.31%         C2, level 4  com.google.re2j.Machine::init, version 528 
  0.97%    0.51%         C2, level 4  com.google.re2j.Inst$MatchInst::add, version 485 
  0.36%    0.20%         C2, level 4  com.google.re2j.Pattern::find, version 544 
  0.05%    0.05%      hsdis-amd64.so  [unknown] 
  0.05%    0.02%         C2, level 4  java.util.Collections::shuffle, version 574 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 629 
  0.04%    0.01%              [vdso]  [unknown] 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.06%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
  0.02%    0.00%         interpreter  method entry point (kind = zerolocals)  
  0.02%    0.10%        libc-2.26.so  vfprintf 
  0.02%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.66%    0.42%  <...other 95 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 95.61%   96.50%         C2, level 4
  1.78%    1.62%   [kernel.kallsyms]
  1.67%    0.88%         C1, level 3
  0.51%    0.54%           libjvm.so
  0.14%    0.28%        libc-2.26.so
  0.10%    0.07%  libpthread-2.26.so
  0.06%    0.05%      hsdis-amd64.so
  0.05%    0.01%         interpreter
  0.04%    0.01%              [vdso]
  0.03%    0.02%        runtime stub
  0.00%               perf-13813.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  5883.122 ± 11.425  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
