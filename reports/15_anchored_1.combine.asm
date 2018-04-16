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
# Warmup Iteration   1: 5675.825 ops/s
# Warmup Iteration   2: 11742.149 ops/s
# Warmup Iteration   3: 11952.453 ops/s
# Warmup Iteration   4: 11931.970 ops/s
# Warmup Iteration   5: 11945.019 ops/s
# Warmup Iteration   6: 11777.633 ops/s
# Warmup Iteration   7: 11755.995 ops/s
# Warmup Iteration   8: 11963.531 ops/s
# Warmup Iteration   9: 11949.588 ops/s
# Warmup Iteration  10: 11927.221 ops/s
# Warmup Iteration  11: 11906.962 ops/s
# Warmup Iteration  12: 12042.273 ops/s
# Warmup Iteration  13: 12028.465 ops/s
# Warmup Iteration  14: 12026.160 ops/s
# Warmup Iteration  15: 12005.493 ops/s
# Warmup Iteration  16: 11964.635 ops/s
# Warmup Iteration  17: 11922.343 ops/s
# Warmup Iteration  18: 11955.265 ops/s
# Warmup Iteration  19: 11717.083 ops/s
# Warmup Iteration  20: 12024.643 ops/s
Iteration   1: 11822.202 ops/s
Iteration   2: 11854.658 ops/s
Iteration   3: 11920.549 ops/s
Iteration   4: 11836.139 ops/s
Iteration   5: 11685.468 ops/s
Iteration   6: 11853.667 ops/s
Iteration   7: 11956.923 ops/s
Iteration   8: 11904.803 ops/s
Iteration   9: 11948.340 ops/s
Iteration  10: 11932.895 ops/s
Iteration  11: 11932.916 ops/s
Iteration  12: 11932.715 ops/s
Iteration  13: 12017.936 ops/s
Iteration  14: 12029.005 ops/s
Iteration  15: 12002.972 ops/s
Iteration  16: 11903.560 ops/s
Iteration  17: 11958.150 ops/s
Iteration  18: 11957.821 ops/s
Iteration  19: 12029.419 ops/s
Iteration  20: 11997.822 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11923.898 ±(99.9%) 72.489 ops/s [Average]
  (min, avg, max) = (11685.468, 11923.898, 12029.419), stdev = 83.478
  CI (99.9%): [11851.409, 11996.387] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine:·asm":
PrintAssembly processed: 213706 total address lines.
Perf output processed (skipped 22.982 seconds):
 Column 1: cycles (20390 events)
 Column 2: instructions (20387 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 568 (1190 bytes) 

                                                                                            ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                                              0x00007f74412628e9: mov    %ecx,%r10d
                                              0x00007f74412628ec: add    $0xffffff9f,%r10d
                                              0x00007f74412628f0: cmp    $0x1a,%r10d
                                              0x00007f74412628f4: jae    0x00007f744126321b  ;*iconst_1
                                                                                            ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                              0x00007f74412628fa: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
           0.00%                              0x00007f74412628fe: mov    %r8d,0x38(%rsp)    ;*iload_2
                                                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                                                                                            ; - com.google.re2j.Machine::match@121 (line 205)
                                              0x00007f7441262903: mov    0x3c(%rsp),%r10d
  0.00%                                       0x00007f7441262908: test   %r10d,%r10d
                                              0x00007f744126290b: jne    0x00007f7441263ab1  ;*aload
                                                                                            ; - com.google.re2j.Machine::match@136 (line 211)
           0.00%                              0x00007f7441262911: movzbl 0x11(%rdi),%r10d   ;*getfield captures
                                                                                            ; - com.google.re2j.Machine::match@283 (line 240)
           0.00%                              0x00007f7441262916: mov    0x40(%rsp),%r11d
                                              0x00007f744126291b: and    $0x4,%r11d         ;*iand
                                                                                            ; - com.google.re2j.Machine::match@147 (line 212)
  0.00%    0.00%                              0x00007f744126291f: mov    %r11d,0x44(%rsp)
                                              0x00007f7441262924: mov    %r9,%r11
  0.01%                                       0x00007f7441262927: shl    $0x3,%r11          ;*getfield q1
                                                                                            ; - com.google.re2j.Machine::match@53 (line 192)
                                              0x00007f744126292b: mov    %r11,0x20(%rsp)
  0.00%    0.00%                              0x00007f7441262930: vmovd  %r10d,%xmm3
                                              0x00007f7441262935: xor    %eax,%eax
  0.01%                                       0x00007f7441262937: mov    $0x1,%r11d
                                              0x00007f744126293d: xor    %r10d,%r10d
                                              0x00007f7441262940: mov    %r11d,0x60(%rsp)
                                              0x00007f7441262945: mov    %r10d,0x14(%rsp)
  0.00%    0.00%  ╭                           0x00007f744126294a: jmpq   0x00007f7441262b93  ;*ifeq
                  │                                                                         ; - com.google.re2j.Machine::match@286 (line 240)
  0.11%    0.07%  │              ↗            0x00007f744126294f: mov    %r14,%r8
  0.16%    0.11%  │              │            0x00007f7441262952: shl    $0x3,%r8           ;*getfield matchcap
                  │              │                                                          ; - com.google.re2j.Machine::match@307 (line 243)
  0.06%    0.07%  │              │            0x00007f7441262956: mov    %r10,%rsi
  0.01%    0.01%  │              │            0x00007f7441262959: mov    0x18(%rsp),%rdx
  0.08%    0.05%  │              │            0x00007f744126295e: mov    0x58(%rsp),%ecx
  0.26%    0.18%  │              │            0x00007f7441262962: mov    0x38(%rsp),%r9d
  0.05%    0.08%  │              │            0x00007f7441262967: xor    %edi,%edi
  0.01%    0.01%  │              │            0x00007f7441262969: mov    0x50(%rsp),%r10
  0.09%    0.09%  │              │            0x00007f744126296e: mov    %r10,(%rsp)
  0.28%    0.10%  │              │            0x00007f7441262972: vmovss %xmm3,0x8(%rsp)
  0.06%    0.05%  │              │            0x00007f7441262978: data16 xchg %ax,%ax
  0.01%    0.01%  │              │            0x00007f744126297b: callq  0x00007f7441046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [72]=Oop [80]=Oop off=640}
                  │              │                                                          ;*invokevirtual add
                  │              │                                                          ; - com.google.re2j.Machine::match@318 (line 243)
                  │              │                                                          ;   {optimized virtual_call}
  0.07%    0.08%  │              │↗           0x00007f7441262980: mov    0x5c(%rsp),%r10d
  0.10%    0.13%  │              ││           0x00007f7441262985: test   %r10d,%r10d
                  │╭             ││           0x00007f7441262988: jl     0x00007f7441262cfd  ;*ifge
                  ││             ││                                                         ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                  ││             ││                                                         ; - com.google.re2j.Machine::match@326 (line 245)
  0.20%    0.19%  ││             ││           0x00007f744126298e: xor    %r8d,%r8d          ;*iload_0
                  ││             ││                                                         ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                  ││             ││                                                         ; - com.google.re2j.Machine::match@326 (line 245)
  0.28%    0.32%  ││             ││↗          0x00007f7441262991: cmp    $0xa,%r10d
                  ││╭            │││          0x00007f7441262995: je     0x00007f7441262d8b  ;*iload_1
                  │││            │││                                                        ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                  │││            │││                                                        ; - com.google.re2j.Machine::match@326 (line 245)
  0.07%    0.07%  │││            │││      ↗   0x00007f744126299b: mov    0x2c(%rsp),%r11d
  0.09%    0.08%  │││            │││      │   0x00007f74412629a0: test   %r11d,%r11d
                  │││╭           │││      │   0x00007f74412629a3: jl     0x00007f7441262d08  ;*iload_1
                  ││││           │││      │                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                  ││││           │││      │                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.22%  ││││           │││↗     │   0x00007f74412629a9: cmp    $0xa,%r11d
                  ││││╭          ││││     │   0x00007f74412629ad: je     0x00007f7441262d94  ;*invokevirtual endPos
                  │││││          ││││     │                                                 ; - com.google.re2j.Machine::match@348 (line 246)
  0.26%    0.32%  │││││          ││││     │↗  0x00007f74412629b3: mov    0x48(%rsp),%r11
  0.07%    0.10%  │││││          ││││     ││  0x00007f74412629b8: mov    0x10(%r11),%ebx    ;*getfield end
                  │││││          ││││     ││                                                ; - com.google.re2j.MachineInput$UTF16Input::endPos@1 (line 221)
                  │││││          ││││     ││                                                ; - com.google.re2j.Machine::match@348 (line 246)
  0.15%    0.12%  │││││          ││││     ││  0x00007f74412629bc: mov    0x58(%rsp),%r9d
  0.16%    0.16%  │││││          ││││     ││  0x00007f74412629c1: add    0x28(%rsp),%r9d    ;*iadd
                  │││││          ││││     ││                                                ; - com.google.re2j.Machine::match@340 (line 246)
  0.25%    0.34%  │││││          ││││     ││  0x00007f74412629c6: mov    %r9d,0x14(%rsp)
  0.07%    0.04%  │││││          ││││     ││  0x00007f74412629cb: mov    0x5c(%rsp),%r11d
  0.13%    0.10%  │││││          ││││     ││  0x00007f74412629d0: add    $0xffffffbf,%r11d
  0.21%    0.27%  │││││          ││││     ││  0x00007f74412629d4: mov    0x2c(%rsp),%r9d
  0.30%    0.31%  │││││          ││││     ││  0x00007f74412629d9: add    $0xffffffbf,%r9d
  0.05%    0.05%  │││││          ││││     ││  0x00007f74412629dd: cmp    $0x1a,%r11d
                  │││││╭         ││││     ││  0x00007f74412629e1: jb     0x00007f74412629f3  ;*if_icmple
                  ││││││         ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  ││││││         ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  ││││││         ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.09%    0.10%  ││││││         ││││     ││  0x00007f74412629e3: mov    0x5c(%rsp),%ecx
  0.19%    0.24%  ││││││         ││││     ││  0x00007f74412629e7: add    $0xffffff9f,%ecx
  0.23%    0.30%  ││││││         ││││     ││  0x00007f74412629ea: cmp    $0x1a,%ecx
                  ││││││         ││││     ││  0x00007f74412629ed: jae    0x00007f7441263076  ;*iconst_1
                  ││││││         ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  ││││││         ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  ││││││         ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.05%  │││││↘         ││││     ││  0x00007f74412629f3: mov    $0x1,%ebp          ;*ireturn
                  │││││          ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │││││          ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                  │││││          ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.09%  │││││          ││││     ││  0x00007f74412629f8: cmp    $0x1a,%r9d
                  │││││ ╭        ││││     ││  0x00007f74412629fc: jb     0x00007f7441262a11  ;*if_icmple
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.21%    0.29%  │││││ │        ││││     ││  0x00007f74412629fe: mov    0x2c(%rsp),%r9d
  0.28%    0.25%  │││││ │        ││││     ││  0x00007f7441262a03: add    $0xffffff9f,%r9d
  0.08%    0.03%  │││││ │        ││││     ││  0x00007f7441262a07: cmp    $0x1a,%r9d
                  │││││ │        ││││     ││  0x00007f7441262a0b: jae    0x00007f744126304c  ;*iconst_1
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││││ │        ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.11%    0.17%  │││││ ↘        ││││     ││  0x00007f7441262a11: mov    $0x1,%r9d          ;*ireturn
                  │││││          ││││     ││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                  │││││          ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                  │││││          ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.37%    0.44%  │││││          ││││     ││  0x00007f7441262a17: cmp    %r9d,%ebp
                  │││││  ╭       ││││     ││  0x00007f7441262a1a: jne    0x00007f7441262a27  ;*if_icmpeq
                  │││││  │       ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                  │││││  │       ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.18%    0.20%  │││││  │       ││││     ││  0x00007f7441262a1c: or     $0x20,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@61 (line 188)
                  │││││  │       ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.06%  │││││  │       ││││     ││  0x00007f7441262a20: mov    %r8d,0x38(%rsp)
  0.14%    0.19%  │││││  │╭      ││││     ││  0x00007f7441262a25: jmp    0x00007f7441262a30
  0.12%    0.11%  │││││  ↘│      ││││     ││  0x00007f7441262a27: or     $0x10,%r8d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                  │││││   │      ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%    0.01%  │││││   │      ││││     ││  0x00007f7441262a2b: mov    %r8d,0x38(%rsp)    ;*iload_2
                  │││││   │      ││││     ││                                                ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  │││││   │      ││││     ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.31%    0.29%  │││││   ↘      ││││     ││  0x00007f7441262a30: mov    0x58(%rsp),%r8d
  0.52%    0.45%  │││││          ││││     ││  0x00007f7441262a35: cmp    %ebx,%r8d
                  │││││    ╭     ││││     ││  0x00007f7441262a38: je     0x00007f7441262d11  ;*if_icmpne
                  │││││    │     ││││     ││                                                ; - com.google.re2j.Machine::match@351 (line 246)
  0.15%    0.13%  │││││    │     ││││     ││  0x00007f7441262a3e: xor    %r11d,%r11d
  0.09%    0.11%  │││││    │     ││││↗    ││  0x00007f7441262a41: mov    0x50(%rsp),%rsi
  0.13%    0.23%  │││││    │     │││││    ││  0x00007f7441262a46: mov    0x18(%rsp),%rdx
  0.16%    0.29%  │││││    │     │││││    ││  0x00007f7441262a4b: mov    0x20(%rsp),%rcx
  0.18%    0.09%  │││││    │     │││││    ││  0x00007f7441262a50: mov    0x14(%rsp),%r9d
  0.08%    0.05%  │││││    │     │││││    ││  0x00007f7441262a55: mov    0x5c(%rsp),%edi
  0.27%    0.16%  │││││    │     │││││    ││  0x00007f7441262a59: mov    0x38(%rsp),%r10d
  0.29%    0.26%  │││││    │     │││││    ││  0x00007f7441262a5e: mov    %r10d,(%rsp)
  0.12%    0.11%  │││││    │     │││││    ││  0x00007f7441262a62: xor    %r10d,%r10d
  0.08%    0.08%  │││││    │     │││││    ││  0x00007f7441262a65: mov    %r10d,0x8(%rsp)
  0.13%    0.19%  │││││    │     │││││    ││  0x00007f7441262a6a: mov    %r11d,0x10(%rsp)
  0.27%    0.19%  │││││    │     │││││    ││  0x00007f7441262a6f: callq  0x00007f7441046020  ; OopMap{[24]=Oop [32]=Oop [52]=NarrowOop [72]=Oop [80]=Oop off=884}
                  │││││    │     │││││    ││                                                ;*invokespecial step
                  │││││    │     │││││    ││                                                ; - com.google.re2j.Machine::match@359 (line 246)
                  │││││    │     │││││    ││                                                ;   {optimized virtual_call}
  0.29%    0.35%  │││││    │     │││││    ││  0x00007f7441262a74: mov    0x50(%rsp),%r11
  0.00%    0.00%  │││││    │     │││││    ││  0x00007f7441262a79: movzbl 0x11(%r11),%r10d   ;*getfield captures
                  │││││    │     │││││    ││                                                ; - com.google.re2j.Machine::match@371 (line 250)
  0.30%    0.45%  │││││    │     │││││    ││  0x00007f7441262a7e: movzbl 0x10(%r11),%eax    ;*getfield matched
                  │││││    │     │││││    ││                                                ; - com.google.re2j.Machine::match@378 (line 250)
  0.28%    0.31%  │││││    │     │││││    ││  0x00007f7441262a83: mov    0x28(%rsp),%r9d
                  │││││    │     │││││    ││  0x00007f7441262a88: test   %r9d,%r9d
                  │││││    │╭    │││││    ││  0x00007f7441262a8b: je     0x00007f7441262d1c  ;*ifne
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@364 (line 247)
  0.00%           │││││    ││    │││││    ││  0x00007f7441262a91: test   %r10d,%r10d
                  │││││    ││    │││││    ││  0x00007f7441262a94: jne    0x00007f74412633a1  ;*ifne
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@374 (line 250)
  0.35%    0.46%  │││││    ││    │││││    ││  0x00007f7441262a9a: test   %eax,%eax
                  │││││    ││    │││││    ││  0x00007f7441262a9c: jne    0x00007f74412635c9  ;*ifeq
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@381 (line 250)
  0.29%    0.26%  │││││    ││    │││││    ││  0x00007f7441262aa2: mov    %r11,%rdi
                  │││││    ││    │││││    ││  0x00007f7441262aa5: mov    0x48(%rsp),%r11
  0.01%    0.02%  │││││    ││    │││││    ││  0x00007f7441262aaa: mov    0x10(%r11),%r11d   ;*getfield end
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.36%    0.33%  │││││    ││    │││││    ││  0x00007f7441262aae: mov    0x48(%rsp),%r8
  0.30%    0.31%  │││││    ││    │││││    ││  0x00007f7441262ab3: mov    0xc(%r8),%r9d      ;*getfield start
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@2 (line 185)
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.01%    0.00%  │││││    ││    │││││    ││  0x00007f7441262ab7: mov    0x14(%r8),%ecx     ;*getfield str
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │││││    ││    │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%           │││││    ││    │││││    ││  0x00007f7441262abb: vmovd  %ecx,%xmm0
  0.32%    0.42%  │││││    ││    │││││    ││  0x00007f7441262abf: mov    0x2c(%rsp),%r8d
  0.36%    0.34%  │││││    ││    │││││    ││  0x00007f7441262ac4: cmp    $0xffffffff,%r8d
                  │││││    ││╭   │││││    ││  0x00007f7441262ac8: je     0x00007f7441262d6f  ;*if_icmpeq
                  │││││    │││   │││││    ││                                                ; - com.google.re2j.Machine::match@403 (line 258)
           0.00%  │││││    │││   │││││    ││  0x00007f7441262ace: mov    0x30(%rsp),%r8d
                  │││││    │││   │││││    ││  0x00007f7441262ad3: add    0x14(%rsp),%r8d
  0.26%    0.39%  │││││    │││   │││││    ││  0x00007f7441262ad8: add    %r9d,%r8d          ;*iadd
                  │││││    │││   │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │││││    │││   │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.30%    0.32%  │││││    │││   │││││    ││  0x00007f7441262adb: cmp    %r11d,%r8d
                  │││││    │││╭  │││││    ││  0x00007f7441262ade: jge    0x00007f7441262d7e  ;*if_icmpge
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%           │││││    ││││  │││││    ││  0x00007f7441262ae4: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x00007f7441264615
  0.05%    0.04%  │││││    ││││  │││││    ││  0x00007f7441262ae9: cmp    $0xf80002da,%ebx   ;   {metadata(&apos;java/lang/String&apos;)}
                  │││││    ││││  │││││    ││  0x00007f7441262aef: jne    0x00007f74412632e5
  0.36%    0.26%  │││││    ││││  │││││    ││  0x00007f7441262af5: shl    $0x3,%rcx          ;*invokeinterface charAt
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.26%    0.24%  │││││    ││││  │││││    ││  0x00007f7441262af9: test   %r8d,%r8d
                  │││││    ││││  │││││    ││  0x00007f7441262afc: jl     0x00007f74412633f5  ;*iflt
                  │││││    ││││  │││││    ││                                                ; - java.lang.String::charAt@1 (line 657)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
                  │││││    ││││  │││││    ││  0x00007f7441262b02: mov    0xc(%rcx),%edx     ;*getfield value
                  │││││    ││││  │││││    ││                                                ; - java.lang.String::charAt@6 (line 657)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.00%    0.02%  │││││    ││││  │││││    ││  0x00007f7441262b05: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │││││    ││││  │││││    ││                                                ; - java.lang.String::charAt@9 (line 657)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
                  │││││    ││││  │││││    ││                                                ; implicit exception: dispatches to 0x00007f7441264629
  0.99%    0.96%  │││││    ││││  │││││    ││  0x00007f7441262b0a: cmp    %ebp,%r8d
                  │││││    ││││  │││││    ││  0x00007f7441262b0d: jge    0x00007f744126361d  ;*if_icmplt
                  │││││    ││││  │││││    ││                                                ; - java.lang.String::charAt@10 (line 657)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.49%    0.59%  │││││    ││││  │││││    ││  0x00007f7441262b13: cmp    %ebp,%r8d
                  │││││    ││││  │││││    ││  0x00007f7441262b16: jae    0x00007f7441263274
  0.01%    0.04%  │││││    ││││  │││││    ││  0x00007f7441262b1c: lea    (%r12,%rdx,8),%rbx
                  │││││    ││││  │││││    ││  0x00007f7441262b20: movzwl 0x10(%rbx,%r8,2),%ebx  ;*caload
                  │││││    ││││  │││││    ││                                                ; - java.lang.String::charAt@27 (line 660)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@2 (line 4866)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.39%    0.43%  │││││    ││││  │││││    ││  0x00007f7441262b26: cmp    $0xd800,%ebx
                  │││││    ││││  │││││    ││  0x00007f7441262b2c: jge    0x00007f7441263675  ;*if_icmplt
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │││││    ││││  │││││    ││                                                ; - java.lang.Character::codePointAt@9 (line 4867)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.58%    0.58%  │││││    ││││  │││││    ││  0x00007f7441262b32: shl    $0x3,%ebx          ;*ishl
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@411 (line 259)
  0.14%    0.12%  │││││    ││││  │││││    ││  0x00007f7441262b35: mov    %ebx,%r8d
                  │││││    ││││  │││││    ││  0x00007f7441262b38: or     $0x1,%r8d
  0.56%    0.52%  │││││    ││││  │││││    ││  0x00007f7441262b3c: and    $0x7,%ebx
  0.07%    0.07%  │││││    ││││  │││││    ││  0x00007f7441262b3f: sar    $0x3,%r8d          ;*ishr
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@419 (line 260)
  0.58%    0.56%  │││││    ││││  │││││    ││  0x00007f7441262b43: or     $0x1,%ebx          ; OopMap{rdi=Oop xmm0=NarrowOop [24]=Oop [32]=Oop [72]=Oop off=1094}
                  │││││    ││││  │││││    ││                                                ;*goto
                  │││││    ││││  │││││    ││                                                ; - com.google.re2j.Machine::match@441 (line 266)
  0.01%    0.02%  │││││    ││││  │││││  ↗↗││  0x00007f7441262b46: test   %eax,0x189dc4b4(%rip)        # 0x00007f7459c3f000
                  │││││    ││││  │││││  ││││                                                ;*goto
                  │││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@441 (line 266)
                  │││││    ││││  │││││  ││││                                                ;   {poll}
  0.05%    0.01%  │││││    ││││  │││││  ││││  0x00007f7441262b4c: mov    0x28(%rdi),%r14d   ;*getfield matchcap
                  │││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@307 (line 243)
  0.11%    0.09%  │││││    ││││  │││││  ││││  0x00007f7441262b50: mov    0x14(%rdi),%esi    ;*getfield re2
                  │││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@169 (line 220)
  0.52%    0.67%  │││││    ││││  │││││  ││││  0x00007f7441262b53: mov    0x20(%rsp),%rcx
  0.01%    0.00%  │││││    ││││  │││││  ││││  0x00007f7441262b58: mov    %rcx,%rdx
  0.03%    0.04%  │││││    ││││  │││││  ││││  0x00007f7441262b5b: shr    $0x3,%rdx
  0.06%    0.05%  │││││    ││││  │││││  ││││  0x00007f7441262b5f: mov    %edx,0x34(%rsp)
  0.50%    0.63%  │││││    ││││  │││││  ││││  0x00007f7441262b63: mov    0x2c(%rsp),%ecx
  0.00%    0.01%  │││││    ││││  │││││  ││││  0x00007f7441262b67: mov    %r8d,0x2c(%rsp)
  0.03%    0.04%  │││││    ││││  │││││  ││││  0x00007f7441262b6c: mov    0x18(%rsp),%r8
  0.07%    0.06%  │││││    ││││  │││││  ││││  0x00007f7441262b71: mov    %r8,0x20(%rsp)
  0.59%    0.61%  │││││    ││││  │││││  ││││  0x00007f7441262b76: vmovd  %r10d,%xmm3
  0.00%    0.01%  │││││    ││││  │││││  ││││  0x00007f7441262b7b: mov    0x30(%rsp),%r10d
  0.04%    0.06%  │││││    ││││  │││││  ││││  0x00007f7441262b80: mov    %r10d,0x28(%rsp)
  0.06%    0.12%  │││││    ││││  │││││  ││││  0x00007f7441262b85: mov    %ebx,0x30(%rsp)
  0.62%    0.47%  │││││    ││││  │││││  ││││  0x00007f7441262b89: mov    %r9d,0x58(%rsp)
  0.01%    0.01%  │││││    ││││  │││││  ││││  0x00007f7441262b8e: mov    %r11d,0x5c(%rsp)
  0.02%    0.05%  ↘││││    ││││  │││││  ││││  0x00007f7441262b93: mov    0x34(%rsp),%r11d
  0.09%    0.05%   ││││    ││││  │││││  ││││  0x00007f7441262b98: movzbl 0x18(%r12,%r11,8),%r11d  ; implicit exception: dispatches to 0x00007f74412645da
  0.52%    0.60%   ││││    ││││  │││││  ││││  0x00007f7441262b9e: mov    0x34(%rsp),%r10d
  0.02%    0.01%   ││││    ││││  │││││  ││││  0x00007f7441262ba3: shl    $0x3,%r10          ;*aload
                   ││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.04%   ││││    ││││  │││││  ││││  0x00007f7441262ba7: mov    %r10,0x18(%rsp)
  0.08%    0.15%   ││││    ││││  │││││  ││││  0x00007f7441262bac: test   %r11d,%r11d
                   ││││    ││││╭ │││││  ││││  0x00007f7441262baf: je     0x00007f7441262bfa  ;*ifeq
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@141 (line 211)
  0.27%    0.26%   ││││    │││││ │││││  ││││  0x00007f7441262bb1: mov    0x44(%rsp),%r11d
  0.00%    0.00%   ││││    │││││ │││││  ││││  0x00007f7441262bb6: test   %r11d,%r11d
                   ││││    │││││ │││││  ││││  0x00007f7441262bb9: jne    0x00007f7441263805  ;*ifeq
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@148 (line 212)
  0.02%    0.00%   ││││    │││││ │││││  ││││  0x00007f7441262bbf: test   %eax,%eax
                   ││││    │││││ │││││  ││││  0x00007f7441262bc1: jne    0x00007f7441263869  ;*ifeq
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@162 (line 216)
  0.05%    0.04%   ││││    │││││ │││││  ││││  0x00007f7441262bc7: mov    0x24(%r12,%rsi,8),%r10d  ;*getfield prefix
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@172 (line 220)
                   ││││    │││││ │││││  ││││                                                ; implicit exception: dispatches to 0x00007f744126464d
  0.25%    0.30%   ││││    │││││ │││││  ││││  0x00007f7441262bcc: mov    %r10d,%r8d
                   ││││    │││││ │││││  ││││  0x00007f7441262bcf: mov    0xc(%r12,%r10,8),%r10d  ;*getfield value
                   ││││    │││││ │││││  ││││                                                ; - java.lang.String::isEmpty@1 (line 635)
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││││    │││││ │││││  ││││                                                ; implicit exception: dispatches to 0x00007f744126465d
  0.02%            ││││    │││││ │││││  ││││  0x00007f7441262bd4: mov    %r10d,%r13d
  0.05%    0.03%   ││││    │││││ │││││  ││││  0x00007f7441262bd7: mov    0xc(%r12,%r10,8),%r10d  ;*arraylength
                   ││││    │││││ │││││  ││││                                                ; - java.lang.String::isEmpty@4 (line 635)
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@175 (line 220)
                   ││││    │││││ │││││  ││││                                                ; implicit exception: dispatches to 0x00007f744126466d
  0.35%    0.36%   ││││    │││││ │││││  ││││  0x00007f7441262bdc: mov    %r10d,0x50(%rsp)
  0.03%    0.06%   ││││    │││││ │││││  ││││  0x00007f7441262be1: test   %r10d,%r10d
                   ││││    │││││ │││││  ││││  0x00007f7441262be4: jne    0x00007f7441262e4b  ;*ifne
                   ││││    │││││ │││││  ││││                                                ; - com.google.re2j.Machine::match@178 (line 220)
  0.00%    0.01%   ││││    │││││ │││││  ││││  0x00007f7441262bea: mov    %ecx,0x5c(%rsp)
  0.03%    0.02%   ││││    │││││ │││││  ││││  0x00007f7441262bee: mov    0x14(%rsp),%r10d
  0.21%    0.26%   ││││    │││││ │││││  ││││  0x00007f7441262bf3: mov    %r10d,0x58(%rsp)
  0.04%    0.08%   ││││    │││││╭│││││  ││││  0x00007f7441262bf8: jmp    0x00007f7441262c08
  0.29%    0.28%   ││││    ││││↘││││││  ││││  0x00007f7441262bfa: mov    %ecx,0x5c(%rsp)
  0.01%    0.01%   ││││    ││││ ││││││  ││││  0x00007f7441262bfe: mov    0x14(%rsp),%r11d
  0.01%    0.01%   ││││    ││││ ││││││  ││││  0x00007f7441262c03: mov    %r11d,0x58(%rsp)   ;*iload_3
                   ││││    ││││ ││││││  ││││                                                ; - com.google.re2j.Machine::match@267 (line 237)
  0.02%    0.06%   ││││    ││││ ↘│││││  ││││  0x00007f7441262c08: test   %eax,%eax
                   ││││    ││││  │││││  ││││  0x00007f7441262c0a: jne    0x00007f7441263349  ;*ifne
                   ││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@279 (line 237)
  0.28%    0.40%   ││││    ││││  │││││  ││││  0x00007f7441262c10: vmovd  %xmm3,%r8d
  0.19%    0.17%   ││││    ││││  │││││  ││││  0x00007f7441262c15: test   %r8d,%r8d
                   ││││    ││││  │││││  ││││  0x00007f7441262c18: jne    0x00007f74412634bd  ;*ifeq
                   ││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@286 (line 240)
  0.08%    0.07%   ││││    ││││  │││││  ││││  0x00007f7441262c1e: mov    0x18(%rdi),%r10d   ;*getfield prog
                   ││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@297 (line 243)
  0.03%    0.03%   ││││    ││││  │││││  ││││  0x00007f7441262c22: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield startInst
                   ││││    ││││  │││││  ││││                                                ; - com.google.re2j.Machine::match@300 (line 243)
                   ││││    ││││  │││││  ││││                                                ; implicit exception: dispatches to 0x00007f74412645e9
  0.29%    0.41%   ││││    ││││  │││││  ││││  0x00007f7441262c27: mov    %rdi,0x50(%rsp)
  0.26%    0.12%   ││││    ││││  │││││  ││││  0x00007f7441262c2c: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x00007f74412645f9
  0.21%    0.19%   ││││    ││││  │││││  ││││  0x00007f7441262c31: lea    (%r12,%rbp,8),%r10
  0.08%    0.03%   ││││    ││││  │││││  ││││  0x00007f7441262c35: cmp    $0xf8019a09,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                   ││││    ││││  ╰││││  ││││  0x00007f7441262c3c: je     0x00007f744126294f
  0.21%    0.34%   ││││    ││││   ││││  ││││  0x00007f7441262c42: cmp    $0xf8019909,%r9d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                   ││││    ││││   ││││  ││││  0x00007f7441262c49: jne    0x00007f7441263519  ;*invokevirtual add
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262c4f: mov    0x18(%r10),%ecx    ;*getfield pc
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%   ││││    ││││   ││││  ││││  0x00007f7441262c53: cmp    $0x40,%ecx
                   ││││    ││││   ││││  ││││  0x00007f7441262c56: jg     0x00007f74412636d1  ;*if_icmpgt
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.02%    0.05%   ││││    ││││   ││││  ││││  0x00007f7441262c5c: mov    %r10,%r8
  0.23%    0.27%   ││││    ││││   ││││  ││││  0x00007f7441262c5f: mov    $0x1,%ebx
           0.01%   ││││    ││││   ││││  ││││  0x00007f7441262c64: shl    %cl,%rbx           ;*lshl
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.29%    0.42%   ││││    ││││   ││││  ││││  0x00007f7441262c67: mov    0x34(%rsp),%r9d
  0.01%    0.00%   ││││    ││││   ││││  ││││  0x00007f7441262c6c: mov    0x10(%r12,%r9,8),%r10  ;*getfield pcsl
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%   ││││    ││││   ││││  ││││  0x00007f7441262c71: mov    %r10,%r9
  0.02%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262c74: and    %rbx,%r9           ;*land
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.25%    0.23%   ││││    ││││   ││││  ││││  0x00007f7441262c77: test   %r9,%r9
                   ││││    ││││   ││││  ││││  0x00007f7441262c7a: jne    0x00007f7441263731  ;*ifeq
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%            ││││    ││││   ││││  ││││  0x00007f7441262c80: cmp    $0x40,%ecx
                   ││││    ││││   ││││  ││││  0x00007f7441262c83: jge    0x00007f74412637a5  ;*if_icmpge
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262c89: mov    0x34(%rsp),%r11d
  0.04%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262c8e: mov    %r12b,0x18(%r12,%r11,8)  ;*putfield empty
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.24%    0.29%   ││││    ││││   ││││  ││││  0x00007f7441262c93: mov    0x20(%r12,%r11,8),%r9d  ;*getfield denseThreadsInstructions
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%   ││││    ││││   ││││  ││││  0x00007f7441262c98: mov    0xc(%r12,%r11,8),%ebp  ;*getfield size
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.00%    0.03%   ││││    ││││   ││││  ││││  0x00007f7441262c9d: or     %r10,%rbx
  0.01%    0.04%   ││││    ││││   ││││  ││││  0x00007f7441262ca0: mov    %rbx,0x10(%r12,%r11,8)  ;*putfield pcsl
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.26%    0.26%   ││││    ││││   ││││  ││││  0x00007f7441262ca5: mov    %ebp,%r10d
  0.01%    0.03%   ││││    ││││   ││││  ││││  0x00007f7441262ca8: inc    %r10d
  0.02%    0.03%   ││││    ││││   ││││  ││││  0x00007f7441262cab: mov    %r10d,0xc(%r12,%r11,8)  ;*putfield size
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.07%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262cb0: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x00007f7441264639
  0.30%    0.32%   ││││    ││││   ││││  ││││  0x00007f7441262cb5: cmp    %r10d,%ebp
                   ││││    ││││   ││││  ││││  0x00007f7441262cb8: jae    0x00007f7441263465
  0.21%    0.19%   ││││    ││││   ││││  ││││  0x00007f7441262cbe: mov    0x8(%r12,%r9,8),%r10d
  0.01%    0.01%   ││││    ││││   ││││  ││││  0x00007f7441262cc3: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                   ││││    ││││   ││││  ││││  0x00007f7441262cca: jne    0x00007f7441263571
  0.03%    0.04%   ││││    ││││   ││││  ││││  0x00007f7441262cd0: mov    %r8,%r10
  0.21%    0.09%   ││││    ││││   ││││  ││││  0x00007f7441262cd3: shr    $0x3,%r10          ;*aastore
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.11%    0.09%   ││││    ││││   ││││  ││││  0x00007f7441262cd7: lea    (%r12,%r9,8),%r11  ;*getfield denseThreadsInstructions
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.00%   ││││    ││││   ││││  ││││  0x00007f7441262cdb: lea    0x10(%r11,%rbp,4),%r11
  0.05%    0.06%   ││││    ││││   ││││  ││││  0x00007f7441262ce0: mov    %r10d,(%r11)
  0.46%    0.44%   ││││    ││││   ││││  ││││  0x00007f7441262ce3: mov    %r11,%r10
  0.02%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262ce6: shr    $0x9,%r10
  0.00%    0.01%   ││││    ││││   ││││  ││││  0x00007f7441262cea: movabs $0x7f7452647000,%r11
  0.02%    0.02%   ││││    ││││   ││││  ││││  0x00007f7441262cf4: mov    %r12b,(%r11,%r10,1)  ;*aastore
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                   ││││    ││││   ││││  ││││                                                ; - com.google.re2j.Machine::match@318 (line 243)
  0.22%    0.28%   ││││    ││││   ╰│││  ││││  0x00007f7441262cf8: jmpq   0x00007f7441262980
  0.00%            ↘│││    ││││    │││  ││││  0x00007f7441262cfd: mov    $0x5,%r8d
                    │││    ││││    ╰││  ││││  0x00007f7441262d03: jmpq   0x00007f7441262991
  0.01%             │↘│    ││││     ││  ││││  0x00007f7441262d08: or     $0xa,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                    │ │    ││││     ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.00%             │ │    ││││     ╰│  ││││  0x00007f7441262d0c: jmpq   0x00007f74412629a9
                    │ │    ↘│││      │  ││││  0x00007f7441262d11: mov    $0x1,%r11d
                    │ │     │││      ╰  ││││  0x00007f7441262d17: jmpq   0x00007f7441262a41
  0.00%             │ │     ↘││         ││││  0x00007f7441262d1c: test   %r10d,%r10d
                    │ │      ││         ││││  0x00007f7441262d1f: jne    0x00007f7441264091  ;*ifeq
                    │ │      ││         ││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                    │ │      ││         ││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││         ││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
           0.00%    │ │      ││       ╭ ││││  0x00007f7441262d25: jmp    0x00007f7441262d38  ;*ifge
                    │ │      ││       │ ││││                                                ; - com.google.re2j.Machine::match@213 (line 225)
                    │ │      ││       │ ││││  0x00007f7441262d27: vmovd  %xmm3,%r11d
                    │ │      ││       │ ││││  0x00007f7441262d2c: test   %r11d,%r11d
                    │ │      ││       │ ││││  0x00007f7441262d2f: jne    0x00007f7441264089
                    │ │      ││       │ ││││  0x00007f7441262d35: mov    %rdi,%r11          ;*getfield matched
                    │ │      ││       │ ││││                                                ; - com.google.re2j.Machine::match@451 (line 268)
  0.00%    0.00%    │ │      ││       ↘ ││││  0x00007f7441262d38: mov    0x20(%rsp),%r8
  0.01%    0.00%    │ │      ││         ││││  0x00007f7441262d3d: movzbl 0x18(%r8),%r10d    ; implicit exception: dispatches to 0x00007f74412646d5
  0.01%             │ │      ││         ││││  0x00007f7441262d42: test   %r10d,%r10d
                    │ │      ││        ╭││││  0x00007f7441262d45: jne    0x00007f7441262d60  ;*ifeq
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                    │ │      ││        │││││  0x00007f7441262d47: movb   $0x1,0x18(%r8)     ;*putfield empty
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                    │ │      ││        │││││  0x00007f7441262d4c: mov    0x1c(%r8),%ebp     ;*getfield pcs
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                    │ │      ││        │││││  0x00007f7441262d50: mov    %r12d,0xc(%r8)     ;*putfield size
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                    │ │      ││        │││││  0x00007f7441262d54: mov    %r12,0x10(%r8)     ;*putfield pcsl
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@447 (line 267)
                    │ │      ││        │││││  0x00007f7441262d58: test   %ebp,%ebp
                    │ │      ││        │││││  0x00007f7441262d5a: jne    0x00007f7441263fb5  ;*if_icmpne
                    │ │      ││        │││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.01%             │ │      ││        ↘││││  0x00007f7441262d60: add    $0x80,%rsp
  0.00%             │ │      ││         ││││  0x00007f7441262d67: pop    %rbp
  0.00%             │ │      ││         ││││  0x00007f7441262d68: test   %eax,0x189dc292(%rip)        # 0x00007f7459c3f000
                    │ │      ││         ││││                                                ;   {poll_return}
                    │ │      ││         ││││  0x00007f7441262d6e: retq   
                    │ │      ↘│         ││││  0x00007f7441262d6f: mov    0x30(%rsp),%ebx
                    │ │       │         ││││  0x00007f7441262d73: mov    $0xffffffff,%r8d
  0.00%    0.01%    │ │       │         ╰│││  0x00007f7441262d79: jmpq   0x00007f7441262b46
  0.02%    0.04%    │ │       ↘          │││  0x00007f7441262d7e: xor    %ebx,%ebx
                    │ │                  │││  0x00007f7441262d80: mov    $0xffffffff,%r8d
  0.03%    0.01%    │ │                  ╰││  0x00007f7441262d86: jmpq   0x00007f7441262b46
           0.01%    ↘ │                   ││  0x00007f7441262d8b: or     $0x1,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                      │                   ││                                                ; - com.google.re2j.Machine::match@326 (line 245)
           0.00%      │                   ╰│  0x00007f7441262d8f: jmpq   0x00007f744126299b
  0.00%    0.01%      ↘                    │  0x00007f7441262d94: or     $0x2,%r8d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                                           │                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.01%                                    ╰  0x00007f7441262d98: jmpq   0x00007f74412629b3
                                              0x00007f7441262d9d: data16 xchg %ax,%ax
  0.00%    0.00%                              0x00007f7441262da0: mov    %r9d,%r8d
                                              0x00007f7441262da3: jmpq   0x00007f7441262fa9
                                              0x00007f7441262da8: add    $0x2,%r8d
                                              0x00007f7441262dac: mov    %r8d,%r9d
                                              0x00007f7441262daf: inc    %r9d
                                              0x00007f7441262db2: jmp    0x00007f7441262dc4
                                              0x00007f7441262db4: mov    %r8d,%r9d
                                              0x00007f7441262db7: add    $0x2,%r9d
                                              0x00007f7441262dbb: jmp    0x00007f7441262dc1
                                              0x00007f7441262dbd: add    $0x2,%r8d
                                              0x00007f7441262dc1: inc    %r8d               ;*iinc
....................................................................................................
 27.06%   28.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 535 (203 bytes) 

                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                   ; - com.google.re2j.Machine::step@206 (line 314)
                                                                   ;   {optimized virtual_call}
                     0x00007f744124856c: test   %rax,%rax
                     0x00007f744124856f: jne    0x00007f7441249451
                     0x00007f7441248575: mov    0x30(%rsp),%r11    ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.11%     0x00007f744124857a: mov    0x10(%rsp),%rdx
  0.02%              0x00007f744124857f: mov    0xac(%rsp),%r13d
  0.03%    0.08%     0x00007f7441248587: mov    0xa4(%rsp),%r10d   ;*synchronization entry
                                                                   ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.09%     0x00007f744124858f: mov    0xa8(%rsp),%ecx
  0.20%    0.28%     0x00007f7441248596: mov    0xb0(%rsp),%r9d    ;*aload
                                                                   ; - com.google.re2j.Machine::step@211 (line 317)
  0.22%    0.15%     0x00007f744124859e: inc    %r10d              ;*iinc
                                                                   ; - com.google.re2j.Machine::step@222 (line 283)
  1.27%    1.59%     0x00007f74412485a1: cmp    %r13d,%r10d
                     0x00007f74412485a4: jge    0x00007f74412486a5
  0.18%    0.24%     0x00007f74412485aa: mov    %ecx,0xa8(%rsp)
  0.96%    0.85%     0x00007f74412485b1: mov    %r9d,0xb0(%rsp)    ;*iload
                                                                   ; - com.google.re2j.Machine::step@31 (line 286)
  0.19%    0.24%     0x00007f74412485b9: mov    0x20(%rdx),%r8d    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine::step@86 (line 296)
  1.18%    1.28%     0x00007f74412485bd: mov    0xc(%r12,%r8,8),%ecx  ; implicit exception: dispatches to 0x00007f74412495d1
  0.53%    0.41%     0x00007f74412485c2: cmp    %ecx,%r10d
                     0x00007f74412485c5: jae    0x00007f744124883d
  1.11%    1.12%     0x00007f74412485cb: shl    $0x3,%r8
  0.25%    0.27%     0x00007f74412485cf: mov    0x10(%r8,%r10,4),%r9d  ;*aaload
                                                                   ; - com.google.re2j.Machine::step@91 (line 296)
  0.99%    1.16%     0x00007f74412485d4: mov    0xc(%r12,%r9,8),%ebp  ;*getfield op
                                                                   ; - com.google.re2j.Machine::step@96 (line 298)
                                                                   ; implicit exception: dispatches to 0x00007f74412495e5
  3.70%    3.18%     0x00007f74412485d9: cmp    $0x6,%ebp
                     0x00007f74412485dc: je     0x00007f7441248799  ;*if_icmpne
                                                                   ; - com.google.re2j.Machine::step@101 (line 298)
  2.41%    2.64%     0x00007f74412485e2: cmp    $0xa,%ebp
                     0x00007f74412485e5: je     0x00007f74412481a0  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@6 (line 90)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.40%    0.24%     0x00007f74412485eb: cmp    $0xb,%ebp
                     0x00007f74412485ee: je     0x00007f7441248871  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@17 (line 94)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.94%    2.16%     0x00007f74412485f4: mov    0x1c(%r12,%r9,8),%ecx  ;*getfield f0
                                                                   ; - com.google.re2j.Inst::matchRune@42 (line 99)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.11%    0.06%     0x00007f74412485f9: cmp    $0x9,%ebp
                  ╭  0x00007f74412485fc: jne    0x00007f744124860f  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.45%    0.59%  │  0x00007f74412485fe: cmp    0x20(%rsp),%ecx
                  │  0x00007f7441248602: je     0x00007f744124878f  ;*if_icmpne
                  │                                                ; - com.google.re2j.Inst::matchRune@46 (line 99)
                  │                                                ; - com.google.re2j.Machine::step@183 (line 313)
  0.13%    0.14%  │  0x00007f7441248608: xor    %ecx,%ecx
  0.10%    0.17%  │  0x00007f744124860a: jmpq   0x00007f7441248102
  0.96%    0.85%  ↘  0x00007f744124860f: cmp    $0xc,%ebp
                     0x00007f7441248612: jne    0x00007f74412488c5  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@61 (line 102)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.05%    1.11%     0x00007f7441248618: cmp    0x20(%rsp),%ecx
                     0x00007f744124861c: je     0x00007f7441248785  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@69 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.09%    1.03%     0x00007f7441248622: mov    0x20(%r12,%r9,8),%ecx  ;*getfield f1
                                                                   ; - com.google.re2j.Inst::matchRune@73 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.05%    0.03%     0x00007f7441248627: cmp    0x20(%rsp),%ecx
                     0x00007f744124862b: je     0x00007f7441248785  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@77 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.34%    1.66%     0x00007f7441248631: mov    0x24(%r12,%r9,8),%ebp  ;*getfield f2
                                                                   ; - com.google.re2j.Inst::matchRune@81 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.19%    0.16%     0x00007f7441248636: cmp    0x20(%rsp),%ebp
                     0x00007f744124863a: je     0x00007f7441248919  ;*if_icmpeq
                                                                   ; - com.google.re2j.Inst::matchRune@85 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  1.60%    1.52%     0x00007f7441248640: mov    0x28(%r12,%r9,8),%ebp  ;*getfield f3
                                                                   ; - com.google.re2j.Inst::matchRune@89 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
  0.06%    0.06%     0x00007f7441248645: cmp    0x20(%rsp),%ebp
                     0x00007f7441248649: jne    0x00007f7441248100  ;*if_icmpne
                                                                   ; - com.google.re2j.Inst::matchRune@93 (line 103)
                                                                   ; - com.google.re2j.Machine::step@183 (line 313)
                     0x00007f744124864f: mov    $0xffffff65,%esi
                     0x00007f7441248654: mov    %rdx,0x10(%rsp)
                     0x00007f7441248659: mov    %r10d,0xa4(%rsp)
                     0x00007f7441248661: mov    %r11,0x30(%rsp)
                     0x00007f7441248666: mov    0x18(%rsp),%r11d
....................................................................................................
 22.96%   23.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 543 (867 bytes) 

                            # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                            # parm6:    [sp+0x88]   = boolean
                            0x00007f7441250e80: mov    0x8(%rsi),%r10d
                            0x00007f7441250e84: shl    $0x3,%r10
                            0x00007f7441250e88: cmp    %r10,%rax
                            0x00007f7441250e8b: jne    0x00007f7441045e20  ;   {runtime_call}
                            0x00007f7441250e91: data16 xchg %ax,%ax
                            0x00007f7441250e94: nopl   0x0(%rax,%rax,1)
                            0x00007f7441250e9c: data16 data16 xchg %ax,%ax
                          [Verified Entry Point]
  0.21%    0.23%            0x00007f7441250ea0: mov    %eax,-0x14000(%rsp)
  0.04%    0.09%            0x00007f7441250ea7: push   %rbp
  0.14%    0.07%            0x00007f7441250ea8: sub    $0x70,%rsp         ;*synchronization entry
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.26%    0.25%            0x00007f7441250eac: vmovd  %r9d,%xmm4
  0.00%    0.01%            0x00007f7441250eb1: vmovq  %r8,%xmm3
  0.11%    0.10%            0x00007f7441250eb6: vmovq  %rsi,%xmm2
  0.20%    0.11%            0x00007f7441250ebb: mov    %ecx,%r13d
  0.05%    0.04%            0x00007f7441250ebe: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.01%    0.02%            0x00007f7441250ec1: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                          ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                          ; implicit exception: dispatches to 0x00007f74412517c5
  0.06%    0.04%            0x00007f7441250ec5: cmp    $0x40,%ecx
                            0x00007f7441250ec8: jg     0x00007f74412513d5  ;*if_icmpgt
                                                                          ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.21%    0.10%            0x00007f7441250ece: mov    $0x1,%esi
  0.07%    0.07%            0x00007f7441250ed3: mov    $0x1,%r9d
  0.01%    0.02%            0x00007f7441250ed9: shl    %cl,%r9            ;*lshl
                                                                          ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.32%    0.33%            0x00007f7441250edc: mov    %r11,%r10
  0.02%    0.02%            0x00007f7441250edf: and    %r9,%r10           ;*land
                                                                          ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                          ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.07%    0.05%            0x00007f7441250ee2: test   %r10,%r10
                  ╭         0x00007f7441250ee5: jne    0x00007f7441251204  ;*ifeq
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.19%    0.20%  │         0x00007f7441250eeb: xor    %ebp,%ebp          ;*ireturn
                  │                                                       ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │                                                       ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.07%    0.08%  │   ↗     0x00007f7441250eed: test   %r10,%r10
                  │   │     0x00007f7441250ef0: jne    0x00007f7441251409  ;*ifeq
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@8 (line 260)
  0.00%    0.01%  │   │     0x00007f7441250ef6: cmp    $0x40,%ecx
                  │   │     0x00007f7441250ef9: jge    0x00007f7441251439  ;*if_icmpge
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.08%    0.06%  │   │     0x00007f7441250eff: mov    %r12b,0x18(%rdx)   ;*putfield empty
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.14%    0.17%  │   │     0x00007f7441250f03: vmovq  %xmm2,%r10
  0.03%    0.06%  │   │     0x00007f7441250f08: mov    0x2c(%r10),%ebp    ;*getfield outInst
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.03%    0.02%  │   │     0x00007f7441250f0c: or     %r11,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.10%    0.11%  │   │     0x00007f7441250f0f: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.17%    0.20%  │   │     0x00007f7441250f13: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f74412517d9
  0.05%    0.06%  │   │     0x00007f7441250f18: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │     0x00007f7441250f1f: jne    0x00007f74412512b9
  0.00%    0.02%  │   │     0x00007f7441250f25: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.10%  │   │     0x00007f7441250f29: mov    0x18(%r11),%ecx    ;*getfield pc
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.14%    0.18%  │   │     0x00007f7441250f2d: cmp    $0x40,%ecx
                  │   │     0x00007f7441250f30: jg     0x00007f744125146d  ;*if_icmpgt
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.04%  │   │     0x00007f7441250f36: mov    $0x1,%r10d
  0.01%    0.01%  │   │     0x00007f7441250f3c: shl    %cl,%r10           ;*lshl
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.36%    0.49%  │   │     0x00007f7441250f3f: mov    %r9,%r8
  0.01%    0.02%  │   │     0x00007f7441250f42: and    %r10,%r8           ;*land
                  │   │                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.07%  │   │     0x00007f7441250f45: test   %r8,%r8
                  │╭  │     0x00007f7441250f48: jne    0x00007f744125120e  ;*ifeq
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.24%  ││  │     0x00007f7441250f4e: xor    %ebp,%ebp          ;*ireturn
                  ││  │                                                   ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││  │                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  │                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.08%    0.01%  ││  │↗    0x00007f7441250f50: test   %r8,%r8
                  ││  ││    0x00007f7441250f53: jne    0x00007f74412514a9  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.01%  ││  ││    0x00007f7441250f59: cmp    $0x40,%ecx
                  ││  ││    0x00007f7441250f5c: jge    0x00007f74412514dd  ;*if_icmpge
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.09%  ││  ││    0x00007f7441250f62: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.19%    0.26%  ││  ││    0x00007f7441250f65: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.10%  ││  ││    0x00007f7441250f69: mov    0x88(%rsp),%r8d
  0.01%    0.02%  ││  ││    0x00007f7441250f71: test   %r8d,%r8d
                  ││  ││    0x00007f7441250f74: jne    0x00007f744125151d  ;*ifeq
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.04%  ││  ││    0x00007f7441250f7a: mov    0xc(%rdx),%ecx     ;*getfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.09%    0.28%  ││  ││    0x00007f7441250f7d: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.09%  ││  ││    0x00007f7441250f80: mov    %ecx,%edi
  0.04%    0.03%  ││  ││    0x00007f7441250f82: inc    %edi               ;*iadd
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.07%  ││  ││    0x00007f7441250f84: mov    %edi,0xc(%rdx)     ;*putfield size
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.24%  ││  ││    0x00007f7441250f87: mov    0xc(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f7441251801
  0.10%    0.07%  ││  ││    0x00007f7441250f8c: cmp    %r10d,%ecx
                  ││  ││    0x00007f7441250f8f: jae    0x00007f744125123d
  0.02%    0.03%  ││  ││    0x00007f7441250f95: vmovd  %edi,%xmm0
  0.08%    0.05%  ││  ││    0x00007f7441250f99: mov    %ebx,%edi
  0.22%    0.26%  ││  ││    0x00007f7441250f9b: mov    %ecx,%eax
  0.05%    0.09%  ││  ││    0x00007f7441250f9d: mov    %r11,%rcx
  0.02%    0.04%  ││  ││    0x00007f7441250fa0: mov    0x88(%rsp),%r11d
  0.08%    0.09%  ││  ││    0x00007f7441250fa8: mov    0x8(%r12,%rbx,8),%r8d
  0.17%    0.21%  ││  ││    0x00007f7441250fad: cmp    $0xf8019807,%r8d   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  ││  ││    0x00007f7441250fb4: jne    0x00007f74412512e9  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.05%  ││  ││    0x00007f7441250fba: vmovq  %xmm2,%r11
  0.02%    0.03%  ││  ││    0x00007f7441250fbf: mov    0x34(%r11),%ebp    ;*getfield inst2
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.06%    0.07%  ││  ││    0x00007f7441250fc3: shr    $0x3,%rcx          ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.20%    0.21%  ││  ││    0x00007f7441250fc7: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.04%  ││  ││    0x00007f7441250fcb: lea    0x10(%r11,%rax,4),%r8
  0.04%    0.02%  ││  ││    0x00007f7441250fd0: mov    %ecx,(%r8)
  0.07%    0.07%  ││  ││    0x00007f7441250fd3: mov    %r8,%rcx
  0.18%    0.16%  ││  ││    0x00007f7441250fd6: shr    $0x9,%rcx
  0.06%    0.05%  ││  ││    0x00007f7441250fda: movabs $0x7f7452647000,%r8
  0.03%           ││  ││    0x00007f7441250fe4: mov    %r12b,(%r8,%rcx,1)  ;*aastore
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.10%    0.08%  ││  ││    0x00007f7441250fe8: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f744125181d
  0.24%    0.12%  ││  ││    0x00007f7441250fed: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││  ││    0x00007f7441250ff3: jne    0x00007f7441251329
  0.06%    0.02%  ││  ││    0x00007f7441250ff9: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.01%  ││  ││    0x00007f7441250ffd: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.26%    0.20%  ││  ││    0x00007f7441251001: vmovd  %ecx,%xmm1
  0.14%    0.17%  ││  ││    0x00007f7441251005: cmp    $0x40,%ecx
                  ││  ││    0x00007f7441251008: jg     0x00007f7441251559  ;*if_icmpgt
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.05%    0.05%  ││  ││    0x00007f744125100e: mov    $0x1,%ebx
  0.00%    0.02%  ││  ││    0x00007f7441251013: shl    %cl,%rbx           ;*lshl
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.40%    0.36%  ││  ││    0x00007f7441251016: mov    %r9,%rcx
  0.01%    0.01%  ││  ││    0x00007f7441251019: and    %rbx,%rcx          ;*land
                  ││  ││                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││  ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││  ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.12%    0.11%  ││  ││    0x00007f744125101c: test   %rcx,%rcx
                  ││╭ ││    0x00007f744125101f: jne    0x00007f7441251218  ;*ifeq
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.18%    0.24%  │││ ││    0x00007f7441251025: xor    %ebp,%ebp          ;*ireturn
                  │││ ││                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││ ││                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ ││                                                  ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.07%    0.03%  │││ ││↗   0x00007f7441251027: test   %rcx,%rcx
                  │││ │││   0x00007f744125102a: jne    0x00007f7441251595  ;*ifeq
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │││ │││   0x00007f7441251030: vmovd  %xmm1,%ecx
  0.09%    0.04%  │││ │││   0x00007f7441251034: cmp    $0x40,%ecx
                  │││ │││   0x00007f7441251037: jge    0x00007f74412515c9  ;*if_icmpge
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.18%    0.18%  │││ │││   0x00007f744125103d: or     %rbx,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.06%  │││ │││   0x00007f7441251040: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.05%  │││ │││   0x00007f7441251044: mov    %eax,%ebx
  0.11%    0.10%  │││ │││   0x00007f7441251046: add    $0x2,%ebx
  0.18%    0.32%  │││ │││   0x00007f7441251049: mov    %ebx,0xc(%rdx)     ;*putfield size
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.07%  │││ │││   0x00007f744125104c: mov    %eax,%ebx
  0.03%    0.02%  │││ │││   0x00007f744125104e: add    $0x4,%ebx          ;*iadd
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.05%  │││ │││   0x00007f7441251051: cmp    %r10d,%ebx
                  │││ │││   0x00007f7441251054: jae    0x00007f744125127d  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.20%    0.14%  │││ │││   0x00007f744125105a: vmovq  %xmm2,%r10
  0.02%    0.06%  │││ │││   0x00007f744125105f: mov    0x38(%r10),%ebp    ;*getfield inst3
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.02%    0.03%  │││ │││   0x00007f7441251063: mov    %r14,%rcx
  0.11%    0.07%  │││ │││   0x00007f7441251066: shr    $0x3,%rcx          ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.22%    0.22%  │││ │││   0x00007f744125106a: movslq %eax,%r10
  0.06%    0.09%  │││ │││   0x00007f744125106d: lea    (%r11,%r10,4),%rdi  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.04%  │││ │││   0x00007f7441251071: mov    %rdi,%r10
  0.05%    0.09%  │││ │││   0x00007f7441251074: add    $0x14,%r10
  0.23%    0.17%  │││ │││   0x00007f7441251078: mov    %ecx,(%r10)
  0.07%    0.06%  │││ │││   0x00007f744125107b: shr    $0x9,%r10
  0.02%    0.03%  │││ │││   0x00007f744125107f: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.11%    0.13%  │││ │││   0x00007f7441251083: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f7441251845
  0.18%    0.13%  │││ │││   0x00007f7441251088: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │││ │││   0x00007f744125108e: jne    0x00007f7441251355
  0.07%    0.09%  │││ │││   0x00007f7441251094: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.04%  │││ │││   0x00007f7441251098: mov    0x18(%r14),%ecx    ;*getfield pc
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.12%  │││ │││   0x00007f744125109c: vmovd  %ecx,%xmm1
  0.21%    0.28%  │││ │││   0x00007f74412510a0: cmp    $0x40,%ecx
                  │││ │││   0x00007f74412510a3: jg     0x00007f7441251605  ;*if_icmpgt
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.09%  │││ │││   0x00007f74412510a9: mov    $0x1,%r10d
  0.03%    0.03%  │││ │││   0x00007f74412510af: shl    %cl,%r10           ;*lshl
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.29%    0.41%  │││ │││   0x00007f74412510b2: mov    %r9,%rcx
  0.05%    0.05%  │││ │││   0x00007f74412510b5: and    %r10,%rcx          ;*land
                  │││ │││                                                 ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │││ │││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││ │││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.10%    0.10%  │││ │││   0x00007f74412510b8: test   %rcx,%rcx
                  │││╭│││   0x00007f74412510bb: jne    0x00007f7441251222  ;*ifeq
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.16%  │││││││   0x00007f74412510c1: xor    %ebp,%ebp          ;*ireturn
                  │││││││                                                 ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  │││││││                                                 ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │││││││                                                 ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.05%  │││││││↗  0x00007f74412510c3: test   %rcx,%rcx
                  ││││││││  0x00007f74412510c6: jne    0x00007f7441251641  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.04%  ││││││││  0x00007f74412510cc: vmovd  %xmm1,%ecx
  0.08%    0.13%  ││││││││  0x00007f74412510d0: cmp    $0x40,%ecx
                  ││││││││  0x00007f74412510d3: jge    0x00007f7441251675  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.20%    0.19%  ││││││││  0x00007f74412510d9: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.08%    0.03%  ││││││││  0x00007f74412510dc: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  ││││││││  0x00007f74412510e0: vmovq  %xmm2,%r10
  0.10%    0.09%  ││││││││  0x00007f74412510e5: mov    0x3c(%r10),%ebp    ;*getfield inst4
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.20%    0.18%  ││││││││  0x00007f74412510e9: mov    %rdi,%r10
  0.08%    0.06%  ││││││││  0x00007f74412510ec: add    $0x18,%r10
  0.03%    0.02%  ││││││││  0x00007f74412510f0: mov    %r14,%rcx
  0.08%    0.10%  ││││││││  0x00007f74412510f3: shr    $0x3,%rcx
  0.18%    0.14%  ││││││││  0x00007f74412510f7: mov    %ecx,(%r10)        ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.04%    0.05%  ││││││││  0x00007f74412510fa: mov    %eax,%ecx
  0.03%    0.02%  ││││││││  0x00007f74412510fc: add    $0x3,%ecx
  0.10%    0.10%  ││││││││  0x00007f74412510ff: mov    %ecx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.16%    0.18%  ││││││││  0x00007f7441251102: shr    $0x9,%r10
  0.03%    0.02%  ││││││││  0x00007f7441251106: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.03%    0.02%  ││││││││  0x00007f744125110a: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f744125186d
  0.14%    0.07%  ││││││││  0x00007f744125110f: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f7441251115: jne    0x00007f7441251381
  0.16%    0.19%  ││││││││  0x00007f744125111b: lea    (%r12,%rbp,8),%r14  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.02%  ││││││││  0x00007f744125111f: mov    0x18(%r14),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.01%    0.03%  ││││││││  0x00007f7441251123: vmovd  %ecx,%xmm0
  0.09%    0.12%  ││││││││  0x00007f7441251127: cmp    $0x40,%ecx
                  ││││││││  0x00007f744125112a: jg     0x00007f74412516b1  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.21%  ││││││││  0x00007f7441251130: mov    $0x1,%r10d
  0.02%    0.08%  ││││││││  0x00007f7441251136: shl    %cl,%r10           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.36%    0.37%  ││││││││  0x00007f7441251139: mov    %r9,%rcx
  0.04%    0.02%  ││││││││  0x00007f744125113c: and    %r10,%rcx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.05%  ││││││││  0x00007f744125113f: test   %rcx,%rcx
                  ││││││││  0x00007f7441251142: jne    0x00007f744125122c  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.09%    0.07%  ││││││││  0x00007f7441251148: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.20%    0.14%  ││││││││  0x00007f744125114a: test   %rcx,%rcx
                  ││││││││  0x00007f744125114d: jne    0x00007f74412516ed  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.04%  ││││││││  0x00007f7441251153: vmovd  %xmm0,%ecx
  0.01%    0.04%  ││││││││  0x00007f7441251157: cmp    $0x40,%ecx
                  ││││││││  0x00007f744125115a: jge    0x00007f7441251721  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.11%    0.14%  ││││││││  0x00007f7441251160: mov    %ebx,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.27%  ││││││││  0x00007f7441251163: vmovq  %xmm2,%rcx
  0.04%    0.04%  ││││││││  0x00007f7441251168: mov    0x40(%rcx),%ebp    ;*getfield inst5
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.02%    0.03%  ││││││││  0x00007f744125116b: mov    %rdi,%rcx
  0.07%    0.14%  ││││││││  0x00007f744125116e: add    $0x1c,%rcx         ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.17%    0.23%  ││││││││  0x00007f7441251172: or     %r10,%r9           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.04%    0.05%  ││││││││  0x00007f7441251175: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.03%  ││││││││  0x00007f7441251179: mov    %r14,%r10
  0.12%    0.08%  ││││││││  0x00007f744125117c: shr    $0x3,%r10
  0.21%    0.16%  ││││││││  0x00007f7441251180: mov    %r10d,(%rcx)
  0.06%    0.04%  ││││││││  0x00007f7441251183: mov    %rcx,%r10
  0.03%    0.06%  ││││││││  0x00007f7441251186: shr    $0x9,%r10
  0.09%    0.12%  ││││││││  0x00007f744125118a: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.18%    0.21%  ││││││││  0x00007f744125118e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f7441251895
  0.07%    0.04%  ││││││││  0x00007f7441251193: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  ││││││││  0x00007f744125119a: jne    0x00007f74412513ad
  0.03%    0.04%  ││││││││  0x00007f74412511a0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.07%  ││││││││  0x00007f74412511a4: mov    0x18(%r10),%ecx    ;*getfield pc
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.12%    0.23%  ││││││││  0x00007f74412511a8: cmp    $0x40,%ecx
                  ││││││││  0x00007f74412511ab: jg     0x00007f744125175d  ;*if_icmpgt
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.03%    0.06%  ││││││││  0x00007f74412511b1: shl    %cl,%rsi           ;*lshl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.37%    0.31%  ││││││││  0x00007f74412511b4: mov    %r9,%rbx
  0.02%    0.03%  ││││││││  0x00007f74412511b7: and    %rsi,%rbx          ;*land
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.01%    0.04%  ││││││││  0x00007f74412511ba: test   %rbx,%rbx
                  ││││││││  0x00007f74412511bd: jne    0x00007f7441251236  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.08%    0.08%  ││││││││  0x00007f74412511bf: xor    %ebp,%ebp          ;*ireturn
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.20%    0.28%  ││││││││  0x00007f74412511c1: test   %rbx,%rbx
                  ││││││││  0x00007f74412511c4: jne    0x00007f7441251781  ;*ifeq
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.05%  ││││││││  0x00007f74412511ca: cmp    $0x40,%ecx
                  ││││││││  0x00007f74412511cd: jge    0x00007f74412517a1  ;*if_icmpge
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.04%  ││││││││  0x00007f74412511d3: or     %rsi,%r9
  0.08%    0.09%  ││││││││  0x00007f74412511d6: mov    %r9,0x10(%rdx)     ;*putfield pcsl
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.16%    0.17%  ││││││││  0x00007f74412511da: add    $0x20,%rdi
  0.03%    0.04%  ││││││││  0x00007f74412511de: shr    $0x3,%r10
  0.01%    0.00%  ││││││││  0x00007f74412511e2: mov    %r10d,(%rdi)       ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.05%    0.08%  ││││││││  0x00007f74412511e5: mov    %rdi,%r10
  0.19%    0.16%  ││││││││  0x00007f74412511e8: add    $0x5,%eax
  0.03%    0.06%  ││││││││  0x00007f74412511eb: mov    %eax,0xc(%rdx)     ;*putfield size
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.00%    0.03%  ││││││││  0x00007f74412511ee: shr    $0x9,%r10
  0.09%    0.07%  ││││││││  0x00007f74412511f2: mov    %r12b,(%r8,%r10,1)  ;*aastore
                  ││││││││                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  ││││││││                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  ││││││││                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.19%    0.34%  ││││││││  0x00007f74412511f6: xor    %eax,%eax
  0.03%    0.06%  ││││││││  0x00007f74412511f8: add    $0x70,%rsp
  0.00%    0.04%  ││││││││  0x00007f74412511fc: pop    %rbp
  0.08%    0.12%  ││││││││  0x00007f74412511fd: test   %eax,0x189eddfd(%rip)        # 0x00007f7459c3f000
                  ││││││││                                                ;   {poll_return}
  0.18%    0.23%  ││││││││  0x00007f7441251203: retq   
                  ↘│││││││  0x00007f7441251204: mov    $0x1,%ebp
                   │││╰│││  0x00007f7441251209: jmpq   0x00007f7441250eed
                   ↘││ │││  0x00007f744125120e: mov    $0x1,%ebp
                    ││ ╰││  0x00007f7441251213: jmpq   0x00007f7441250f50
                    ↘│  ││  0x00007f7441251218: mov    $0x1,%ebp
                     │  ╰│  0x00007f744125121d: jmpq   0x00007f7441251027
                     ↘   │  0x00007f7441251222: mov    $0x1,%ebp
                         ╰  0x00007f7441251227: jmpq   0x00007f74412510c3
                            0x00007f744125122c: mov    $0x1,%ebp
....................................................................................................
 17.63%   18.87%  <total for region 3>

....[Hottest Region 4]..............................................................................
C2, level 4, com.google.re2j.Machine::step, version 535 (829 bytes) 

                    0x00007f7441248182: shr    $0x3,%r8
                    0x00007f7441248186: mov    %r8d,(%rdx)
                    0x00007f7441248189: shr    $0x9,%r10
                    0x00007f744124818d: movabs $0x7f7452647000,%r8
                    0x00007f7441248197: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f744124819b: jmpq   0x00007f744124857a
  0.08%    0.09%    0x00007f74412481a0: mov    0x2c(%r12,%r9,8),%r9d  ;*getfield outInst
                                                                  ; - com.google.re2j.Machine::step@191 (line 314)
  0.26%    0.06%    0x00007f74412481a5: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x00007f74412495f5
  1.24%    1.19%    0x00007f74412481aa: lea    (%r12,%r9,8),%r8
  0.01%    0.02%    0x00007f74412481ae: cmp    $0xf8019843,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f74412481b4: jne    0x00007f74412486d5  ;*invokevirtual add
                                                                  ; - com.google.re2j.Machine::step@206 (line 314)
  0.32%    0.38%    0x00007f74412481ba: mov    0x18(%r8),%eax     ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.03%    0x00007f74412481be: mov    0x10(%r11),%r9     ;*getfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007f7441249629
                    0x00007f74412481c2: cmp    $0x40,%eax
                    0x00007f74412481c5: jg     0x00007f7441248c2d  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.27%    0.45%    0x00007f74412481cb: mov    $0x1,%ebx
           0.00%    0x00007f74412481d0: mov    %eax,%ecx
                    0x00007f74412481d2: shl    %cl,%rbx           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.66%    0.63%    0x00007f74412481d5: mov    %r9,%rcx
                    0x00007f74412481d8: and    %rbx,%rcx
                    0x00007f74412481db: test   %rcx,%rcx
                    0x00007f74412481de: jne    0x00007f744124858f  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%    0x00007f74412481e4: cmp    $0x40,%eax
                    0x00007f74412481e7: jge    0x00007f7441248c89  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.20%    0.15%    0x00007f74412481ed: mov    %r12b,0x18(%r11)   ;*putfield empty
                                                                  ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%    0x00007f74412481f1: mov    0x2c(%r8),%ebp     ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f74412481f5: or     %r9,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.11%    0.10%    0x00007f74412481f8: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.17%    0x00007f74412481fc: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f744124963d
  0.44%    0.48%    0x00007f7441248201: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f7441248207: jne    0x00007f74412489c9
  0.29%    0.27%    0x00007f744124820d: lea    (%r12,%rbp,8),%r9  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.00%    0x00007f7441248211: mov    0x18(%r9),%ecx     ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.16%    0x00007f7441248215: cmp    $0x40,%ecx
                    0x00007f7441248218: jg     0x00007f7441248ce5  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.17%    0x00007f744124821e: mov    $0x1,%edi
  0.06%    0.05%    0x00007f7441248223: shl    %cl,%rdi           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.45%    0.38%    0x00007f7441248226: mov    %rbx,%rsi
           0.01%    0x00007f7441248229: and    %rdi,%rsi          ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f744124822c: test   %rsi,%rsi
                    0x00007f744124822f: jne    0x00007f74412487d9  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.14%    0x00007f7441248235: xor    %ebp,%ebp          ;*ireturn
                                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%    0x00007f7441248237: test   %rsi,%rsi
                    0x00007f744124823a: jne    0x00007f7441248d45  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.15%    0x00007f7441248240: cmp    $0x40,%ecx
                    0x00007f7441248243: jge    0x00007f7441248da1  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f7441248249: or     %rdi,%rbx          ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.01%    0x00007f744124824c: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.03%    0x00007f7441248250: mov    0x20(%r11),%edi    ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.14%    0x00007f7441248254: mov    0xc(%r11),%ecx     ;*getfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f7441248258: mov    %ecx,%ebp
  0.04%    0.00%    0x00007f744124825a: inc    %ebp               ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.03%    0x00007f744124825c: mov    %ebp,0xc(%r11)     ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.05%    0x00007f7441248260: mov    0xc(%r12,%rdi,8),%eax  ; implicit exception: dispatches to 0x00007f7441249651
                    0x00007f7441248265: cmp    %eax,%ecx
                    0x00007f7441248267: jae    0x00007f744124896d
  0.03%    0.01%    0x00007f744124826d: mov    0x8(%r12,%rdi,8),%esi
  0.09%             0x00007f7441248272: cmp    $0xf8019807,%esi   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                    0x00007f7441248278: jne    0x00007f7441248a25  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.15%    0.08%    0x00007f744124827e: mov    0x34(%r8),%r8d     ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%             0x00007f7441248282: mov    %r9,%rsi
  0.04%    0.00%    0x00007f7441248285: shr    $0x3,%rsi          ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.02%    0x00007f7441248289: lea    (%r12,%rdi,8),%r9  ;*getfield denseThreadsInstructions
                                                                  ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.21%    0.10%    0x00007f744124828d: lea    0x10(%r9,%rcx,4),%r14
                    0x00007f7441248292: mov    %esi,(%r14)
  0.04%    0.02%    0x00007f7441248295: mov    %r14,%rsi
  0.05%    0.05%    0x00007f7441248298: shr    $0x9,%rsi
  0.24%    0.19%    0x00007f744124829c: movabs $0x7f7452647000,%r14
                    0x00007f74412482a6: mov    %r12b,(%r14,%rsi,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.05%    0x00007f74412482aa: mov    0x8(%r12,%r8,8),%esi  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                                                                  ; implicit exception: dispatches to 0x00007f744124966d
  0.06%    0.04%    0x00007f74412482af: vmovd  %r8d,%xmm1
  0.17%    0.20%    0x00007f74412482b4: vmovd  %ebp,%xmm2
                    0x00007f74412482b8: vmovd  %edi,%xmm0
  0.01%    0.03%    0x00007f74412482bc: mov    %r10d,0xa4(%rsp)
  0.05%    0.06%    0x00007f74412482c4: mov    %r13d,0xac(%rsp)
  0.24%    0.08%    0x00007f74412482cc: mov    %r11,%r13
                    0x00007f74412482cf: mov    %rdx,0x10(%rsp)
  0.04%    0.03%    0x00007f74412482d4: mov    %ecx,%r14d
  0.07%    0.02%    0x00007f74412482d7: movslq %ecx,%r10
  0.15%    0.15%    0x00007f74412482da: lea    (%r9,%r10,4),%rdi  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f74412482de: mov    %rdi,%rdx
  0.03%    0.02%    0x00007f74412482e1: add    $0x14,%rdx         ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.08%    0x00007f74412482e5: shl    $0x3,%r8
  0.16%    0.16%    0x00007f74412482e9: mov    %ecx,%r10d
  0.00%             0x00007f74412482ec: add    $0x2,%r10d         ;*iadd
                                                                  ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.04%    0x00007f74412482f0: cmp    $0xf8019885,%esi   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f74412482f6: jne    0x00007f744124811e  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%    0x00007f74412482fc: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@2 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.13%    0x00007f7441248300: cmp    $0x40,%r11d
                    0x00007f7441248304: jg     0x00007f7441248f75  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%             0x00007f744124830a: vmovq  %r8,%xmm1
  0.04%    0.01%    0x00007f744124830f: mov    $0x1,%r8d
  0.09%    0.01%    0x00007f7441248315: mov    %r11d,%ecx
  0.21%    0.04%    0x00007f7441248318: shl    %cl,%r8            ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.05%    0x00007f744124831b: mov    %rbx,%r11
  0.19%    0.08%    0x00007f744124831e: and    %r8,%r11           ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f7441248321: test   %r11,%r11
                    0x00007f7441248324: jne    0x00007f74412487e3  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.01%    0x00007f744124832a: xor    %ebp,%ebp          ;*ireturn
                                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@5 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.03%    0x00007f744124832c: test   %r11,%r11
                    0x00007f744124832f: jne    0x00007f7441248fb1  ;*ifeq
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@8 (line 461)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.22%    0.04%    0x00007f7441248335: mov    %ecx,%r11d
                    0x00007f7441248338: cmp    $0x40,%r11d
                    0x00007f744124833c: jge    0x00007f7441248fdd  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.01%    0x00007f7441248342: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.04%    0x00007f7441248345: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@19 (line 464)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.16%    0x00007f7441248349: vmovq  %xmm1,%r11
  0.00%             0x00007f744124834e: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@82 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%    0x00007f7441248352: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f7441249681
  0.09%    0.07%    0x00007f7441248357: cmp    $0xf8019843,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$Alt2Inst&apos;)}
                    0x00007f744124835e: jne    0x00007f7441248bc1
  0.16%    0.03%    0x00007f7441248364: lea    (%r12,%rbp,8),%r8  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
           0.00%    0x00007f7441248368: mov    0x18(%r8),%r11d    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@2 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.01%    0x00007f744124836c: cmp    $0x40,%r11d
                    0x00007f7441248370: jg     0x00007f7441249149  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.00%    0x00007f7441248376: mov    %r11d,%ecx
  0.19%    0.14%    0x00007f7441248379: vmovq  %r8,%xmm1
                    0x00007f744124837e: mov    $0x1,%r8d
  0.02%    0.01%    0x00007f7441248384: shl    %cl,%r8            ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.23%    0.27%    0x00007f7441248387: mov    %rbx,%r11
  0.02%    0.11%    0x00007f744124838a: and    %r8,%r11
  0.07%    0.10%    0x00007f744124838d: test   %r11,%r11
                    0x00007f7441248390: jne    0x00007f74412487f7  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@5 (line 175)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.28%    0x00007f7441248396: mov    %ecx,%r11d
                    0x00007f7441248399: cmp    $0x40,%r11d
                    0x00007f744124839d: jge    0x00007f7441249185  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.03%    0.02%    0x00007f74412483a3: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.06%    0x00007f74412483a6: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@19 (line 178)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.15%    0x00007f74412483aa: vmovq  %xmm1,%r11
                    0x00007f74412483af: mov    0x2c(%r11),%ebp    ;*getfield outInst
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@23 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.02%    0.06%    0x00007f74412483b3: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00007f7441249695
  0.12%    0.19%    0x00007f74412483b8: cmp    $0xf8019909,%r8d   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f74412483bf: jne    0x00007f7441248be9
  0.25%    0.22%    0x00007f74412483c5: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f74412483c9: vmovq  %r11,%xmm3
  0.05%    0.06%    0x00007f74412483ce: mov    0x18(%r11),%r11d   ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.09%    0x00007f74412483d2: vmovd  %r11d,%xmm4
  0.19%    0.27%    0x00007f74412483d7: cmp    $0x40,%r11d
                    0x00007f74412483db: jg     0x00007f74412491c1  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
                    0x00007f74412483e1: mov    $0x1,%r8d
  0.03%    0.03%    0x00007f74412483e7: mov    %r11d,%ecx
  0.07%    0.08%    0x00007f74412483ea: shl    %cl,%r8            ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.24%    0x00007f74412483ed: mov    %rbx,%r11
  0.08%    0.08%    0x00007f74412483f0: and    %r8,%r11           ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.19%    0.19%    0x00007f74412483f3: test   %r11,%r11
                    0x00007f74412483f6: jne    0x00007f74412487ff  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f74412483fc: xor    %ebp,%ebp          ;*ireturn
                                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.09%    0.07%    0x00007f74412483fe: test   %r11,%r11
                    0x00007f7441248401: jne    0x00007f7441249205  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.10%    0.06%    0x00007f7441248407: mov    %ecx,%r11d
  0.16%    0.16%    0x00007f744124840a: cmp    $0x40,%r11d
                    0x00007f744124840e: jge    0x00007f744124923d  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.01%    0x00007f7441248414: mov    %r10d,0xc(%r13)    ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.03%    0x00007f7441248418: or     %r8,%rbx           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.08%    0x00007f744124841b: mov    %rbx,0x10(%r13)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.17%    0.17%    0x00007f744124841f: cmp    %eax,%r10d
                    0x00007f7441248422: jae    0x00007f7441248b31  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f7441248428: vmovq  %xmm1,%r10
  0.06%    0.03%    0x00007f744124842d: mov    0x34(%r10),%r11d   ;*getfield inst2
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@43 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.07%    0x00007f7441248431: mov    %rdx,%r8
  0.15%    0.21%    0x00007f7441248434: vmovq  %xmm3,%r10
  0.02%    0.01%    0x00007f7441248439: shr    $0x3,%r10
  0.05%    0.04%    0x00007f744124843d: mov    %r10d,(%rdx)
  0.04%    0.10%    0x00007f7441248440: shr    $0x9,%r8
  0.13%    0.29%    0x00007f7441248444: movabs $0x7f7452647000,%r10
  0.02%    0.03%    0x00007f744124844e: mov    %r12b,(%r10,%r8,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@37 (line 180)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.04%    0.02%    0x00007f7441248452: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f74412496a9
  0.06%    0.08%    0x00007f7441248457: lea    (%r12,%r11,8),%r10
  0.15%    0.20%    0x00007f744124845b: cmp    $0xf8019885,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$CaptureInst&apos;)}
                    0x00007f7441248461: je     0x00007f74412484e2
  0.01%    0.00%    0x00007f7441248463: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                    0x00007f7441248469: jne    0x00007f7441248e01  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%    0x00007f744124846f: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                  ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.06%    0x00007f7441248473: cmp    $0x40,%ecx
                    0x00007f7441248476: jg     0x00007f7441249321  ;*if_icmpgt
                                                                  ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.18%    0.12%    0x00007f744124847c: mov    $0x1,%r11d
  0.00%    0.02%    0x00007f7441248482: shl    %cl,%r11           ;*lshl
                                                                  ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.30%    0.36%    0x00007f7441248485: mov    %rbx,%r8
  0.01%    0.01%    0x00007f7441248488: and    %r11,%r8           ;*land
                                                                  ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.07%    0x00007f744124848b: test   %r8,%r8
                    0x00007f744124848e: jne    0x00007f7441248813  ;*ifeq
                                                                  ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.06%    0.09%    0x00007f7441248494: xor    %ebp,%ebp          ;*ireturn
                                                                  ; - com.google.re2j.Machine$Queue::contains@24 (line 42)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.23%    0x00007f7441248496: test   %r8,%r8
                    0x00007f7441248499: jne    0x00007f7441249391  ;*ifeq
                                                                  ; - com.google.re2j.Inst$MatchInst::add@8 (line 144)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.00%    0.02%    0x00007f744124849f: cmp    $0x40,%ecx
                    0x00007f74412484a2: jge    0x00007f74412493e1  ;*if_icmpge
                                                                  ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.05%    0x00007f74412484a8: or     %r11,%rbx
  0.09%    0.06%    0x00007f74412484ab: mov    %r13,%r11
  0.18%    0.21%    0x00007f74412484ae: mov    %rbx,0x10(%r11)    ;*putfield pcsl
                                                                  ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f74412484b2: add    $0x18,%rdi
  0.02%    0.07%    0x00007f74412484b6: mov    %r10,%r8
  0.04%    0.07%    0x00007f74412484b9: shr    $0x3,%r8
  0.19%    0.24%    0x00007f74412484bd: mov    %r8d,(%rdi)        ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.01%    0.02%    0x00007f74412484c0: mov    %rdi,%r10
  0.05%    0.05%    0x00007f74412484c3: add    $0x3,%r14d
  0.08%    0.06%    0x00007f74412484c7: mov    %r14d,0xc(%r11)    ;*putfield size
                                                                  ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.16%    0.13%    0x00007f74412484cb: shr    $0x9,%r10
  0.02%    0.01%    0x00007f74412484cf: movabs $0x7f7452647000,%r8
  0.03%    0.02%    0x00007f74412484d9: mov    %r12b,(%r8,%r10,1)  ;*aastore
                                                                  ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                                                                  ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
  0.05%    0.02%    0x00007f74412484dd: jmpq   0x00007f744124857a  ;*invokevirtual add
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@57 (line 181)
                                                                  ; - com.google.re2j.Inst$CaptureInst::add@96 (line 472)
                                                                  ; - com.google.re2j.Inst$Alt2Inst::add@-1 (line 175)
                                                                  ; - com.google.re2j.Machine::step@-1 (line 280)
....................................................................................................
 15.85%   14.29%  <total for region 4>

....[Hottest Regions]...............................................................................
 27.06%   28.29%         C2, level 4  com.google.re2j.Machine::match, version 568 (1190 bytes) 
 22.96%   23.46%         C2, level 4  com.google.re2j.Machine::step, version 535 (203 bytes) 
 17.63%   18.87%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 543 (867 bytes) 
 15.85%   14.29%         C2, level 4  com.google.re2j.Machine::step, version 535 (829 bytes) 
  7.53%    7.27%         C2, level 4  com.google.re2j.Machine::step, version 535 (121 bytes) 
  4.53%    3.65%         C2, level 4  com.google.re2j.Machine::step, version 535 (234 bytes) 
  1.23%    1.58%         C2, level 4  com.google.re2j.Machine::match, version 568 (93 bytes) 
  0.42%    0.41%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.13%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 585 (23 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (70 bytes) 
  0.08%                  C2, level 4  com.google.re2j.Pattern::find, version 585 (86 bytes) 
  0.08%    0.04%         C2, level 4  com.google.re2j.Pattern::find, version 585 (8 bytes) 
  0.07%    0.05%         C2, level 4  com.google.re2j.Pattern::find, version 585 (0 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.06%    0.06%         C2, level 4  com.google.re2j.Pattern::find, version 585 (20 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%                  C2, level 4  com.google.re2j.Pattern::find, version 585 (70 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.04%    0.02%         C2, level 4  com.google.re2j.Pattern::find, version 585 (48 bytes) 
  0.03%    0.05%         C2, level 4  com.google.re2j.Machine::match, version 568 (115 bytes) 
  1.97%    1.84%  <...other 386 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.87%   48.68%         C2, level 4  com.google.re2j.Machine::step, version 535 
 28.57%   30.07%         C2, level 4  com.google.re2j.Machine::match, version 568 
 17.63%   18.87%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 543 
  1.33%    0.98%   [kernel.kallsyms]  [unknown] 
  0.66%    0.26%         C2, level 4  com.google.re2j.Pattern::find, version 585 
  0.10%    0.06%         C2, level 4  java.util.Collections::shuffle, version 594 
  0.05%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.03%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testCombine_jmhTest::testCombine_thrpt_jmhStub, version 643 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.04%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.03%    0.01%              [vdso]  __vdso_clock_gettime 
  0.03%    0.02%              [vdso]  [unknown] 
  0.02%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.03%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.01%           libjvm.so  defaultStream::hold 
  0.01%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.01%           libjvm.so  Monitor::ILock 
  0.44%    0.43%  <...other 70 warm methods...>
....................................................................................................
100.00%   99.74%  <totals>

....[Distribution by Source]........................................................................
 97.90%   97.97%         C2, level 4
  1.33%    0.98%   [kernel.kallsyms]
  0.37%    0.58%           libjvm.so
  0.15%    0.33%        libc-2.26.so
  0.07%    0.03%  libpthread-2.26.so
  0.06%    0.03%              [vdso]
  0.05%    0.04%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%    0.00%         C1, level 3
  0.00%                perf-1593.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        Mode  Cnt      Score    Error  Units
Re2jFindRegex.testCombine       thrpt   20  11923.898 ± 72.489  ops/s
Re2jFindRegex.testCombine:·asm  thrpt             NaN             ---
