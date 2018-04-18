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
# Warmup Iteration   1: 2962.481 ops/s
# Warmup Iteration   2: 8413.030 ops/s
# Warmup Iteration   3: 8415.227 ops/s
# Warmup Iteration   4: 8407.819 ops/s
# Warmup Iteration   5: 8382.765 ops/s
# Warmup Iteration   6: 8319.730 ops/s
# Warmup Iteration   7: 8419.606 ops/s
# Warmup Iteration   8: 8269.714 ops/s
# Warmup Iteration   9: 8038.615 ops/s
# Warmup Iteration  10: 8087.431 ops/s
# Warmup Iteration  11: 8223.837 ops/s
# Warmup Iteration  12: 8425.102 ops/s
# Warmup Iteration  13: 8432.659 ops/s
# Warmup Iteration  14: 8426.201 ops/s
# Warmup Iteration  15: 8430.197 ops/s
# Warmup Iteration  16: 8427.093 ops/s
# Warmup Iteration  17: 8224.999 ops/s
# Warmup Iteration  18: 8240.900 ops/s
# Warmup Iteration  19: 8242.025 ops/s
# Warmup Iteration  20: 8242.889 ops/s
Iteration   1: 8395.130 ops/s
Iteration   2: 8428.563 ops/s
Iteration   3: 8431.376 ops/s
Iteration   4: 8428.103 ops/s
Iteration   5: 8427.335 ops/s
Iteration   6: 8432.774 ops/s
Iteration   7: 8427.761 ops/s
Iteration   8: 8365.496 ops/s
Iteration   9: 8432.918 ops/s
Iteration  10: 8429.616 ops/s
Iteration  11: 8429.422 ops/s
Iteration  12: 8338.000 ops/s
Iteration  13: 8343.106 ops/s
Iteration  14: 8346.810 ops/s
Iteration  15: 8348.086 ops/s
Iteration  16: 8349.841 ops/s
Iteration  17: 8347.812 ops/s
Iteration  18: 8343.308 ops/s
Iteration  19: 8346.523 ops/s
Iteration  20: 8346.023 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  8386.900 ±(99.9%) 35.982 ops/s [Average]
  (min, avg, max) = (8338.000, 8386.900, 8432.918), stdev = 41.436
  CI (99.9%): [8350.918, 8422.882] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 197919 total address lines.
Perf output processed (skipped 23.317 seconds):
 Column 1: cycles (20376 events)
 Column 2: instructions (20360 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 544 (1459 bytes) 

                                0x00007fc51d2482ef: or     $0x10,%r9d         ;*invokeinterface charAt
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
                                0x00007fc51d2482f3: mov    0x3c(%rsp),%r10d
                                0x00007fc51d2482f8: test   %r10d,%r10d
                                0x00007fc51d2482fb: jne    0x00007fc51d249ce1  ;*putfield empty
                                                                              ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                              ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                              ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.01%                0x00007fc51d248301: mov    0x70(%rsp),%r11d
                                0x00007fc51d248306: and    $0x4,%r11d         ;*iflt
                                                                              ; - java.lang.String::charAt@1 (line 657)
                                                                              ; - java.lang.Character::codePointAt@2 (line 4866)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
           0.00%                0x00007fc51d24830a: mov    %r11d,0x30(%rsp)
                                0x00007fc51d24830f: mov    %rcx,%r10
  0.00%                         0x00007fc51d248312: shl    $0x3,%r10          ;*invokevirtual step
                                                                              ; - com.google.re2j.Machine::match@96 (line 199)
                                0x00007fc51d248316: mov    %r10,0x68(%rsp)
                                0x00007fc51d24831b: xor    %r10d,%r10d
                                0x00007fc51d24831e: xor    %eax,%eax
           0.00%  ╭             0x00007fc51d248320: jmpq   0x00007fc51d24848a  ;*invokestatic codePointAt
                  │                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │                                                           ; - com.google.re2j.Machine::match@249 (line 232)
  0.43%    0.45%  │             0x00007fc51d248325: mov    $0x1,%r10d
  0.26%    0.14%  │             0x00007fc51d24832b: jmpq   0x00007fc51d248954
  0.16%    0.17%  │             0x00007fc51d248330: mov    0x80(%rsp),%r11
  0.07%    0.09%  │             0x00007fc51d248338: mov    0xc(%rsp),%r10d
  0.27%    0.25%  │             0x00007fc51d24833d: mov    0x74(%rsp),%r9d
  0.10%    0.09%  │             0x00007fc51d248342: mov    0x54(%rsp),%ecx    ;*ifge
                  │                                                           ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                  │                                                           ; - com.google.re2j.Machine::match@326 (line 245)
  0.19%    0.18%  │         ↗   0x00007fc51d248346: movzbl 0x18(%r12,%r10,8),%ebx
  0.05%    0.03%  │         │   0x00007fc51d24834c: test   %ebx,%ebx
                  │╭        │   0x00007fc51d24834e: jne    0x00007fc51d24836d  ;*iinc
                  ││        │                                                 ; - java.lang.String::indexOf@158 (line 1769)
                  ││        │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  ││        │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││        │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││        │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.16%    0.20%  ││        │   0x00007fc51d248350: mov    %r12d,0xc(%r12,%r10,8)  ;*invokevirtual canCheckPrefix
                  ││        │                                                 ; - com.google.re2j.Machine::match@194 (line 222)
  0.11%    0.09%  ││        │   0x00007fc51d248355: mov    0x1c(%r12,%r10,8),%ebp
  0.19%    0.17%  ││        │   0x00007fc51d24835a: movb   $0x1,0x18(%r12,%r10,8)
  0.06%    0.07%  ││        │   0x00007fc51d248360: mov    %r12,0x10(%r12,%r10,8)
  0.20%    0.28%  ││        │   0x00007fc51d248365: test   %ebp,%ebp
                  ││        │   0x00007fc51d248367: jne    0x00007fc51d2495bd  ;*arraylength
                  ││        │                                                 ; - java.lang.String::indexOf@9 (line 1718)
                  ││        │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  ││        │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  ││        │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.09%    0.07%  │↘        │   0x00007fc51d24836d: movzbl 0x10(%r11),%eax    ;*if_icmpgt
                  │         │                                                 ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                  │         │                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │         │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.22%    0.25%  │         │   0x00007fc51d248372: mov    0x28(%rsp),%ebx
  0.07%    0.06%  │         │   0x00007fc51d248376: test   %ebx,%ebx
                  │         │   0x00007fc51d248378: je     0x00007fc51d248ad3  ;*aload
                  │         │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.17%    0.32%  │         │   0x00007fc51d24837e: test   %r8d,%r8d
                  │         │   0x00007fc51d248381: jne    0x00007fc51d2493bd
  0.10%    0.10%  │         │   0x00007fc51d248387: test   %eax,%eax
                  │         │   0x00007fc51d248389: jne    0x00007fc51d2494d9  ;*invokevirtual canCheckPrefix
                  │         │                                                 ; - com.google.re2j.Machine::match@194 (line 222)
  0.18%    0.19%  │         │   0x00007fc51d24838f: mov    0x78(%rsp),%rdx
  0.04%    0.05%  │         │   0x00007fc51d248394: mov    0x10(%rdx),%edi    ;*synchronization entry
                  │         │                                                 ; - java.lang.Character::codePointAt@-1 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.30%    0.27%  │         │   0x00007fc51d248397: mov    0xc(%rdx),%r8d     ;*invokevirtual isEmpty
                  │         │                                                 ; - com.google.re2j.Machine::match@138 (line 211)
  0.08%    0.13%  │         │   0x00007fc51d24839b: mov    %r8d,0x1c(%rsp)
  0.25%    0.16%  │         │   0x00007fc51d2483a0: mov    0x14(%rdx),%ebx    ;*aload_0
                  │         │                                                 ; - java.lang.String::indexOf@79 (line 1772)
                  │         │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │         │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.06%  │         │   0x00007fc51d2483a3: mov    0x24(%rsp),%r9d
  0.25%    0.26%  │         │   0x00007fc51d2483a8: cmp    $0xffffffff,%r9d
                  │         │   0x00007fc51d2483ac: je     0x00007fc51d248c1c  ;*invokevirtual step
                  │         │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.06%    0.10%  │         │   0x00007fc51d2483b2: mov    0x48(%rsp),%r8d
  0.14%    0.15%  │         │   0x00007fc51d2483b7: add    %ecx,%r8d
  0.07%    0.05%  │         │   0x00007fc51d2483ba: add    0x1c(%rsp),%r8d    ;*caload
                  │         │                                                 ; - java.lang.String::charAt@27 (line 660)
                  │         │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.46%    0.43%  │         │   0x00007fc51d2483bf: cmp    %edi,%r8d
                  │         │   0x00007fc51d2483c2: jge    0x00007fc51d248c2c  ;*invokevirtual indexOf
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │         │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.17%    0.28%  │         │   0x00007fc51d2483c8: mov    0x8(%r12,%rbx,8),%esi  ; implicit exception: dispatches to 0x00007fc51d24a751
  0.39%    0.37%  │         │   0x00007fc51d2483cd: cmp    $0xf80002da,%esi   ;   {metadata(&apos;java/lang/String&apos;)}
                  │         │   0x00007fc51d2483d3: jne    0x00007fc51d2492d9  ;*synchronization entry
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::canCheckPrefix@-1 (line 198)
                  │         │                                                 ; - com.google.re2j.Machine::match@194 (line 222)
  0.23%    0.21%  │         │   0x00007fc51d2483d9: lea    (%r12,%rbx,8),%r13  ;*caload
                  │         │                                                 ; - java.lang.String::charAt@27 (line 660)
                  │         │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.13%    0.09%  │         │   0x00007fc51d2483dd: test   %r8d,%r8d
                  │         │   0x00007fc51d2483e0: jl     0x00007fc51d2493fd  ;*synchronization entry
                  │         │                                                 ; - com.google.re2j.Machine::match@-1 (line 182)
  0.12%    0.15%  │         │   0x00007fc51d2483e6: mov    %r8d,%r14d
  0.12%    0.06%  │         │   0x00007fc51d2483e9: mov    %r10d,%r8d
  0.19%    0.16%  │         │   0x00007fc51d2483ec: mov    0xc(%r13),%r10d    ;*aload_0
                  │         │                                                 ; - java.lang.String::indexOf@79 (line 1772)
                  │         │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │         │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.24%  │         │   0x00007fc51d2483f0: mov    0xc(%r12,%r10,8),%ebp  ;*if_icmpgt
                  │         │                                                 ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                  │         │                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │         │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                  │         │                                                 ; implicit exception: dispatches to 0x00007fc51d24a765
  1.29%    1.73%  │         │   0x00007fc51d2483f5: cmp    %ebp,%r14d
                  │         │   0x00007fc51d2483f8: jge    0x00007fc51d2495e5
  0.47%    0.50%  │         │   0x00007fc51d2483fe: cmp    %ebp,%r14d
                  │         │   0x00007fc51d248401: jae    0x00007fc51d249299  ;*ifeq
                  │         │                                                 ; - com.google.re2j.Machine::match@197 (line 222)
  0.22%    0.22%  │         │   0x00007fc51d248407: shl    $0x3,%r10
  0.06%    0.02%  │         │   0x00007fc51d24840b: movzwl 0x10(%r10,%r14,2),%r10d  ;*caload
                  │         │                                                 ; - java.lang.String::charAt@27 (line 660)
                  │         │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.14%    0.15%  │         │   0x00007fc51d248411: cmp    $0xd800,%r10d
                  │         │   0x00007fc51d248418: jge    0x00007fc51d249621  ;*invokevirtual isEmpty
                  │         │                                                 ; - com.google.re2j.Machine::match@138 (line 211)
  0.50%    0.51%  │         │   0x00007fc51d24841e: shl    $0x3,%r10d         ;*if_icmplt
                  │         │                                                 ; - java.lang.String::charAt@10 (line 657)
                  │         │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.03%    0.06%  │         │   0x00007fc51d248422: mov    %r10d,%r8d
  0.02%    0.00%  │         │   0x00007fc51d248425: or     $0x1,%r8d
  0.44%    0.51%  │         │   0x00007fc51d248429: and    $0x7,%r10d
  0.11%    0.16%  │         │   0x00007fc51d24842d: sar    $0x3,%r8d          ;*ifeq
                  │         │                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │         │                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.44%    0.52%  │         │   0x00007fc51d248431: or     $0x1,%r10d         ;*getfield value
                  │         │                                                 ; - java.lang.String::indexOf@6 (line 1718)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │         │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.03%    0.01%  │         │   0x00007fc51d248435: vmovq  %r11,%xmm1
  0.00%           │         │   0x00007fc51d24843a: mov    %r9d,0x2c(%rsp)    ; OopMap{r11=Oop rbx=NarrowOop xmm1=Oop [16]=Oop [104]=Oop [120]=Oop off=863}
                  │         │                                                 ;*goto
                  │         │                                                 ; - com.google.re2j.Machine::match@441 (line 266)
  0.15%    0.13%  │         │   0x00007fc51d24843f: test   %eax,0x173f5bbb(%rip)        # 0x00007fc53463e000
                  │         │                                                 ;*aload
                  │         │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
                  │         │                                                 ;   {poll}
  0.32%    0.43%  │         │   0x00007fc51d248445: mov    0x14(%r11),%r13d   ;*getfield start
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │         │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.02%    0.01%  │         │   0x00007fc51d248449: mov    0x28(%r11),%r14d   ;*invokevirtual add
                  │         │                                                 ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.00%  │         │   0x00007fc51d24844d: mov    0x68(%rsp),%r11
  0.14%    0.17%  │         │   0x00007fc51d248452: mov    %r11,%r9
  0.38%    0.44%  │         │   0x00007fc51d248455: shr    $0x3,%r9           ;*iload
                  │         │                                                 ; - com.google.re2j.Machine::step@31 (line 286)
                  │         │                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.00%  │         │   0x00007fc51d248459: mov    %r9d,0x38(%rsp)
  0.00%           │         │   0x00007fc51d24845e: mov    0x48(%rsp),%r9d
  0.11%    0.12%  │         │   0x00007fc51d248463: mov    %r9d,0x28(%rsp)
  0.45%    0.47%  │         │   0x00007fc51d248468: vmovd  %r10d,%xmm2
  0.01%    0.01%  │         │   0x00007fc51d24846d: mov    0x60(%rsp),%r9d
  0.00%    0.00%  │         │   0x00007fc51d248472: mov    %ecx,%r10d
  0.12%    0.16%  │         │   0x00007fc51d248475: mov    0x10(%rsp),%r11
  0.46%    0.41%  │         │   0x00007fc51d24847a: mov    %r11,0x68(%rsp)
  0.01%    0.01%  │         │   0x00007fc51d24847f: mov    %r8d,%edx
  0.01%    0.01%  │         │   0x00007fc51d248482: mov    %edi,0xc(%rsp)
  0.16%    0.13%  │         │   0x00007fc51d248486: vmovd  %ebx,%xmm6         ;*invokeinterface charAt
                  │         │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                  │         │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │         │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.38%    0.44%  ↘         │   0x00007fc51d24848a: mov    0x38(%rsp),%r11d
  0.02%    0.02%            │   0x00007fc51d24848f: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007fc51d24a6fd
  0.02%    0.03%            │   0x00007fc51d248495: vmovq  %xmm1,%r8
  0.13%    0.18%            │   0x00007fc51d24849a: movzbl 0x11(%r8),%r8d     ;*ifne
                            │                                                 ; - com.google.re2j.Machine::match@115 (line 204)
  0.50%    0.41%            │   0x00007fc51d24849f: vmovd  %r8d,%xmm0
  0.00%    0.03%            │   0x00007fc51d2484a4: mov    0x38(%rsp),%r8d
  0.01%    0.00%            │   0x00007fc51d2484a9: shl    $0x3,%r8           ;*ifne
                            │                                                 ; - com.google.re2j.Machine::step@33 (line 286)
                            │                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.20%    0.14%            │   0x00007fc51d2484ad: mov    %r8,0x10(%rsp)
  0.39%    0.41%            │   0x00007fc51d2484b2: test   %r11d,%r11d
                    ╭       │   0x00007fc51d2484b5: je     0x00007fc51d248501  ;*if_icmpeq
                    │       │                                                 ; - java.lang.String::indexOf@85 (line 1772)
                    │       │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │       │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.00%    0.01%    │       │   0x00007fc51d2484b7: mov    0x30(%rsp),%r8d
  0.01%             │       │   0x00007fc51d2484bc: test   %r8d,%r8d
                    │       │   0x00007fc51d2484bf: jne    0x00007fc51d2498f9
  0.05%    0.04%    │       │   0x00007fc51d2484c5: test   %eax,%eax
                    │       │   0x00007fc51d2484c7: jne    0x00007fc51d249941  ;*goto
                    │       │                                                 ; - com.google.re2j.Machine::match@126 (line 205)
  0.20%    0.31%    │       │   0x00007fc51d2484cd: mov    0x24(%r12,%r13,8),%r11d  ;*aload
                    │       │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
                    │       │                                                 ; implicit exception: dispatches to 0x00007fc51d24a78d
  0.00%    0.01%    │       │   0x00007fc51d2484d2: mov    %r11d,%ecx
  0.01%    0.01%    │       │   0x00007fc51d2484d5: mov    0xc(%r12,%r11,8),%r11d  ;*getfield value
                    │       │                                                 ; - java.lang.String::indexOf@11 (line 1718)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │       │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                    │       │                                                 ; implicit exception: dispatches to 0x00007fc51d24a79d
  0.05%    0.06%    │       │   0x00007fc51d2484da: vmovd  %r11d,%xmm4
  0.18%    0.25%    │       │   0x00007fc51d2484df: mov    0xc(%r12,%r11,8),%r11d  ;*caload
                    │       │                                                 ; - java.lang.String::charAt@27 (line 660)
                    │       │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │       │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
                    │       │                                                 ; implicit exception: dispatches to 0x00007fc51d24a7ad
  0.01%    0.01%    │       │   0x00007fc51d2484e4: mov    %r11d,0x34(%rsp)
           0.00%    │       │   0x00007fc51d2484e9: test   %r11d,%r11d
                    │       │   0x00007fc51d2484ec: jne    0x00007fc51d248cfd  ;*if_icmpgt
                    │       │                                                 ; - java.lang.String::indexOf@76 (line 1772)
                    │       │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │       │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │       │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.05%    0.03%    │       │   0x00007fc51d2484f2: mov    %r10d,0x4c(%rsp)
  0.24%    0.27%    │       │   0x00007fc51d2484f7: mov    %edx,%r8d
  0.00%    0.00%    │       │   0x00007fc51d2484fa: vmovd  %xmm2,%r11d
  0.01%             │╭      │   0x00007fc51d2484ff: jmp    0x00007fc51d24850e
  0.02%    0.01%    ↘│      │   0x00007fc51d248501: mov    %r10d,0x4c(%rsp)
  0.03%    0.02%     │      │   0x00007fc51d248506: mov    %edx,%r8d
  0.11%    0.10%     │      │   0x00007fc51d248509: vmovd  %xmm2,%r11d        ;*synchronization entry
                     │      │                                                 ; - java.lang.String::isEmpty@-1 (line 635)
                     │      │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.31%    0.26%     ↘      │   0x00007fc51d24850e: test   %eax,%eax
                            │   0x00007fc51d248510: jne    0x00007fc51d249379
  0.20%    0.20%            │   0x00007fc51d248516: vmovd  %xmm0,%ebx
  0.03%    0.02%            │   0x00007fc51d24851a: test   %ebx,%ebx
                            │   0x00007fc51d24851c: jne    0x00007fc51d249495  ;*getfield prefix
                            │                                                 ; - com.google.re2j.Machine::match@172 (line 220)
  0.09%    0.12%            │   0x00007fc51d248522: vmovq  %xmm1,%rdi
  0.22%    0.33%            │   0x00007fc51d248527: mov    0x18(%rdi),%ecx    ;*iload_0
                            │                                                 ; - java.lang.Character::isHighSurrogate@0 (line 4729)
                            │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                            │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.19%    0.14%            │   0x00007fc51d24852a: mov    0x1c(%r12,%rcx,8),%ebp  ;*ifne
                            │                                                 ; - java.lang.String::indexOf@27 (line 1762)
                            │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
                            │                                                 ; implicit exception: dispatches to 0x00007fc51d24a70d
  0.27%    0.20%            │   0x00007fc51d24852f: mov    0x8(%r12,%rbp,8),%r10d  ;*if_icmplt
                            │                                                 ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                            │                                                 ; - java.lang.Character::codePointAt@9 (line 4867)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                            │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
                            │                                                 ; implicit exception: dispatches to 0x00007fc51d24a71d
  0.67%    0.62%            │   0x00007fc51d248534: lea    (%r12,%rbp,8),%rdx
  0.17%    0.14%            │   0x00007fc51d248538: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                      ╭     │   0x00007fc51d24853f: je     0x00007fc51d248617  ;*ifeq
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@4 (line 224)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.02%    0.02%      │     │   0x00007fc51d248545: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                      │     │   0x00007fc51d24854c: jne    0x00007fc51d249515
  0.02%               │     │   0x00007fc51d248552: mov    0x18(%rdx),%r10d   ;*ifge
                      │     │                                                 ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                      │     │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.07%    0.03%      │     │   0x00007fc51d248556: cmp    $0x40,%r10d
                      │     │   0x00007fc51d24855a: jg     0x00007fc51d2497e5  ;*invokevirtual isEmpty
                      │     │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.14%    0.04%      │     │   0x00007fc51d248560: mov    $0x1,%r9d
  0.01%    0.00%      │     │   0x00007fc51d248566: mov    %r10d,%ecx
  0.00%    0.00%      │     │   0x00007fc51d248569: shl    %cl,%r9
  0.34%    0.12%      │     │   0x00007fc51d24856c: mov    0x38(%rsp),%esi
           0.01%      │     │   0x00007fc51d248570: mov    0x10(%r12,%rsi,8),%rcx  ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@129 (line 1779)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.06%    0.02%      │     │   0x00007fc51d248575: mov    %r9,%rax
  0.12%    0.05%      │     │   0x00007fc51d248578: and    %rcx,%rax          ;*invokeinterface charAt
                      │     │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                      │     │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.04%    0.02%      │     │   0x00007fc51d24857b: test   %rax,%rax
                      │     │   0x00007fc51d24857e: jne    0x00007fc51d248fc3  ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@129 (line 1779)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
           0.01%      │     │   0x00007fc51d248584: mov    %r11d,0x48(%rsp)
  0.07%    0.03%      │     │   0x00007fc51d248589: mov    %r8d,0x34(%rsp)
  0.14%    0.15%      │     │   0x00007fc51d24858e: mov    0x38(%rsp),%r8d
  0.05%    0.06%      │     │   0x00007fc51d248593: vmovsd %xmm1,0x40(%rsp)
           0.01%      │     │   0x00007fc51d248599: xor    %ebp,%ebp          ;*invokestatic emptyOpContext
                      │     │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.05%    0.06%      │     │   0x00007fc51d24859b: test   %rax,%rax
                      │     │   0x00007fc51d24859e: jne    0x00007fc51d249835
  0.18%    0.19%      │     │   0x00007fc51d2485a4: cmp    $0x40,%r10d
                      │     │   0x00007fc51d2485a8: jge    0x00007fc51d249895
  0.04%    0.04%      │     │   0x00007fc51d2485ae: mov    %r12b,0x18(%r12,%r8,8)  ;*invokevirtual isEmpty
                      │     │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.01%               │     │   0x00007fc51d2485b3: mov    0xc(%r12,%r8,8),%edi  ;*if_icmpne
                      │     │                                                 ; - com.google.re2j.Utils::emptyOpContext@13 (line 176)
                      │     │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.09%    0.11%      │     │   0x00007fc51d2485b8: mov    0x20(%r12,%r8,8),%ebp  ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@36 (line 1766)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.23%    0.14%      │     │   0x00007fc51d2485bd: or     %rcx,%r9
  0.05%    0.01%      │     │   0x00007fc51d2485c0: mov    %r9,0x10(%r12,%r8,8)  ;*invokevirtual isEmpty
                      │     │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.00%    0.01%      │     │   0x00007fc51d2485c5: mov    %edi,%r11d
  0.07%    0.09%      │     │   0x00007fc51d2485c8: inc    %r11d
  0.16%    0.12%      │     │   0x00007fc51d2485cb: mov    %r11d,0xc(%r12,%r8,8)
  0.04%    0.02%      │     │   0x00007fc51d2485d0: mov    0xc(%r12,%rbp,8),%r11d  ;*invokestatic codePointAt
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                      │     │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
                      │     │                                                 ; implicit exception: dispatches to 0x00007fc51d24a775
  0.02%    0.01%      │     │   0x00007fc51d2485d5: cmp    %r11d,%edi
                      │     │   0x00007fc51d2485d8: jae    0x00007fc51d249439
  0.12%    0.12%      │     │   0x00007fc51d2485de: mov    0x8(%r12,%rbp,8),%r11d
  0.16%    0.16%      │     │   0x00007fc51d2485e3: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                      │     │   0x00007fc51d2485ea: jne    0x00007fc51d249561  ;*invokevirtual isEmpty
                      │     │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.04%    0.01%      │     │   0x00007fc51d2485f0: mov    %rdx,%r11
                      │     │   0x00007fc51d2485f3: shr    $0x3,%r11          ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@133 (line 1779)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.06%    0.10%      │     │   0x00007fc51d2485f7: lea    (%r12,%rbp,8),%r10  ;*ifne
                      │     │                                                 ; - com.google.re2j.Machine::step@33 (line 286)
                      │     │                                                 ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.17%      │     │   0x00007fc51d2485fb: lea    0x10(%r10,%rdi,4),%r10  ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@133 (line 1779)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.02%    0.04%      │     │   0x00007fc51d248600: mov    %r11d,(%r10)       ;*isub
                      │     │                                                 ; - java.lang.String::indexOf@43 (line 1767)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.18%    0.12%      │     │   0x00007fc51d248603: shr    $0x9,%r10
  0.05%    0.07%      │     │   0x00007fc51d248607: movabs $0x7fc52d046000,%r11
  0.08%    0.11%      │     │   0x00007fc51d248611: mov    %r12b,(%r11,%r10,1)  ;*caload
                      │     │                                                 ; - java.lang.String::indexOf@36 (line 1766)
                      │     │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                      │     │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                      │     │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.23%    0.19%      │╭    │   0x00007fc51d248615: jmp    0x00007fc51d248655
  0.27%    0.14%      ↘│    │   0x00007fc51d248617: mov    %r11d,0x48(%rsp)
  0.01%    0.01%       │    │   0x00007fc51d24861c: mov    %r8d,0x34(%rsp)
  0.01%    0.01%       │    │   0x00007fc51d248621: vmovsd %xmm1,0x40(%rsp)   ;*aload
                       │    │                                                 ; - com.google.re2j.Machine::match@136 (line 211)
  0.04%    0.01%       │    │   0x00007fc51d248627: mov    %r14,%r8
  0.20%    0.25%       │    │   0x00007fc51d24862a: shl    $0x3,%r8           ;*invokestatic emptyOpContext
                       │    │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
                       │    │   0x00007fc51d24862e: mov    %rdx,%rsi
           0.01%       │    │   0x00007fc51d248631: mov    0x10(%rsp),%rdx
  0.02%    0.03%       │    │   0x00007fc51d248636: mov    0x4c(%rsp),%ecx
  0.26%    0.23%       │    │   0x00007fc51d24863a: xor    %edi,%edi
  0.01%    0.00%       │    │   0x00007fc51d24863c: vmovq  %xmm1,%r10
  0.01%                │    │   0x00007fc51d248641: mov    %r10,(%rsp)
  0.03%    0.04%       │    │   0x00007fc51d248645: mov    %ebx,0x8(%rsp)
  0.24%    0.22%       │    │   0x00007fc51d248649: xchg   %ax,%ax
                       │    │   0x00007fc51d24864b: callq  0x00007fc51d046020  ; OopMap{[16]=Oop [56]=NarrowOop [64]=Oop [104]=Oop [120]=Oop off=1392}
                       │    │                                                 ;*invokevirtual add
                       │    │                                                 ; - com.google.re2j.Machine::match@318 (line 243)
                       │    │                                                 ;   {optimized virtual_call}
  0.14%    0.16%       │    │   0x00007fc51d248650: mov    0x38(%rsp),%r8d    ;*invokevirtual isEmpty
                       │    │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.09%    0.09%       ↘    │   0x00007fc51d248655: mov    0x2c(%rsp),%r9d
  0.12%    0.13%            │   0x00007fc51d24865a: test   %r9d,%r9d
                            │   0x00007fc51d24865d: jl     0x00007fc51d248ab5  ;*getfield end
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                            │                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.26%    0.28%            │   0x00007fc51d248663: xor    %r11d,%r11d        ;*caload
                            │                                                 ; - java.lang.String::indexOf@133 (line 1779)
                            │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.14%    0.17%            │   0x00007fc51d248666: cmp    $0xa,%r9d
                            │   0x00007fc51d24866a: je     0x00007fc51d248c3a  ;*if_icmpgt
                            │                                                 ; - java.lang.String::indexOf@57 (line 1769)
                            │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.04%    0.08%            │   0x00007fc51d248670: mov    0x34(%rsp),%r10d
  0.14%    0.18%            │   0x00007fc51d248675: test   %r10d,%r10d
                            │   0x00007fc51d248678: jl     0x00007fc51d248ac0  ;*arraylength
                            │                                                 ; - java.lang.String::isEmpty@4 (line 635)
                            │                                                 ; - com.google.re2j.Machine::match@175 (line 220)
  0.32%    0.38%            │   0x00007fc51d24867e: cmp    $0xa,%r10d
                            │   0x00007fc51d248682: je     0x00007fc51d248c43  ;*ifge
                            │                                                 ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                            │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.13%    0.13%            │   0x00007fc51d248688: mov    0x2c(%rsp),%ecx
  0.05%    0.10%            │   0x00007fc51d24868c: add    $0xffffffbf,%ecx
  0.10%    0.14%            │   0x00007fc51d24868f: cmp    $0x1a,%ecx
                        ╭   │   0x00007fc51d248692: jb     0x00007fc51d2486a4  ;*invokeinterface charAt
                        │   │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                        │   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                        │   │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.27%    0.30%        │   │   0x00007fc51d248694: mov    0x2c(%rsp),%ebx
  0.11%    0.24%        │   │   0x00007fc51d248698: add    $0xffffff9f,%ebx
  0.05%    0.07%        │   │   0x00007fc51d24869b: cmp    $0x1a,%ebx
                        │   │   0x00007fc51d24869e: jae    0x00007fc51d248ee9  ;*invokestatic indexOf
                        │   │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                        │   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                        │   │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                        │   │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.09%        ↘   │   0x00007fc51d2486a4: mov    $0x1,%ebp          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                            │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.24%    0.33%            │   0x00007fc51d2486a9: mov    0x34(%rsp),%ecx
  0.10%    0.15%            │   0x00007fc51d2486ad: add    $0xffffffbf,%ecx
  0.10%    0.15%            │   0x00007fc51d2486b0: cmp    $0x1a,%ecx
                         ╭  │   0x00007fc51d2486b3: jb     0x00007fc51d2486c5  ;*invokeinterface charAt
                         │  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                         │  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │  │                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.16%    0.16%         │  │   0x00007fc51d2486b5: mov    0x34(%rsp),%ebx
  0.25%    0.24%         │  │   0x00007fc51d2486b9: add    $0xffffff9f,%ebx
  0.10%    0.13%         │  │   0x00007fc51d2486bc: cmp    $0x1a,%ebx
                         │  │   0x00007fc51d2486bf: jae    0x00007fc51d248f0a  ;*caload
                         │  │                                                 ; - java.lang.String::charAt@27 (line 660)
                         │  │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                         │  │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                         │  │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.11%    0.14%         ↘  │   0x00007fc51d2486c5: mov    $0x1,%edi          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                            │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.20%    0.31%            │   0x00007fc51d2486ca: mov    %rax,-0x8(%rsp)
  0.47%    0.70%            │   0x00007fc51d2486cf: mov    0x34(%rsp),%eax
  0.08%    0.12%            │   0x00007fc51d2486d3: mov    %eax,0x24(%rsp)
  0.28%    0.33%            │   0x00007fc51d2486d7: mov    -0x8(%rsp),%rax
  0.36%    0.32%            │   0x00007fc51d2486dc: mov    %rax,-0x8(%rsp)
  0.29%    0.37%            │   0x00007fc51d2486e1: mov    0x2c(%rsp),%eax
  0.09%    0.12%            │   0x00007fc51d2486e5: mov    %eax,0x58(%rsp)
  0.13%    0.13%            │   0x00007fc51d2486e9: mov    -0x8(%rsp),%rax
  0.55%    0.33%            │   0x00007fc51d2486ee: mov    0x78(%rsp),%r10
  0.18%    0.22%            │   0x00007fc51d2486f3: mov    0x10(%r10),%r10d   ;*if_icmpge
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                            │                                                 ; - com.google.re2j.Machine::match@249 (line 232)
  0.24%    0.13%            │   0x00007fc51d2486f7: mov    0x40(%rsp),%r9
  0.08%    0.10%            │   0x00007fc51d2486fc: mov    0x14(%r9),%ecx     ;*iflt
                            │                                                 ; - java.lang.String::charAt@1 (line 657)
                            │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                            │                                                 ; - com.google.re2j.Machine::match@226 (line 229)
  0.12%    0.09%            │   0x00007fc51d248700: cmp    %edi,%ebp
                          ╭ │   0x00007fc51d248702: je     0x00007fc51d24870f  ;*if_icmpge
                          │ │                                                 ; - java.lang.String::indexOf@123 (line 1779)
                          │ │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                          │ │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                          │ │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                          │ │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.03%    0.03%          │ │   0x00007fc51d248704: or     $0x10,%r11d
  0.04%    0.00%          │ │   0x00007fc51d248708: mov    %r11d,0x60(%rsp)
  0.01%    0.05%          │╭│   0x00007fc51d24870d: jmp    0x00007fc51d248718
  0.13%    0.17%          ↘││   0x00007fc51d24870f: or     $0x20,%r11d
  0.10%    0.06%           ││   0x00007fc51d248713: mov    %r11d,0x60(%rsp)   ;*caload
                           ││                                                 ; - java.lang.String::charAt@27 (line 660)
                           ││                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                           ││                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                           ││                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.08%    0.08%           ↘│   0x00007fc51d248718: mov    0x4c(%rsp),%r9d
  0.10%    0.12%            │   0x00007fc51d24871d: cmp    %r10d,%r9d
                            │   0x00007fc51d248720: je     0x00007fc51d248ac9  ;*caload
                            │                                                 ; - java.lang.String::indexOf@133 (line 1779)
                            │                                                 ; - java.lang.String::indexOf@21 (line 1718)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                            │                                                 ; - com.google.re2j.Machine::match@206 (line 224)
  0.22%    0.18%            │   0x00007fc51d248726: xor    %edx,%edx
  0.12%    0.18%            │   0x00007fc51d248728: movzbl 0x18(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007fc51d24a741
  0.13%    0.12%            │   0x00007fc51d24872e: mov    %r8d,%r10d
  0.08%    0.11%            │   0x00007fc51d248731: mov    0xc(%r12,%r8,8),%eax  ;*if_icmpne
                            │                                                 ; - com.google.re2j.Utils::emptyOpContext@32 (line 182)
                            │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.24%    0.25%            │   0x00007fc51d248736: mov    0x4c(%rsp),%ecx
  0.14%    0.14%            │   0x00007fc51d24873a: add    0x28(%rsp),%ecx    ;*caload
                            │                                                 ; - java.lang.String::charAt@27 (line 660)
                            │                                                 ; - java.lang.Character::codePointAt@2 (line 4866)
                            │                                                 ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                            │                                                 ; - com.google.re2j.Machine::match@96 (line 199)
  0.07%    0.15%            │   0x00007fc51d24873e: mov    0x40(%rsp),%r11
  0.12%    0.10%            │   0x00007fc51d248743: movzbl 0x11(%r11),%r8d    ;*if_icmpne
                            │                                                 ; - com.google.re2j.Utils::emptyOpContext@32 (line 182)
                            │                                                 ; - com.google.re2j.Machine::match@121 (line 205)
  0.28%    0.25%            │   0x00007fc51d248748: test   %eax,%eax
                            ╰   0x00007fc51d24874a: jle    0x00007fc51d248346  ;*iadd
                                                                              ; - java.lang.String::indexOf@108 (line 1778)
                                                                              ; - java.lang.String::indexOf@21 (line 1718)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                              ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.16%                0x00007fc51d248750: test   %r8d,%r8d
                                0x00007fc51d248753: jne    0x00007fc51d249309  ;*putfield pcsl
                                                                              ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                              ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                              ; - com.google.re2j.Machine::match@318 (line 243)
  0.10%    0.15%                0x00007fc51d248759: mov    %ecx,0x54(%rsp)
  0.10%    0.12%                0x00007fc51d24875d: mov    %eax,0x50(%rsp)
  0.24%    0.27%                0x00007fc51d248761: mov    %ebx,0x8c(%rsp)
  0.10%    0.14%                0x00007fc51d248768: mov    %edx,0x88(%rsp)
  0.10%    0.18%                0x00007fc51d24876f: mov    %rax,-0x8(%rsp)
  0.12%    0.18%                0x00007fc51d248774: mov    0x4c(%rsp),%eax
  0.25%    0.30%                0x00007fc51d248778: mov    %eax,0x74(%rsp)
  0.11%    0.12%                0x00007fc51d24877c: mov    -0x8(%rsp),%rax
  0.31%    0.17%                0x00007fc51d248781: mov    %r10d,0xc(%rsp)
  0.12%    0.08%                0x00007fc51d248786: rex.W pushq 0x40(%rsp)
  0.32%    0.36%                0x00007fc51d24878b: rex.W popq 0x80(%rsp)
  1.37%    1.20%                0x00007fc51d248793: xor    %r11d,%r11d
  0.20%    0.16%                0x00007fc51d248796: mov    %r11d,0x5c(%rsp)
  0.19%    0.17%                0x00007fc51d24879b: jmpq   0x00007fc51d248982  ;*aload_0
                                                                              ; - java.lang.String::indexOf@60 (line 1771)
                                                                              ; - java.lang.String::indexOf@21 (line 1718)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                              ; - com.google.re2j.Machine::match@206 (line 224)
  0.24%    0.26%                0x00007fc51d2487a0: mov    0x2c(%r12,%r9,8),%r8d  ;*invokestatic indexOf
                                                                              ; - java.lang.String::indexOf@21 (line 1718)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                                                                              ; - com.google.re2j.Machine::match@206 (line 224)
  0.19%    0.06%                0x00007fc51d2487a5: mov    0x8(%r12,%r8,8),%r9d  ;*invokestatic codePointAt
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                                                                              ; - com.google.re2j.Machine::match@226 (line 229)
                                                                              ; implicit exception: dispatches to 0x00007fc51d24a6ed
  1.08%    1.00%                0x00007fc51d2487aa: lea    (%r12,%r8,8),%r10
                                0x00007fc51d2487ae: cmp    $0xf8019843,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                             ╭  0x00007fc51d2487b5: je     0x00007fc51d24887a  ;*invokespecial indexOf
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.12%    0.04%             │  0x00007fc51d2487bb: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                             │  0x00007fc51d2487c2: jne    0x00007fc51d2496ed  ;*ifne
                             │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.08%                      │  0x00007fc51d2487c8: mov    0x18(%r10),%r9d    ;*if_icmpgt
                             │                                                ; - com.google.re2j.Utils::isWordRune@27 (line 149)
                             │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │                                                ; - com.google.re2j.Machine::match@121 (line 205)
                             │  0x00007fc51d2487cc: mov    0x68(%rsp),%r11
  0.03%                      │  0x00007fc51d2487d1: mov    0x10(%r11),%r8     ;*isub
                             │                                                ; - java.lang.String::indexOf@156 (line 1784)
                             │                                                ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
                             │                                                ; implicit exception: dispatches to 0x00007fc51d24a7bd
  0.14%    0.01%             │  0x00007fc51d2487d5: cmp    $0x40,%r9d
                             │  0x00007fc51d2487d9: jg     0x00007fc51d24998d  ;*getfield re2
                             │                                                ; - com.google.re2j.Machine::match@184 (line 220)
           0.02%             │  0x00007fc51d2487df: mov    $0x1,%ebx
                             │  0x00007fc51d2487e4: mov    %r9d,%ecx
                             │  0x00007fc51d2487e7: shl    %cl,%rbx           ;*isub
                             │                                                ; - java.lang.String::indexOf@156 (line 1784)
                             │                                                ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.11%    0.06%             │  0x00007fc51d2487ea: mov    %rbx,%r11
                             │  0x00007fc51d2487ed: and    %r8,%r11           ;*iflt
                             │                                                ; - java.lang.String::charAt@1 (line 657)
                             │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.02%                      │  0x00007fc51d2487f0: test   %r11,%r11
                             │  0x00007fc51d2487f3: jne    0x00007fc51d249008  ;*if_icmpne
                             │                                                ; - java.lang.String::indexOf@150 (line 1782)
                             │                                                ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.08%    0.02%             │  0x00007fc51d2487f9: xor    %ebp,%ebp          ;*if_icmpne
                             │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                             │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.01%                      │  0x00007fc51d2487fb: test   %r11,%r11
                             │  0x00007fc51d2487fe: jne    0x00007fc51d249a21
  0.02%    0.00%             │  0x00007fc51d248804: cmp    $0x40,%r9d
                             │  0x00007fc51d248808: jge    0x00007fc51d249aa5
  0.01%    0.01%             │  0x00007fc51d24880e: mov    0x68(%rsp),%r11
  0.02%    0.00%             │  0x00007fc51d248813: mov    %r12b,0x18(%r11)   ;*getfield prefixRune
                             │                                                ; - com.google.re2j.Machine::match@187 (line 220)
  0.07%                      │  0x00007fc51d248817: mov    0x20(%r11),%r9d    ;*caload
                             │                                                ; - java.lang.String::indexOf@63 (line 1771)
                             │                                                ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.07%    0.02%             │  0x00007fc51d24881b: or     %r8,%rbx
  0.02%                      │  0x00007fc51d24881e: mov    %rbx,0x10(%r11)    ;*getfield prefixRune
                             │                                                ; - com.google.re2j.Machine::match@187 (line 220)
  0.03%    0.01%             │  0x00007fc51d248822: mov    0xc(%r11),%ebp     ;*ireturn
                             │                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                             │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                             │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.02%                      │  0x00007fc51d248826: mov    %ebp,%r8d
  0.04%    0.01%             │  0x00007fc51d248829: inc    %r8d
                             │  0x00007fc51d24882c: mov    %r8d,0xc(%r11)     ;*getfield prefixRune
                             │                                                ; - com.google.re2j.Machine::match@187 (line 220)
  0.04%    0.00%             │  0x00007fc51d248830: mov    0xc(%r12,%r9,8),%r8d  ;*getfield value
                             │                                                ; - java.lang.String::charAt@6 (line 657)
                             │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             │                                                ; - com.google.re2j.Machine::match@226 (line 229)
                             │                                                ; implicit exception: dispatches to 0x00007fc51d24a7d1
  0.15%    0.05%             │  0x00007fc51d248835: cmp    %r8d,%ebp
                             │  0x00007fc51d248838: jae    0x00007fc51d249661
  0.11%    0.01%             │  0x00007fc51d24883e: mov    0x8(%r12,%r9,8),%r8d
  0.00%    0.01%             │  0x00007fc51d248843: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                             │  0x00007fc51d24884a: jne    0x00007fc51d249759  ;*getfield prefixRune
                             │                                                ; - com.google.re2j.Machine::match@187 (line 220)
  0.01%    0.00%             │  0x00007fc51d248850: lea    (%r12,%r9,8),%r11  ;*invokespecial step
                             │                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%                      │  0x00007fc51d248854: lea    0x10(%r11,%rbp,4),%r11  ;*invokeinterface charAt
                             │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.01%    0.00%             │  0x00007fc51d248859: shr    $0x3,%r10          ;*arraylength
                             │                                                ; - java.lang.String::charAt@9 (line 657)
                             │                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                             │                                                ; - com.google.re2j.Machine::match@226 (line 229)
           0.01%             │  0x00007fc51d24885d: mov    %r10d,(%r11)
  0.11%    0.09%             │  0x00007fc51d248860: mov    %r11,%r10
           0.00%             │  0x00007fc51d248863: shr    $0x9,%r10
  0.00%    0.01%             │  0x00007fc51d248867: movabs $0x7fc52d046000,%r11
  0.01%                      │  0x00007fc51d248871: mov    %r12b,(%r11,%r10,1)  ;*if_icmpgt
                             │                                                ; - java.lang.String::indexOf@57 (line 1769)
                             │                                                ; - java.lang.String::indexOf@21 (line 1718)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                             │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                             │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.08%    0.07%             │  0x00007fc51d248875: jmpq   0x00007fc51d24895d  ;*aload
                             │                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.27%    0.28%             ↘  0x00007fc51d24887a: mov    0x68(%rsp),%rdx
                                0x00007fc51d24887f: mov    0x54(%rsp),%ecx
                                0x00007fc51d248883: xor    %r8d,%r8d
                                0x00007fc51d248886: mov    0x60(%rsp),%r9d
  0.27%    0.25%                0x00007fc51d24888b: xor    %edi,%edi
                                0x00007fc51d24888d: mov    0x80(%rsp),%r11
                                0x00007fc51d248895: mov    %r11,(%rsp)
                                0x00007fc51d248899: xor    %ebx,%ebx
  0.20%    0.24%                0x00007fc51d24889b: mov    %ebx,0x8(%rsp)
  0.00%                         0x00007fc51d24889f: mov    0x74(%rsp),%r11d
                                0x00007fc51d2488a4: mov    %r11d,0x20(%rsp)
  0.01%                         0x00007fc51d2488a9: mov    %r10,%rsi
  0.28%    0.21%                0x00007fc51d2488ac: data16 xchg %ax,%ax
                                0x00007fc51d2488af: callq  0x00007fc51d046020  ; OopMap{[12]=NarrowOop [16]=Oop [104]=Oop [120]=Oop [128]=Oop off=2004}
                                                                              ;*invokevirtual add
                                                                              ; - com.google.re2j.Machine::step@206 (line 314)
                                                                              ; - com.google.re2j.Machine::match@359 (line 246)
                                                                              ;   {optimized virtual_call}
  0.23%    0.38%                0x00007fc51d2488b4: test   %rax,%rax
                                0x00007fc51d2488b7: je     0x00007fc51d24895d  ;*isub
                                                                              ; - com.google.re2j.MachineInput$UTF16Input::step@33 (line 189)
                                                                              ; - com.google.re2j.Machine::match@249 (line 232)
                                0x00007fc51d2488bd: mov    $0xffffff65,%esi   ;*invokespecial freeQueue
                                                                              ; - com.google.re2j.Machine::step@175 (line 309)
                                                                              ; - com.google.re2j.Machine::match@359 (line 246)
....................................................................................................
 37.73%   37.72%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 544 (210 bytes) 

                       0x00007fc51d248942: mov    %rax,0x78(%rsp)
                       0x00007fc51d248947: callq  0x00007fc51d0051a0  ; OopMap{rbp=Oop [12]=NarrowOop [56]=Oop [80]=Oop [120]=Oop off=2156}
                                                                     ;*ifnull
                                                                     ; - com.google.re2j.Machine::step@213 (line 317)
                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                                     ;   {runtime_call}
                       0x00007fc51d24894c: callq  0x00007fc53332bc50  ;*arraylength
                                                                     ; - java.util.Arrays::fill@3 (line 2881)
                                                                     ; - com.google.re2j.Machine::match@43 (line 191)
                                                                     ;   {runtime_call}
  0.81%    0.68%    ↗  0x00007fc51d248951: xor    %r10d,%r10d        ;*invokestatic codePointAt
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.20%    0.19%   ↗│  0x00007fc51d248954: test   %r10d,%r10d
                   ││  0x00007fc51d248957: jne    0x00007fc51d2487a0  ;*if_icmplt
                   ││                                                ; - java.lang.Character::charCount@3 (line 4818)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@26 (line 188)
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  1.16%    1.14%   ││  0x00007fc51d24895d: mov    0x80(%rsp),%r10
  0.24%    0.17%   ││  0x00007fc51d248965: movzbl 0x11(%r10),%r8d
  0.95%    0.72%   ││  0x00007fc51d24896a: mov    0x5c(%rsp),%r11d
  0.54%    0.43%   ││  0x00007fc51d24896f: inc    %r11d
  1.06%    0.97%   ││  0x00007fc51d248972: mov    %r11d,0x5c(%rsp)
  0.24%    0.16%   ││  0x00007fc51d248977: cmp    0x50(%rsp),%r11d
                   ││  0x00007fc51d24897c: jge    0x00007fc51d248330  ;*if_icmplt
                   ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.87%    0.68%   ││  0x00007fc51d248982: mov    0xc(%rsp),%r10d
  0.60%    0.55%   ││  0x00007fc51d248987: mov    0x20(%r12,%r10,8),%r10d  ;*aload_0
                   ││                                                ; - java.lang.String::indexOf@60 (line 1771)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.06%    0.78%   ││  0x00007fc51d24898c: mov    0xc(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fc51d24a6ce
  1.55%    1.28%   ││  0x00007fc51d248991: mov    0x5c(%rsp),%r9d
  0.65%    0.49%   ││  0x00007fc51d248996: cmp    %r11d,%r9d
                   ││  0x00007fc51d248999: jae    0x00007fc51d249046  ;*ifne
                   ││                                                ; - java.lang.String::isEmpty@5 (line 635)
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.65%    2.01%   ││  0x00007fc51d24899f: lea    (%r12,%r10,8),%r11
  0.65%    0.43%   ││  0x00007fc51d2489a3: mov    0x10(%r11,%r9,4),%r9d  ;*invokestatic indexOf
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.33%    0.37%   ││  0x00007fc51d2489a8: mov    0xc(%r12,%r9,8),%r11d  ;*if_icmpgt
                   ││                                                ; - com.google.re2j.Utils::isWordRune@3 (line 149)
                   ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                   ││                                                ; - com.google.re2j.Machine::match@121 (line 205)
                   ││                                                ; implicit exception: dispatches to 0x00007fc51d24a6dd
  6.03%    6.49%   ││  0x00007fc51d2489ad: cmp    $0x6,%r11d
                   ││  0x00007fc51d2489b1: je     0x00007fc51d248f54  ;*iadd
                   ││                                                ; - java.lang.String::indexOf@101 (line 1777)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.86%    2.20%   ││  0x00007fc51d2489b7: cmp    $0xa,%r11d
                   ││  0x00007fc51d2489bb: je     0x00007fc51d2487a0  ;*if_icmpne
                   ││                                                ; - java.lang.String::indexOf@134 (line 1779)
                   ││                                                ; - java.lang.String::indexOf@21 (line 1718)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                   ││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.97%    0.93%   ││  0x00007fc51d2489c1: cmp    $0xb,%r11d
                   ││  0x00007fc51d2489c5: je     0x00007fc51d2490cd  ;*invokevirtual isEmpty
                   ││                                                ; - com.google.re2j.Machine::match@175 (line 220)
  1.71%    1.63%   ││  0x00007fc51d2489cb: mov    0x1c(%r12,%r9,8),%r8d  ;*invokeinterface charAt
                   ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                   ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   ││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.34%    0.13%   ││  0x00007fc51d2489d0: cmp    $0x9,%r11d
                  ╭││  0x00007fc51d2489d4: jne    0x00007fc51d2489e9  ;*if_icmpne
                  │││                                                ; - java.lang.String::indexOf@134 (line 1779)
                  │││                                                ; - java.lang.String::indexOf@21 (line 1718)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                  │││                                                ; - com.google.re2j.Machine::match@206 (line 224)
  0.28%    0.28%  │││  0x00007fc51d2489d6: cmp    0x58(%rsp),%r8d
                  │││  0x00007fc51d2489db: je     0x00007fc51d248ede  ;*invokeinterface charAt
                  │││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.15%    0.19%  │││  0x00007fc51d2489e1: xor    %r10d,%r10d
  0.03%    0.03%  │╰│  0x00007fc51d2489e4: jmpq   0x00007fc51d248954
  0.76%    0.89%  ↘ │  0x00007fc51d2489e9: cmp    $0xc,%r11d
                    │  0x00007fc51d2489ed: jne    0x00007fc51d249181  ;*ifne
                    │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  1.27%    1.24%    │  0x00007fc51d2489f3: cmp    0x58(%rsp),%r8d
                    │  0x00007fc51d2489f8: je     0x00007fc51d248325  ;*invokestatic codePointAt
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@226 (line 229)
  0.97%    0.82%    │  0x00007fc51d2489fe: mov    0x20(%r12,%r9,8),%r11d  ;*getfield str
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                    │                                                ; - com.google.re2j.Machine::match@249 (line 232)
  0.18%    0.05%    │  0x00007fc51d248a03: cmp    0x58(%rsp),%r11d
                    │  0x00007fc51d248a08: je     0x00007fc51d248325  ;*if_icmpne
                    │                                                ; - java.lang.String::indexOf@134 (line 1779)
                    │                                                ; - java.lang.String::indexOf@21 (line 1718)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::indexOf@13 (line 225)
                    │                                                ; - com.google.re2j.MachineInput$UTF16Input::index@17 (line 204)
                    │                                                ; - com.google.re2j.Machine::match@206 (line 224)
  1.44%    1.12%    │  0x00007fc51d248a0e: mov    0x24(%r12,%r9,8),%r11d  ;*if_icmpgt
                    │                                                ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.27%    0.24%    │  0x00007fc51d248a13: cmp    0x58(%rsp),%r11d
                    │  0x00007fc51d248a18: je     0x00007fc51d249211  ;*ifne
                    │                                                ; - com.google.re2j.Machine::match@178 (line 220)
  1.31%    1.21%    │  0x00007fc51d248a1e: mov    0x28(%r12,%r9,8),%r11d  ;*invokestatic isWordRune
                    │                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                    │                                                ; - com.google.re2j.Machine::match@121 (line 205)
  0.12%    0.01%    │  0x00007fc51d248a23: cmp    0x58(%rsp),%r11d
                    ╰  0x00007fc51d248a28: jne    0x00007fc51d248951  ;*if_icmpgt
                                                                     ; - com.google.re2j.Utils::isWordRune@15 (line 149)
                                                                     ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                       0x00007fc51d248a2e: mov    $0xffffff65,%esi   ;*isub
                                                                     ; - com.google.re2j.MachineInput$UTF16Input::step@33 (line 189)
                                                                     ; - com.google.re2j.Machine::match@60 (line 193)
                       0x00007fc51d248a33: mov    0x80(%rsp),%rbp
....................................................................................................
 30.27%   28.52%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 514 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007fc51d224f40: mov    0x8(%rsi),%r10d
                            0x00007fc51d224f44: shl    $0x3,%r10
                            0x00007fc51d224f48: cmp    %r10,%rax
                            0x00007fc51d224f4b: jne    0x00007fc51d045e20  ;   {runtime_call}
                            0x00007fc51d224f51: data16 xchg %ax,%ax
                            0x00007fc51d224f54: nopl   0x0(%rax,%rax,1)
                            0x00007fc51d224f5c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.07%    0.09%            0x00007fc51d224f60: mov    %eax,-0x14000(%rsp)
  0.26%    0.21%            0x00007fc51d224f67: push   %rbp
  0.01%    0.01%            0x00007fc51d224f68: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.28%    0.36%            0x00007fc51d224f6c: vmovd  %r9d,%xmm4
  0.00%                     0x00007fc51d224f71: vmovq  %r8,%xmm3
           0.01%            0x00007fc51d224f76: vmovq  %rsi,%xmm2
  0.02%    0.04%            0x00007fc51d224f7b: mov    %ecx,%r13d
  0.27%    0.19%            0x00007fc51d224f7e: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
           0.00%            0x00007fc51d224f81: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007fc51d225885
           0.01%            0x00007fc51d224f85: cmp    $0x40,%ecx
                            0x00007fc51d224f88: jg     0x00007fc51d225495  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.02%            0x00007fc51d224f8e: mov    $0x1,%esi
  0.28%    0.32%            0x00007fc51d224f93: mov    $0x1,%r9d
           0.00%            0x00007fc51d224f99: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.28%    0.32%            0x00007fc51d224f9c: mov    %r11,%r10
  0.00%                     0x00007fc51d224f9f: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.01%    0.01%            0x00007fc51d224fa2: test   %r10,%r10
                  ╭         0x00007fc51d224fa5: jne    0x00007fc51d2252c4  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.04%  │         0x00007fc51d224fab: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.20%    0.28%  │   ↗     0x00007fc51d224fad: test   %r10,%r10
                  │   │     0x00007fc51d224fb0: jne    0x00007fc51d2254c9  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
           0.00%  │   │     0x00007fc51d224fb6: cmp    $0x40,%ecx
                  │   │     0x00007fc51d224fb9: jge    0x00007fc51d2254f9  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
           0.01%  │   │     0x00007fc51d224fbf: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.06%    0.05%  │   │     0x00007fc51d224fc3: vmovq  %xmm2,%r10
  0.26%    0.19%  │   │     0x00007fc51d224fc8: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.00%    0.02%  │   │     0x00007fc51d224fcc: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%    0.02%  │   │     0x00007fc51d224fcf: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.06%    0.07%  │   │     0x00007fc51d224fd3: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007fc51d225899
  0.23%    0.20%  │   │     0x00007fc51d224fd8: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007fc51d224fdf: jne    0x00007fc51d225379
  0.01%    0.02%  │   │     0x00007fc51d224fe5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.00%  │   │     0x00007fc51d224fe9: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.04%  │   │     0x00007fc51d224fed: cmp    $0x40,%ecx
                  │   │     0x00007fc51d224ff0: jg     0x00007fc51d22552d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.23%    0.28%  │   │     0x00007fc51d224ff6: mov    $0x1,%r10d
  0.00%    0.02%  │   │     0x00007fc51d224ffc: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.27%    0.29%  │   │     0x00007fc51d224fff: mov    %r9,%r8
           0.00%  │   │     0x00007fc51d225002: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.00%  │   │     0x00007fc51d225005: test   %r8,%r8
                  │╭  │     0x00007fc51d225008: jne    0x00007fc51d2252ce  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.07%  ││  │     0x00007fc51d22500e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.21%    0.20%  ││  │↗    0x00007fc51d225010: test   %r8,%r8
                  ││  ││    0x00007fc51d225013: jne    0x00007fc51d225569  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.01%  ││  ││    0x00007fc51d225019: cmp    $0x40,%ecx
                  ││  ││    0x00007fc51d22501c: jge    0x00007fc51d22559d  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.03%  ││  ││    0x00007fc51d225022: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.06%  ││  ││    0x00007fc51d225025: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.18%    0.10%  ││  ││    0x00007fc51d225029: mov    0x88(%rsp),%r8d
  0.03%    0.00%  ││  ││    0x00007fc51d225031: test   %r8d,%r8d
                  ││  ││    0x00007fc51d225034: jne    0x00007fc51d2255dd  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.00%  ││  ││    0x00007fc51d22503a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.07%  ││  ││    0x00007fc51d22503d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.19%  ││  ││    0x00007fc51d225040: mov    %ecx,%edi
  0.03%    0.02%  ││  ││    0x00007fc51d225042: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.00%  ││  ││    0x00007fc51d225044: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.06%  ││  ││    0x00007fc51d225047: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007fc51d2258c1
  0.19%    0.13%  ││  ││    0x00007fc51d22504c: cmp    %r10d,%ecx
                  ││  ││    0x00007fc51d22504f: jae    0x00007fc51d2252fd
  0.03%    0.04%  ││  ││    0x00007fc51d225055: vmovd  %edi,%xmm0
  0.01%    0.01%  ││  ││    0x00007fc51d225059: mov    %ebx,%edi
  0.03%    0.05%  ││  ││    0x00007fc51d22505b: mov    %ecx,%eax
  0.22%    0.36%  ││  ││    0x00007fc51d22505d: mov    %r11,%rcx
  0.06%    0.03%  ││  ││    0x00007fc51d225060: mov    0x88(%rsp),%r11d
  0.00%    0.00%  ││  ││    0x00007fc51d225068: mov    0x8(%r12,%rbx,8),%r8d
  0.05%    0.05%  ││  ││    0x00007fc51d22506d: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007fc51d225074: jne    0x00007fc51d2253a9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.16%    0.25%  ││  ││    0x00007fc51d22507a: vmovq  %xmm2,%r11
  0.03%    0.05%  ││  ││    0x00007fc51d22507f: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
           0.01%  ││  ││    0x00007fc51d225083: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.06%  ││  ││    0x00007fc51d225087: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.26%  ││  ││    0x00007fc51d22508b: lea    0x10(%r11,%rax,4),%r8
  0.05%    0.02%  ││  ││    0x00007fc51d225090: mov    %ecx,(%r8)
  0.02%    0.02%  ││  ││    0x00007fc51d225093: mov    %r8,%rcx
  0.06%    0.07%  ││  ││    0x00007fc51d225096: shr    $0x9,%rcx
  0.22%    0.19%  ││  ││    0x00007fc51d22509a: movabs $0x7fc52d046000,%r8
  0.04%    0.02%  ││  ││    0x00007fc51d2250a4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.02%    0.01%  ││  ││    0x00007fc51d2250a8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007fc51d2258dd
  0.05%    0.05%  ││  ││    0x00007fc51d2250ad: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007fc51d2250b3: jne    0x00007fc51d2253e9
  0.25%    0.11%  ││  ││    0x00007fc51d2250b9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.05%  ││  ││    0x00007fc51d2250bd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.03%  ││  ││    0x00007fc51d2250c1: vmovd  %ecx,%xmm1
  0.04%    0.06%  ││  ││    0x00007fc51d2250c5: cmp    $0x40,%ecx
                  ││  ││    0x00007fc51d2250c8: jg     0x00007fc51d225619  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.21%    0.19%  ││  ││    0x00007fc51d2250ce: mov    $0x1,%ebx
  0.02%    0.05%  ││  ││    0x00007fc51d2250d3: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.24%    0.35%  ││  ││    0x00007fc51d2250d6: mov    %r9,%rcx
  0.03%    0.01%  ││  ││    0x00007fc51d2250d9: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.00%  ││  ││    0x00007fc51d2250dc: test   %rcx,%rcx
                  ││╭ ││    0x00007fc51d2250df: jne    0x00007fc51d2252d8  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.07%  │││ ││    0x00007fc51d2250e5: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.13%  │││ ││↗   0x00007fc51d2250e7: test   %rcx,%rcx
                  │││ │││   0x00007fc51d2250ea: jne    0x00007fc51d225655  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │││ │││   0x00007fc51d2250f0: vmovd  %xmm1,%ecx
  0.00%    0.01%  │││ │││   0x00007fc51d2250f4: cmp    $0x40,%ecx
                  │││ │││   0x00007fc51d2250f7: jge    0x00007fc51d225689  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.09%  │││ │││   0x00007fc51d2250fd: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.23%    0.26%  │││ │││   0x00007fc51d225100: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.06%  │││ │││   0x00007fc51d225104: mov    %eax,%ebx
  0.01%    0.01%  │││ │││   0x00007fc51d225106: add    $0x2,%ebx
  0.05%    0.15%  │││ │││   0x00007fc51d225109: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.18%    0.34%  │││ │││   0x00007fc51d22510c: mov    %eax,%ebx
  0.03%    0.04%  │││ │││   0x00007fc51d22510e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.01%  │││ │││   0x00007fc51d225111: cmp    %r10d,%ebx
                  │││ │││   0x00007fc51d225114: jae    0x00007fc51d22533d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.09%    0.07%  │││ │││   0x00007fc51d22511a: vmovq  %xmm2,%r10
  0.24%    0.27%  │││ │││   0x00007fc51d22511f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.04%    0.05%  │││ │││   0x00007fc51d225123: mov    %r14,%rcx
  0.02%    0.00%  │││ │││   0x00007fc51d225126: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.06%  │││ │││   0x00007fc51d22512a: movslq %eax,%r10
  0.24%    0.28%  │││ │││   0x00007fc51d22512d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.01%  │││ │││   0x00007fc51d225131: mov    %rdi,%r10
  0.01%    0.03%  │││ │││   0x00007fc51d225134: add    $0x14,%r10
  0.05%    0.07%  │││ │││   0x00007fc51d225138: mov    %ecx,(%r10)
  0.16%    0.14%  │││ │││   0x00007fc51d22513b: shr    $0x9,%r10
  0.05%    0.02%  │││ │││   0x00007fc51d22513f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.01%  │││ │││   0x00007fc51d225143: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc51d225905
  0.06%    0.05%  │││ │││   0x00007fc51d225148: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007fc51d22514e: jne    0x00007fc51d225415
  0.13%    0.25%  │││ │││   0x00007fc51d225154: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.03%  │││ │││   0x00007fc51d225158: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.01%  │││ │││   0x00007fc51d22515c: vmovd  %ecx,%xmm1
  0.07%    0.17%  │││ │││   0x00007fc51d225160: cmp    $0x40,%ecx
                  │││ │││   0x00007fc51d225163: jg     0x00007fc51d2256c5  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.32%  │││ │││   0x00007fc51d225169: mov    $0x1,%r10d
  0.02%    0.03%  │││ │││   0x00007fc51d22516f: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.24%    0.39%  │││ │││   0x00007fc51d225172: mov    %r9,%rcx
  0.01%    0.05%  │││ │││   0x00007fc51d225175: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.00%    0.02%  │││ │││   0x00007fc51d225178: test   %rcx,%rcx
                  │││╭│││   0x00007fc51d22517b: jne    0x00007fc51d2252e2  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.06%  │││││││   0x00007fc51d225181: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.22%    0.19%  │││││││↗  0x00007fc51d225183: test   %rcx,%rcx
                  ││││││││  0x00007fc51d225186: jne    0x00007fc51d225701  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.05%  ││││││││  0x00007fc51d22518c: vmovd  %xmm1,%ecx
  0.02%    0.01%  ││││││││  0x00007fc51d225190: cmp    $0x40,%ecx
                  ││││││││  0x00007fc51d225193: jge    0x00007fc51d225735  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.09%    0.13%  ││││││││  0x00007fc51d225199: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.18%    0.25%  ││││││││  0x00007fc51d22519c: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.04%  ││││││││  0x00007fc51d2251a0: vmovq  %xmm2,%r10
  0.01%           ││││││││  0x00007fc51d2251a5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.08%    0.09%  ││││││││  0x00007fc51d2251a9: mov    %rdi,%r10
  0.22%    0.16%  ││││││││  0x00007fc51d2251ac: add    $0x18,%r10
  0.03%    0.06%  ││││││││  0x00007fc51d2251b0: mov    %r14,%rcx
  0.01%    0.00%  ││││││││  0x00007fc51d2251b3: shr    $0x3,%rcx
  0.06%    0.06%  ││││││││  0x00007fc51d2251b7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.17%    0.29%  ││││││││  0x00007fc51d2251ba: mov    %eax,%ecx
  0.04%    0.01%  ││││││││  0x00007fc51d2251bc: add    $0x3,%ecx
  0.01%    0.01%  ││││││││  0x00007fc51d2251bf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.08%  ││││││││  0x00007fc51d2251c2: shr    $0x9,%r10
  0.18%    0.15%  ││││││││  0x00007fc51d2251c6: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  ││││││││  0x00007fc51d2251ca: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007fc51d22592d
  0.02%    0.00%  ││││││││  0x00007fc51d2251cf: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc51d2251d5: jne    0x00007fc51d225441
  0.08%    0.06%  ││││││││  0x00007fc51d2251db: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.24%    0.24%  ││││││││  0x00007fc51d2251df: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.06%  ││││││││  0x00007fc51d2251e3: vmovd  %ecx,%xmm0
  0.01%    0.02%  ││││││││  0x00007fc51d2251e7: cmp    $0x40,%ecx
                  ││││││││  0x00007fc51d2251ea: jg     0x00007fc51d225771  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.08%    0.09%  ││││││││  0x00007fc51d2251f0: mov    $0x1,%r10d
  0.21%    0.22%  ││││││││  0x00007fc51d2251f6: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.18%  ││││││││  0x00007fc51d2251f9: mov    %r9,%rcx
  0.19%    0.13%  ││││││││  0x00007fc51d2251fc: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  ││││││││  0x00007fc51d2251ff: test   %rcx,%rcx
                  ││││││││  0x00007fc51d225202: jne    0x00007fc51d2252ec  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.02%  ││││││││  0x00007fc51d225208: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.06%  ││││││││  0x00007fc51d22520a: test   %rcx,%rcx
                  ││││││││  0x00007fc51d22520d: jne    0x00007fc51d2257ad  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.28%  ││││││││  0x00007fc51d225213: vmovd  %xmm0,%ecx
  0.03%    0.04%  ││││││││  0x00007fc51d225217: cmp    $0x40,%ecx
                  ││││││││  0x00007fc51d22521a: jge    0x00007fc51d2257e1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007fc51d225220: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.10%    0.12%  ││││││││  0x00007fc51d225223: vmovq  %xmm2,%rcx
  0.16%    0.28%  ││││││││  0x00007fc51d225228: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.01%    0.06%  ││││││││  0x00007fc51d22522b: mov    %rdi,%rcx
  0.03%    0.04%  ││││││││  0x00007fc51d22522e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.06%  ││││││││  0x00007fc51d225232: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.16%    0.18%  ││││││││  0x00007fc51d225235: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  ││││││││  0x00007fc51d225239: mov    %r14,%r10
  0.03%    0.01%  ││││││││  0x00007fc51d22523c: shr    $0x3,%r10
  0.03%    0.08%  ││││││││  0x00007fc51d225240: mov    %r10d,(%rcx)
  0.18%    0.19%  ││││││││  0x00007fc51d225243: mov    %rcx,%r10
  0.03%    0.04%  ││││││││  0x00007fc51d225246: shr    $0x9,%r10
  0.01%    0.02%  ││││││││  0x00007fc51d22524a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.08%  ││││││││  0x00007fc51d22524e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007fc51d225955
  0.17%    0.19%  ││││││││  0x00007fc51d225253: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007fc51d22525a: jne    0x00007fc51d22546d
  0.03%    0.02%  ││││││││  0x00007fc51d225260: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.02%  ││││││││  0x00007fc51d225264: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.10%  ││││││││  0x00007fc51d225268: cmp    $0x40,%ecx
                  ││││││││  0x00007fc51d22526b: jg     0x00007fc51d22581d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.18%  ││││││││  0x00007fc51d225271: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.16%  ││││││││  0x00007fc51d225274: mov    %r9,%rbx
  0.14%    0.15%  ││││││││  0x00007fc51d225277: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.05%  ││││││││  0x00007fc51d22527a: test   %rbx,%rbx
                  ││││││││  0x00007fc51d22527d: jne    0x00007fc51d2252f6  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.02%  ││││││││  0x00007fc51d22527f: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.07%    0.15%  ││││││││  0x00007fc51d225281: test   %rbx,%rbx
                  ││││││││  0x00007fc51d225284: jne    0x00007fc51d225841  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.15%    0.25%  ││││││││  0x00007fc51d22528a: cmp    $0x40,%ecx
                  ││││││││  0x00007fc51d22528d: jge    0x00007fc51d225861  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.02%  ││││││││  0x00007fc51d225293: or     %rsi,%r9
  0.02%    0.02%  ││││││││  0x00007fc51d225296: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.07%  ││││││││  0x00007fc51d22529a: add    $0x20,%rdi
  0.14%    0.17%  ││││││││  0x00007fc51d22529e: shr    $0x3,%r10
  0.01%    0.02%  ││││││││  0x00007fc51d2252a2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.01%  ││││││││  0x00007fc51d2252a5: mov    %rdi,%r10
  0.07%    0.07%  ││││││││  0x00007fc51d2252a8: add    $0x5,%eax
  0.13%    0.25%  ││││││││  0x00007fc51d2252ab: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.05%  ││││││││  0x00007fc51d2252ae: shr    $0x9,%r10
  0.02%    0.02%  ││││││││  0x00007fc51d2252b2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.09%    0.12%  ││││││││  0x00007fc51d2252b6: xor    %eax,%eax
  0.16%    0.30%  ││││││││  0x00007fc51d2252b8: add    $0x70,%rsp
  0.03%    0.07%  ││││││││  0x00007fc51d2252bc: pop    %rbp
  0.04%    0.01%  ││││││││  0x00007fc51d2252bd: test   %eax,0x17418d3d(%rip)        # 0x00007fc53463e000
                  ││││││││                                                ;   {poll_return}
  0.08%    0.14%  ││││││││  0x00007fc51d2252c3: retq   
                  ↘│││││││  0x00007fc51d2252c4: mov    $0x1,%ebp
                   │││╰│││  0x00007fc51d2252c9: jmpq   0x00007fc51d224fad
                   ↘││ │││  0x00007fc51d2252ce: mov    $0x1,%ebp
                    ││ ╰││  0x00007fc51d2252d3: jmpq   0x00007fc51d225010
                    ↘│  ││  0x00007fc51d2252d8: mov    $0x1,%ebp
                     │  ╰│  0x00007fc51d2252dd: jmpq   0x00007fc51d2250e7
                     ↘   │  0x00007fc51d2252e2: mov    $0x1,%ebp
                         ╰  0x00007fc51d2252e7: jmpq   0x00007fc51d225183
                            0x00007fc51d2252ec: mov    $0x1,%ebp
....................................................................................................
 14.68%   17.16%  <total for region 3>

....[Hottest Regions]...............................................................................
 37.73%   37.72%         C2, level 4  com.google.re2j.Machine::match, version 544 (1459 bytes) 
 30.27%   28.52%         C2, level 4  com.google.re2j.Machine::match, version 544 (210 bytes) 
 14.68%   17.16%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 514 (867 bytes) 
  5.57%    6.69%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 509 (367 bytes) 
  5.53%    3.44%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 509 (348 bytes) 
  1.94%    2.50%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 509 (128 bytes) 
  1.11%    1.33%         C2, level 4  com.google.re2j.Machine::match, version 544 (229 bytes) 
  0.44%    0.43%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.10%         C2, level 4  com.google.re2j.Pattern::find, version 548 (12 bytes) 
  0.10%    0.09%         C2, level 4  com.google.re2j.Machine::match, version 544 (98 bytes) 
  0.09%    0.07%         C2, level 4  com.google.re2j.Pattern::find, version 548 (8 bytes) 
  0.09%    0.08%         C2, level 4  com.google.re2j.Pattern::find, version 548 (0 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (74 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.05%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 548 (0 bytes) 
  0.05%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Pattern::find, version 548 (24 bytes) 
  1.89%    1.81%  <...other 405 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 69.40%   67.71%         C2, level 4  com.google.re2j.Machine::match, version 544 
 14.68%   17.16%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 514 
 13.04%   12.63%         C2, level 4  com.google.re2j.Inst$Alt2Inst::add, version 509 
  1.37%    1.17%   [kernel.kallsyms]  [unknown] 
  0.59%    0.33%         C2, level 4  com.google.re2j.Pattern::find, version 548 
  0.05%    0.06%        libc-2.26.so  vfprintf 
  0.05%    0.12%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.05%         C2, level 4  java.util.Collections::shuffle, version 569 
  0.04%    0.02%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.04%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.03%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 624 
  0.03%    0.02%              [vdso]  [unknown] 
  0.03%    0.02%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%                 libc-2.26.so  _IO_fflush 
  0.02%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.40%    0.24%  <...other 62 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.81%   97.90%         C2, level 4
  1.37%    1.17%   [kernel.kallsyms]
  0.44%    0.53%           libjvm.so
  0.21%    0.29%        libc-2.26.so
  0.05%    0.03%      hsdis-amd64.so
  0.04%    0.04%  libpthread-2.26.so
  0.03%    0.02%              [vdso]
  0.02%    0.01%         interpreter
  0.01%                 runtime stub
  0.01%                  C1, level 3
  0.00%               perf-15713.map
  0.00%                    libnet.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  8386.900 ± 35.982  ops/s
Re2jFindRegex.testCombine:·asm  thrpt            NaN             ---
