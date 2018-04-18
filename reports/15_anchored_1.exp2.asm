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
# Warmup Iteration   1: 11882.390 ops/s
# Warmup Iteration   2: 20883.655 ops/s
# Warmup Iteration   3: 20933.070 ops/s
# Warmup Iteration   4: 20930.399 ops/s
# Warmup Iteration   5: 20955.374 ops/s
# Warmup Iteration   6: 20973.047 ops/s
# Warmup Iteration   7: 20511.937 ops/s
# Warmup Iteration   8: 21014.033 ops/s
# Warmup Iteration   9: 20936.478 ops/s
# Warmup Iteration  10: 21027.748 ops/s
# Warmup Iteration  11: 21029.783 ops/s
# Warmup Iteration  12: 21045.535 ops/s
# Warmup Iteration  13: 21046.518 ops/s
# Warmup Iteration  14: 21054.935 ops/s
# Warmup Iteration  15: 20984.895 ops/s
# Warmup Iteration  16: 16658.095 ops/s
# Warmup Iteration  17: 20819.717 ops/s
# Warmup Iteration  18: 20830.306 ops/s
# Warmup Iteration  19: 20828.410 ops/s
# Warmup Iteration  20: 20829.366 ops/s
Iteration   1: 20837.282 ops/s
Iteration   2: 17623.224 ops/s
Iteration   3: 20825.122 ops/s
Iteration   4: 20901.687 ops/s
Iteration   5: 20914.472 ops/s
Iteration   6: 20930.649 ops/s
Iteration   7: 20863.640 ops/s
Iteration   8: 20799.018 ops/s
Iteration   9: 20916.546 ops/s
Iteration  10: 20926.084 ops/s
Iteration  11: 20923.494 ops/s
Iteration  12: 20733.011 ops/s
Iteration  13: 20807.108 ops/s
Iteration  14: 20803.286 ops/s
Iteration  15: 20811.357 ops/s
Iteration  16: 20803.668 ops/s
Iteration  17: 20802.358 ops/s
Iteration  18: 20815.727 ops/s
Iteration  19: 20817.818 ops/s
Iteration  20: 21010.463 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20693.301 ±(99.9%) 630.132 ops/s [Average]
  (min, avg, max) = (17623.224, 20693.301, 21010.463), stdev = 725.660
  CI (99.9%): [20063.169, 21323.432] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 193096 total address lines.
Perf output processed (skipped 23.430 seconds):
 Column 1: cycles (20375 events)
 Column 2: instructions (20369 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 548 (1648 bytes) 

                                         0x00007f81c9239800: vmovd  %r9d,%xmm4
                                         0x00007f81c9239805: mov    0xc(%r12,%r9,8),%r9d  ;*getfield cond
                                                                                       ; - com.google.re2j.Machine::match@4 (line 182)
                                                                                       ; implicit exception: dispatches to 0x00007f81c923af95
                                         0x00007f81c923980a: cmp    $0xffffffff,%r9d
                                         0x00007f81c923980e: je     0x00007f81c923ab4d  ;*if_icmpne
                                                                                       ; - com.google.re2j.Machine::match@12 (line 183)
                                         0x00007f81c9239814: cmp    $0x1,%r11d
                                         0x00007f81c9239818: je     0x00007f81c923ab75  ;*if_icmpeq
                                                                                       ; - com.google.re2j.Machine::match@19 (line 186)
  0.00%                                  0x00007f81c923981e: cmp    $0x2,%r11d
                                         0x00007f81c9239822: je     0x00007f81c923ab9d  ;*if_icmpne
                                                                                       ; - com.google.re2j.Machine::match@24 (line 186)
  0.00%                                  0x00007f81c9239828: mov    %r12b,0x10(%rsi)   ;*putfield matched
                                                                                       ; - com.google.re2j.Machine::match@35 (line 190)
                                         0x00007f81c923982c: mov    0x28(%rsi),%edx    ;*getfield matchcap
                                                                                       ; - com.google.re2j.Machine::match@39 (line 191)
                                         0x00007f81c923982f: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                                                                                       ; - java.util.Arrays::fill@3 (line 2881)
                                                                                       ; - com.google.re2j.Machine::match@43 (line 191)
                                                                                       ; implicit exception: dispatches to 0x00007f81c923afa5
                                         0x00007f81c9239834: test   %ebp,%ebp
                                         0x00007f81c9239836: jg     0x00007f81c923abc5  ;*if_icmpge
                                                                                       ; - java.util.Arrays::fill@7 (line 2881)
                                                                                       ; - com.google.re2j.Machine::match@43 (line 191)
  0.00%                                  0x00007f81c923983c: mov    0x8(%r8),%ebx      ; implicit exception: dispatches to 0x00007f81c923afb5
                                         0x00007f81c9239840: mov    0x20(%rsi),%r13d   ;*getfield q1
                                                                                       ; - com.google.re2j.Machine::match@53 (line 192)
                                         0x00007f81c9239844: mov    0x1c(%rsi),%ecx    ;*getfield q0
                                                                                       ; - com.google.re2j.Machine::match@47 (line 192)
  0.00%                                  0x00007f81c9239847: cmp    $0xf8019b8e,%ebx   ;   {metadata(&apos;com/google/re2j/MachineInput$UTF16Input&apos;)}
                                         0x00007f81c923984d: jne    0x00007f81c923a9f1
           0.00%                         0x00007f81c9239853: mov    %r8,%rdi           ;*invokevirtual step
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c9239856: mov    0xc(%rdi),%r14d    ;*getfield start
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c923985a: mov    0x10(%rdi),%esi    ;*getfield end
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
           0.00%                         0x00007f81c923985d: vmovd  %xmm0,%r8d
                                         0x00007f81c9239862: add    %r14d,%r8d         ;*iadd
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c9239865: cmp    %esi,%r8d
                                         0x00007f81c9239868: jge    0x00007f81c923a8fd  ;*if_icmpge
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c923986e: mov    0x14(%rdi),%ebp    ;*getfield str
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c9239871: mov    0x8(%r12,%rbp,8),%eax  ; implicit exception: dispatches to 0x00007f81c923afc9
  0.00%                                  0x00007f81c9239876: cmp    $0xf80002da,%eax   ;   {metadata(&apos;java/lang/String&apos;)}
                                         0x00007f81c923987c: jne    0x00007f81c923aa21
                                         0x00007f81c9239882: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c9239886: test   %r8d,%r8d
                                         0x00007f81c9239889: jl     0x00007f81c923aa95  ;*iflt
                                                                                       ; - java.lang.String::charAt@1 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                  0x00007f81c923988f: vmovd  %edx,%xmm1
                                         0x00007f81c9239893: mov    0xc(%rbx),%edx     ;*getfield value
                                                                                       ; - java.lang.String::charAt@6 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c9239896: mov    0xc(%r12,%rdx,8),%eax  ;*arraylength
                                                                                       ; - java.lang.String::charAt@9 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                                                                       ; implicit exception: dispatches to 0x00007f81c923afdd
  0.00%    0.01%                         0x00007f81c923989b: cmp    %eax,%r8d
                                         0x00007f81c923989e: jge    0x00007f81c923abf5  ;*if_icmplt
                                                                                       ; - java.lang.String::charAt@10 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%    0.01%                         0x00007f81c92398a4: cmp    %eax,%r8d
                                         0x00007f81c92398a7: jae    0x00007f81c923a969
  0.00%                                  0x00007f81c92398ad: mov    %rdi,0x70(%rsp)
                                         0x00007f81c92398b2: mov    %ecx,0x2c(%rsp)
                                         0x00007f81c92398b6: mov    %r9d,0x68(%rsp)
                                         0x00007f81c92398bb: mov    %r11d,%edi
  0.00%                                  0x00007f81c92398be: mov    %r10,0x60(%rsp)
                                         0x00007f81c92398c3: lea    (%r12,%rdx,8),%r11
                                         0x00007f81c92398c7: movzwl 0x10(%r11,%r8,2),%r10d  ;*caload
                                                                                       ; - java.lang.String::charAt@27 (line 660)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c92398cd: cmp    $0xd800,%r10d
                                         0x00007f81c92398d4: jge    0x00007f81c923ac39  ;*if_icmplt
                                                                                       ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                       ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
  0.00%                                  0x00007f81c92398da: shl    $0x3,%r10d         ;*ishl
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c92398de: mov    %r10d,%r9d
                                         0x00007f81c92398e1: and    $0x7,%r9d
                                         0x00007f81c92398e5: or     $0x1,%r10d
  0.01%    0.01%                         0x00007f81c92398e9: mov    %r10d,%r8d
                                         0x00007f81c92398ec: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@60 (line 193)
                                         0x00007f81c92398f0: mov    %r9d,0x20(%rsp)
                                         0x00007f81c92398f5: sar    $0x3,%r10d         ;*ishr
                                                                                       ; - com.google.re2j.Machine::match@68 (line 194)
  0.01%                                  0x00007f81c92398f9: vmovd  %r10d,%xmm2
                                         0x00007f81c92398fe: mov    %r8d,%r10d
                                         0x00007f81c9239901: cmp    $0xfffffff8,%r10d
                                         0x00007f81c9239905: je     0x00007f81c923a90c  ;*if_icmpeq
                                                                                       ; - com.google.re2j.Machine::match@88 (line 198)
                                         0x00007f81c923990b: vmovd  %xmm0,%r9d
           0.00%                         0x00007f81c9239910: add    0x20(%rsp),%r9d
  0.01%    0.03%                         0x00007f81c9239915: add    %r14d,%r9d         ;*iadd
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.00%                         0x00007f81c9239918: cmp    %esi,%r9d
                                         0x00007f81c923991b: jge    0x00007f81c9239f94  ;*if_icmpge
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.01%                         0x00007f81c9239921: test   %r9d,%r9d
                                         0x00007f81c9239924: jl     0x00007f81c923ab0d  ;*iflt
                                                                                       ; - java.lang.String::charAt@1 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%                                  0x00007f81c923992a: cmp    %eax,%r9d
                                         0x00007f81c923992d: jge    0x00007f81c923ac81  ;*if_icmplt
                                                                                       ; - java.lang.String::charAt@10 (line 657)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.01%                         0x00007f81c9239933: cmp    %eax,%r9d
                                         0x00007f81c9239936: jae    0x00007f81c923a9ad
  0.00%                                  0x00007f81c923993c: movzwl 0x10(%r11,%r9,2),%r8d  ;*caload
                                                                                       ; - java.lang.String::charAt@27 (line 660)
                                                                                       ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.02%                                  0x00007f81c9239942: cmp    $0xd800,%r8d
                                         0x00007f81c9239949: jge    0x00007f81c923acc5  ;*if_icmplt
                                                                                       ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                                                                                       ; - java.lang.Character::codePointAt@9 (line 4867)
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%                         0x00007f81c923994f: shl    $0x3,%r8d          ;*ishl
                                                                                       ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
                                         0x00007f81c9239953: mov    %r8d,%r9d
                                         0x00007f81c9239956: and    $0x7,%r9d
                                         0x00007f81c923995a: or     $0x1,%r8d
                                         0x00007f81c923995e: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@96 (line 199)
  0.00%    0.01%                         0x00007f81c9239962: sar    $0x3,%r8d          ;*iand
                                                                                       ; - com.google.re2j.Machine::match@111 (line 201)
                                         0x00007f81c9239966: vmovd  %xmm0,%r11d
                                         0x00007f81c923996b: test   %r11d,%r11d
                                         0x00007f81c923996e: jne    0x00007f81c923aad5  ;*ifne
                                                                                       ; - com.google.re2j.Machine::match@115 (line 204)
                                         0x00007f81c9239974: vmovd  %xmm2,%ecx
  0.01%                                  0x00007f81c9239978: test   %ecx,%ecx
                                         0x00007f81c923997a: jl     0x00007f81c9239f89  ;*ifge
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f81c9239980: mov    $0x5,%r10d         ;*iload_1
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f81c9239986: cmp    $0xa,%ecx
                                         0x00007f81c9239989: je     0x00007f81c9239fa2  ;*iload_0
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
                                         0x00007f81c923998f: mov    %ecx,%ebx
  0.00%    0.00%                         0x00007f81c9239991: add    $0xffffffbf,%ebx
                                         0x00007f81c9239994: cmp    $0x1a,%ebx
                  ╭                      0x00007f81c9239997: jb     0x00007f81c92399aa  ;*if_icmple
                  │                                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                  │                      0x00007f81c9239999: mov    %ecx,%r11d
                  │                      0x00007f81c923999c: add    $0xffffff9f,%r11d
                  │                      0x00007f81c92399a0: cmp    $0x1a,%r11d
                  │                      0x00007f81c92399a4: jae    0x00007f81c9239fab  ;*iconst_1
                  │                                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                    ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                    ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                      0x00007f81c92399aa: or     $0x10,%r10d        ;*iload_2
                                                                                       ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                       ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                  0x00007f81c92399ae: mov    %edi,%r11d
                                         0x00007f81c92399b1: test   %r11d,%r11d
                                         0x00007f81c92399b4: jne    0x00007f81c923aa5d  ;*aload
                                                                                       ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.00%                         0x00007f81c92399ba: mov    %r9d,0x34(%rsp)
  0.00%    0.01%                         0x00007f81c92399bf: mov    %r8d,0x28(%rsp)
  0.00%    0.01%                         0x00007f81c92399c4: mov    %ecx,0x24(%rsp)
                                         0x00007f81c92399c8: mov    %r11d,0x30(%rsp)
  0.02%                                  0x00007f81c92399cd: mov    0x68(%rsp),%r8d
                                         0x00007f81c92399d2: and    $0x4,%r8d          ;*iand
                                                                                       ; - com.google.re2j.Machine::match@147 (line 212)
                                         0x00007f81c92399d6: mov    %r8d,0x38(%rsp)
                                         0x00007f81c92399db: mov    %r13,%r11
  0.00%    0.00%                         0x00007f81c92399de: shl    $0x3,%r11          ;*getfield q1
                                                                                       ; - com.google.re2j.Machine::match@53 (line 192)
                                         0x00007f81c92399e2: mov    %r11,0x50(%rsp)
  0.00%                                  0x00007f81c92399e7: xor    %eax,%eax
                                         0x00007f81c92399e9: xor    %r8d,%r8d
  0.00%                                  0x00007f81c92399ec: mov    %r8d,0x3c(%rsp)
                   ╭                     0x00007f81c92399f1: jmpq   0x00007f81c9239d28
  0.25%    0.24%   │  ↗↗↗                0x00007f81c92399f6: mov    0x2c(%r12,%r11,8),%ebp  ;*getfield outInst
                   │  │││                                                              ; - com.google.re2j.Machine::step@191 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.19%   │  │││                0x00007f81c92399fb: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f81c923af4d
  0.19%    0.15%   │  │││                0x00007f81c9239a00: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │  │││                0x00007f81c9239a07: jne    0x00007f81c923a6dd
  0.08%    0.14%   │  │││                0x00007f81c9239a0d: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
           0.00%   │  │││                0x00007f81c9239a11: vmovq  %r11,%xmm1
  0.03%    0.01%   │  │││                0x00007f81c9239a16: mov    0x18(%r11),%r11d   ;*getfield pc
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.03%   │  │││                0x00007f81c9239a1a: vmovd  %r11d,%xmm2
  0.13%    0.12%   │  │││                0x00007f81c9239a1f: mov    0x50(%rsp),%r11
  0.02%    0.01%   │  │││                0x00007f81c9239a24: mov    0x10(%r11),%r11    ;*getfield pcsl
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
                   │  │││                                                              ; implicit exception: dispatches to 0x00007f81c923af69
  0.00%    0.02%   │  │││                0x00007f81c9239a28: vmovd  %xmm2,%ecx
  0.11%    0.09%   │  │││                0x00007f81c9239a2c: cmp    $0x40,%ecx
                   │  │││                0x00007f81c9239a2f: jg     0x00007f81c923a7a9  ;*if_icmpgt
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.15%   │  │││                0x00007f81c9239a35: mov    $0x1,%edi
  0.00%    0.01%   │  │││                0x00007f81c9239a3a: shl    %cl,%rdi           ;*lshl
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.29%    0.34%   │  │││                0x00007f81c9239a3d: mov    %r11,%rcx
                   │  │││                0x00007f81c9239a40: and    %rdi,%rcx          ;*land
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%            │  │││                0x00007f81c9239a43: test   %rcx,%rcx
                   │  │││                0x00007f81c9239a46: jne    0x00007f81c923a819  ;*ifeq
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.18%    0.14%   │  │││                0x00007f81c9239a4c: vmovd  %xmm2,%ecx
  0.01%    0.01%   │  │││                0x00007f81c9239a50: cmp    $0x40,%ecx
                   │  │││                0x00007f81c9239a53: jge    0x00007f81c923a889  ;*if_icmpge
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.09%   │  │││                0x00007f81c9239a59: mov    0x50(%rsp),%rcx
           0.00%   │  │││                0x00007f81c9239a5e: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.04%   │  │││                0x00007f81c9239a62: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.01%   │  │││                0x00007f81c9239a65: vmovd  %ecx,%xmm3
  0.12%    0.09%   │  │││                0x00007f81c9239a69: mov    0x50(%rsp),%rcx
                   │  │││                0x00007f81c9239a6e: mov    0xc(%rcx),%ebp     ;*getfield size
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.06%   │  │││                0x00007f81c9239a71: or     %r11,%rdi
  0.01%    0.02%   │  │││                0x00007f81c9239a74: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.13%   │  │││                0x00007f81c9239a78: mov    %ebp,%ecx
  0.00%    0.00%   │  │││                0x00007f81c9239a7a: inc    %ecx
  0.04%    0.02%   │  │││                0x00007f81c9239a7c: mov    0x50(%rsp),%r11
                   │  │││                0x00007f81c9239a81: mov    %ecx,0xc(%r11)     ;*putfield size
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.13%   │  │││                0x00007f81c9239a85: vmovd  %xmm3,%r11d
           0.00%   │  │││                0x00007f81c9239a8a: mov    0xc(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f81c923af7d
  0.13%    0.08%   │  │││                0x00007f81c9239a8f: cmp    %r11d,%ebp
                   │  │││                0x00007f81c9239a92: jae    0x00007f81c923a669
  0.21%    0.18%   │  │││                0x00007f81c9239a98: vmovd  %xmm3,%r11d
  0.04%    0.04%   │  │││                0x00007f81c9239a9d: mov    0x8(%r12,%r11,8),%ecx
  0.00%    0.01%   │  │││                0x00007f81c9239aa2: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │  │││                0x00007f81c9239aa8: jne    0x00007f81c923a735  ;*aastore
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.03%   │  │││                0x00007f81c9239aae: shl    $0x3,%r11          ;*getfield denseThreadsInstructions
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.10%   │  │││                0x00007f81c9239ab2: lea    0x10(%r11,%rbp,4),%r11
  0.05%    0.02%   │  │││                0x00007f81c9239ab7: vmovq  %xmm1,%rcx
  0.00%            │  │││                0x00007f81c9239abc: mov    %rcx,%rdi
  0.06%    0.04%   │  │││                0x00007f81c9239abf: shr    $0x3,%rdi
  0.05%    0.08%   │  │││                0x00007f81c9239ac3: mov    %edi,(%r11)
  0.34%    0.35%   │  │││                0x00007f81c9239ac6: shr    $0x9,%r11
                   │  │││                0x00007f81c9239aca: movabs $0x7f81c51ff000,%rcx
  0.03%    0.02%   │  │││                0x00007f81c9239ad4: mov    %r12b,(%rcx,%r11,1)  ;*aastore
                   │  │││                                                              ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │  │││                                                              ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │  │││                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                   │  │││                                                              ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.20%   │╭ │││                0x00007f81c9239ad8: jmpq   0x00007f81c9239bdb
  0.38%    0.20%   ││ │││         ↗      0x00007f81c9239add: or     $0x20,%r10d        ;*iload_2
                   ││ │││         │                                                    ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││ │││         │                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.21%   ││ │││         │↗     0x00007f81c9239ae1: mov    0x60(%rsp),%r11
  0.08%    0.04%   ││ │││         ││     0x00007f81c9239ae6: mov    0x14(%r11),%r8d    ;*getfield re2
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::step@1 (line 280)
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.14%    0.13%   ││ │││         ││     0x00007f81c9239aea: movzbl 0x18(%r12,%r8,8),%r14d  ;*getfield longest
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::step@4 (line 280)
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
                   ││ │││         ││                                                   ; implicit exception: dispatches to 0x00007f81c923aee9
  0.51%    0.54%   ││ │││         ││     0x00007f81c9239af0: mov    0x2c(%rsp),%r11d
  0.25%    0.28%   ││ │││         ││     0x00007f81c9239af5: mov    0xc(%r12,%r11,8),%eax  ;*getfield size
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::step@10 (line 281)
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.06%   ││ │││         ││     0x00007f81c9239afa: mov    0x3c(%rsp),%r9d
  0.07%    0.04%   ││ │││         ││     0x00007f81c9239aff: add    0x20(%rsp),%r9d    ;*iadd
                   ││ │││         ││                                                   ; - com.google.re2j.Machine::match@340 (line 246)
  0.40%    0.48%   ││ │││         ││     0x00007f81c9239b04: test   %eax,%eax
                   ││╭│││         ││     0x00007f81c9239b06: jle    0x00007f81c9239be3  ;*if_icmpge
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@28 (line 283)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.26%    0.24%   ││││││         ││     0x00007f81c9239b0c: mov    0x70(%rsp),%r11
  0.04%    0.07%   ││││││         ││     0x00007f81c9239b11: mov    0x10(%r11),%r11d
  0.38%    0.39%   ││││││         ││     0x00007f81c9239b15: mov    0x60(%rsp),%r8
  0.29%    0.38%   ││││││         ││     0x00007f81c9239b1a: movzbl 0x11(%r8),%r8d     ;*getfield captures
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@16 (line 282)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.25%   ││││││         ││     0x00007f81c9239b1f: mov    0x3c(%rsp),%ebx
  0.05%    0.04%   ││││││         ││     0x00007f81c9239b23: mov    $0x1,%ecx
  0.14%    0.13%   ││││││         ││     0x00007f81c9239b28: xor    %esi,%esi
  0.33%    0.31%   ││││││         ││     0x00007f81c9239b2a: cmp    %r11d,%ebx
  0.31%    0.34%   ││││││         ││     0x00007f81c9239b2d: cmovne %esi,%ecx          ;*invokespecial step
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.32%   ││││││         ││     0x00007f81c9239b30: vmovd  %ecx,%xmm0
  0.47%    0.51%   ││││││         ││     0x00007f81c9239b34: test   %r8d,%r8d
                   ││││││         ││     0x00007f81c9239b37: jne    0x00007f81c923a2cd  ;*iload
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@31 (line 286)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.15%   ││││││         ││     0x00007f81c9239b3d: mov    0x2c(%rsp),%ecx
  0.02%    0.06%   ││││││         ││     0x00007f81c9239b41: mov    0x20(%r12,%rcx,8),%r11d  ;*getfield denseThreadsInstructions
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@86 (line 296)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.03%   ││││││         ││     0x00007f81c9239b46: mov    0xc(%r12,%r11,8),%ebx  ;*aaload
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@91 (line 296)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││││         ││                                                   ; implicit exception: dispatches to 0x00007f81c923a2cd
  0.51%    0.55%   ││││││         ││     0x00007f81c9239b4b: test   %ebx,%ebx
                   ││││││         ││     0x00007f81c9239b4d: jbe    0x00007f81c923a2cd
  0.17%    0.22%   ││││││         ││     0x00007f81c9239b53: mov    %eax,%edi
  0.04%    0.04%   ││││││         ││     0x00007f81c9239b55: dec    %edi
  0.02%    0.07%   ││││││         ││     0x00007f81c9239b57: cmp    %ebx,%edi
                   ││││││         ││     0x00007f81c9239b59: jae    0x00007f81c923a2cd
  0.43%    0.43%   ││││││         ││     0x00007f81c9239b5f: lea    (%r12,%r11,8),%rbx
  0.12%    0.17%   ││││││         ││     0x00007f81c9239b63: xor    %r8d,%r8d
  0.05%    0.08%   ││││││         ││     0x00007f81c9239b66: data16 nopw 0x0(%rax,%rax,1)  ;*iload
                   ││││││         ││                                                   ; - com.google.re2j.Machine::step@31 (line 286)
                   ││││││         ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.44%    1.58%   ││││││↗        ││     0x00007f81c9239b70: mov    0x10(%rbx,%r8,4),%r11d  ;*aaload
                   │││││││        ││                                                   ; - com.google.re2j.Machine::step@91 (line 296)
                   │││││││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.89%    1.02%   │││││││        ││     0x00007f81c9239b75: mov    0xc(%r12,%r11,8),%ecx  ;*getfield op
                   │││││││        ││                                                   ; - com.google.re2j.Machine::step@96 (line 298)
                   │││││││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││││        ││                                                   ; implicit exception: dispatches to 0x00007f81c923ae99
  1.43%    1.36%   │││││││        ││     0x00007f81c9239b7a: cmp    $0x6,%ecx
                   │││││││        ││     0x00007f81c9239b7d: je     0x00007f81c9239f3a  ;*if_icmpne
                   │││││││        ││                                                   ; - com.google.re2j.Machine::step@101 (line 298)
                   │││││││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.09%    1.17%   │││││││        ││     0x00007f81c9239b83: cmp    $0xa,%ecx
                   │││╰│││        ││     0x00007f81c9239b86: je     0x00007f81c92399f6  ;*if_icmpne
                   │││ │││        ││                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.34%    1.51%   │││ │││        ││     0x00007f81c9239b8c: cmp    $0xb,%ecx
                   │││ │││        ││     0x00007f81c9239b8f: je     0x00007f81c923a03d  ;*if_icmpne
                   │││ │││        ││                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.22%    1.29%   │││ │││        ││     0x00007f81c9239b95: cmp    $0x9,%ecx
                   │││ │││        ││     0x00007f81c9239b98: je     0x00007f81c923a0ad  ;*if_icmpne
                   │││ │││        ││                                                   ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.96%    0.95%   │││ │││        ││     0x00007f81c9239b9e: cmp    $0xc,%ecx
                   │││ │││        ││     0x00007f81c9239ba1: jne    0x00007f81c9239fcb  ;*if_icmpne
                   │││ │││        ││                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.54%    1.61%   │││ │││        ││     0x00007f81c9239ba7: mov    0x1c(%r12,%r11,8),%ecx  ;*getfield f0
                   │││ │││        ││                                                   ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││ │││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.98%    1.14%   │││ │││        ││     0x00007f81c9239bac: cmp    %edx,%ecx
                   │││ ╰││        ││     0x00007f81c9239bae: je     0x00007f81c92399f6  ;*if_icmpeq
                   │││  ││        ││                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   │││  ││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││  ││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.60%    1.85%   │││  ││        ││     0x00007f81c9239bb4: mov    0x20(%r12,%r11,8),%ecx  ;*getfield f1
                   │││  ││        ││                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   │││  ││        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││  ││        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.53%    0.67%   │││  ││        ││     0x00007f81c9239bb9: cmp    %edx,%ecx
                   │││  ╰│        ││     0x00007f81c9239bbb: je     0x00007f81c92399f6  ;*if_icmpeq
                   │││   │        ││                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.15%    1.06%   │││   │        ││     0x00007f81c9239bc1: mov    0x24(%r12,%r11,8),%ecx  ;*getfield f2
                   │││   │        ││                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.92%    0.90%   │││   │        ││     0x00007f81c9239bc6: cmp    %edx,%ecx
                   │││   │        ││     0x00007f81c9239bc8: je     0x00007f81c923a11d  ;*if_icmpeq
                   │││   │        ││                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  1.69%    1.88%   │││   │        ││     0x00007f81c9239bce: mov    0x28(%r12,%r11,8),%ecx  ;*getfield f3
                   │││   │        ││                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.55%    0.52%   │││   │        ││     0x00007f81c9239bd3: cmp    %edx,%ecx
                   │││   │        ││     0x00007f81c9239bd5: je     0x00007f81c923a189  ;*aload
                   │││   │        ││                                                   ; - com.google.re2j.Machine::step@211 (line 317)
                   │││   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.89%    0.90%   │↘│   │        ││     0x00007f81c9239bdb: inc    %r8d               ;*iinc
                   │ │   │        ││                                                   ; - com.google.re2j.Machine::step@222 (line 283)
                   │ │   │        ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.77%    0.87%   │ │   │        ││     0x00007f81c9239bde: cmp    %eax,%r8d
                   │ │   ╰        ││     0x00007f81c9239be1: jl     0x00007f81c9239b70  ;*if_icmpge
                   │ │            ││                                                   ; - com.google.re2j.Machine::step@28 (line 283)
                   │ │            ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.48%    0.47%   │ ↘            ││     0x00007f81c9239be3: mov    0x2c(%rsp),%r11d
  0.12%    0.17%   │              ││     0x00007f81c9239be8: movzbl 0x18(%r12,%r11,8),%r8d
  0.14%    0.24%   │              ││     0x00007f81c9239bee: test   %r8d,%r8d
                   │      ╭       ││     0x00007f81c9239bf1: jne    0x00007f81c9239c10  ;*ifeq
                   │      │       ││                                                   ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.40%   │      │       ││     0x00007f81c9239bf3: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield pcs
                   │      │       ││                                                   ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.20%    0.36%   │      │       ││     0x00007f81c9239bf8: movb   $0x1,0x18(%r12,%r11,8)  ;*putfield empty
                   │      │       ││                                                   ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.53%    0.71%   │      │       ││     0x00007f81c9239bfe: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                   │      │       ││                                                   ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.26%   │      │       ││     0x00007f81c9239c03: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                   │      │       ││                                                   ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.34%   │      │       ││     0x00007f81c9239c08: test   %ebp,%ebp
                   │      │       ││     0x00007f81c9239c0a: jne    0x00007f81c923a4b5  ;*invokevirtual clear
                   │      │       ││                                                   ; - com.google.re2j.Machine::step@229 (line 321)
                   │      │       ││                                                   ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.18%   │      ↘       ││     0x00007f81c9239c10: mov    0x60(%rsp),%r11
  0.27%    0.21%   │              ││     0x00007f81c9239c15: movzbl 0x10(%r11),%eax    ;*getfield matched
                   │              ││                                                   ; - com.google.re2j.Machine::match@378 (line 250)
  0.17%    0.25%   │              ││     0x00007f81c9239c1a: mov    0x60(%rsp),%r11
  0.27%    0.31%   │              ││     0x00007f81c9239c1f: movzbl 0x11(%r11),%ebp    ;*getfield captures
                   │              ││                                                   ; - com.google.re2j.Machine::match@371 (line 250)
  0.19%    0.32%   │              ││     0x00007f81c9239c24: mov    0x20(%rsp),%r8d
  0.21%    0.27%   │              ││     0x00007f81c9239c29: test   %r8d,%r8d
                   │       ╭      ││     0x00007f81c9239c2c: je     0x00007f81c9239e8e  ;*ifne
                   │       │      ││                                                   ; - com.google.re2j.Machine::match@364 (line 247)
  0.09%    0.14%   │       │      ││     0x00007f81c9239c32: test   %ebp,%ebp
                   │       │      ││     0x00007f81c9239c34: jne    0x00007f81c923a395  ;*ifne
                   │       │      ││                                                   ; - com.google.re2j.Machine::match@374 (line 250)
  0.29%    0.40%   │       │      ││     0x00007f81c9239c3a: test   %eax,%eax
                   │       │      ││     0x00007f81c9239c3c: jne    0x00007f81c923a475  ;*ifeq
                   │       │      ││                                                   ; - com.google.re2j.Machine::match@381 (line 250)
  0.09%    0.10%   │       │      ││     0x00007f81c9239c42: cmp    $0xffffffff,%r13d
                   │       │╭     ││     0x00007f81c9239c46: je     0x00007f81c9239e7a  ;*if_icmpeq
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@403 (line 258)
  0.22%    0.31%   │       ││     ││     0x00007f81c9239c4c: mov    %r13d,0x24(%rsp)
  0.11%    0.16%   │       ││     ││     0x00007f81c9239c51: mov    0x70(%rsp),%r11
  0.35%    0.50%   │       ││     ││     0x00007f81c9239c56: mov    0x10(%r11),%r11d   ;*getfield end
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.57%    0.68%   │       ││     ││     0x00007f81c9239c5a: mov    0x34(%rsp),%r8d
  0.21%    0.30%   │       ││     ││     0x00007f81c9239c5f: add    %r9d,%r8d
  0.06%    0.07%   │       ││     ││     0x00007f81c9239c62: mov    0x70(%rsp),%rcx
  0.20%    0.26%   │       ││     ││     0x00007f81c9239c67: add    0xc(%rcx),%r8d     ;*iadd
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  1.54%    2.22%   │       ││     ││     0x00007f81c9239c6b: cmp    %r11d,%r8d
                   │       ││     ││     0x00007f81c9239c6e: jge    0x00007f81c9239ecd  ;*if_icmpge
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.65%    0.89%   │       ││     ││     0x00007f81c9239c74: mov    0x14(%rcx),%ebp    ;*getfield str
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.06%    0.04%   │       ││     ││     0x00007f81c9239c77: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f81c923aef9
  1.93%    2.93%   │       ││     ││     0x00007f81c9239c7c: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │       ││     ││     0x00007f81c9239c83: jne    0x00007f81c923a291
  0.66%    0.75%   │       ││     ││     0x00007f81c9239c89: lea    (%r12,%rbp,8),%rcx  ;*invokeinterface charAt
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.08%   │       ││     ││     0x00007f81c9239c8d: test   %r8d,%r8d
                   │       ││     ││     0x00007f81c9239c90: jl     0x00007f81c923a3d9  ;*iflt
                   │       ││     ││                                                   ; - java.lang.String::charAt@1 (line 657)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │       ││     ││     0x00007f81c9239c96: mov    0xc(%rcx),%r11d    ;*getfield value
                   │       ││     ││                                                   ; - java.lang.String::charAt@6 (line 657)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.25%    0.39%   │       ││     ││     0x00007f81c9239c9a: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                   │       ││     ││                                                   ; - java.lang.String::charAt@9 (line 657)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
                   │       ││     ││                                                   ; implicit exception: dispatches to 0x00007f81c923af0d
  3.11%    3.49%   │       ││     ││     0x00007f81c9239c9f: cmp    %ebp,%r8d
                   │       ││     ││     0x00007f81c9239ca2: jge    0x00007f81c923a4ed  ;*if_icmplt
                   │       ││     ││                                                   ; - java.lang.String::charAt@10 (line 657)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.80%    0.88%   │       ││     ││     0x00007f81c9239ca8: cmp    %ebp,%r8d
                   │       ││     ││     0x00007f81c9239cab: jae    0x00007f81c923a24d
  0.05%    0.02%   │       ││     ││     0x00007f81c9239cb1: shl    $0x3,%r11
  0.02%    0.01%   │       ││     ││     0x00007f81c9239cb5: movzwl 0x10(%r11,%r8,2),%r11d  ;*caload
                   │       ││     ││                                                   ; - java.lang.String::charAt@27 (line 660)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@2 (line 4866)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.03%   │       ││     ││     0x00007f81c9239cbb: cmp    $0xd800,%r11d
                   │       ││     ││     0x00007f81c9239cc2: jge    0x00007f81c923a539  ;*if_icmplt
                   │       ││     ││                                                   ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │       ││     ││                                                   ; - java.lang.Character::codePointAt@9 (line 4867)
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.77%    0.71%   │       ││     ││     0x00007f81c9239cc8: shl    $0x3,%r11d         ;*ishl
                   │       ││     ││                                                   ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.06%   │       ││     ││     0x00007f81c9239ccc: mov    %r11d,%ebx
  0.01%    0.00%   │       ││     ││     0x00007f81c9239ccf: and    $0x7,%ebx
  0.62%    0.54%   │       ││     ││     0x00007f81c9239cd2: or     $0x1,%r11d
  0.06%    0.06%   │       ││     ││     0x00007f81c9239cd6: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@411 (line 259)
  0.72%    0.51%   │       ││     ││     0x00007f81c9239cd9: sar    $0x3,%r11d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1309}
                   │       ││     ││                                                   ;*goto
                   │       ││     ││                                                   ; - com.google.re2j.Machine::match@441 (line 266)
  0.04%    0.04%   │       ││     ││  ↗  0x00007f81c9239cdd: test   %eax,0x16b7231d(%rip)        # 0x00007f81dfdac000
                   │       ││     ││  │                                                ;*goto
                   │       ││     ││  │                                                ; - com.google.re2j.Machine::match@441 (line 266)
                   │       ││     ││  │                                                ;   {poll}
  0.03%    0.01%   │       ││     ││  │  0x00007f81c9239ce3: mov    0x60(%rsp),%r8
  0.03%    0.02%   │       ││     ││  │  0x00007f81c9239ce8: mov    0x14(%r8),%ecx     ;*getfield re2
                   │       ││     ││  │                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.68%    0.28%   │       ││     ││  │  0x00007f81c9239cec: vmovd  %ecx,%xmm4
  0.01%    0.02%   │       ││     ││  │  0x00007f81c9239cf0: mov    0x28(%r8),%ecx     ;*getfield matchcap
                   │       ││     ││  │                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.01%    0.00%   │       ││     ││  │  0x00007f81c9239cf4: mov    0x50(%rsp),%r8
           0.01%   │       ││     ││  │  0x00007f81c9239cf9: shr    $0x3,%r8
  0.70%    0.24%   │       ││     ││  │  0x00007f81c9239cfd: mov    %r8d,0x2c(%rsp)
  0.03%    0.01%   │       ││     ││  │  0x00007f81c9239d02: mov    0x34(%rsp),%r8d
                   │       ││     ││  │  0x00007f81c9239d07: mov    %r8d,0x20(%rsp)
  0.01%    0.00%   │       ││     ││  │  0x00007f81c9239d0c: mov    %r9d,0x3c(%rsp)
  0.51%    0.32%   │       ││     ││  │  0x00007f81c9239d11: mov    %ebx,0x34(%rsp)
  0.02%    0.03%   │       ││     ││  │  0x00007f81c9239d15: mov    %r11d,0x28(%rsp)
  0.00%    0.01%   │       ││     ││  │  0x00007f81c9239d1a: mov    0x10(%rsp),%r11
  0.05%    0.02%   │       ││     ││  │  0x00007f81c9239d1f: mov    %r11,0x50(%rsp)
  0.61%    0.46%   │       ││     ││  │  0x00007f81c9239d24: vmovd  %ecx,%xmm1         ;*aload
                   │       ││     ││  │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.01%   ↘       ││     ││  │  0x00007f81c9239d28: mov    0x2c(%rsp),%r8d
  0.01%                    ││     ││  │  0x00007f81c9239d2d: movzbl 0x18(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f81c923aea9
  0.09%    0.07%           ││     ││  │  0x00007f81c9239d33: test   %r11d,%r11d
                           ││╭    ││  │  0x00007f81c9239d36: je     0x00007f81c9239d6a  ;*ifeq
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.63%    0.13%           │││    ││  │  0x00007f81c9239d38: mov    0x38(%rsp),%r11d
  0.01%    0.00%           │││    ││  │  0x00007f81c9239d3d: test   %r11d,%r11d
  0.00%                    │││    ││  │  0x00007f81c9239d40: jne    0x00007f81c923a5d1  ;*ifeq
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.03%    0.00%           │││    ││  │  0x00007f81c9239d46: test   %eax,%eax
                           │││    ││  │  0x00007f81c9239d48: jne    0x00007f81c923a61d  ;*ifeq
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.55%    0.22%           │││    ││  │  0x00007f81c9239d4e: vmovd  %xmm4,%r11d
  0.02%    0.00%           │││    ││  │  0x00007f81c9239d53: mov    0x24(%r12,%r11,8),%r8d  ;*getfield prefix
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@172 (line 220)
                           │││    ││  │                                                ; implicit exception: dispatches to 0x00007f81c923af1d
  0.00%                    │││    ││  │  0x00007f81c9239d58: mov    0xc(%r12,%r8,8),%r11d  ;*getfield value
                           │││    ││  │                                                ; - java.lang.String::isEmpty@1 (line 635)
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                           │││    ││  │                                                ; implicit exception: dispatches to 0x00007f81c923af2d
  0.02%    0.01%           │││    ││  │  0x00007f81c9239d5d: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                           │││    ││  │                                                ; - java.lang.String::isEmpty@4 (line 635)
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@175 (line 220)
                           │││    ││  │                                                ; implicit exception: dispatches to 0x00007f81c923af3d
  0.79%    0.45%           │││    ││  │  0x00007f81c9239d62: test   %ebp,%ebp
                           │││    ││  │  0x00007f81c9239d64: jne    0x00007f81c923a589  ;*iload_3
                           │││    ││  │                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.24%    0.12%           ││↘    ││  │  0x00007f81c9239d6a: test   %eax,%eax
                           ││     ││  │  0x00007f81c9239d6c: jne    0x00007f81c923a345  ;*ifne
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.02%    0.00%           ││     ││  │  0x00007f81c9239d72: mov    0x60(%rsp),%r11
  0.02%                    ││     ││  │  0x00007f81c9239d77: movzbl 0x11(%r11),%r9d    ;*getfield captures
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@283 (line 240)
  0.49%    0.22%           ││     ││  │  0x00007f81c9239d7c: test   %r9d,%r9d
                           ││     ││  │  0x00007f81c9239d7f: jne    0x00007f81c923a425  ;*ifeq
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.20%    0.14%           ││     ││  │  0x00007f81c9239d85: mov    0x18(%r11),%r11d   ;*getfield prog
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.02%    0.01%           ││     ││  │  0x00007f81c9239d89: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@300 (line 243)
                           ││     ││  │                                                ; implicit exception: dispatches to 0x00007f81c923aeb9
  0.01%    0.03%           ││     ││  │  0x00007f81c9239d8e: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f81c923aec9
  0.52%    0.50%           ││     ││  │  0x00007f81c9239d93: cmp    $0xf8019a09,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                           ││     ││  │  0x00007f81c9239d9a: jne    0x00007f81c923a1f1  ;*ifeq
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.22%    0.13%           ││     ││  │  0x00007f81c9239da0: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%           ││     ││  │  0x00007f81c9239da4: mov    0x2c(%rsp),%r11d
  0.01%    0.00%           ││     ││  │  0x00007f81c9239da9: shl    $0x3,%r11          ;*aload
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.51%    0.04%           ││     ││  │  0x00007f81c9239dad: mov    %r11,0x10(%rsp)
  0.19%    0.09%           ││     ││  │  0x00007f81c9239db2: vmovd  %xmm1,%r8d
  0.03%    0.00%           ││     ││  │  0x00007f81c9239db7: shl    $0x3,%r8           ;*getfield matchcap
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@307 (line 243)
           0.01%           ││     ││  │  0x00007f81c9239dbb: mov    %r11,%rdx
  0.47%    0.09%           ││     ││  │  0x00007f81c9239dbe: mov    0x3c(%rsp),%ecx
  0.27%    0.17%           ││     ││  │  0x00007f81c9239dc2: xor    %edi,%edi
  0.00%    0.00%           ││     ││  │  0x00007f81c9239dc4: mov    0x60(%rsp),%r11
  0.02%                    ││     ││  │  0x00007f81c9239dc9: mov    %r11,(%rsp)
  0.50%    0.01%           ││     ││  │  0x00007f81c9239dcd: mov    %r9d,0x8(%rsp)
  0.25%    0.14%           ││     ││  │  0x00007f81c9239dd2: mov    %r10d,%r9d
  0.00%    0.01%           ││     ││  │  0x00007f81c9239dd5: xchg   %ax,%ax
  0.02%                    ││     ││  │  0x00007f81c9239dd7: callq  0x00007f81c9046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1564}
                           ││     ││  │                                                ;*invokevirtual add
                           ││     ││  │                                                ; - com.google.re2j.Machine::match@318 (line 243)
                           ││     ││  │                                                ;   {optimized virtual_call}
  0.23%    0.24%           ││     ││  │  0x00007f81c9239ddc: mov    0x24(%rsp),%edx
  0.08%    0.06%           ││     ││  │  0x00007f81c9239de0: test   %edx,%edx
                           ││ ╭   ││  │  0x00007f81c9239de2: jl     0x00007f81c9239e69  ;*ifge
                           ││ │   ││  │                                                ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                           ││ │   ││  │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.46%    0.43%           ││ │   ││  │  0x00007f81c9239de8: xor    %r10d,%r10d        ;*iload_0
                           ││ │   ││  │                                                ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                           ││ │   ││  │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.14%    0.16%           ││ │   ││↗ │  0x00007f81c9239deb: cmp    $0xa,%edx
                           ││ │   │││ │  0x00007f81c9239dee: je     0x00007f81c9239eda  ;*iload_1
                           ││ │   │││ │                                                ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                           ││ │   │││ │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.04%           ││ │   │││ │  0x00007f81c9239df4: mov    0x28(%rsp),%r13d
  0.03%    0.03%           ││ │   │││ │  0x00007f81c9239df9: test   %r13d,%r13d
                           ││ │╭  │││ │  0x00007f81c9239dfc: jl     0x00007f81c9239e74  ;*iload_1
                           ││ ││  │││ │                                                ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                           ││ ││  │││ │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.49%    0.53%           ││ ││  │││↗│  0x00007f81c9239dfe: cmp    $0xa,%r13d
                           ││ ││  │││││  0x00007f81c9239e02: je     0x00007f81c9239ee3  ;*iload_0
                           ││ ││  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                           ││ ││  │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.18%           ││ ││  │││││  0x00007f81c9239e08: mov    0x24(%rsp),%r8d
  0.07%    0.05%           ││ ││  │││││  0x00007f81c9239e0d: add    $0xffffffbf,%r8d
  0.01%    0.04%           ││ ││  │││││  0x00007f81c9239e11: cmp    $0x1a,%r8d
                           ││ ││╭ │││││  0x00007f81c9239e15: jb     0x00007f81c9239e2a  ;*if_icmple
                           ││ │││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           ││ │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           ││ │││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.47%           ││ │││ │││││  0x00007f81c9239e17: mov    0x24(%rsp),%r11d
  0.21%    0.18%           ││ │││ │││││  0x00007f81c9239e1c: add    $0xffffff9f,%r11d
  0.05%    0.04%           ││ │││ │││││  0x00007f81c9239e20: cmp    $0x1a,%r11d
                           ││ │││ │││││  0x00007f81c9239e24: jae    0x00007f81c9239eec  ;*iconst_1
                           ││ │││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           ││ │││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           ││ │││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.03%           ││ ││↘ │││││  0x00007f81c9239e2a: mov    $0x1,%ebp          ;*ireturn
                           ││ ││  │││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           ││ ││  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                           ││ ││  │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.47%    0.52%           ││ ││  │││││  0x00007f81c9239e2f: mov    0x28(%rsp),%r8d
  0.13%    0.21%           ││ ││  │││││  0x00007f81c9239e34: add    $0xffffffbf,%r8d
  0.10%    0.09%           ││ ││  │││││  0x00007f81c9239e38: cmp    $0x1a,%r8d
                           ││ ││ ╭│││││  0x00007f81c9239e3c: jb     0x00007f81c9239e51  ;*if_icmple
                           ││ ││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                           ││ ││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           ││ ││ ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.04%           ││ ││ ││││││  0x00007f81c9239e3e: mov    0x28(%rsp),%r11d
  0.40%    0.40%           ││ ││ ││││││  0x00007f81c9239e43: add    $0xffffff9f,%r11d
  0.17%    0.22%           ││ ││ ││││││  0x00007f81c9239e47: cmp    $0x1a,%r11d
                           ││ ││ ││││││  0x00007f81c9239e4b: jae    0x00007f81c9239f15  ;*iconst_1
                           ││ ││ ││││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                           ││ ││ ││││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           ││ ││ ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.11%           ││ ││ ↘│││││  0x00007f81c9239e51: mov    $0x1,%r8d          ;*ireturn
                           ││ ││  │││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                           ││ ││  │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                           ││ ││  │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.15%    0.15%           ││ ││  │││││  0x00007f81c9239e57: cmp    %r8d,%ebp
                           ││ ││  ╰││││  0x00007f81c9239e5a: je     0x00007f81c9239add  ;*if_icmpeq
                           ││ ││   ││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                           ││ ││   ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.05%           ││ ││   ││││  0x00007f81c9239e60: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                           ││ ││   ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.05%           ││ ││   ╰│││  0x00007f81c9239e64: jmpq   0x00007f81c9239ae1
  0.00%    0.00%           ││ ↘│    │││  0x00007f81c9239e69: mov    $0x5,%r10d
                           ││  │    ╰││  0x00007f81c9239e6f: jmpq   0x00007f81c9239deb
           0.00%           ││  ↘     ││  0x00007f81c9239e74: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                           ││        ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.00%           ││        ╰│  0x00007f81c9239e78: jmp    0x00007f81c9239dfe
  0.00%    0.01%           │↘         │  0x00007f81c9239e7a: mov    %r13d,0x24(%rsp)
  0.00%                    │          │  0x00007f81c9239e7f: mov    0x34(%rsp),%ebx
                           │          │  0x00007f81c9239e83: mov    $0xffffffff,%r11d
                           │          ╰  0x00007f81c9239e89: jmpq   0x00007f81c9239cdd
  0.00%    0.00%           ↘             0x00007f81c9239e8e: test   %ebp,%ebp
                                         0x00007f81c9239e90: jne    0x00007f81c923ac6d  ;*ifeq
                                                                                       ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                       ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                       ; - com.google.re2j.Machine::match@447 (line 267)
                                         0x00007f81c9239e96: mov    0x50(%rsp),%r10
                                         0x00007f81c9239e9b: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f81c923afed
                                         0x00007f81c9239ea0: test   %r11d,%r11d
                                         0x00007f81c9239ea3: jne    0x00007f81c9239ebe  ;*ifeq
                                                                                       ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                       ; - com.google.re2j.Machine::freeQueue@26 (line 156)
....................................................................................................
 59.46%   60.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 506 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f81c921d140: mov    0x8(%rsi),%r10d
                     0x00007f81c921d144: shl    $0x3,%r10
                     0x00007f81c921d148: cmp    %r10,%rax
                     0x00007f81c921d14b: jne    0x00007f81c9045e20  ;   {runtime_call}
                     0x00007f81c921d151: data16 xchg %ax,%ax
                     0x00007f81c921d154: nopl   0x0(%rax,%rax,1)
                     0x00007f81c921d15c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.71%    0.15%     0x00007f81c921d160: mov    %eax,-0x14000(%rsp)
  0.03%    0.02%     0x00007f81c921d167: push   %rbp
  0.55%    0.12%     0x00007f81c921d168: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.21%    0.11%     0x00007f81c921d16c: vmovq  %r8,%xmm5
  0.01%    0.00%     0x00007f81c921d171: vmovq  %rsi,%xmm4
  0.50%    0.76%     0x00007f81c921d176: mov    %ecx,%r14d
  0.26%    0.10%     0x00007f81c921d179: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.03%    0.04%     0x00007f81c921d17c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f81c921da99
  0.01%    0.02%     0x00007f81c921d180: cmp    $0x40,%ecx
                     0x00007f81c921d183: jg     0x00007f81c921d641  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.48%    0.44%     0x00007f81c921d189: mov    $0x1,%esi
  0.17%    0.14%     0x00007f81c921d18e: mov    $0x1,%r8d
  0.01%    0.02%     0x00007f81c921d194: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.71%    0.44%     0x00007f81c921d197: mov    %r11,%r10
  0.01%    0.02%     0x00007f81c921d19a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.00%    0.02%     0x00007f81c921d19d: xor    %r13d,%r13d
  0.56%    0.43%     0x00007f81c921d1a0: test   %r10,%r10
                     0x00007f81c921d1a3: jne    0x00007f81c921d675  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.24%    0.20%     0x00007f81c921d1a9: cmp    $0x40,%ecx
                     0x00007f81c921d1ac: jge    0x00007f81c921d6b5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.00%     0x00007f81c921d1b2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007f81c921d1b6: vmovq  %xmm4,%r10
  0.47%    0.56%     0x00007f81c921d1bb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.25%    0.13%     0x00007f81c921d1bf: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%              0x00007f81c921d1c2: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.00%     0x00007f81c921d1c6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f81c921daad
  0.49%    0.55%     0x00007f81c921d1cb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f81c921d1d2: jne    0x00007f81c921d525
  0.25%    0.22%     0x00007f81c921d1d8: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.03%     0x00007f81c921d1dc: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.00%     0x00007f81c921d1e0: cmp    $0x40,%ecx
                     0x00007f81c921d1e3: jg     0x00007f81c921d6e9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.50%    0.45%     0x00007f81c921d1e9: mov    $0x1,%r10d
  0.22%    0.21%     0x00007f81c921d1ef: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.47%    0.65%     0x00007f81c921d1f2: mov    %r8,%rbx
  0.16%    0.12%     0x00007f81c921d1f5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%     0x00007f81c921d1f8: test   %rbx,%rbx
                     0x00007f81c921d1fb: jne    0x00007f81c921d725  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%     0x00007f81c921d201: cmp    $0x40,%ecx
                     0x00007f81c921d204: jge    0x00007f81c921d76d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.48%    0.54%     0x00007f81c921d20a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.11%     0x00007f81c921d20d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.03%     0x00007f81c921d211: mov    0x88(%rsp),%ecx
  0.02%    0.01%     0x00007f81c921d218: test   %ecx,%ecx
                     0x00007f81c921d21a: jne    0x00007f81c921d7a9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.56%    0.63%     0x00007f81c921d220: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.22%    0.14%     0x00007f81c921d223: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.06%     0x00007f81c921d226: mov    %edi,%r10d
  0.00%    0.03%     0x00007f81c921d229: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.49%    0.82%     0x00007f81c921d22c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.24%    0.28%     0x00007f81c921d230: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f81c921dad5
  0.05%    0.06%     0x00007f81c921d235: cmp    %ebx,%edi
                  ╭  0x00007f81c921d237: jae    0x00007f81c921d4a8
  0.01%    0.03%  │  0x00007f81c921d23d: vmovd  %r10d,%xmm2
  0.46%    0.58%  │  0x00007f81c921d242: vmovd  %eax,%xmm0
  0.22%    0.29%  │  0x00007f81c921d246: mov    %edi,%eax
  0.03%    0.05%  │  0x00007f81c921d248: vmovd  %xmm0,%r10d
  0.01%    0.02%  │  0x00007f81c921d24d: mov    0x8(%r12,%r10,8),%r10d
  0.38%    0.64%  │  0x00007f81c921d252: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f81c921d259: jne    0x00007f81c921d555  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.28%  │  0x00007f81c921d25f: vmovq  %xmm4,%r10
  0.03%    0.01%  │  0x00007f81c921d264: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.02%    0.04%  │  0x00007f81c921d268: mov    %r11,%rcx
  0.44%    0.39%  │  0x00007f81c921d26b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.23%  │  0x00007f81c921d26f: vmovd  %xmm0,%r10d
  0.03%    0.02%  │  0x00007f81c921d274: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.02%  │  0x00007f81c921d278: lea    0x10(%r11,%rdi,4),%r10
  0.46%    0.51%  │  0x00007f81c921d27d: mov    %ecx,(%r10)
  0.32%    0.26%  │  0x00007f81c921d280: shr    $0x9,%r10
  0.04%    0.01%  │  0x00007f81c921d284: movabs $0x7f81c51ff000,%rdi
  0.03%    0.03%  │  0x00007f81c921d28e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.48%    0.43%  │  0x00007f81c921d292: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f81c921daf1
  0.18%    0.20%  │  0x00007f81c921d297: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f81c921d29e: jne    0x00007f81c921d595
  0.04%    0.01%  │  0x00007f81c921d2a4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.03%  │  0x00007f81c921d2a8: vmovq  %r10,%xmm1
  0.55%    0.22%  │  0x00007f81c921d2ad: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.51%    0.44%  │  0x00007f81c921d2b1: vmovd  %ecx,%xmm3
  0.10%    0.11%  │  0x00007f81c921d2b5: cmp    $0x40,%ecx
                  │  0x00007f81c921d2b8: jg     0x00007f81c921d7e5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.01%  │  0x00007f81c921d2be: mov    $0x1,%r10d
  0.30%    0.33%  │  0x00007f81c921d2c4: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.40%    0.41%  │  0x00007f81c921d2c7: mov    %r8,%rcx
  0.50%    0.40%  │  0x00007f81c921d2ca: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.22%  │  0x00007f81c921d2cd: test   %rcx,%rcx
                  │  0x00007f81c921d2d0: jne    0x00007f81c921d821  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.12%    0.21%  │  0x00007f81c921d2d6: vmovd  %xmm3,%ecx
  0.04%    0.02%  │  0x00007f81c921d2da: cmp    $0x40,%ecx
                  │  0x00007f81c921d2dd: jge    0x00007f81c921d865  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.57%    0.44%  │  0x00007f81c921d2e3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.22%    0.11%  │  0x00007f81c921d2e6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.04%  │  0x00007f81c921d2ea: mov    %eax,%ecx
  0.03%    0.01%  │  0x00007f81c921d2ec: add    $0x2,%ecx
  0.45%    0.36%  │  0x00007f81c921d2ef: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.14%    0.21%  │  0x00007f81c921d2f2: mov    %eax,%r10d
  0.03%    0.06%  │  0x00007f81c921d2f5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.03%  │  0x00007f81c921d2f9: cmp    %ebx,%r10d
                  │  0x00007f81c921d2fc: jae    0x00007f81c921d4e5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.42%    0.66%  │  0x00007f81c921d302: vmovd  %r9d,%xmm3
  0.17%    0.24%  │  0x00007f81c921d307: vmovq  %xmm4,%r9
  0.05%    0.10%  │  0x00007f81c921d30c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.02%    0.03%  │  0x00007f81c921d310: vmovq  %xmm1,%r9
  0.50%    0.53%  │  0x00007f81c921d315: mov    %r9,%rcx
  0.14%    0.17%  │  0x00007f81c921d318: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.05%  │  0x00007f81c921d31c: movslq %eax,%r9
           0.05%  │  0x00007f81c921d31f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.50%    0.60%  │  0x00007f81c921d323: mov    %r9,%rbx
  0.15%    0.22%  │  0x00007f81c921d326: add    $0x14,%rbx
  0.06%    0.04%  │  0x00007f81c921d32a: mov    %ecx,(%rbx)
  0.01%    0.02%  │  0x00007f81c921d32c: mov    %rbx,%rcx
  0.50%    0.39%  │  0x00007f81c921d32f: shr    $0x9,%rcx
  0.15%    0.05%  │  0x00007f81c921d333: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.08%    0.03%  │  0x00007f81c921d337: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f81c921db15
  0.04%    0.01%  │  0x00007f81c921d33c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f81c921d342: jne    0x00007f81c921d5c1
  0.49%    0.56%  │  0x00007f81c921d348: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.33%  │  0x00007f81c921d34c: vmovq  %rcx,%xmm0
  0.04%    0.06%  │  0x00007f81c921d351: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.02%  │  0x00007f81c921d354: vmovd  %ecx,%xmm2
  0.50%    0.56%  │  0x00007f81c921d358: cmp    $0x40,%ecx
                  │  0x00007f81c921d35b: jg     0x00007f81c921d8a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.14%    0.19%  │  0x00007f81c921d361: mov    $0x1,%ebx
  0.05%    0.04%  │  0x00007f81c921d366: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.58%    0.74%  │  0x00007f81c921d369: mov    %r8,%rcx
  0.03%    0.04%  │  0x00007f81c921d36c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.00%  │  0x00007f81c921d36f: test   %rcx,%rcx
                  │  0x00007f81c921d372: jne    0x00007f81c921d8dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.51%    0.59%  │  0x00007f81c921d378: vmovd  %xmm2,%ecx
  0.17%    0.19%  │  0x00007f81c921d37c: cmp    $0x40,%ecx
                  │  0x00007f81c921d37f: jge    0x00007f81c921d925  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.05%    0.04%  │  0x00007f81c921d385: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  │  0x00007f81c921d388: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.53%    0.43%  │  0x00007f81c921d38c: vmovq  %xmm4,%rcx
  0.16%    0.15%  │  0x00007f81c921d391: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.07%    0.05%  │  0x00007f81c921d394: mov    %r9,%rbx
  0.02%    0.02%  │  0x00007f81c921d397: add    $0x18,%rbx
  0.48%    0.45%  │  0x00007f81c921d39b: vmovq  %xmm0,%rcx
  0.16%    0.18%  │  0x00007f81c921d3a0: shr    $0x3,%rcx
  0.05%    0.04%  │  0x00007f81c921d3a4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.02%  │  0x00007f81c921d3a6: mov    %eax,%ecx
  0.45%    0.42%  │  0x00007f81c921d3a8: add    $0x3,%ecx
  0.19%    0.19%  │  0x00007f81c921d3ab: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.06%  │  0x00007f81c921d3ae: shr    $0x9,%rbx
  0.02%    0.02%  │  0x00007f81c921d3b2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.50%    0.44%  │  0x00007f81c921d3b6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f81c921db3d
  0.24%    0.16%  │  0x00007f81c921d3bb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f81c921d3c1: jne    0x00007f81c921d5ed
  0.06%    0.05%  │  0x00007f81c921d3c7: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.01%  │  0x00007f81c921d3cb: vmovq  %rcx,%xmm0
  0.46%    0.55%  │  0x00007f81c921d3d0: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.12%    0.26%  │  0x00007f81c921d3d3: vmovd  %ecx,%xmm1
  0.04%    0.08%  │  0x00007f81c921d3d7: cmp    $0x40,%ecx
                  │  0x00007f81c921d3da: jg     0x00007f81c921d961  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.00%    0.01%  │  0x00007f81c921d3e0: mov    $0x1,%ebx
  0.40%    0.45%  │  0x00007f81c921d3e5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.24%    0.32%  │  0x00007f81c921d3e8: mov    %r8,%rcx
  0.47%    0.25%  │  0x00007f81c921d3eb: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.10%  │  0x00007f81c921d3ee: test   %rcx,%rcx
                  │  0x00007f81c921d3f1: jne    0x00007f81c921d99d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.03%  │  0x00007f81c921d3f7: vmovd  %xmm1,%ecx
  0.04%    0.05%  │  0x00007f81c921d3fb: cmp    $0x40,%ecx
                  │  0x00007f81c921d3fe: jge    0x00007f81c921d9e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.51%    0.56%  │  0x00007f81c921d404: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.14%    0.23%  │  0x00007f81c921d408: vmovq  %xmm4,%r10
  0.06%    0.08%  │  0x00007f81c921d40d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.01%    0.05%  │  0x00007f81c921d411: mov    %r9,%rcx
  0.48%    0.63%  │  0x00007f81c921d414: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.17%    0.12%  │  0x00007f81c921d418: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.04%  │  0x00007f81c921d41b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.04%  │  0x00007f81c921d41f: vmovq  %xmm0,%r10
  0.49%    0.50%  │  0x00007f81c921d424: shr    $0x3,%r10
  0.16%    0.20%  │  0x00007f81c921d428: mov    %r10d,(%rcx)
  0.05%    0.06%  │  0x00007f81c921d42b: mov    %rcx,%r10
  0.02%    0.04%  │  0x00007f81c921d42e: shr    $0x9,%r10
  0.52%    0.50%  │  0x00007f81c921d432: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.19%    0.17%  │  0x00007f81c921d436: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f81c921db65
  0.06%    0.05%  │  0x00007f81c921d43b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f81c921d442: jne    0x00007f81c921d619
  0.03%    0.04%  │  0x00007f81c921d448: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.52%    0.40%  │  0x00007f81c921d44c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.17%  │  0x00007f81c921d450: cmp    $0x40,%ecx
                  │  0x00007f81c921d453: jg     0x00007f81c921da21  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.06%  │  0x00007f81c921d459: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.77%    0.72%  │  0x00007f81c921d45c: mov    %r8,%rbx
  0.03%    0.07%  │  0x00007f81c921d45f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.02%  │  0x00007f81c921d462: test   %rbx,%rbx
                  │  0x00007f81c921d465: jne    0x00007f81c921da45  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.42%    0.62%  │  0x00007f81c921d46b: cmp    $0x40,%ecx
                  │  0x00007f81c921d46e: jge    0x00007f81c921da75  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.11%    0.20%  │  0x00007f81c921d474: or     %rsi,%r8
  0.06%    0.05%  │  0x00007f81c921d477: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.04%  │  0x00007f81c921d47b: add    $0x20,%r9
  0.50%    0.63%  │  0x00007f81c921d47f: mov    %r10,%r11
  0.22%    0.17%  │  0x00007f81c921d482: shr    $0x3,%r11
  0.06%    0.08%  │  0x00007f81c921d486: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.03%  │  0x00007f81c921d489: mov    %r9,%r10
  0.49%    0.47%  │  0x00007f81c921d48c: add    $0x5,%eax
  0.14%    0.17%  │  0x00007f81c921d48f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.03%  │  0x00007f81c921d492: shr    $0x9,%r10
  0.03%    0.02%  │  0x00007f81c921d496: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.54%    0.28%  │  0x00007f81c921d49a: xor    %eax,%eax
  0.16%    0.22%  │  0x00007f81c921d49c: add    $0x70,%rsp
  0.03%    0.05%  │  0x00007f81c921d4a0: pop    %rbp
  0.02%    0.05%  │  0x00007f81c921d4a1: test   %eax,0x16b8eb59(%rip)        # 0x00007f81dfdac000
                  │                                                ;   {poll_return}
  0.50%    0.69%  │  0x00007f81c921d4a7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f81c921d4a8: mov    $0xffffffe4,%esi
                     0x00007f81c921d4ad: vmovq  %xmm4,%rbp
                     0x00007f81c921d4b2: mov    %rdx,(%rsp)
                     0x00007f81c921d4b6: mov    %r14d,0x88(%rsp)
                     0x00007f81c921d4be: vmovsd %xmm5,0x8(%rsp)
                     0x00007f81c921d4c4: mov    %r9d,0x10(%rsp)
....................................................................................................
 36.18%   36.47%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.46%   60.23%         C2, level 4  com.google.re2j.Machine::match, version 548 (1648 bytes) 
 36.18%   36.47%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 506 (839 bytes) 
  0.50%    0.52%         C2, level 4  com.google.re2j.Machine::match, version 548 (148 bytes) 
  0.41%    0.41%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.30%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 556 (205 bytes) 
  0.16%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 556 (12 bytes) 
  0.14%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 556 (33 bytes) 
  0.14%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 556 (0 bytes) 
  0.11%                  C2, level 4  com.google.re2j.RE2::match, version 556 (143 bytes) 
  0.10%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 556 (0 bytes) 
  0.09%            [kernel.kallsyms]  [unknown] (6 bytes) 
  0.09%    0.05%         C2, level 4  java.util.Collections::shuffle, version 563 (41 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.07%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.07%    0.01%         C2, level 4  java.util.Collections::shuffle, version 563 (99 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 556 (144 bytes) 
  0.05%    0.05%   [kernel.kallsyms]  [unknown] (41 bytes) 
  0.05%    0.01%              [vdso]  [unknown] (44 bytes) 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 597 (32 bytes) 
  1.84%    1.77%  <...other 406 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.99%   60.76%         C2, level 4  com.google.re2j.Machine::match, version 548 
 36.18%   36.47%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 506 
  1.55%    1.36%   [kernel.kallsyms]  [unknown] 
  1.14%    0.45%         C2, level 4  com.google.re2j.RE2::match, version 556 
  0.23%    0.08%         C2, level 4  java.util.Collections::shuffle, version 563 
  0.15%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 597 
  0.11%    0.05%              [vdso]  [unknown] 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 557 
  0.03%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.01%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.01%    0.01%        libc-2.26.so  __strchr_avx2 
  0.01%    0.00%           libjvm.so  _Z17is_error_reportedv 
  0.01%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.01%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.01%    0.01%        libc-2.26.so  _IO_fflush 
  0.36%    0.27%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 97.71%   97.81%         C2, level 4
  1.55%    1.36%   [kernel.kallsyms]
  0.34%    0.40%           libjvm.so
  0.16%    0.27%        libc-2.26.so
  0.11%    0.05%              [vdso]
  0.05%    0.03%      hsdis-amd64.so
  0.03%    0.06%  libpthread-2.26.so
  0.01%    0.00%         interpreter
  0.01%    0.01%        runtime stub
  0.00%                             
  0.00%               perf-15633.map
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  20693.301 ± 630.132  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
