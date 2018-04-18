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
# Warmup Iteration   1: 12101.077 ops/s
# Warmup Iteration   2: 20542.668 ops/s
# Warmup Iteration   3: 20547.998 ops/s
# Warmup Iteration   4: 20541.933 ops/s
# Warmup Iteration   5: 20593.040 ops/s
# Warmup Iteration   6: 20548.869 ops/s
# Warmup Iteration   7: 20573.676 ops/s
# Warmup Iteration   8: 20537.644 ops/s
# Warmup Iteration   9: 20515.529 ops/s
# Warmup Iteration  10: 20530.498 ops/s
# Warmup Iteration  11: 20553.456 ops/s
# Warmup Iteration  12: 20560.624 ops/s
# Warmup Iteration  13: 20569.537 ops/s
# Warmup Iteration  14: 20571.280 ops/s
# Warmup Iteration  15: 20498.186 ops/s
# Warmup Iteration  16: 20197.075 ops/s
# Warmup Iteration  17: 20437.804 ops/s
# Warmup Iteration  18: 19938.543 ops/s
# Warmup Iteration  19: 20467.697 ops/s
# Warmup Iteration  20: 20466.220 ops/s
Iteration   1: 20462.542 ops/s
Iteration   2: 20452.754 ops/s
Iteration   3: 20455.917 ops/s
Iteration   4: 18986.552 ops/s
Iteration   5: 20619.877 ops/s
Iteration   6: 20633.221 ops/s
Iteration   7: 20638.220 ops/s
Iteration   8: 20637.955 ops/s
Iteration   9: 20616.965 ops/s
Iteration  10: 20623.627 ops/s
Iteration  11: 20545.302 ops/s
Iteration  12: 19866.466 ops/s
Iteration  13: 19507.668 ops/s
Iteration  14: 19502.076 ops/s
Iteration  15: 19500.590 ops/s
Iteration  16: 19499.161 ops/s
Iteration  17: 19498.436 ops/s
Iteration  18: 19501.268 ops/s
Iteration  19: 19500.175 ops/s
Iteration  20: 19494.905 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20027.184 ±(99.9%) 500.785 ops/s [Average]
  (min, avg, max) = (18986.552, 20027.184, 20638.220), stdev = 576.705
  CI (99.9%): [19526.399, 20527.969] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 194903 total address lines.
Perf output processed (skipped 23.436 seconds):
 Column 1: cycles (20562 events)
 Column 2: instructions (20556 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 546 (1497 bytes) 

                                                       0x00007eff1123e69b: or     $0x1,%r9d
                                                       0x00007eff1123e69f: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@96 (line 199)
                                                       0x00007eff1123e6a3: sar    $0x3,%r9d          ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@111 (line 201)
                                                       0x00007eff1123e6a7: vmovd  %xmm1,%r10d
                                                       0x00007eff1123e6ac: test   %r10d,%r10d
                                                       0x00007eff1123e6af: jne    0x00007eff1123f8fd  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::match@115 (line 204)
                                                       0x00007eff1123e6b5: vmovd  %xmm0,%ecx
  0.00%    0.01%                                       0x00007eff1123e6b9: test   %ecx,%ecx
                                                       0x00007eff1123e6bb: jl     0x00007eff1123ece1  ;*ifge
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@21 (line 179)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007eff1123e6c1: mov    $0x5,%r10d         ;*iload_1
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007eff1123e6c7: cmp    $0xa,%ecx
                                                       0x00007eff1123e6ca: je     0x00007eff1123ecfa  ;*iload_0
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
                                                       0x00007eff1123e6d0: mov    %ecx,%r11d
  0.01%    0.01%                                       0x00007eff1123e6d3: add    $0xffffffbf,%r11d
                                                       0x00007eff1123e6d7: cmp    $0x1a,%r11d
                  ╭                                    0x00007eff1123e6db: jb     0x00007eff1123e6eb  ;*if_icmple
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  │                                    0x00007eff1123e6dd: mov    %ecx,%edi
                  │                                    0x00007eff1123e6df: add    $0xffffff9f,%edi
           0.01%  │                                    0x00007eff1123e6e2: cmp    $0x1a,%edi
                  │                                    0x00007eff1123e6e5: jae    0x00007eff1123ed03  ;*iconst_1
                  │                                                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │                                                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │                                                                                  ; - com.google.re2j.Machine::match@121 (line 205)
                  ↘                                    0x00007eff1123e6eb: or     $0x10,%r10d        ;*iload_2
                                                                                                     ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                                     ; - com.google.re2j.Machine::match@121 (line 205)
  0.00%                                                0x00007eff1123e6ef: mov    %ebx,%r11d
                                                       0x00007eff1123e6f2: test   %r11d,%r11d
                                                       0x00007eff1123e6f5: jne    0x00007eff1123f885  ;*aload
                                                                                                     ; - com.google.re2j.Machine::match@136 (line 211)
  0.01%    0.00%                                       0x00007eff1123e6fb: mov    %r8d,0x34(%rsp)
  0.00%                                                0x00007eff1123e700: mov    %r9d,0x28(%rsp)
  0.01%                                                0x00007eff1123e705: mov    %ecx,0x24(%rsp)
           0.00%                                       0x00007eff1123e709: mov    %r11d,0x30(%rsp)
  0.00%    0.01%                                       0x00007eff1123e70e: mov    0x68(%rsp),%r11d
                                                       0x00007eff1123e713: and    $0x4,%r11d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
                                                       0x00007eff1123e717: mov    %r11d,0x38(%rsp)
  0.00%                                                0x00007eff1123e71c: mov    %r13,%r11
                                                       0x00007eff1123e71f: shl    $0x3,%r11          ;*getfield q1
                                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                                       0x00007eff1123e723: mov    %r11,0x50(%rsp)
  0.00%                                                0x00007eff1123e728: xor    %eax,%eax
                                                       0x00007eff1123e72a: xor    %r11d,%r11d
  0.00%                                                0x00007eff1123e72d: mov    %r11d,0x3c(%rsp)
                   ╭                                   0x00007eff1123e732: jmpq   0x00007eff1123ea94
  0.00%    0.01%   │                ↗                  0x00007eff1123e737: or     $0xa,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                   │                │                                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%   │╭               │                  0x00007eff1123e73b: jmpq   0x00007eff1123eb6e
  0.01%            ││             ↗ │                  0x00007eff1123e740: mov    $0x5,%r10d
                   ││╭            │ │                  0x00007eff1123e746: jmpq   0x00007eff1123eb57
  0.33%    0.44%   │││   ↗↗↗      │ │                  0x00007eff1123e74b: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@199 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.30%    0.40%   │││   │││      │ │                  0x00007eff1123e750: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007eff1123fd91
  0.34%    0.14%   │││   │││      │ │                  0x00007eff1123e755: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   │││   │││      │ │                  0x00007eff1123e75b: jne    0x00007eff1123f4b1
  0.12%    0.07%   │││   │││      │ │                  0x00007eff1123e761: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%    0.00%   │││   │││      │ │                  0x00007eff1123e765: vmovq  %r9,%xmm2
  0.01%    0.02%   │││   │││      │ │                  0x00007eff1123e76a: mov    0x18(%r9),%r9d     ;*getfield pc
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.01%   │││   │││      │ │                  0x00007eff1123e76e: vmovd  %r9d,%xmm5
  0.11%    0.07%   │││   │││      │ │                  0x00007eff1123e773: mov    0x50(%rsp),%r9
           0.01%   │││   │││      │ │                  0x00007eff1123e778: mov    0x10(%r9),%r9      ;*getfield pcsl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
                   │││   │││      │ │                                                                ; implicit exception: dispatches to 0x00007eff1123fdad
  0.01%    0.00%   │││   │││      │ │                  0x00007eff1123e77c: vmovd  %xmm5,%ecx
  0.13%    0.12%   │││   │││      │ │                  0x00007eff1123e780: cmp    $0x40,%ecx
                   │││   │││      │ │                  0x00007eff1123e783: jg     0x00007eff1123f59d  ;*if_icmpgt
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.11%   │││   │││      │ │                  0x00007eff1123e789: mov    $0x1,%edi
                   │││   │││      │ │                  0x00007eff1123e78e: shl    %cl,%rdi           ;*lshl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.23%    0.22%   │││   │││      │ │                  0x00007eff1123e791: mov    %r9,%rcx
  0.00%            │││   │││      │ │                  0x00007eff1123e794: and    %rdi,%rcx          ;*land
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.01%   │││   │││      │ │                  0x00007eff1123e797: test   %rcx,%rcx
                   │││   │││      │ │                  0x00007eff1123e79a: jne    0x00007eff1123f621  ;*ifeq
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.10%   │││   │││      │ │                  0x00007eff1123e7a0: vmovd  %xmm5,%ecx
           0.01%   │││   │││      │ │                  0x00007eff1123e7a4: cmp    $0x40,%ecx
                   │││   │││      │ │                  0x00007eff1123e7a7: jge    0x00007eff1123f6a1  ;*if_icmpge
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.10%   │││   │││      │ │                  0x00007eff1123e7ad: mov    0x50(%rsp),%rcx
                   │││   │││      │ │                  0x00007eff1123e7b2: mov    %r12b,0x18(%rcx)   ;*putfield empty
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.05%   │││   │││      │ │                  0x00007eff1123e7b6: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.02%   │││   │││      │ │                  0x00007eff1123e7b9: vmovd  %ecx,%xmm4
  0.12%    0.06%   │││   │││      │ │                  0x00007eff1123e7bd: mov    0x50(%rsp),%rcx
           0.02%   │││   │││      │ │                  0x00007eff1123e7c2: mov    0xc(%rcx),%ebp     ;*getfield size
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.08%   │││   │││      │ │                  0x00007eff1123e7c5: or     %r9,%rdi
  0.01%    0.04%   │││   │││      │ │                  0x00007eff1123e7c8: mov    %rdi,0x10(%rcx)    ;*putfield pcsl
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.10%    0.05%   │││   │││      │ │                  0x00007eff1123e7cc: mov    %ebp,%r9d
  0.01%    0.00%   │││   │││      │ │                  0x00007eff1123e7cf: inc    %r9d
  0.04%    0.10%   │││   │││      │ │                  0x00007eff1123e7d2: mov    %r9d,0xc(%rcx)     ;*putfield size
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.01%   │││   │││      │ │                  0x00007eff1123e7d6: vmovd  %xmm4,%r9d
  0.03%    0.09%   │││   │││      │ │                  0x00007eff1123e7db: mov    0xc(%r12,%r9,8),%r9d  ; implicit exception: dispatches to 0x00007eff1123fdc1
  0.23%    0.12%   │││   │││      │ │                  0x00007eff1123e7e0: cmp    %r9d,%ebp
                   │││   │││      │ │                  0x00007eff1123e7e3: jae    0x00007eff1123f431
  0.24%    0.24%   │││   │││      │ │                  0x00007eff1123e7e9: vmovd  %xmm4,%r9d
  0.01%    0.00%   │││   │││      │ │                  0x00007eff1123e7ee: mov    0x8(%r12,%r9,8),%ecx
  0.02%    0.01%   │││   │││      │ │                  0x00007eff1123e7f3: cmp    $0xf8019807,%ecx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   │││   │││      │ │                  0x00007eff1123e7f9: jne    0x00007eff1123f519  ;*aastore
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.09%   │││   │││      │ │                  0x00007eff1123e7ff: shl    $0x3,%r9           ;*getfield denseThreadsInstructions
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.06%   │││   │││      │ │                  0x00007eff1123e803: lea    0x10(%r9,%rbp,4),%r9
                   │││   │││      │ │                  0x00007eff1123e808: vmovq  %xmm2,%rcx
  0.02%    0.03%   │││   │││      │ │                  0x00007eff1123e80d: shr    $0x3,%rcx
  0.07%    0.05%   │││   │││      │ │                  0x00007eff1123e811: mov    %ecx,(%r9)
  0.23%    0.24%   │││   │││      │ │                  0x00007eff1123e814: shr    $0x9,%r9
  0.00%    0.00%   │││   │││      │ │                  0x00007eff1123e818: movabs $0x7eff20d45000,%rcx
  0.03%    0.02%   │││   │││      │ │                  0x00007eff1123e822: mov    %r12b,(%rcx,%r9,1)  ;*aastore
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   │││   │││      │ │                                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::step@214 (line 317)
                   │││   │││      │ │                                                                ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.25%   │││╭  │││      │ │                  0x00007eff1123e826: jmpq   0x00007eff1123e943
  0.40%    0.24%   ││││  │││      │ │     ↗            0x00007eff1123e82b: or     $0x20,%r10d        ;*iload_2
                   ││││  │││      │ │     │                                                          ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                   ││││  │││      │ │     │                                                          ; - com.google.re2j.Machine::match@326 (line 245)
  0.23%    0.26%   ││││  │││      │ │     │↗           0x00007eff1123e82f: mov    0x60(%rsp),%r11
  0.24%    0.27%   ││││  │││      │ │     ││           0x00007eff1123e834: mov    0x14(%r11),%r11d   ;*getfield re2
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@1 (line 280)
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.67%    0.71%   ││││  │││      │ │     ││           0x00007eff1123e838: movzbl 0x18(%r12,%r11,8),%r14d  ;*getfield longest
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@4 (line 280)
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   ││││  │││      │ │     ││                                                         ; implicit exception: dispatches to 0x00007eff1123fd2d
  1.10%    1.16%   ││││  │││      │ │     ││           0x00007eff1123e83e: mov    0x2c(%rsp),%r11d
  0.15%    0.23%   ││││  │││      │ │     ││           0x00007eff1123e843: mov    0xc(%r12,%r11,8),%eax  ;*getfield size
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@10 (line 281)
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.02%   ││││  │││      │ │     ││           0x00007eff1123e848: mov    0x3c(%rsp),%r8d
  0.05%    0.06%   ││││  │││      │ │     ││           0x00007eff1123e84d: add    0x20(%rsp),%r8d    ;*iadd
                   ││││  │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@340 (line 246)
  0.45%    0.50%   ││││  │││      │ │     ││           0x00007eff1123e852: test   %eax,%eax
                   ││││╭ │││      │ │     ││           0x00007eff1123e854: jle    0x00007eff1123e94b  ;*if_icmpge
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@40 (line 286)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.15%    0.17%   │││││ │││      │ │     ││           0x00007eff1123e85a: mov    0x24(%r12,%r11,8),%r9d  ;*getfield denseThreadsCapture
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@28 (line 284)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%            │││││ │││      │ │     ││           0x00007eff1123e85f: vmovd  %r9d,%xmm1
  0.06%    0.05%   │││││ │││      │ │     ││           0x00007eff1123e864: mov    0x20(%r12,%r11,8),%r11d  ;*getfield denseThreadsInstructions
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@22 (line 283)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.46%    0.50%   │││││ │││      │ │     ││           0x00007eff1123e869: vmovd  %r11d,%xmm0
  0.23%    0.17%   │││││ │││      │ │     ││           0x00007eff1123e86e: mov    0x60(%rsp),%r11
           0.05%   │││││ │││      │ │     ││           0x00007eff1123e873: movzbl 0x11(%r11),%ecx    ;*getfield captures
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@16 (line 282)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.06%   │││││ │││      │ │     ││           0x00007eff1123e878: mov    0x70(%rsp),%r11
  0.47%    0.51%   │││││ │││      │ │     ││           0x00007eff1123e87d: mov    0x10(%r11),%r9d
  0.24%    0.18%   │││││ │││      │ │     ││           0x00007eff1123e881: mov    0x3c(%rsp),%ebx
  0.03%    0.02%   │││││ │││      │ │     ││           0x00007eff1123e885: mov    $0x1,%r11d
  0.03%    0.05%   │││││ │││      │ │     ││           0x00007eff1123e88b: xor    %esi,%esi
  0.45%    0.47%   │││││ │││      │ │     ││           0x00007eff1123e88d: cmp    %r9d,%ebx
  0.23%    0.22%   │││││ │││      │ │     ││           0x00007eff1123e890: cmovne %esi,%r11d         ;*invokespecial step
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.24%    0.18%   │││││ │││      │ │     ││           0x00007eff1123e894: vmovd  %r11d,%xmm3
  0.46%    0.49%   │││││ │││      │ │     ││           0x00007eff1123e899: test   %ecx,%ecx
                   │││││ │││      │ │     ││           0x00007eff1123e89b: jne    0x00007eff1123f081  ;*iload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@43 (line 289)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.18%   │││││ │││      │ │     ││           0x00007eff1123e8a1: vmovd  %xmm0,%r9d
  0.02%    0.02%   │││││ │││      │ │     ││           0x00007eff1123e8a6: mov    0xc(%r12,%r9,8),%r9d  ;*aaload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@99 (line 299)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ │││      │ │     ││                                                         ; implicit exception: dispatches to 0x00007eff1123f081
  0.04%    0.06%   │││││ │││      │ │     ││           0x00007eff1123e8ab: test   %r9d,%r9d
                   │││││ │││      │ │     ││           0x00007eff1123e8ae: jbe    0x00007eff1123f081
  0.49%    0.30%   │││││ │││      │ │     ││           0x00007eff1123e8b4: mov    %eax,%ebx
  0.19%    0.23%   │││││ │││      │ │     ││           0x00007eff1123e8b6: dec    %ebx
  0.02%    0.02%   │││││ │││      │ │     ││           0x00007eff1123e8b8: cmp    %r9d,%ebx
                   │││││ │││      │ │     ││           0x00007eff1123e8bb: jae    0x00007eff1123f081
  0.05%    0.05%   │││││ │││      │ │     ││           0x00007eff1123e8c1: vmovd  %xmm0,%r11d
  0.38%    0.55%   │││││ │││      │ │     ││           0x00007eff1123e8c6: lea    (%r12,%r11,8),%rbx
  0.19%    0.17%   │││││ │││      │ │     ││           0x00007eff1123e8ca: xor    %r11d,%r11d
  0.04%    0.03%   │││││ │││      │ │     ││           0x00007eff1123e8cd: data16 xchg %ax,%ax       ;*iload
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::step@43 (line 289)
                   │││││ │││      │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.34%    1.29%   │││││ │││↗     │ │     ││           0x00007eff1123e8d0: mov    0x10(%rbx,%r11,4),%ecx  ;*aaload
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@99 (line 299)
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.91%    0.83%   │││││ ││││     │ │     ││           0x00007eff1123e8d5: mov    0xc(%r12,%rcx,8),%r9d  ;*getfield op
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@104 (line 301)
                   │││││ ││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
                   │││││ ││││     │ │     ││                                                         ; implicit exception: dispatches to 0x00007eff1123fcdd
  1.28%    1.19%   │││││ ││││     │ │     ││           0x00007eff1123e8da: cmp    $0x6,%r9d
                   │││││╭││││     │ │     ││           0x00007eff1123e8de: je     0x00007eff1123ec97  ;*if_icmpne
                   ││││││││││     │ │     ││                                                         ; - com.google.re2j.Machine::step@109 (line 301)
                   ││││││││││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.10%    0.81%   ││││││││││     │ │     ││           0x00007eff1123e8e4: cmp    $0xa,%r9d
                   ││││││╰│││     │ │     ││           0x00007eff1123e8e8: je     0x00007eff1123e74b  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@6 (line 90)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.38%    1.35%   ││││││ │││     │ │     ││           0x00007eff1123e8ee: cmp    $0xb,%r9d
                   ││││││ │││     │ │     ││           0x00007eff1123e8f2: je     0x00007eff1123eda9  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@17 (line 94)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.20%    1.25%   ││││││ │││     │ │     ││           0x00007eff1123e8f8: cmp    $0x9,%r9d
                   ││││││ │││     │ │     ││           0x00007eff1123e8fc: je     0x00007eff1123ee2d  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@38 (line 98)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.22%    0.92%   ││││││ │││     │ │     ││           0x00007eff1123e902: cmp    $0xc,%r9d
                   ││││││ │││     │ │     ││           0x00007eff1123e906: jne    0x00007eff1123ed26  ;*if_icmpne
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@61 (line 102)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.14%    1.40%   ││││││ │││     │ │     ││           0x00007eff1123e90c: mov    0x1c(%r12,%rcx,8),%edi  ;*getfield f0
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@65 (line 103)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││ │││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.92%    0.85%   ││││││ │││     │ │     ││           0x00007eff1123e911: cmp    %edx,%edi
                   ││││││ ╰││     │ │     ││           0x00007eff1123e913: je     0x00007eff1123e74b  ;*if_icmpeq
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@69 (line 103)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.53%    1.71%   ││││││  ││     │ │     ││           0x00007eff1123e919: mov    0x20(%r12,%rcx,8),%r9d  ;*getfield f1
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@73 (line 103)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││  ││     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.63%    0.78%   ││││││  ││     │ │     ││           0x00007eff1123e91e: cmp    %edx,%r9d
                   ││││││  ╰│     │ │     ││           0x00007eff1123e921: je     0x00007eff1123e74b  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@77 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.33%    1.49%   ││││││   │     │ │     ││           0x00007eff1123e927: mov    0x24(%r12,%rcx,8),%r9d  ;*getfield f2
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@81 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.95%    0.98%   ││││││   │     │ │     ││           0x00007eff1123e92c: cmp    %edx,%r9d
                   ││││││   │     │ │     ││           0x00007eff1123e92f: je     0x00007eff1123eeb1  ;*if_icmpeq
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@85 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.78%    2.02%   ││││││   │     │ │     ││           0x00007eff1123e935: mov    0x28(%r12,%rcx,8),%r9d  ;*getfield f3
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Inst::matchRune@89 (line 103)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@191 (line 316)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.52%    0.62%   ││││││   │     │ │     ││           0x00007eff1123e93a: cmp    %edx,%r9d
                   ││││││   │     │ │     ││           0x00007eff1123e93d: je     0x00007eff1123ef31  ;*aload
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@219 (line 320)
                   ││││││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  1.04%    1.12%   │││↘││   │     │ │     ││           0x00007eff1123e943: inc    %r11d              ;*iinc
                   │││ ││   │     │ │     ││                                                         ; - com.google.re2j.Machine::step@230 (line 286)
                   │││ ││   │     │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.62%    0.73%   │││ ││   │     │ │     ││           0x00007eff1123e946: cmp    %eax,%r11d
                   │││ ││   ╰     │ │     ││           0x00007eff1123e949: jl     0x00007eff1123e8d0  ;*if_icmpge
                   │││ ││         │ │     ││                                                         ; - com.google.re2j.Machine::step@40 (line 286)
                   │││ ││         │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.41%   │││ ↘│         │ │     ││           0x00007eff1123e94b: mov    0x2c(%rsp),%r9d
  0.13%    0.16%   │││  │         │ │     ││           0x00007eff1123e950: movzbl 0x18(%r12,%r9,8),%r9d
  0.18%    0.22%   │││  │         │ │     ││           0x00007eff1123e956: test   %r9d,%r9d
                   │││  │    ╭    │ │     ││           0x00007eff1123e959: jne    0x00007eff1123e97d  ;*ifeq
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.19%    0.18%   │││  │    │    │ │     ││           0x00007eff1123e95b: mov    0x2c(%rsp),%r11d
  0.27%    0.36%   │││  │    │    │ │     ││           0x00007eff1123e960: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield pcs
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.13%    0.14%   │││  │    │    │ │     ││           0x00007eff1123e965: movb   $0x1,0x18(%r12,%r11,8)  ;*putfield empty
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.35%    0.57%   │││  │    │    │ │     ││           0x00007eff1123e96b: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.66%    1.03%   │││  │    │    │ │     ││           0x00007eff1123e970: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.41%    0.69%   │││  │    │    │ │     ││           0x00007eff1123e975: test   %ebp,%ebp
                   │││  │    │    │ │     ││           0x00007eff1123e977: jne    0x00007eff1123f281  ;*invokevirtual clear
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::step@237 (line 324)
                   │││  │    │    │ │     ││                                                         ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%    0.05%   │││  │    ↘    │ │     ││           0x00007eff1123e97d: mov    0x60(%rsp),%r11
  0.27%    0.45%   │││  │         │ │     ││           0x00007eff1123e982: movzbl 0x10(%r11),%eax    ;*getfield matched
                   │││  │         │ │     ││                                                         ; - com.google.re2j.Machine::match@378 (line 250)
  0.40%    0.53%   │││  │         │ │     ││           0x00007eff1123e987: mov    0x60(%rsp),%r11
  0.23%    0.31%   │││  │         │ │     ││           0x00007eff1123e98c: movzbl 0x11(%r11),%ebp    ;*getfield captures
                   │││  │         │ │     ││                                                         ; - com.google.re2j.Machine::match@371 (line 250)
  0.13%    0.13%   │││  │         │ │     ││           0x00007eff1123e991: mov    0x20(%rsp),%r11d
  0.16%    0.25%   │││  │         │ │     ││           0x00007eff1123e996: test   %r11d,%r11d
                   │││  │     ╭   │ │     ││           0x00007eff1123e999: je     0x00007eff1123ebd9  ;*ifne
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@364 (line 247)
  0.26%    0.38%   │││  │     │   │ │     ││           0x00007eff1123e99f: test   %ebp,%ebp
                   │││  │     │   │ │     ││           0x00007eff1123e9a1: jne    0x00007eff1123f161  ;*ifne
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@374 (line 250)
  0.20%    0.24%   │││  │     │   │ │     ││           0x00007eff1123e9a7: test   %eax,%eax
                   │││  │     │   │ │     ││           0x00007eff1123e9a9: jne    0x00007eff1123f241  ;*ifeq
                   │││  │     │   │ │     ││                                                         ; - com.google.re2j.Machine::match@381 (line 250)
  0.03%    0.08%   │││  │     │   │ │     ││           0x00007eff1123e9af: cmp    $0xffffffff,%r13d
                   │││  │     │╭  │ │     ││           0x00007eff1123e9b3: je     0x00007eff1123ec18  ;*if_icmpeq
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@403 (line 258)
  0.17%    0.24%   │││  │     ││  │ │     ││           0x00007eff1123e9b9: mov    %r13d,0x24(%rsp)
  0.24%    0.34%   │││  │     ││  │ │     ││           0x00007eff1123e9be: mov    0x70(%rsp),%r11
  1.11%    1.59%   │││  │     ││  │ │     ││           0x00007eff1123e9c3: mov    0x10(%r11),%r11d   ;*getfield end
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.89%    1.23%   │││  │     ││  │ │     ││           0x00007eff1123e9c7: mov    0x34(%rsp),%r9d
  0.08%    0.11%   │││  │     ││  │ │     ││           0x00007eff1123e9cc: add    %r8d,%r9d
  0.20%    0.22%   │││  │     ││  │ │     ││           0x00007eff1123e9cf: mov    0x70(%rsp),%rcx
  0.20%    0.34%   │││  │     ││  │ │     ││           0x00007eff1123e9d4: add    0xc(%rcx),%r9d     ;*iadd
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                   │││  │     ││  │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.56%    0.54%   │││  │     ││  │ │     ││           0x00007eff1123e9d8: cmp    %r11d,%r9d
                   │││  │     ││╭ │ │     ││           0x00007eff1123e9db: jge    0x00007eff1123ec2b  ;*if_icmpge
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.42%    0.47%   │││  │     │││ │ │     ││           0x00007eff1123e9e1: mov    0x14(%rcx),%ebp    ;*getfield str
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.18%    0.23%   │││  │     │││ │ │     ││           0x00007eff1123e9e4: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007eff1123fd3d
  1.29%    1.13%   │││  │     │││ │ │     ││           0x00007eff1123e9e9: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                   │││  │     │││ │ │     ││           0x00007eff1123e9f0: jne    0x00007eff1123f045
  0.34%    0.24%   │││  │     │││ │ │     ││           0x00007eff1123e9f6: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.06%   │││  │     │││ │ │     ││           0x00007eff1123e9fa: test   %r9d,%r9d
                   │││  │     │││ │ │     ││           0x00007eff1123e9fd: jl     0x00007eff1123f1a5  ;*iflt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@1 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.15%    0.26%   │││  │     │││ │ │     ││           0x00007eff1123ea03: mov    0xc(%rbx),%edi     ;*getfield value
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@6 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.18%    0.22%   │││  │     │││ │ │     ││           0x00007eff1123ea06: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@9 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
                   │││  │     │││ │ │     ││                                                         ; implicit exception: dispatches to 0x00007eff1123fd51
  2.42%    2.42%   │││  │     │││ │ │     ││           0x00007eff1123ea0b: cmp    %ebp,%r9d
                   │││  │     │││ │ │     ││           0x00007eff1123ea0e: jge    0x00007eff1123f2b9  ;*if_icmplt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@10 (line 657)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.69%    0.67%   │││  │     │││ │ │     ││           0x00007eff1123ea14: cmp    %ebp,%r9d
                   │││  │     │││ │ │     ││           0x00007eff1123ea17: jae    0x00007eff1123f001
  0.10%    0.08%   │││  │     │││ │ │     ││           0x00007eff1123ea1d: lea    (%r12,%rdi,8),%r11
  0.01%    0.02%   │││  │     │││ │ │     ││           0x00007eff1123ea21: movzwl 0x10(%r11,%r9,2),%ecx  ;*caload
                   │││  │     │││ │ │     ││                                                         ; - java.lang.String::charAt@27 (line 660)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@2 (line 4866)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.11%   │││  │     │││ │ │     ││           0x00007eff1123ea27: cmp    $0xd800,%ecx
                   │││  │     │││ │ │     ││           0x00007eff1123ea2d: jge    0x00007eff1123f305  ;*if_icmplt
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                   │││  │     │││ │ │     ││                                                         ; - java.lang.Character::codePointAt@9 (line 4867)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.57%    0.67%   │││  │     │││ │ │     ││           0x00007eff1123ea33: shl    $0x3,%ecx          ;*ishl
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.14%    0.11%   │││  │     │││ │ │     ││           0x00007eff1123ea36: mov    %ecx,%ebx
  0.01%    0.01%   │││  │     │││ │ │     ││           0x00007eff1123ea38: and    $0x7,%ebx
  0.62%    0.57%   │││  │     │││ │ │     ││           0x00007eff1123ea3b: or     $0x1,%ecx
  0.03%    0.07%   │││  │     │││ │ │     ││           0x00007eff1123ea3e: or     $0x1,%ebx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.56%   │││  │     │││ │ │     ││           0x00007eff1123ea41: sar    $0x3,%ecx          ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1348}
                   │││  │     │││ │ │     ││                                                         ;*goto
                   │││  │     │││ │ │     ││                                                         ; - com.google.re2j.Machine::match@441 (line 266)
  0.00%    0.01%   │││  │     │││ │ │     ││ ↗↗        0x00007eff1123ea44: test   %eax,0x170fe5b6(%rip)        # 0x00007eff2833d000
                   │││  │     │││ │ │     ││ ││                                                      ;*goto
                   │││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@441 (line 266)
                   │││  │     │││ │ │     ││ ││                                                      ;   {poll}
  0.02%    0.02%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea4a: mov    0x60(%rsp),%r11
  0.03%    0.02%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea4f: mov    0x14(%r11),%r11d   ;*getfield re2
                   │││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.68%    0.46%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea53: vmovd  %r11d,%xmm2
  0.02%    0.03%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea58: mov    0x60(%rsp),%r11
           0.01%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea5d: mov    0x28(%r11),%edx    ;*getfield matchcap
                   │││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.06%    0.03%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea61: mov    0x50(%rsp),%r11
  0.69%    0.33%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea66: shr    $0x3,%r11
  0.01%    0.01%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea6a: mov    %r11d,0x2c(%rsp)
  0.01%            │││  │     │││ │ │     ││ ││        0x00007eff1123ea6f: mov    0x34(%rsp),%r9d
  0.03%    0.03%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea74: mov    %r9d,0x20(%rsp)
  0.57%    0.24%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea79: mov    %r8d,0x3c(%rsp)
  0.02%    0.01%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea7e: mov    %ebx,0x34(%rsp)
  0.01%            │││  │     │││ │ │     ││ ││        0x00007eff1123ea82: mov    %ecx,0x28(%rsp)
  0.06%    0.04%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea86: mov    0x10(%rsp),%r11
  0.53%    0.34%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea8b: mov    %r11,0x50(%rsp)
  0.02%    0.02%   │││  │     │││ │ │     ││ ││        0x00007eff1123ea90: vmovd  %edx,%xmm3         ;*aload
                   │││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@136 (line 211)
                   ↘││  │     │││ │ │     ││ ││        0x00007eff1123ea94: mov    0x2c(%rsp),%r11d
  0.06%    0.05%    ││  │     │││ │ │     ││ ││        0x00007eff1123ea99: movzbl 0x18(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x00007eff1123fced
  0.64%    0.48%    ││  │     │││ │ │     ││ ││        0x00007eff1123ea9f: test   %r8d,%r8d
                    ││  │     │││╭│ │     ││ ││        0x00007eff1123eaa2: je     0x00007eff1123ead6  ;*ifeq
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.03%    0.01%    ││  │     │││││ │     ││ ││        0x00007eff1123eaa4: mov    0x38(%rsp),%r8d
           0.01%    ││  │     │││││ │     ││ ││        0x00007eff1123eaa9: test   %r8d,%r8d
                    ││  │     │││││ │     ││ ││        0x00007eff1123eaac: jne    0x00007eff1123f399  ;*ifeq
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@148 (line 212)
  0.02%    0.00%    ││  │     │││││ │     ││ ││        0x00007eff1123eab2: test   %eax,%eax
                    ││  │     │││││ │     ││ ││        0x00007eff1123eab4: jne    0x00007eff1123f3e5  ;*ifeq
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.52%    0.34%    ││  │     │││││ │     ││ ││        0x00007eff1123eaba: vmovd  %xmm2,%r11d
  0.00%    0.01%    ││  │     │││││ │     ││ ││        0x00007eff1123eabf: mov    0x24(%r12,%r11,8),%r11d  ;*getfield prefix
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                    ││  │     │││││ │     ││ ││                                                      ; implicit exception: dispatches to 0x00007eff1123fd61
                    ││  │     │││││ │     ││ ││        0x00007eff1123eac4: mov    0xc(%r12,%r11,8),%r8d  ;*getfield value
                    ││  │     │││││ │     ││ ││                                                      ; - java.lang.String::isEmpty@1 (line 635)
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     ││ ││                                                      ; implicit exception: dispatches to 0x00007eff1123fd71
  0.02%    0.05%    ││  │     │││││ │     ││ ││        0x00007eff1123eac9: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength
                    ││  │     │││││ │     ││ ││                                                      ; - java.lang.String::isEmpty@4 (line 635)
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                    ││  │     │││││ │     ││ ││                                                      ; implicit exception: dispatches to 0x00007eff1123fd81
  0.90%    1.00%    ││  │     │││││ │     ││ ││        0x00007eff1123eace: test   %ebp,%ebp
                    ││  │     │││││ │     ││ ││        0x00007eff1123ead0: jne    0x00007eff1123f351  ;*iload_3
                    ││  │     │││││ │     ││ ││                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.20%    0.33%    ││  │     │││↘│ │     ││ ││        0x00007eff1123ead6: test   %eax,%eax
                    ││  │     │││ │ │     ││ ││        0x00007eff1123ead8: jne    0x00007eff1123f111  ;*ifne
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@279 (line 237)
           0.00%    ││  │     │││ │ │     ││ ││        0x00007eff1123eade: mov    0x60(%rsp),%r11
  0.06%    0.04%    ││  │     │││ │ │     ││ ││        0x00007eff1123eae3: movzbl 0x11(%r11),%r9d    ;*getfield captures
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.41%    0.24%    ││  │     │││ │ │     ││ ││        0x00007eff1123eae8: test   %r9d,%r9d
                    ││  │     │││ │ │     ││ ││        0x00007eff1123eaeb: jne    0x00007eff1123f1f1  ;*ifeq
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.23%    0.25%    ││  │     │││ │ │     ││ ││        0x00007eff1123eaf1: mov    0x18(%r11),%r8d    ;*getfield prog
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@297 (line 243)
  0.00%             ││  │     │││ │ │     ││ ││        0x00007eff1123eaf5: mov    0x1c(%r12,%r8,8),%ebp  ;*getfield startInst
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                    ││  │     │││ │ │     ││ ││                                                      ; implicit exception: dispatches to 0x00007eff1123fcfd
  0.02%    0.02%    ││  │     │││ │ │     ││ ││        0x00007eff1123eafa: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007eff1123fd0d
  0.46%    0.37%    ││  │     │││ │ │     ││ ││        0x00007eff1123eaff: cmp    $0xf8019a09,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                    ││  │     │││ │ │     ││ ││        0x00007eff1123eb06: jne    0x00007eff1123efa5  ;*ifeq
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.33%    0.13%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb0c: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                    ││  │     │││ │ │     ││ ││        0x00007eff1123eb10: mov    0x2c(%rsp),%r11d
  0.05%    0.02%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb15: shl    $0x3,%r11          ;*aload
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.32%    0.11%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb19: mov    %r11,0x10(%rsp)
  0.34%    0.07%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb1e: vmovd  %xmm3,%r8d
  0.00%             ││  │     │││ │ │     ││ ││        0x00007eff1123eb23: shl    $0x3,%r8           ;*getfield matchcap
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.04%    0.04%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb27: mov    %r11,%rdx
  0.35%    0.09%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb2a: mov    0x3c(%rsp),%ecx
  0.30%    0.16%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb2e: xor    %edi,%edi
                    ││  │     │││ │ │     ││ ││        0x00007eff1123eb30: mov    0x60(%rsp),%r11
  0.02%             ││  │     │││ │ │     ││ ││        0x00007eff1123eb35: mov    %r11,(%rsp)
  0.35%    0.07%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb39: mov    %r9d,0x8(%rsp)
  0.30%    0.35%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb3e: mov    %r10d,%r9d
                    ││  │     │││ │ │     ││ ││        0x00007eff1123eb41: xchg   %ax,%ax
  0.01%    0.00%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb43: callq  0x00007eff11046020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1608}
                    ││  │     │││ │ │     ││ ││                                                      ;*invokevirtual add
                    ││  │     │││ │ │     ││ ││                                                      ; - com.google.re2j.Machine::match@318 (line 243)
                    ││  │     │││ │ │     ││ ││                                                      ;   {optimized virtual_call}
  0.17%    0.27%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb48: mov    0x24(%rsp),%edx
  0.10%    0.09%    ││  │     │││ │ │     ││ ││        0x00007eff1123eb4c: test   %edx,%edx
                    ││  │     │││ ╰ │     ││ ││        0x00007eff1123eb4e: jl     0x00007eff1123e740  ;*ifge
                    ││  │     │││   │     ││ ││                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                    ││  │     │││   │     ││ ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.47%    0.40%    ││  │     │││   │     ││ ││        0x00007eff1123eb54: xor    %r10d,%r10d        ;*iload_0
                    ││  │     │││   │     ││ ││                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                    ││  │     │││   │     ││ ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.24%    0.26%    │↘  │     │││   │     ││ ││        0x00007eff1123eb57: cmp    $0xa,%edx
                    │   │     │││  ╭│     ││ ││        0x00007eff1123eb5a: je     0x00007eff1123ec37  ;*iload_1
                    │   │     │││  ││     ││ ││                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                    │   │     │││  ││     ││ ││                                                      ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.03%    │   │     │││  ││     ││ ││↗       0x00007eff1123eb60: mov    0x28(%rsp),%r13d
  0.06%    0.02%    │   │     │││  ││     ││ │││       0x00007eff1123eb65: test   %r13d,%r13d
                    │   │     │││  │╰     ││ │││       0x00007eff1123eb68: jl     0x00007eff1123e737  ;*iload_1
                    │   │     │││  │      ││ │││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                    │   │     │││  │      ││ │││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.37%    0.44%    ↘   │     │││  │      ││ │││       0x00007eff1123eb6e: cmp    $0xa,%r13d
                        │     │││  │ ╭    ││ │││       0x00007eff1123eb72: je     0x00007eff1123ec40  ;*iload_0
                        │     │││  │ │    ││ │││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                        │     │││  │ │    ││ │││                                                     ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.22%        │     │││  │ │    ││ │││↗      0x00007eff1123eb78: mov    0x24(%rsp),%r11d
  0.03%    0.03%        │     │││  │ │    ││ ││││      0x00007eff1123eb7d: add    $0xffffffbf,%r11d
  0.03%    0.07%        │     │││  │ │    ││ ││││      0x00007eff1123eb81: cmp    $0x1a,%r11d
                        │     │││  │ │╭   ││ ││││      0x00007eff1123eb85: jb     0x00007eff1123eb9a  ;*if_icmple
                        │     │││  │ ││   ││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ ││   ││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ ││   ││ ││││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.43%    0.43%        │     │││  │ ││   ││ ││││      0x00007eff1123eb87: mov    0x24(%rsp),%r8d
  0.19%    0.18%        │     │││  │ ││   ││ ││││      0x00007eff1123eb8c: add    $0xffffff9f,%r8d
  0.03%    0.02%        │     │││  │ ││   ││ ││││      0x00007eff1123eb90: cmp    $0x1a,%r8d
                        │     │││  │ ││╭  ││ ││││      0x00007eff1123eb94: jae    0x00007eff1123ec49  ;*iconst_1
                        │     │││  │ │││  ││ ││││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │││  ││ ││││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │││  ││ ││││                                                    ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.07%        │     │││  │ │↘│  ││ ││││↗     0x00007eff1123eb9a: mov    $0x1,%ebp          ;*ireturn
                        │     │││  │ │ │  ││ │││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │  ││ │││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │     │││  │ │ │  ││ │││││                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.33%    0.44%        │     │││  │ │ │  ││ │││││↗    0x00007eff1123eb9f: mov    0x28(%rsp),%r11d
  0.19%    0.21%        │     │││  │ │ │  ││ ││││││    0x00007eff1123eba4: add    $0xffffffbf,%r11d
  0.10%    0.07%        │     │││  │ │ │  ││ ││││││    0x00007eff1123eba8: cmp    $0x1a,%r11d
                        │     │││  │ │ │╭ ││ ││││││    0x00007eff1123ebac: jb     0x00007eff1123ebc1  ;*if_icmple
                        │     │││  │ │ ││ ││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                        │     │││  │ │ ││ ││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ ││ ││ ││││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.07%        │     │││  │ │ ││ ││ ││││││    0x00007eff1123ebae: mov    0x28(%rsp),%r8d
  0.35%    0.53%        │     │││  │ │ ││ ││ ││││││    0x00007eff1123ebb3: add    $0xffffff9f,%r8d
  0.19%    0.22%        │     │││  │ │ ││ ││ ││││││    0x00007eff1123ebb7: cmp    $0x1a,%r8d
                        │     │││  │ │ ││╭││ ││││││    0x00007eff1123ebbb: jae    0x00007eff1123ec72  ;*iconst_1
                        │     │││  │ │ │││││ ││││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                        │     │││  │ │ │││││ ││││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │││││ ││││││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.13%        │     │││  │ │ │↘│││ ││││││↗   0x00007eff1123ebc1: mov    $0x1,%r11d         ;*ireturn
                        │     │││  │ │ │ │││ │││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                        │     │││  │ │ │ │││ │││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │     │││  │ │ │ │││ │││││││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.16%    0.21%        │     │││  │ │ │ │││ │││││││↗  0x00007eff1123ebc7: cmp    %r11d,%ebp
                        │     │││  │ │ │ │╰│ ││││││││  0x00007eff1123ebca: je     0x00007eff1123e82b  ;*if_icmpeq
                        │     │││  │ │ │ │ │ ││││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                        │     │││  │ │ │ │ │ ││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.06%    0.07%        │     │││  │ │ │ │ │ ││││││││  0x00007eff1123ebd0: or     $0x10,%r10d        ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                        │     │││  │ │ │ │ │ ││││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.02%        │     │││  │ │ │ │ ╰ ││││││││  0x00007eff1123ebd4: jmpq   0x00007eff1123e82f
  0.01%    0.01%        │     ↘││  │ │ │ │   ││││││││  0x00007eff1123ebd9: test   %ebp,%ebp
                        │      ││  │ │ │ │   ││││││││  0x00007eff1123ebdb: jne    0x00007eff1123fa99  ;*ifeq
                        │      ││  │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                        │      ││  │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │   ││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%                 │      ││  │ │ │ │   ││││││││  0x00007eff1123ebe1: mov    0x50(%rsp),%r10
  0.00%                 │      ││  │ │ │ │   ││││││││  0x00007eff1123ebe6: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007eff1123fe31
           0.00%        │      ││  │ │ │ │   ││││││││  0x00007eff1123ebeb: test   %r11d,%r11d
                        │      ││  │ │ │ │  ╭││││││││  0x00007eff1123ebee: jne    0x00007eff1123ec09  ;*ifeq
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ebf0: mov    0x1c(%r10),%ebp    ;*getfield pcs
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ebf4: movb   $0x1,0x18(%r10)    ;*putfield empty
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ebf9: mov    %r12,0x10(%r10)    ;*putfield pcsl
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ebfd: mov    %r12d,0xc(%r10)    ;*putfield size
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ec01: test   %ebp,%ebp
                        │      ││  │ │ │ │  │││││││││  0x00007eff1123ec03: jne    0x00007eff1123fb45  ;*if_icmpne
                        │      ││  │ │ │ │  │││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
           0.00%        │      ││  │ │ │ │  ↘││││││││  0x00007eff1123ec09: add    $0xb0,%rsp
           0.00%        │      ││  │ │ │ │   ││││││││  0x00007eff1123ec10: pop    %rbp
                        │      ││  │ │ │ │   ││││││││  0x00007eff1123ec11: test   %eax,0x170fe3e9(%rip)        # 0x00007eff2833d000
                        │      ││  │ │ │ │   ││││││││                                                ;   {poll_return}
  0.00%    0.01%        │      ││  │ │ │ │   ││││││││  0x00007eff1123ec17: retq   
  0.00%    0.01%        │      ↘│  │ │ │ │   ││││││││  0x00007eff1123ec18: mov    %r13d,0x24(%rsp)
           0.00%        │       │  │ │ │ │   ││││││││  0x00007eff1123ec1d: mov    0x34(%rsp),%ebx
           0.00%        │       │  │ │ │ │   ││││││││  0x00007eff1123ec21: mov    $0xffffffff,%ecx
                        │       │  │ │ │ │   ╰│││││││  0x00007eff1123ec26: jmpq   0x00007eff1123ea44
  0.02%    0.01%        │       ↘  │ │ │ │    │││││││  0x00007eff1123ec2b: mov    $0xffffffff,%ecx
  0.01%                 │          │ │ │ │    │││││││  0x00007eff1123ec30: xor    %ebx,%ebx
                        │          │ │ │ │    ╰││││││  0x00007eff1123ec32: jmpq   0x00007eff1123ea44
                        │          ↘ │ │ │     ││││││  0x00007eff1123ec37: or     $0x1,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                        │            │ │ │     ││││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
                        │            │ │ │     ╰│││││  0x00007eff1123ec3b: jmpq   0x00007eff1123eb60
                        │            ↘ │ │      │││││  0x00007eff1123ec40: or     $0x2,%r10d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                        │              │ │      │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%                 │              │ │      ╰││││  0x00007eff1123ec44: jmpq   0x00007eff1123eb78
  0.01%    0.01%        │              ↘ │       ││││  0x00007eff1123ec49: mov    0x24(%rsp),%r11d
  0.09%    0.12%        │                │       ││││  0x00007eff1123ec4e: add    $0xffffffd0,%r11d
  0.03%    0.05%        │                │       ││││  0x00007eff1123ec52: cmp    $0xa,%r11d
                        │                │       ╰│││  0x00007eff1123ec56: jb     0x00007eff1123eb9a  ;*if_icmple
                        │                │        │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                │        │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.00%        │                │        │││  0x00007eff1123ec5c: mov    0x24(%rsp),%r11d
  0.02%    0.01%        │                │        │││  0x00007eff1123ec61: cmp    $0x5f,%r11d
                        │                │        │││  0x00007eff1123ec65: je     0x00007eff1123fc0d  ;*if_icmpne
                        │                │        │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                │        │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                        │                │        │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.12%        │                │        │││  0x00007eff1123ec6b: xor    %ebp,%ebp
  0.02%    0.01%        │                │        ╰││  0x00007eff1123ec6d: jmpq   0x00007eff1123eb9f
  0.06%    0.08%        │                ↘         ││  0x00007eff1123ec72: mov    0x28(%rsp),%r11d
  0.18%    0.17%        │                          ││  0x00007eff1123ec77: add    $0xffffffd0,%r11d
  0.06%    0.08%        │                          ││  0x00007eff1123ec7b: cmp    $0xa,%r11d
                        │                          ╰│  0x00007eff1123ec7f: jb     0x00007eff1123ebc1  ;*if_icmple
                        │                           │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                        │                           │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.04%        │                           │  0x00007eff1123ec85: cmp    $0x5f,%r13d
                        │                           │  0x00007eff1123ec89: je     0x00007eff1123fc49  ;*if_icmpne
                        │                           │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                        │                           │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                        │                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.02%    0.01%        │                           │  0x00007eff1123ec8f: xor    %r11d,%r11d
           0.03%        │                           ╰  0x00007eff1123ec92: jmpq   0x00007eff1123ebc7
                        ↘                              0x00007eff1123ec97: mov    0x60(%rsp),%r9
                                                       0x00007eff1123ec9c: movb   $0x1,0x10(%r9)     ;*putfield matched
                                                                                                     ; - com.google.re2j.Machine::step@171 (line 309)
                                                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                       0x00007eff1123eca1: test   %r14d,%r14d
                                                       0x00007eff1123eca4: jne    0x00007eff1123fb55  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::step@176 (line 310)
                                                                                                     ; - com.google.re2j.Machine::match@359 (line 246)
                                                       0x00007eff1123ecaa: mov    0x2c(%rsp),%r11d
                                                       0x00007eff1123ecaf: movzbl 0x18(%r12,%r11,8),%r9d
....................................................................................................
 59.93%   61.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 508 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007eff1121fc80: mov    0x8(%rsi),%r10d
                     0x00007eff1121fc84: shl    $0x3,%r10
                     0x00007eff1121fc88: cmp    %r10,%rax
                     0x00007eff1121fc8b: jne    0x00007eff11045e20  ;   {runtime_call}
                     0x00007eff1121fc91: data16 xchg %ax,%ax
                     0x00007eff1121fc94: nopl   0x0(%rax,%rax,1)
                     0x00007eff1121fc9c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.68%    0.38%     0x00007eff1121fca0: mov    %eax,-0x14000(%rsp)
  0.04%    0.01%     0x00007eff1121fca7: push   %rbp
  0.35%    0.24%     0x00007eff1121fca8: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.36%    0.22%     0x00007eff1121fcac: vmovq  %r8,%xmm5
  0.04%    0.02%     0x00007eff1121fcb1: vmovq  %rsi,%xmm4
  0.25%    0.46%     0x00007eff1121fcb6: mov    %ecx,%r14d
  0.33%    0.28%     0x00007eff1121fcb9: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.00%              0x00007eff1121fcbc: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007eff112205d9
  0.02%    0.02%     0x00007eff1121fcc0: cmp    $0x40,%ecx
                     0x00007eff1121fcc3: jg     0x00007eff11220181  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.43%    0.33%     0x00007eff1121fcc9: mov    $0x1,%esi
  0.32%    0.34%     0x00007eff1121fcce: mov    $0x1,%r8d
  0.00%              0x00007eff1121fcd4: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.76%    0.48%     0x00007eff1121fcd7: mov    %r11,%r10
                     0x00007eff1121fcda: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.03%    0.02%     0x00007eff1121fcdd: xor    %r13d,%r13d
  0.26%    0.36%     0x00007eff1121fce0: test   %r10,%r10
                     0x00007eff1121fce3: jne    0x00007eff112201b5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.34%    0.35%     0x00007eff1121fce9: cmp    $0x40,%ecx
                     0x00007eff1121fcec: jge    0x00007eff112201f5  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
                     0x00007eff1121fcf2: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.02%    0.04%     0x00007eff1121fcf6: vmovq  %xmm4,%r10
  0.36%    0.26%     0x00007eff1121fcfb: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.33%    0.28%     0x00007eff1121fcff: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.00%              0x00007eff1121fd02: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.03%    0.03%     0x00007eff1121fd06: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007eff112205ed
  0.37%    0.32%     0x00007eff1121fd0b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007eff1121fd12: jne    0x00007eff11220065
  0.33%    0.38%     0x00007eff1121fd18: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                     0x00007eff1121fd1c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.03%     0x00007eff1121fd20: cmp    $0x40,%ecx
                     0x00007eff1121fd23: jg     0x00007eff11220229  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.32%    0.35%     0x00007eff1121fd29: mov    $0x1,%r10d
  0.35%    0.31%     0x00007eff1121fd2f: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.35%    0.41%     0x00007eff1121fd32: mov    %r8,%rbx
  0.31%    0.24%     0x00007eff1121fd35: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%              0x00007eff1121fd38: test   %rbx,%rbx
                     0x00007eff1121fd3b: jne    0x00007eff11220265  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.04%     0x00007eff1121fd41: cmp    $0x40,%ecx
                     0x00007eff1121fd44: jge    0x00007eff112202ad  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.38%    0.40%     0x00007eff1121fd4a: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.06%     0x00007eff1121fd4d: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
           0.00%     0x00007eff1121fd51: mov    0x88(%rsp),%ecx
  0.07%    0.05%     0x00007eff1121fd58: test   %ecx,%ecx
                     0x00007eff1121fd5a: jne    0x00007eff112202e9  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.35%    0.44%     0x00007eff1121fd60: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.18%     0x00007eff1121fd63: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%              0x00007eff1121fd66: mov    %edi,%r10d
  0.07%    0.10%     0x00007eff1121fd69: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.34%    0.50%     0x00007eff1121fd6c: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.38%     0x00007eff1121fd70: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007eff11220615
                     0x00007eff1121fd75: cmp    %ebx,%edi
                  ╭  0x00007eff1121fd77: jae    0x00007eff1121ffe8
  0.05%    0.07%  │  0x00007eff1121fd7d: vmovd  %r10d,%xmm2
  0.35%    0.51%  │  0x00007eff1121fd82: vmovd  %eax,%xmm0
  0.36%    0.28%  │  0x00007eff1121fd86: mov    %edi,%eax
                  │  0x00007eff1121fd88: vmovd  %xmm0,%r10d
  0.04%    0.06%  │  0x00007eff1121fd8d: mov    0x8(%r12,%r10,8),%r10d
  0.30%    0.39%  │  0x00007eff1121fd92: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007eff1121fd99: jne    0x00007eff11220095  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.26%    0.40%  │  0x00007eff1121fd9f: vmovq  %xmm4,%r10
                  │  0x00007eff1121fda4: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.05%    0.06%  │  0x00007eff1121fda8: mov    %r11,%rcx
  0.45%    0.37%  │  0x00007eff1121fdab: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.30%    0.33%  │  0x00007eff1121fdaf: vmovd  %xmm0,%r10d
                  │  0x00007eff1121fdb4: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.06%  │  0x00007eff1121fdb8: lea    0x10(%r11,%rdi,4),%r10
  0.32%    0.35%  │  0x00007eff1121fdbd: mov    %ecx,(%r10)
  0.59%    0.52%  │  0x00007eff1121fdc0: shr    $0x9,%r10
  0.00%           │  0x00007eff1121fdc4: movabs $0x7eff20d45000,%rdi
  0.07%    0.08%  │  0x00007eff1121fdce: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.51%    0.46%  │  0x00007eff1121fdd2: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007eff11220631
  0.22%    0.18%  │  0x00007eff1121fdd7: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007eff1121fdde: jne    0x00007eff112200d5
  0.01%    0.00%  │  0x00007eff1121fde4: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.02%  │  0x00007eff1121fde8: vmovq  %r10,%xmm1
  0.34%    0.26%  │  0x00007eff1121fded: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.36%    0.32%  │  0x00007eff1121fdf1: vmovd  %ecx,%xmm3
  0.03%    0.02%  │  0x00007eff1121fdf5: cmp    $0x40,%ecx
                  │  0x00007eff1121fdf8: jg     0x00007eff11220325  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │  0x00007eff1121fdfe: mov    $0x1,%r10d
  0.44%    0.34%  │  0x00007eff1121fe04: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.39%    0.29%  │  0x00007eff1121fe07: mov    %r8,%rcx
  0.36%    0.41%  │  0x00007eff1121fe0a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.19%    0.30%  │  0x00007eff1121fe0d: test   %rcx,%rcx
                  │  0x00007eff1121fe10: jne    0x00007eff11220361  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.06%  │  0x00007eff1121fe16: vmovd  %xmm3,%ecx
  0.04%    0.04%  │  0x00007eff1121fe1a: cmp    $0x40,%ecx
                  │  0x00007eff1121fe1d: jge    0x00007eff112203a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.44%    0.48%  │  0x00007eff1121fe23: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.25%    0.16%  │  0x00007eff1121fe26: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.01%  │  0x00007eff1121fe2a: mov    %eax,%ecx
  0.03%    0.03%  │  0x00007eff1121fe2c: add    $0x2,%ecx
  0.44%    0.36%  │  0x00007eff1121fe2f: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.17%    0.16%  │  0x00007eff1121fe32: mov    %eax,%r10d
  0.01%    0.00%  │  0x00007eff1121fe35: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.07%  │  0x00007eff1121fe39: cmp    %ebx,%r10d
                  │  0x00007eff1121fe3c: jae    0x00007eff11220025  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.36%    0.56%  │  0x00007eff1121fe42: vmovd  %r9d,%xmm3
  0.15%    0.29%  │  0x00007eff1121fe47: vmovq  %xmm4,%r9
           0.00%  │  0x00007eff1121fe4c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.06%    0.06%  │  0x00007eff1121fe50: vmovq  %xmm1,%r9
  0.33%    0.41%  │  0x00007eff1121fe55: mov    %r9,%rcx
  0.21%    0.19%  │  0x00007eff1121fe58: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%           │  0x00007eff1121fe5c: movslq %eax,%r9
  0.07%    0.08%  │  0x00007eff1121fe5f: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.43%    0.53%  │  0x00007eff1121fe63: mov    %r9,%rbx
  0.20%    0.32%  │  0x00007eff1121fe66: add    $0x14,%rbx
           0.01%  │  0x00007eff1121fe6a: mov    %ecx,(%rbx)
  0.07%    0.03%  │  0x00007eff1121fe6c: mov    %rbx,%rcx
  0.40%    0.41%  │  0x00007eff1121fe6f: shr    $0x9,%rcx
  0.19%    0.15%  │  0x00007eff1121fe73: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.00%    0.02%  │  0x00007eff1121fe77: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007eff11220655
  0.08%    0.02%  │  0x00007eff1121fe7c: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007eff1121fe82: jne    0x00007eff11220101
  0.45%    0.46%  │  0x00007eff1121fe88: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.18%    0.37%  │  0x00007eff1121fe8c: vmovq  %rcx,%xmm0
  0.01%    0.00%  │  0x00007eff1121fe91: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.09%  │  0x00007eff1121fe94: vmovd  %ecx,%xmm2
  0.49%    0.42%  │  0x00007eff1121fe98: cmp    $0x40,%ecx
                  │  0x00007eff1121fe9b: jg     0x00007eff112203e1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.19%    0.27%  │  0x00007eff1121fea1: mov    $0x1,%ebx
  0.01%    0.02%  │  0x00007eff1121fea6: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.77%    0.88%  │  0x00007eff1121fea9: mov    %r8,%rcx
  0.02%    0.00%  │  0x00007eff1121feac: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.05%  │  0x00007eff1121feaf: test   %rcx,%rcx
                  │  0x00007eff1121feb2: jne    0x00007eff1122041d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.43%    0.46%  │  0x00007eff1121feb8: vmovd  %xmm2,%ecx
  0.28%    0.29%  │  0x00007eff1121febc: cmp    $0x40,%ecx
                  │  0x00007eff1121febf: jge    0x00007eff11220465  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.04%  │  0x00007eff1121fec5: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.06%  │  0x00007eff1121fec8: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.33%    0.36%  │  0x00007eff1121fecc: vmovq  %xmm4,%rcx
  0.20%    0.18%  │  0x00007eff1121fed1: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.05%    0.01%  │  0x00007eff1121fed4: mov    %r9,%rbx
  0.04%    0.07%  │  0x00007eff1121fed7: add    $0x18,%rbx
  0.38%    0.45%  │  0x00007eff1121fedb: vmovq  %xmm0,%rcx
  0.18%    0.28%  │  0x00007eff1121fee0: shr    $0x3,%rcx
  0.03%    0.02%  │  0x00007eff1121fee4: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.05%  │  0x00007eff1121fee6: mov    %eax,%ecx
  0.46%    0.34%  │  0x00007eff1121fee8: add    $0x3,%ecx
  0.20%    0.22%  │  0x00007eff1121feeb: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.06%  │  0x00007eff1121feee: shr    $0x9,%rbx
  0.04%    0.06%  │  0x00007eff1121fef2: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.45%    0.38%  │  0x00007eff1121fef6: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007eff1122067d
  0.18%    0.20%  │  0x00007eff1121fefb: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007eff1121ff01: jne    0x00007eff1122012d
  0.04%    0.02%  │  0x00007eff1121ff07: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.05%  │  0x00007eff1121ff0b: vmovq  %rcx,%xmm0
  0.46%    0.51%  │  0x00007eff1121ff10: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.21%    0.23%  │  0x00007eff1121ff13: vmovd  %ecx,%xmm1
  0.04%    0.02%  │  0x00007eff1121ff17: cmp    $0x40,%ecx
                  │  0x00007eff1121ff1a: jg     0x00007eff112204a1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.04%  │  0x00007eff1121ff20: mov    $0x1,%ebx
  0.36%    0.52%  │  0x00007eff1121ff25: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.35%    0.35%  │  0x00007eff1121ff28: mov    %r8,%rcx
  0.35%    0.14%  │  0x00007eff1121ff2b: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.11%  │  0x00007eff1121ff2e: test   %rcx,%rcx
                  │  0x00007eff1121ff31: jne    0x00007eff112204dd  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  │  0x00007eff1121ff37: vmovd  %xmm1,%ecx
  0.03%    0.05%  │  0x00007eff1121ff3b: cmp    $0x40,%ecx
                  │  0x00007eff1121ff3e: jge    0x00007eff11220525  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.46%    0.46%  │  0x00007eff1121ff44: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.25%    0.26%  │  0x00007eff1121ff48: vmovq  %xmm4,%r10
  0.01%    0.03%  │  0x00007eff1121ff4d: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.04%    0.02%  │  0x00007eff1121ff51: mov    %r9,%rcx
  0.35%    0.43%  │  0x00007eff1121ff54: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.19%    0.26%  │  0x00007eff1121ff58: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.02%    0.03%  │  0x00007eff1121ff5b: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.03%  │  0x00007eff1121ff5f: vmovq  %xmm0,%r10
  0.40%    0.44%  │  0x00007eff1121ff64: shr    $0x3,%r10
  0.22%    0.26%  │  0x00007eff1121ff68: mov    %r10d,(%rcx)
  0.02%    0.04%  │  0x00007eff1121ff6b: mov    %rcx,%r10
  0.04%    0.05%  │  0x00007eff1121ff6e: shr    $0x9,%r10
  0.47%    0.56%  │  0x00007eff1121ff72: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.29%  │  0x00007eff1121ff76: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007eff112206a5
  0.02%    0.05%  │  0x00007eff1121ff7b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007eff1121ff82: jne    0x00007eff11220159
  0.05%    0.04%  │  0x00007eff1121ff88: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.46%    0.38%  │  0x00007eff1121ff8c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.20%  │  0x00007eff1121ff90: cmp    $0x40,%ecx
                  │  0x00007eff1121ff93: jg     0x00007eff11220561  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  │  0x00007eff1121ff99: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.67%    0.67%  │  0x00007eff1121ff9c: mov    %r8,%rbx
  0.02%    0.04%  │  0x00007eff1121ff9f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.05%  │  0x00007eff1121ffa2: test   %rbx,%rbx
                  │  0x00007eff1121ffa5: jne    0x00007eff11220585  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.48%    0.31%  │  0x00007eff1121ffab: cmp    $0x40,%ecx
                  │  0x00007eff1121ffae: jge    0x00007eff112205b5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.17%    0.27%  │  0x00007eff1121ffb4: or     %rsi,%r8
  0.01%    0.03%  │  0x00007eff1121ffb7: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.10%  │  0x00007eff1121ffbb: add    $0x20,%r9
  0.43%    0.53%  │  0x00007eff1121ffbf: mov    %r10,%r11
  0.18%    0.25%  │  0x00007eff1121ffc2: shr    $0x3,%r11
  0.04%    0.01%  │  0x00007eff1121ffc6: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.07%  │  0x00007eff1121ffc9: mov    %r9,%r10
  0.42%    0.42%  │  0x00007eff1121ffcc: add    $0x5,%eax
  0.26%    0.14%  │  0x00007eff1121ffcf: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.02%    0.01%  │  0x00007eff1121ffd2: shr    $0x9,%r10
  0.06%    0.02%  │  0x00007eff1121ffd6: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.39%    0.26%  │  0x00007eff1121ffda: xor    %eax,%eax
  0.23%    0.31%  │  0x00007eff1121ffdc: add    $0x70,%rsp
  0.05%    0.03%  │  0x00007eff1121ffe0: pop    %rbp
  0.05%    0.07%  │  0x00007eff1121ffe1: test   %eax,0x1711d019(%rip)        # 0x00007eff2833d000
                  │                                                ;   {poll_return}
  0.40%    0.72%  │  0x00007eff1121ffe7: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007eff1121ffe8: mov    $0xffffffe4,%esi
                     0x00007eff1121ffed: vmovq  %xmm4,%rbp
                     0x00007eff1121fff2: mov    %rdx,(%rsp)
                     0x00007eff1121fff6: mov    %r14d,0x88(%rsp)
                     0x00007eff1121fffe: vmovsd %xmm5,0x8(%rsp)
                     0x00007eff11220004: mov    %r9d,0x10(%rsp)
....................................................................................................
 34.65%   35.28%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.93%   61.05%         C2, level 4  com.google.re2j.Machine::match, version 546 (1497 bytes) 
 34.65%   35.28%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 508 (839 bytes) 
  1.16%    1.13%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.28%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 553 (49 bytes) 
  0.15%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.15%    0.06%         C2, level 4  java.util.Collections::shuffle, version 560 (104 bytes) 
  0.13%    0.01%         C2, level 4  java.util.Collections::shuffle, version 560 (185 bytes) 
  0.11%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 553 (0 bytes) 
  0.10%    0.03%   [kernel.kallsyms]  [unknown] (66 bytes) 
  0.10%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 553 (33 bytes) 
  0.10%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 553 (0 bytes) 
  0.10%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 546 (120 bytes) 
  0.08%    0.07%         C2, level 4  com.google.re2j.RE2::match, version 553 (0 bytes) 
  0.07%    0.04%         C2, level 4  com.google.re2j.RE2::match, version 553 (111 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.01%              [vdso]  [unknown] (5 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 553 (18 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 553 (45 bytes) 
  0.04%    0.06%         C2, level 4  com.google.re2j.Machine::match, version 546 (102 bytes) 
  2.57%    1.86%  <...other 476 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 60.11%   61.14%         C2, level 4  com.google.re2j.Machine::match, version 546 
 34.65%   35.28%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 508 
  2.79%    1.93%   [kernel.kallsyms]  [unknown] 
  1.02%    0.46%         C2, level 4  com.google.re2j.RE2::match, version 553 
  0.30%    0.08%         C2, level 4  java.util.Collections::shuffle, version 560 
  0.11%    0.02%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 596 
  0.10%    0.01%              [vdso]  [unknown] 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.05%           libjvm.so  _ZN18PSPromotionManager22copy_to_survivor_spaceILb0EEEP7oopDescS2_ 
  0.04%    0.04%           libjvm.so  _ZN19GenericTaskQueueSetI17OverflowTaskQueueI8StarTaskL10MemoryType1ELj131072EELS2_1EE15steal_best_of_2EjPiRS1_ 
  0.04%    0.01%        libc-2.26.so  __clock_gettime 
  0.04%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%    0.02%           libjvm.so  _ZN18PSPromotionManager18drain_stacks_depthEb 
  0.02%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.02%    0.04%        libc-2.26.so  __strlen_avx2 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.02%    0.04%           libjvm.so  _ZN13InstanceKlass17oop_push_contentsEP18PSPromotionManagerP7oopDesc 
  0.02%    0.08%        libc-2.26.so  vfprintf 
  0.01%    0.01%           libjvm.so  _ZN9StealTask5do_itEP13GCTaskManagerj 
  0.52%    0.40%  <...other 80 warm methods...>
....................................................................................................
100.00%   99.77%  <totals>

....[Distribution by Source]........................................................................
 96.20%   96.98%         C2, level 4
  2.79%    1.93%   [kernel.kallsyms]
  0.56%    0.64%           libjvm.so
  0.17%    0.35%        libc-2.26.so
  0.10%    0.01%              [vdso]
  0.07%    0.04%  libpthread-2.26.so
  0.07%    0.05%      hsdis-amd64.so
  0.03%                  interpreter
  0.00%                 runtime stub
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  20027.184 ± 500.785  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
