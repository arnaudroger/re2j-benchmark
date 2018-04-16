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
# Warmup Iteration   1: 15751.302 ops/s
# Warmup Iteration   2: 25723.155 ops/s
# Warmup Iteration   3: 24100.731 ops/s
# Warmup Iteration   4: 25503.798 ops/s
# Warmup Iteration   5: 25244.132 ops/s
# Warmup Iteration   6: 25282.367 ops/s
# Warmup Iteration   7: 19297.694 ops/s
# Warmup Iteration   8: 25737.767 ops/s
# Warmup Iteration   9: 26080.903 ops/s
# Warmup Iteration  10: 25924.570 ops/s
# Warmup Iteration  11: 22119.749 ops/s
# Warmup Iteration  12: 26207.888 ops/s
# Warmup Iteration  13: 25942.718 ops/s
# Warmup Iteration  14: 25752.521 ops/s
# Warmup Iteration  15: 24438.646 ops/s
# Warmup Iteration  16: 26139.672 ops/s
# Warmup Iteration  17: 25924.098 ops/s
# Warmup Iteration  18: 25863.725 ops/s
# Warmup Iteration  19: 17304.637 ops/s
# Warmup Iteration  20: 23381.484 ops/s
Iteration   1: 26215.276 ops/s
Iteration   2: 25526.005 ops/s
Iteration   3: 25846.074 ops/s
Iteration   4: 25980.854 ops/s
Iteration   5: 25822.879 ops/s
Iteration   6: 25887.498 ops/s
Iteration   7: 16971.147 ops/s
Iteration   8: 25147.622 ops/s
Iteration   9: 25383.285 ops/s
Iteration  10: 25376.052 ops/s
Iteration  11: 25446.178 ops/s
Iteration  12: 25484.424 ops/s
Iteration  13: 25160.007 ops/s
Iteration  14: 24829.082 ops/s
Iteration  15: 21694.411 ops/s
Iteration  16: 24663.264 ops/s
Iteration  17: 24655.415 ops/s
Iteration  18: 23984.835 ops/s
Iteration  19: 24745.708 ops/s
Iteration  20: 24738.382 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  24677.920 ±(99.9%) 1786.338 ops/s [Average]
  (min, avg, max) = (16971.147, 24677.920, 26215.276), stdev = 2057.150
  CI (99.9%): [22891.582, 26464.258] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 206291 total address lines.
Perf output processed (skipped 23.089 seconds):
 Column 1: cycles (20369 events)
 Column 2: instructions (20425 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 587 (1400 bytes) 

  0.01%    0.02%                                       0x00007f49585d8d79: mov    %r11d,0x20(%rsp)
                                                       0x00007f49585d8d7e: mov    %r10d,0x18(%rsp)
                                                       0x00007f49585d8d83: mov    0x68(%rsp),%r11d
                                                       0x00007f49585d8d88: and    $0x4,%r11d         ;*iand
                                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
                                                       0x00007f49585d8d8c: mov    %r11d,0x2c(%rsp)
                                                       0x00007f49585d8d91: mov    %r13,%r10
                                                       0x00007f49585d8d94: shl    $0x3,%r10          ;*getfield q1
                                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                                       0x00007f49585d8d98: mov    %r10,0x10(%rsp)
  0.00%                                                0x00007f49585d8d9d: xor    %eax,%eax
                                                       0x00007f49585d8d9f: xor    %r11d,%r11d
                                                       0x00007f49585d8da2: mov    %r11d,0x38(%rsp)
  0.01%           ╭                                    0x00007f49585d8da7: jmpq   0x00007f49585d90cd
  0.21%    0.30%  │   ↗↗↗                              0x00007f49585d8dac: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                  │   │││                                                                            ; - com.google.re2j.Machine::step@189 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.21%    0.20%  │   │││                              0x00007f49585d8db1: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f49585da1d1
  0.21%    0.13%  │   │││                              0x00007f49585d8db6: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │   │││                              0x00007f49585d8dbc: jne    0x00007f49585d99f5
  0.11%    0.13%  │   │││                              0x00007f49585d8dc2: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.00%  │   │││                              0x00007f49585d8dc6: vmovq  %rcx,%xmm0
  0.02%    0.01%  │   │││                              0x00007f49585d8dcb: mov    0x18(%rcx),%ebx    ;*getfield pc
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.01%  │   │││                              0x00007f49585d8dce: vmovd  %ebx,%xmm3
  0.12%    0.09%  │   │││                              0x00007f49585d8dd2: mov    0x10(%rsp),%rcx
  0.01%    0.03%  │   │││                              0x00007f49585d8dd7: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
                  │   │││                                                                            ; implicit exception: dispatches to 0x00007f49585da1f1
  0.02%    0.02%  │   │││                              0x00007f49585d8ddb: vmovd  %xmm3,%ecx
  0.13%    0.06%  │   │││                              0x00007f49585d8ddf: cmp    $0x40,%ecx
                  │   │││                              0x00007f49585d8de2: jg     0x00007f49585d9ab9  ;*if_icmpgt
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.10%  │   │││                              0x00007f49585d8de8: mov    $0x1,%edx
  0.01%    0.01%  │   │││                              0x00007f49585d8ded: shl    %cl,%rdx           ;*lshl
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.38%    0.31%  │   │││                              0x00007f49585d8df0: mov    %rbx,%rcx
           0.00%  │   │││                              0x00007f49585d8df3: and    %rdx,%rcx          ;*land
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.01%    0.02%  │   │││                              0x00007f49585d8df6: test   %rcx,%rcx
                  │   │││                              0x00007f49585d8df9: jne    0x00007f49585d9b21  ;*ifeq
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.13%  │   │││                              0x00007f49585d8dff: vmovd  %xmm3,%ecx
  0.02%    0.01%  │   │││                              0x00007f49585d8e03: cmp    $0x40,%ecx
                  │   │││                              0x00007f49585d8e06: jge    0x00007f49585d9b99  ;*if_icmpge
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.10%  │   │││                              0x00007f49585d8e0c: mov    0x10(%rsp),%rcx
  0.01%    0.00%  │   │││                              0x00007f49585d8e11: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.03%  │   │││                              0x00007f49585d8e15: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.06%    0.01%  │   │││                              0x00007f49585d8e18: vmovd  %ecx,%xmm2
  0.08%    0.15%  │   │││                              0x00007f49585d8e1c: mov    0x10(%rsp),%rcx
  0.01%           │   │││                              0x00007f49585d8e21: mov    0xc(%rcx),%ebp     ;*getfield size
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.03%    0.03%  │   │││                              0x00007f49585d8e24: or     %rbx,%rdx
  0.01%    0.03%  │   │││                              0x00007f49585d8e27: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.14%    0.08%  │   │││                              0x00007f49585d8e2b: mov    %ebp,%ebx
                  │   │││                              0x00007f49585d8e2d: inc    %ebx
  0.02%    0.04%  │   │││                              0x00007f49585d8e2f: mov    %ebx,0xc(%rcx)     ;*putfield size
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
           0.01%  │   │││                              0x00007f49585d8e32: vmovd  %xmm2,%ecx
  0.08%    0.10%  │   │││                              0x00007f49585d8e36: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f49585da205
  0.18%    0.12%  │   │││                              0x00007f49585d8e3b: cmp    %ecx,%ebp
                  │   │││                              0x00007f49585d8e3d: jae    0x00007f49585d998d
  0.22%    0.27%  │   │││                              0x00007f49585d8e43: vmovd  %xmm2,%ecx
  0.01%           │   │││                              0x00007f49585d8e47: mov    0x8(%r12,%rcx,8),%ebx
  0.04%    0.05%  │   │││                              0x00007f49585d8e4c: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │   │││                              0x00007f49585d8e52: jne    0x00007f49585d9a51  ;*aastore
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.07%  │   │││                              0x00007f49585d8e58: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.02%    0.03%  │   │││                              0x00007f49585d8e5c: lea    0x10(%rcx,%rbp,4),%rcx
           0.01%  │   │││                              0x00007f49585d8e61: vmovq  %xmm0,%rbx
  0.07%    0.03%  │   │││                              0x00007f49585d8e66: mov    %rbx,%rdx
  0.07%    0.11%  │   │││                              0x00007f49585d8e69: shr    $0x3,%rdx
  0.07%    0.06%  │   │││                              0x00007f49585d8e6d: mov    %edx,(%rcx)
  0.25%    0.28%  │   │││                              0x00007f49585d8e6f: shr    $0x9,%rcx
  0.03%    0.03%  │   │││                              0x00007f49585d8e73: movabs $0x7f4953da6000,%rbx
                  │   │││                              0x00007f49585d8e7d: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │   │││                                                                            ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │   │││                                                                            ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │   │││                                                                            ; - com.google.re2j.Machine::step@202 (line 313)
                  │   │││                                                                            ; - com.google.re2j.Machine::match@355 (line 246)
  0.10%    0.20%  │╭  │││                              0x00007f49585d8e81: jmpq   0x00007f49585d8f7b
  0.25%    0.27%  ││  │││               ↗              0x00007f49585d8e86: or     $0x20,%r9d         ;*iload_2
                  ││  │││               │                                                            ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││  │││               │                                                            ; - com.google.re2j.Machine::match@322 (line 245)
  0.20%    0.17%  ││  │││               │↗             0x00007f49585d8e8a: movzbl 0x18(%r12,%r10,8),%r14d  ;*getfield longest
                  ││  │││               ││                                                           ; - com.google.re2j.Machine::step@4 (line 280)
                  ││  │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                  ││  │││               ││                                                           ; implicit exception: dispatches to 0x00007f49585da16d
  0.64%    0.77%  ││  │││               ││             0x00007f49585d8e90: mov    0x28(%rsp),%r11d
  0.08%    0.08%  ││  │││               ││             0x00007f49585d8e95: mov    0xc(%r12,%r11,8),%r11d  ;*getfield size
                  ││  │││               ││                                                           ; - com.google.re2j.Machine::step@10 (line 281)
                  ││  │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.24%    0.23%  ││  │││               ││             0x00007f49585d8e9a: mov    0x38(%rsp),%r8d
  0.13%    0.16%  ││  │││               ││             0x00007f49585d8e9f: add    0x1c(%rsp),%r8d    ;*iadd
                  ││  │││               ││                                                           ; - com.google.re2j.Machine::match@336 (line 246)
  0.27%    0.36%  ││  │││               ││             0x00007f49585d8ea4: test   %r11d,%r11d
                  ││╭ │││               ││             0x00007f49585d8ea7: jle    0x00007f49585d8f83  ;*if_icmpge
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::step@22 (line 282)
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.09%    0.06%  │││ │││               ││             0x00007f49585d8ead: mov    0x70(%rsp),%r10
  0.18%    0.15%  │││ │││               ││             0x00007f49585d8eb2: mov    0x10(%r10),%ecx
  0.16%    0.14%  │││ │││               ││             0x00007f49585d8eb6: mov    0x60(%rsp),%r10
  0.28%    0.30%  │││ │││               ││             0x00007f49585d8ebb: movzbl 0x11(%r10),%r10d
  0.11%    0.09%  │││ │││               ││             0x00007f49585d8ec0: mov    0x38(%rsp),%ebx
  0.13%    0.13%  │││ │││               ││             0x00007f49585d8ec4: mov    $0x1,%edx
  0.13%    0.15%  │││ │││               ││             0x00007f49585d8ec9: xor    %edi,%edi
  0.27%    0.42%  │││ │││               ││             0x00007f49585d8ecb: cmp    %ecx,%ebx
  0.11%    0.13%  │││ │││               ││             0x00007f49585d8ecd: cmovne %edi,%edx          ;*invokespecial step
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.33%    0.32%  │││ │││               ││             0x00007f49585d8ed0: vmovd  %edx,%xmm1
  0.37%    0.36%  │││ │││               ││             0x00007f49585d8ed4: test   %r10d,%r10d
                  │││ │││               ││             0x00007f49585d8ed7: jne    0x00007f49585d9625  ;*aload_0
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::step@25 (line 285)
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.15%  │││ │││               ││             0x00007f49585d8edd: mov    0x28(%rsp),%r10d
  0.12%    0.21%  │││ │││               ││             0x00007f49585d8ee2: mov    0x20(%r12,%r10,8),%r10d  ;*getfield denseThreadsInstructions
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::step@82 (line 295)
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.20%    0.14%  │││ │││               ││             0x00007f49585d8ee7: mov    0xc(%r12,%r10,8),%ebx  ;*aaload
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::step@87 (line 295)
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                  │││ │││               ││                                                           ; implicit exception: dispatches to 0x00007f49585d9625
  0.60%    0.49%  │││ │││               ││             0x00007f49585d8eec: test   %ebx,%ebx
                  │││ │││               ││             0x00007f49585d8eee: jbe    0x00007f49585d9625
  0.23%    0.30%  │││ │││               ││             0x00007f49585d8ef4: mov    %r11d,%edi
  0.06%    0.04%  │││ │││               ││             0x00007f49585d8ef7: dec    %edi
  0.13%    0.12%  │││ │││               ││             0x00007f49585d8ef9: cmp    %ebx,%edi
                  │││ │││               ││             0x00007f49585d8efb: jae    0x00007f49585d9625
  0.39%    0.37%  │││ │││               ││             0x00007f49585d8f01: lea    (%r12,%r10,8),%rdi
  0.14%    0.13%  │││ │││               ││             0x00007f49585d8f05: xor    %r10d,%r10d
  0.06%    0.07%  │││ │││               ││             0x00007f49585d8f08: nopl   0x0(%rax,%rax,1)   ;*aload_0
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::step@25 (line 285)
                  │││ │││               ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.53%    1.54%  │││ │││↗              ││             0x00007f49585d8f10: mov    0x10(%rdi,%r10,4),%ecx  ;*aaload
                  │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@87 (line 295)
                  │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.67%    0.68%  │││ ││││              ││             0x00007f49585d8f15: mov    0xc(%r12,%rcx,8),%edx  ;*getfield op
                  │││ ││││              ││                                                           ; - com.google.re2j.Machine::step@92 (line 297)
                  │││ ││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
                  │││ ││││              ││                                                           ; implicit exception: dispatches to 0x00007f49585da121
  1.82%    1.93%  │││ ││││              ││             0x00007f49585d8f1a: cmp    $0x6,%edx
                  │││╭││││              ││             0x00007f49585d8f1d: je     0x00007f49585d92fe  ;*if_icmpne
                  ││││││││              ││                                                           ; - com.google.re2j.Machine::step@97 (line 297)
                  ││││││││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.28%    1.11%  ││││││││              ││             0x00007f49585d8f23: cmp    $0xa,%edx
                  ││││╰│││              ││             0x00007f49585d8f26: je     0x00007f49585d8dac  ;*if_icmpne
                  ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.44%    1.40%  ││││ │││              ││             0x00007f49585d8f2c: cmp    $0xb,%edx
                  ││││ │││              ││             0x00007f49585d8f2f: je     0x00007f49585d93e9  ;*if_icmpne
                  ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.26%    1.14%  ││││ │││              ││             0x00007f49585d8f35: cmp    $0x9,%edx
                  ││││ │││              ││             0x00007f49585d8f38: je     0x00007f49585d9449  ;*if_icmpne
                  ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.80%    0.77%  ││││ │││              ││             0x00007f49585d8f3e: cmp    $0xc,%edx
                  ││││ │││              ││             0x00007f49585d8f41: jne    0x00007f49585d938b  ;*if_icmpne
                  ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.66%    1.73%  ││││ │││              ││             0x00007f49585d8f47: mov    0x1c(%r12,%rcx,8),%ebx  ;*getfield f0
                  ││││ │││              ││                                                           ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││ │││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.12%    0.95%  ││││ │││              ││             0x00007f49585d8f4c: cmp    %eax,%ebx
                  ││││ ╰││              ││             0x00007f49585d8f4e: je     0x00007f49585d8dac  ;*if_icmpeq
                  ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.67%    1.91%  ││││  ││              ││             0x00007f49585d8f54: mov    0x20(%r12,%rcx,8),%ebx  ;*getfield f1
                  ││││  ││              ││                                                           ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  ││││  ││              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││  ││              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.41%    0.45%  ││││  ││              ││             0x00007f49585d8f59: cmp    %eax,%ebx
                  ││││  ╰│              ││             0x00007f49585d8f5b: je     0x00007f49585d8dac  ;*if_icmpeq
                  ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.18%    1.09%  ││││   │              ││             0x00007f49585d8f61: mov    0x24(%r12,%rcx,8),%ebx  ;*getfield f2
                  ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.05%    1.01%  ││││   │              ││             0x00007f49585d8f66: cmp    %eax,%ebx
                  ││││   │              ││             0x00007f49585d8f68: je     0x00007f49585d94a9  ;*if_icmpeq
                  ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  1.61%    1.75%  ││││   │              ││             0x00007f49585d8f6e: mov    0x28(%r12,%rcx,8),%ebx  ;*getfield f3
                  ││││   │              ││                                                           ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::step@181 (line 312)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.27%    0.40%  ││││   │              ││             0x00007f49585d8f73: cmp    %eax,%ebx
                  ││││   │              ││             0x00007f49585d8f75: je     0x00007f49585d9511  ;*aload
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::step@207 (line 315)
                  ││││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.88%    1.08%  │↘││   │              ││             0x00007f49585d8f7b: inc    %r10d              ;*iinc
                  │ ││   │              ││                                                           ; - com.google.re2j.Machine::step@218 (line 282)
                  │ ││   │              ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.80%    0.90%  │ ││   │              ││             0x00007f49585d8f7e: cmp    %r11d,%r10d
                  │ ││   ╰              ││             0x00007f49585d8f81: jl     0x00007f49585d8f10  ;*if_icmpge
                  │ ││                  ││                                                           ; - com.google.re2j.Machine::step@22 (line 282)
                  │ ││                  ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.26%    0.26%  │ ↘│                  ││             0x00007f49585d8f83: mov    0x28(%rsp),%r11d
  0.12%    0.11%  │  │                  ││             0x00007f49585d8f88: movzbl 0x18(%r12,%r11,8),%r11d
  0.24%    0.25%  │  │                  ││             0x00007f49585d8f8e: test   %r11d,%r11d
                  │  │    ╭             ││             0x00007f49585d8f91: jne    0x00007f49585d8fb5  ;*ifeq
                  │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.28%    0.34%  │  │    │             ││             0x00007f49585d8f93: mov    0x28(%rsp),%r10d
  0.13%    0.27%  │  │    │             ││             0x00007f49585d8f98: mov    0x1c(%r12,%r10,8),%ebp  ;*getfield pcs
                  │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.08%    0.07%  │  │    │             ││             0x00007f49585d8f9d: movb   $0x1,0x18(%r12,%r10,8)  ;*putfield empty
                  │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.53%    0.74%  │  │    │             ││             0x00007f49585d8fa3: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                  │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.88%    1.10%  │  │    │             ││             0x00007f49585d8fa8: mov    %r12d,0xc(%r12,%r10,8)  ;*putfield size
                  │  │    │             ││                                                           ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.38%    0.67%  │  │    │             ││             0x00007f49585d8fad: test   %ebp,%ebp
                  │  │    │             ││             0x00007f49585d8faf: jne    0x00007f49585d9819  ;*invokevirtual clear
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::step@225 (line 319)
                  │  │    │             ││                                                           ; - com.google.re2j.Machine::match@355 (line 246)
  0.04%    0.07%  │  │    ↘             ││             0x00007f49585d8fb5: mov    0x60(%rsp),%r10
  0.20%    0.40%  │  │                  ││             0x00007f49585d8fba: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │  │                  ││                                                           ; - com.google.re2j.Machine::match@374 (line 250)
  0.34%    0.56%  │  │                  ││             0x00007f49585d8fbf: mov    0x60(%rsp),%r10
  0.19%    0.28%  │  │                  ││             0x00007f49585d8fc4: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │  │                  ││                                                           ; - com.google.re2j.Machine::match@367 (line 250)
  0.09%    0.07%  │  │                  ││             0x00007f49585d8fc9: mov    0x1c(%rsp),%r10d
  0.20%    0.27%  │  │                  ││             0x00007f49585d8fce: test   %r10d,%r10d
                  │  │     ╭            ││             0x00007f49585d8fd1: je     0x00007f49585d924b  ;*ifne
                  │  │     │            ││                                                           ; - com.google.re2j.Machine::match@360 (line 247)
  0.31%    0.45%  │  │     │            ││             0x00007f49585d8fd7: test   %ebp,%ebp
                  │  │     │            ││             0x00007f49585d8fd9: jne    0x00007f49585d9731  ;*ifne
                  │  │     │            ││                                                           ; - com.google.re2j.Machine::match@370 (line 250)
  0.17%    0.31%  │  │     │            ││             0x00007f49585d8fdf: test   %eax,%eax
                  │  │     │            ││             0x00007f49585d8fe1: jne    0x00007f49585d97d9  ;*ifeq
                  │  │     │            ││                                                           ; - com.google.re2j.Machine::match@377 (line 250)
  0.05%    0.05%  │  │     │            ││             0x00007f49585d8fe7: cmp    $0xffffffff,%r13d
                  │  │     │╭           ││             0x00007f49585d8feb: je     0x00007f49585d928a  ;*if_icmpeq
                  │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@399 (line 258)
  0.14%    0.15%  │  │     ││           ││             0x00007f49585d8ff1: mov    %r13d,0x18(%rsp)
  0.29%    0.44%  │  │     ││           ││             0x00007f49585d8ff6: mov    0x70(%rsp),%r10
  0.59%    0.87%  │  │     ││           ││             0x00007f49585d8ffb: mov    0x10(%r10),%r10d   ;*getfield end
                  │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.41%    0.45%  │  │     ││           ││             0x00007f49585d8fff: mov    0x24(%rsp),%ecx
  0.09%    0.17%  │  │     ││           ││             0x00007f49585d9003: add    %r8d,%ecx
  0.29%    0.41%  │  │     ││           ││             0x00007f49585d9006: mov    0x70(%rsp),%r11
  0.28%    0.58%  │  │     ││           ││             0x00007f49585d900b: add    0xc(%r11),%ecx     ;*iadd
                  │  │     ││           ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │  │     ││           ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.36%    0.26%  │  │     ││           ││             0x00007f49585d900f: cmp    %r10d,%ecx
                  │  │     ││╭          ││             0x00007f49585d9012: jge    0x00007f49585d923e  ;*if_icmpge
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.31%    0.31%  │  │     │││          ││             0x00007f49585d9018: mov    0x14(%r11),%ebp    ;*getfield str
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.25%    0.37%  │  │     │││          ││             0x00007f49585d901c: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f49585da17d
  0.94%    0.70%  │  │     │││          ││             0x00007f49585d9021: cmp    $0xf80002da,%r10d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │  │     │││          ││             0x00007f49585d9028: jne    0x00007f49585d95ed
  0.31%    0.28%  │  │     │││          ││             0x00007f49585d902e: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.07%    0.09%  │  │     │││          ││             0x00007f49585d9032: test   %ecx,%ecx
                  │  │     │││          ││             0x00007f49585d9034: jl     0x00007f49585d9775  ;*iflt
                  │  │     │││          ││                                                           ; - java.lang.String::charAt@1 (line 657)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.20%    0.22%  │  │     │││          ││             0x00007f49585d903a: mov    0xc(%rbx),%edx     ;*getfield value
                  │  │     │││          ││                                                           ; - java.lang.String::charAt@6 (line 657)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.12%    0.19%  │  │     │││          ││             0x00007f49585d903d: mov    0xc(%r12,%rdx,8),%ebp  ;*arraylength
                  │  │     │││          ││                                                           ; - java.lang.String::charAt@9 (line 657)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
                  │  │     │││          ││                                                           ; implicit exception: dispatches to 0x00007f49585da191
  2.34%    2.67%  │  │     │││          ││             0x00007f49585d9042: cmp    %ebp,%ecx
                  │  │     │││          ││             0x00007f49585d9044: jge    0x00007f49585d9851  ;*if_icmplt
                  │  │     │││          ││                                                           ; - java.lang.String::charAt@10 (line 657)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.54%    0.79%  │  │     │││          ││             0x00007f49585d904a: cmp    %ebp,%ecx
                  │  │     │││          ││             0x00007f49585d904c: jae    0x00007f49585d95a9
  0.05%    0.05%  │  │     │││          ││             0x00007f49585d9052: lea    (%r12,%rdx,8),%r10
  0.01%           │  │     │││          ││             0x00007f49585d9056: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │  │     │││          ││                                                           ; - java.lang.String::charAt@27 (line 660)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@2 (line 4866)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.12%  │  │     │││          ││             0x00007f49585d905c: cmp    $0xd800,%r10d
                  │  │     │││          ││             0x00007f49585d9063: jge    0x00007f49585d988d  ;*if_icmplt
                  │  │     │││          ││                                                           ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │  │     │││          ││                                                           ; - java.lang.Character::codePointAt@9 (line 4867)
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.69%    0.83%  │  │     │││          ││             0x00007f49585d9069: shl    $0x3,%r10d         ;*ishl
                  │  │     │││          ││                                                           ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.06%    0.03%  │  │     │││          ││             0x00007f49585d906d: mov    %r10d,%ecx
  0.01%    0.00%  │  │     │││          ││             0x00007f49585d9070: and    $0x7,%ecx
  0.71%    0.61%  │  │     │││          ││             0x00007f49585d9073: or     $0x1,%r10d
  0.07%    0.04%  │  │     │││          ││             0x00007f49585d9077: or     $0x1,%ecx          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@407 (line 259)
  0.62%    0.64%  │  │     │││          ││             0x00007f49585d907a: sar    $0x3,%r10d         ; OopMap{[8]=Oop [16]=Oop [96]=Oop [112]=Oop off=1278}
                  │  │     │││          ││                                                           ;*goto
                  │  │     │││          ││                                                           ; - com.google.re2j.Machine::match@437 (line 266)
  0.01%    0.02%  │  │     │││          ││  ↗ ↗        0x00007f49585d907e: test   %eax,0x15e62f7c(%rip)        # 0x00007f496e43c000
                  │  │     │││          ││  │ │                                                      ;*goto
                  │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@437 (line 266)
                  │  │     │││          ││  │ │                                                      ;   {poll}
  0.02%    0.01%  │  │     │││          ││  │ │        0x00007f49585d9084: mov    0x60(%rsp),%r11
  0.06%    0.04%  │  │     │││          ││  │ │        0x00007f49585d9089: mov    0x14(%r11),%r11d   ;*getfield re2
                  │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@169 (line 220)
  0.64%    0.58%  │  │     │││          ││  │ │        0x00007f49585d908d: vmovd  %r11d,%xmm5
  0.02%    0.01%  │  │     │││          ││  │ │        0x00007f49585d9092: mov    0x60(%rsp),%r11
  0.01%    0.03%  │  │     │││          ││  │ │        0x00007f49585d9097: mov    0x28(%r11),%edx    ;*getfield matchcap
                  │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.07%    0.02%  │  │     │││          ││  │ │        0x00007f49585d909b: mov    0x10(%rsp),%r11
  0.60%    0.43%  │  │     │││          ││  │ │        0x00007f49585d90a0: shr    $0x3,%r11
  0.01%    0.03%  │  │     │││          ││  │ │        0x00007f49585d90a4: mov    %r11d,0x28(%rsp)
  0.02%    0.01%  │  │     │││          ││  │ │        0x00007f49585d90a9: mov    0x24(%rsp),%ebx
  0.01%    0.06%  │  │     │││          ││  │ │        0x00007f49585d90ad: mov    %ebx,0x1c(%rsp)
  0.60%    0.43%  │  │     │││          ││  │ │        0x00007f49585d90b1: mov    %r8d,0x38(%rsp)
  0.02%    0.03%  │  │     │││          ││  │ │        0x00007f49585d90b6: mov    %ecx,0x24(%rsp)
  0.00%    0.02%  │  │     │││          ││  │ │        0x00007f49585d90ba: mov    %r10d,0x20(%rsp)
  0.05%    0.05%  │  │     │││          ││  │ │        0x00007f49585d90bf: mov    0x8(%rsp),%r10
  0.60%    0.39%  │  │     │││          ││  │ │        0x00007f49585d90c4: mov    %r10,0x10(%rsp)
           0.00%  │  │     │││          ││  │ │        0x00007f49585d90c9: vmovd  %edx,%xmm3         ;*aload
                  │  │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.03%    0.01%  ↘  │     │││          ││  │ │        0x00007f49585d90cd: mov    0x28(%rsp),%r11d
  0.05%    0.08%     │     │││          ││  │ │        0x00007f49585d90d2: movzbl 0x18(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f49585da131
  0.66%    0.57%     │     │││          ││  │ │        0x00007f49585d90d8: test   %r10d,%r10d
                     │     │││╭         ││  │ │        0x00007f49585d90db: je     0x00007f49585d910f  ;*ifeq
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@141 (line 211)
  0.03%    0.01%     │     ││││         ││  │ │        0x00007f49585d90dd: mov    0x2c(%rsp),%r10d
  0.01%              │     ││││         ││  │ │        0x00007f49585d90e2: test   %r10d,%r10d
                     │     ││││         ││  │ │        0x00007f49585d90e5: jne    0x00007f49585d98f9  ;*ifeq
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@148 (line 212)
  0.04%              │     ││││         ││  │ │        0x00007f49585d90eb: test   %eax,%eax
                     │     ││││         ││  │ │        0x00007f49585d90ed: jne    0x00007f49585d9941  ;*ifeq
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@162 (line 216)
  0.47%    0.44%     │     ││││         ││  │ │        0x00007f49585d90f3: vmovd  %xmm5,%r10d
  0.02%    0.01%     │     ││││         ││  │ │        0x00007f49585d90f8: mov    0x24(%r12,%r10,8),%r11d  ;*getfield prefix
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@172 (line 220)
                     │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f49585da1a1
  0.01%              │     ││││         ││  │ │        0x00007f49585d90fd: mov    0xc(%r12,%r11,8),%r10d  ;*getfield value
                     │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@1 (line 635)
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                     │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f49585da1b1
  0.03%    0.03%     │     ││││         ││  │ │        0x00007f49585d9102: mov    0xc(%r12,%r10,8),%ebp  ;*arraylength
                     │     ││││         ││  │ │                                                      ; - java.lang.String::isEmpty@4 (line 635)
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@175 (line 220)
                     │     ││││         ││  │ │                                                      ; implicit exception: dispatches to 0x00007f49585da1c1
  0.98%    1.03%     │     ││││         ││  │ │        0x00007f49585d9107: test   %ebp,%ebp
                     │     ││││         ││  │ │        0x00007f49585d9109: jne    0x00007f49585d98d1  ;*aload_0
                     │     ││││         ││  │ │                                                      ; - com.google.re2j.Machine::match@267 (line 237)
  0.42%    0.46%     │     │││↘         ││  │ │        0x00007f49585d910f: test   %eax,%eax
                     │     │││          ││  │ │        0x00007f49585d9111: jne    0x00007f49585d968d  ;*ifne
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@271 (line 237)
  0.01%              │     │││          ││  │ │        0x00007f49585d9117: mov    0x38(%rsp),%r11d
  0.03%    0.02%     │     │││          ││  │ │        0x00007f49585d911c: test   %r11d,%r11d
                     │     │││ ╭        ││  │ │        0x00007f49585d911f: je     0x00007f49585d912f  ;*ifeq
                     │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@275 (line 237)
  0.23%    0.17%     │     │││ │        ││  │ │        0x00007f49585d9121: mov    0x5c(%rsp),%r10d
  0.45%    0.34%     │     │││ │        ││  │ │        0x00007f49585d9126: test   %r10d,%r10d
                     │     │││ │        ││  │ │        0x00007f49585d9129: jne    0x00007f49585d96dd  ;*aload_0
                     │     │││ │        ││  │ │                                                      ; - com.google.re2j.Machine::match@282 (line 240)
  0.00%    0.01%     │     │││ ↘        ││  │ │        0x00007f49585d912f: mov    0x60(%rsp),%r10
  0.03%    0.04%     │     │││          ││  │ │        0x00007f49585d9134: movzbl 0x11(%r10),%ebp    ;*getfield captures
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@283 (line 240)
  0.27%    0.25%     │     │││          ││  │ │        0x00007f49585d9139: test   %ebp,%ebp
                     │     │││          ││  │ │        0x00007f49585d913b: jne    0x00007f49585d97b5  ;*ifeq
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.49%    0.21%     │     │││          ││  │ │        0x00007f49585d9141: mov    0x18(%r10),%r11d   ;*getfield prog
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@297 (line 243)
  0.00%              │     │││          ││  │ │        0x00007f49585d9145: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@300 (line 243)
                     │     │││          ││  │ │                                                      ; implicit exception: dispatches to 0x00007f49585da141
  0.05%    0.03%     │     │││          ││  │ │        0x00007f49585d914a: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f49585da151
  0.73%    0.50%     │     │││          ││  │ │        0x00007f49585d914f: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                     │     │││          ││  │ │        0x00007f49585d9156: jne    0x00007f49585d9579  ;*ifeq
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@286 (line 240)
  0.54%    0.25%     │     │││          ││  │ │        0x00007f49585d915c: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@314 (line 243)
           0.00%     │     │││          ││  │ │        0x00007f49585d9160: mov    0x28(%rsp),%r11d
  0.03%    0.01%     │     │││          ││  │ │        0x00007f49585d9165: lea    (%r12,%r11,8),%r10  ;*aload
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@136 (line 211)
  0.15%    0.13%     │     │││          ││  │ │        0x00007f49585d9169: mov    %r10,0x8(%rsp)
  0.57%    0.27%     │     │││          ││  │ │        0x00007f49585d916e: vmovd  %xmm3,%r11d
  0.00%    0.00%     │     │││          ││  │ │        0x00007f49585d9173: mov    %r11,%r8
  0.00%    0.00%     │     │││          ││  │ │        0x00007f49585d9176: shl    $0x3,%r8           ;*getfield matchcap
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@307 (line 243)
  0.19%    0.04%     │     │││          ││  │ │        0x00007f49585d917a: mov    %r10,%rdx
  0.50%    0.40%     │     │││          ││  │ │        0x00007f49585d917d: mov    0x38(%rsp),%ecx
                     │     │││          ││  │ │        0x00007f49585d9181: xor    %edi,%edi
  0.02%    0.00%     │     │││          ││  │ │        0x00007f49585d9183: mov    0x60(%rsp),%r10
  0.17%    0.06%     │     │││          ││  │ │        0x00007f49585d9188: mov    %r10,(%rsp)
  0.44%    0.40%     │     │││          ││  │ │        0x00007f49585d918c: data16 xchg %ax,%ax
                     │     │││          ││  │ │        0x00007f49585d918f: callq  0x00007f49583be020  ; OopMap{[8]=Oop [16]=Oop [40]=NarrowOop [96]=Oop [112]=Oop off=1556}
                     │     │││          ││  │ │                                                      ;*invokevirtual add
                     │     │││          ││  │ │                                                      ; - com.google.re2j.Machine::match@314 (line 243)
                     │     │││          ││  │ │                                                      ;   {optimized virtual_call}
  0.06%    0.07%     │     │││          ││  │ │        0x00007f49585d9194: mov    0x18(%rsp),%eax
  0.27%    0.32%     │     │││          ││  │ │        0x00007f49585d9198: test   %eax,%eax
                     │     │││  ╭       ││  │ │        0x00007f49585d919a: jl     0x00007f49585d922a  ;*ifge
                     │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                     │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.39%    0.36%     │     │││  │       ││  │ │        0x00007f49585d91a0: xor    %r9d,%r9d          ;*iload_0
                     │     │││  │       ││  │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                     │     │││  │       ││  │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.05%     │     │││  │       ││↗ │ │        0x00007f49585d91a3: cmp    $0xa,%eax
                     │     │││  │╭      │││ │ │        0x00007f49585d91a6: je     0x00007f49585d929e  ;*iload_1
                     │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                     │     │││  ││      │││ │ │                                                      ; - com.google.re2j.Machine::match@322 (line 245)
  0.13%    0.10%     │     │││  ││      │││ │ │↗       0x00007f49585d91ac: mov    0x20(%rsp),%r13d
  0.24%    0.17%     │     │││  ││      │││ │ ││       0x00007f49585d91b1: test   %r13d,%r13d
                     │     │││  ││╭     │││ │ ││       0x00007f49585d91b4: jl     0x00007f49585d9235  ;*iload_1
                     │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                     │     │││  │││     │││ │ ││                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.36%    0.32%     │     │││  │││     │││↗│ ││       0x00007f49585d91b6: cmp    $0xa,%r13d
                     │     │││  │││╭    │││││ ││       0x00007f49585d91ba: je     0x00007f49585d92a7  ;*iload_0
                     │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                     │     │││  ││││    │││││ ││                                                     ; - com.google.re2j.Machine::match@322 (line 245)
  0.07%    0.06%     │     │││  ││││    │││││ ││↗      0x00007f49585d91c0: mov    0x18(%rsp),%r10d
  0.12%    0.09%     │     │││  ││││    │││││ │││      0x00007f49585d91c5: add    $0xffffffbf,%r10d
  0.15%    0.11%     │     │││  ││││    │││││ │││      0x00007f49585d91c9: cmp    $0x1a,%r10d
                     │     │││  ││││╭   │││││ │││      0x00007f49585d91cd: jb     0x00007f49585d91e2  ;*if_icmple
                     │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││  │││││   │││││ │││                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.34%    0.34%     │     │││  │││││   │││││ │││      0x00007f49585d91cf: mov    0x18(%rsp),%r11d
  0.04%    0.07%     │     │││  │││││   │││││ │││      0x00007f49585d91d4: add    $0xffffff9f,%r11d
  0.08%    0.14%     │     │││  │││││   │││││ │││      0x00007f49585d91d8: cmp    $0x1a,%r11d
                     │     │││  │││││╭  │││││ │││      0x00007f49585d91dc: jae    0x00007f49585d92b0  ;*iconst_1
                     │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││  ││││││  │││││ │││                                                    ; - com.google.re2j.Machine::match@322 (line 245)
  0.16%    0.20%     │     │││  ││││↘│  │││││ │││↗     0x00007f49585d91e2: mov    $0x1,%ebp          ;*ireturn
                     │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │     │││  ││││ │  │││││ ││││                                                   ; - com.google.re2j.Machine::match@322 (line 245)
  0.32%    0.40%     │     │││  ││││ │  │││││ ││││↗    0x00007f49585d91e7: mov    0x60(%rsp),%r10
  0.26%    0.29%     │     │││  ││││ │  │││││ │││││    0x00007f49585d91ec: mov    0x14(%r10),%r10d   ;*getfield re2
                     │     │││  ││││ │  │││││ │││││                                                  ; - com.google.re2j.Machine::step@1 (line 280)
                     │     │││  ││││ │  │││││ │││││                                                  ; - com.google.re2j.Machine::match@355 (line 246)
  0.66%    0.48%     │     │││  ││││ │  │││││ │││││    0x00007f49585d91f0: mov    0x20(%rsp),%r8d
  0.12%    0.17%     │     │││  ││││ │  │││││ │││││    0x00007f49585d91f5: add    $0xffffffbf,%r8d
  0.26%    0.25%     │     │││  ││││ │  │││││ │││││    0x00007f49585d91f9: cmp    $0x1a,%r8d
                     │     │││  ││││ │╭ │││││ │││││    0x00007f49585d91fd: jb     0x00007f49585d9212  ;*if_icmple
                     │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                     │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││  ││││ ││ │││││ │││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.13%     │     │││  ││││ ││ │││││ │││││    0x00007f49585d91ff: mov    0x20(%rsp),%r11d
  0.27%    0.28%     │     │││  ││││ ││ │││││ │││││    0x00007f49585d9204: add    $0xffffff9f,%r11d
  0.12%    0.06%     │     │││  ││││ ││ │││││ │││││    0x00007f49585d9208: cmp    $0x1a,%r11d
                     │     │││  ││││ ││╭│││││ │││││    0x00007f49585d920c: jae    0x00007f49585d92d9  ;*iconst_1
                     │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                     │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││  ││││ ││││││││ │││││                                                  ; - com.google.re2j.Machine::match@322 (line 245)
  0.27%    0.17%     │     │││  ││││ │↘││││││ │││││↗   0x00007f49585d9212: mov    $0x1,%r8d          ;*ireturn
                     │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                     │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │     │││  ││││ │ ││││││ ││││││                                                 ; - com.google.re2j.Machine::match@322 (line 245)
  0.14%    0.12%     │     │││  ││││ │ ││││││ ││││││↗  0x00007f49585d9218: cmp    %r8d,%ebp
                     │     │││  ││││ │ │╰││││ │││││││  0x00007f49585d921b: je     0x00007f49585d8e86  ;*if_icmpeq
                     │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                     │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.12%     │     │││  ││││ │ │ ││││ │││││││  0x00007f49585d9221: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                     │     │││  ││││ │ │ ││││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.05%     │     │││  ││││ │ │ ╰│││ │││││││  0x00007f49585d9225: jmpq   0x00007f49585d8e8a
  0.00%    0.00%     │     │││  ↘│││ │ │  │││ │││││││  0x00007f49585d922a: mov    $0x5,%r9d
                     │     │││   │││ │ │  ╰││ │││││││  0x00007f49585d9230: jmpq   0x00007f49585d91a3
  0.00%              │     │││   │↘│ │ │   ││ │││││││  0x00007f49585d9235: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                     │     │││   │ │ │ │   ││ │││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                     │     │││   │ │ │ │   ╰│ │││││││  0x00007f49585d9239: jmpq   0x00007f49585d91b6
  0.00%    0.01%     │     ││↘   │ │ │ │    │ │││││││  0x00007f49585d923e: mov    $0xffffffff,%r10d
  0.00%    0.02%     │     ││    │ │ │ │    │ │││││││  0x00007f49585d9244: xor    %ecx,%ecx
                     │     ││    │ │ │ │    ╰ │││││││  0x00007f49585d9246: jmpq   0x00007f49585d907e
  0.00%    0.00%     │     ↘│    │ │ │ │      │││││││  0x00007f49585d924b: test   %ebp,%ebp
                     │      │    │ │ │ │      │││││││  0x00007f49585d924d: jne    0x00007f49585d9f1d  ;*ifeq
                     │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                     │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │      │││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
           0.00%     │      │    │ │ │ │      │││││││  0x00007f49585d9253: mov    0x10(%rsp),%r10
  0.00%    0.00%     │      │    │ │ │ │      │││││││  0x00007f49585d9258: movzbl 0x18(%r10),%r11d   ; implicit exception: dispatches to 0x00007f49585da275
  0.00%    0.00%     │      │    │ │ │ │      │││││││  0x00007f49585d925d: test   %r11d,%r11d
                     │      │    │ │ │ │     ╭│││││││  0x00007f49585d9260: jne    0x00007f49585d927b  ;*ifeq
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │      │    │ │ │ │     ││││││││  0x00007f49585d9262: mov    0x1c(%r10),%ebp    ;*getfield pcs
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │      │    │ │ │ │     ││││││││  0x00007f49585d9266: movb   $0x1,0x18(%r10)    ;*putfield empty
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │      │    │ │ │ │     ││││││││  0x00007f49585d926b: mov    %r12,0x10(%r10)    ;*putfield pcsl
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │      │    │ │ │ │     ││││││││  0x00007f49585d926f: mov    %r12d,0xc(%r10)    ;*putfield size
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@443 (line 267)
                     │      │    │ │ │ │     ││││││││  0x00007f49585d9273: test   %ebp,%ebp
                     │      │    │ │ │ │     ││││││││  0x00007f49585d9275: jne    0x00007f49585d9fc1  ;*if_icmpne
                     │      │    │ │ │ │     ││││││││                                                ; - com.google.re2j.Machine::match@12 (line 183)
  0.02%              │      │    │ │ │ │     ↘│││││││  0x00007f49585d927b: add    $0xb0,%rsp
  0.00%              │      │    │ │ │ │      │││││││  0x00007f49585d9282: pop    %rbp
           0.00%     │      │    │ │ │ │      │││││││  0x00007f49585d9283: test   %eax,0x15e62d77(%rip)        # 0x00007f496e43c000
                     │      │    │ │ │ │      │││││││                                                ;   {poll_return}
                     │      │    │ │ │ │      │││││││  0x00007f49585d9289: retq   
  0.01%    0.01%     │      ↘    │ │ │ │      │││││││  0x00007f49585d928a: mov    %r13d,0x18(%rsp)
  0.00%    0.02%     │           │ │ │ │      │││││││  0x00007f49585d928f: mov    0x24(%rsp),%ecx
                     │           │ │ │ │      │││││││  0x00007f49585d9293: mov    $0xffffffff,%r10d
                     │           │ │ │ │      ╰││││││  0x00007f49585d9299: jmpq   0x00007f49585d907e
                     │           ↘ │ │ │       ││││││  0x00007f49585d929e: or     $0x1,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@18 (line 177)
                     │             │ │ │       ││││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
                     │             │ │ │       ╰│││││  0x00007f49585d92a2: jmpq   0x00007f49585d91ac
  0.00%    0.00%     │             ↘ │ │        │││││  0x00007f49585d92a7: or     $0x2,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@37 (line 183)
                     │               │ │        │││││                                                ; - com.google.re2j.Machine::match@322 (line 245)
           0.01%     │               │ │        ╰││││  0x00007f49585d92ab: jmpq   0x00007f49585d91c0
  0.04%    0.03%     │               ↘ │         ││││  0x00007f49585d92b0: mov    0x18(%rsp),%r10d
  0.05%    0.07%     │                 │         ││││  0x00007f49585d92b5: add    $0xffffffd0,%r10d
  0.02%    0.01%     │                 │         ││││  0x00007f49585d92b9: cmp    $0xa,%r10d
                     │                 │         ╰│││  0x00007f49585d92bd: jb     0x00007f49585d91e2  ;*if_icmple
                     │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                 │          │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.05%    0.02%     │                 │          │││  0x00007f49585d92c3: mov    0x18(%rsp),%r10d
  0.03%    0.02%     │                 │          │││  0x00007f49585d92c8: cmp    $0x5f,%r10d
                     │                 │          │││  0x00007f49585d92cc: je     0x00007f49585da09d  ;*if_icmpne
                     │                 │          │││                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                 │          │││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                     │                 │          │││                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.08%    0.07%     │                 │          │││  0x00007f49585d92d2: xor    %ebp,%ebp
  0.01%              │                 │          ╰││  0x00007f49585d92d4: jmpq   0x00007f49585d91e7
  0.04%    0.06%     │                 ↘           ││  0x00007f49585d92d9: mov    0x20(%rsp),%r8d
  0.07%    0.05%     │                             ││  0x00007f49585d92de: add    $0xffffffd0,%r8d
  0.07%    0.07%     │                             ││  0x00007f49585d92e2: cmp    $0xa,%r8d
                     │                             ╰│  0x00007f49585d92e6: jb     0x00007f49585d9212  ;*if_icmple
                     │                              │                                                ; - com.google.re2j.Utils::isWordRune@33 (line 149)
                     │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                              │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.04%     │                              │  0x00007f49585d92ec: cmp    $0x5f,%r13d
                     │                              │  0x00007f49585d92f0: je     0x00007f49585da075  ;*if_icmpne
                     │                              │                                                ; - com.google.re2j.Utils::isWordRune@39 (line 149)
                     │                              │                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                     │                              │                                                ; - com.google.re2j.Machine::match@322 (line 245)
  0.04%    0.05%     │                              │  0x00007f49585d92f6: xor    %r8d,%r8d
  0.02%    0.02%     │                              ╰  0x00007f49585d92f9: jmpq   0x00007f49585d9218
           0.00%     ↘                                 0x00007f49585d92fe: mov    0x60(%rsp),%rcx
                                                       0x00007f49585d9303: movb   $0x1,0x10(%rcx)    ;*putfield matched
                                                                                                     ; - com.google.re2j.Machine::step@161 (line 305)
                                                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                                                       0x00007f49585d9307: test   %r14d,%r14d
                                                       0x00007f49585d930a: jne    0x00007f49585d9fdd  ;*ifne
                                                                                                     ; - com.google.re2j.Machine::step@166 (line 306)
                                                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                                                       0x00007f49585d9310: mov    0x28(%rsp),%r10d
           0.00%                                       0x00007f49585d9315: movzbl 0x18(%r12,%r10,8),%r11d
                                                       0x00007f49585d931b: test   %r11d,%r11d
                                                       0x00007f49585d931e: jne    0x00007f49585d933d  ;*ifeq
                                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                     ; - com.google.re2j.Machine::step@173 (line 308)
                                                                                                     ; - com.google.re2j.Machine::match@355 (line 246)
                                                       0x00007f49585d9320: mov    %r12,0x10(%r12,%r10,8)  ;*putfield pcsl
                                                                                                     ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                                     ; - com.google.re2j.Machine::step@173 (line 308)
....................................................................................................
 59.30%   60.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 543 (852 bytes) 

                     # parm4:    rdi:rdi   = &apos;[I&apos;
                     # parm5:    [sp+0x70]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     0x00007f49585b7580: mov    0x8(%rsi),%r10d
                     0x00007f49585b7584: shl    $0x3,%r10
                     0x00007f49585b7588: cmp    %r10,%rax
                     0x00007f49585b758b: jne    0x00007f49583bde20  ;   {runtime_call}
                     0x00007f49585b7591: data16 xchg %ax,%ax
                     0x00007f49585b7594: nopl   0x0(%rax,%rax,1)
                     0x00007f49585b759c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.20%    0.13%     0x00007f49585b75a0: mov    %eax,-0x14000(%rsp)
  0.46%    0.38%     0x00007f49585b75a7: push   %rbp
  0.01%    0.01%     0x00007f49585b75a8: sub    $0x60,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.73%    0.63%     0x00007f49585b75ac: vmovq  %r8,%xmm6
           0.00%     0x00007f49585b75b1: vmovq  %rsi,%xmm4
  0.01%    0.03%     0x00007f49585b75b6: vmovd  %ecx,%xmm0
  0.16%    0.18%     0x00007f49585b75ba: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.51%    0.49%     0x00007f49585b75bd: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f49585b7f31
           0.01%     0x00007f49585b75c1: cmp    $0x40,%ecx
                     0x00007f49585b75c4: jg     0x00007f49585b7a9d  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.02%    0.02%     0x00007f49585b75ca: mov    $0x1,%eax
  0.21%    0.13%     0x00007f49585b75cf: mov    $0x1,%r8d
  0.52%    0.47%     0x00007f49585b75d5: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.24%    0.21%     0x00007f49585b75d8: mov    %r11,%r10
  0.55%    0.50%     0x00007f49585b75db: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
           0.00%     0x00007f49585b75de: xor    %r13d,%r13d
  0.02%    0.02%     0x00007f49585b75e1: test   %r10,%r10
                     0x00007f49585b75e4: jne    0x00007f49585b7ad1  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.16%    0.16%     0x00007f49585b75ea: cmp    $0x40,%ecx
                     0x00007f49585b75ed: jge    0x00007f49585b7b15  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.47%    0.55%     0x00007f49585b75f3: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%              0x00007f49585b75f7: mov    0x2c(%rsi),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.06%    0.04%     0x00007f49585b75fa: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.17%    0.25%     0x00007f49585b75fd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.42%    0.50%     0x00007f49585b7601: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f49585b7f45
  0.52%    0.58%     0x00007f49585b7606: cmp    $0xf8019909,%r11d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f49585b760d: jne    0x00007f49585b7971
  0.22%    0.17%     0x00007f49585b7613: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.17%    0.18%     0x00007f49585b7617: mov    0x18(%r10),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.39%    0.35%     0x00007f49585b761b: cmp    $0x40,%ecx
                     0x00007f49585b761e: jg     0x00007f49585b7b49  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.23%    0.14%     0x00007f49585b7624: mov    $0x1,%r11d
  0.03%    0.09%     0x00007f49585b762a: shl    %cl,%r11           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.90%    0.93%     0x00007f49585b762d: mov    %r8,%rbx
  0.02%    0.04%     0x00007f49585b7630: and    %r11,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.21%    0.15%     0x00007f49585b7633: test   %rbx,%rbx
                     0x00007f49585b7636: jne    0x00007f49585b7b89  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.37%    0.40%     0x00007f49585b763c: cmp    $0x40,%ecx
                     0x00007f49585b763f: jge    0x00007f49585b7bd1  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.05%    0.05%     0x00007f49585b7645: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.03%    0.01%     0x00007f49585b7648: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.17%    0.19%     0x00007f49585b764c: mov    0x70(%rsp),%r11
  0.51%    0.38%     0x00007f49585b7651: movzbl 0x11(%r11),%ebp    ;*getfield captures
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                                                                   ; implicit exception: dispatches to 0x00007f49585b7f6d
  0.06%    0.06%     0x00007f49585b7656: test   %ebp,%ebp
                     0x00007f49585b7658: jne    0x00007f49585b7c11  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@27 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.03%    0.01%     0x00007f49585b765e: mov    0xc(%rdx),%ecx     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.15%    0.24%     0x00007f49585b7661: mov    0x20(%rdx),%ebx    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.45%    0.49%     0x00007f49585b7664: mov    %ecx,%esi
  0.06%    0.05%     0x00007f49585b7666: inc    %esi               ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.02%    0.05%     0x00007f49585b7668: mov    %esi,0xc(%rdx)     ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.20%    0.18%     0x00007f49585b766b: mov    0xc(%r12,%rbx,8),%edi  ; implicit exception: dispatches to 0x00007f49585b7f7d
  0.46%    0.32%     0x00007f49585b7670: cmp    %edi,%ecx
                  ╭  0x00007f49585b7672: jae    0x00007f49585b78f5
  0.07%    0.06%  │  0x00007f49585b7678: vmovd  %esi,%xmm1
  0.02%    0.04%  │  0x00007f49585b767c: vmovd  %ebx,%xmm2
  0.14%    0.18%  │  0x00007f49585b7680: mov    %ecx,0x18(%rsp)
  0.51%    0.39%  │  0x00007f49585b7684: mov    %r10,%rcx
  0.09%    0.05%  │  0x00007f49585b7687: mov    0x70(%rsp),%r14
  0.01%    0.01%  │  0x00007f49585b768c: mov    0x8(%r12,%rbx,8),%r11d
  0.18%    0.17%  │  0x00007f49585b7691: cmp    $0xf8019807,%r11d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f49585b7698: jne    0x00007f49585b79a1  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.40%    0.59%  │  0x00007f49585b769e: vmovq  %xmm4,%r10
  0.10%    0.04%  │  0x00007f49585b76a3: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@41 (line 266)
  0.01%    0.01%  │  0x00007f49585b76a7: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.18%    0.14%  │  0x00007f49585b76ab: lea    (%r12,%rbx,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.50%    0.47%  │  0x00007f49585b76af: mov    0x18(%rsp),%r10d
  0.14%    0.11%  │  0x00007f49585b76b4: lea    0x10(%r11,%r10,4),%r10
  0.02%    0.04%  │  0x00007f49585b76b9: mov    %ecx,(%r10)
  0.39%    0.31%  │  0x00007f49585b76bc: shr    $0x9,%r10
  0.35%    0.44%  │  0x00007f49585b76c0: movabs $0x7f4953da6000,%rbx
  0.06%    0.08%  │  0x00007f49585b76ca: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
  0.09%    0.05%  │  0x00007f49585b76ce: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f49585b7f95
  0.26%    0.16%  │  0x00007f49585b76d3: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f49585b76da: jne    0x00007f49585b79d9
  0.38%    0.36%  │  0x00007f49585b76e0: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.03%    0.08%  │  0x00007f49585b76e4: vmovq  %r10,%xmm3
  0.09%    0.04%  │  0x00007f49585b76e9: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.52%    0.41%  │  0x00007f49585b76ed: vmovd  %ecx,%xmm5
  0.51%    0.32%  │  0x00007f49585b76f1: cmp    $0x40,%ecx
                  │  0x00007f49585b76f4: jg     0x00007f49585b7c4d  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.02%    0.02%  │  0x00007f49585b76fa: mov    $0x1,%r10d
  0.08%    0.04%  │  0x00007f49585b7700: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.68%    0.58%  │  0x00007f49585b7703: mov    %r8,%rcx
  0.10%    0.07%  │  0x00007f49585b7706: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.15%    0.28%  │  0x00007f49585b7709: test   %rcx,%rcx
                  │  0x00007f49585b770c: jne    0x00007f49585b7c89  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.50%    0.32%  │  0x00007f49585b7712: vmovd  %xmm5,%ecx
  0.06%    0.01%  │  0x00007f49585b7716: cmp    $0x40,%ecx
                  │  0x00007f49585b7719: jge    0x00007f49585b7cd1  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.11%    0.11%  │  0x00007f49585b771f: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.18%    0.13%  │  0x00007f49585b7722: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.37%    0.13%  │  0x00007f49585b7726: mov    0x18(%rsp),%ecx
  0.04%    0.00%  │  0x00007f49585b772a: add    $0x2,%ecx
  0.12%    0.11%  │  0x00007f49585b772d: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.17%    0.16%  │  0x00007f49585b7730: mov    0x18(%rsp),%r10d
  0.40%    0.41%  │  0x00007f49585b7735: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.05%    0.03%  │  0x00007f49585b7739: cmp    %edi,%r10d
                  │  0x00007f49585b773c: jae    0x00007f49585b7931  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.14%    0.23%  │  0x00007f49585b7742: vmovd  %r9d,%xmm7
  0.17%    0.22%  │  0x00007f49585b7747: vmovq  %xmm4,%r9
  0.38%    0.37%  │  0x00007f49585b774c: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@59 (line 267)
  0.08%    0.03%  │  0x00007f49585b7750: vmovq  %xmm3,%r9
  0.11%    0.13%  │  0x00007f49585b7755: mov    %r9,%rcx
  0.14%    0.15%  │  0x00007f49585b7758: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.41%    0.41%  │  0x00007f49585b775c: movslq 0x18(%rsp),%r9
  0.05%    0.02%  │  0x00007f49585b7761: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.13%    0.11%  │  0x00007f49585b7765: mov    %r9,%rdi
  0.12%    0.18%  │  0x00007f49585b7768: add    $0x14,%rdi
  0.36%    0.24%  │  0x00007f49585b776c: mov    %ecx,(%rdi)
  0.08%    0.05%  │  0x00007f49585b776e: mov    %rdi,%rcx
  0.14%    0.11%  │  0x00007f49585b7771: shr    $0x9,%rcx
  0.11%    0.06%  │  0x00007f49585b7775: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@53 (line 266)
  0.31%    0.31%  │  0x00007f49585b7779: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f49585b7fbd
  0.05%    0.08%  │  0x00007f49585b777e: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f49585b7784: jne    0x00007f49585b7a09
  0.18%    0.16%  │  0x00007f49585b778a: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.19%    0.23%  │  0x00007f49585b778e: vmovq  %rcx,%xmm1
  0.38%    0.59%  │  0x00007f49585b7793: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.02%    0.05%  │  0x00007f49585b7796: vmovd  %ecx,%xmm2
  0.05%    0.11%  │  0x00007f49585b779a: cmp    $0x40,%ecx
                  │  0x00007f49585b779d: jg     0x00007f49585b7d11  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.21%    0.21%  │  0x00007f49585b77a3: mov    $0x1,%edi
  0.35%    0.48%  │  0x00007f49585b77a8: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.38%    0.45%  │  0x00007f49585b77ab: mov    %r8,%rcx
  0.35%    0.29%  │  0x00007f49585b77ae: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.04%    0.05%  │  0x00007f49585b77b1: test   %rcx,%rcx
                  │  0x00007f49585b77b4: jne    0x00007f49585b7d51  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.15%    0.11%  │  0x00007f49585b77ba: vmovd  %xmm2,%ecx
  0.15%    0.20%  │  0x00007f49585b77be: cmp    $0x40,%ecx
                  │  0x00007f49585b77c1: jge    0x00007f49585b7d9d  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.33%    0.42%  │  0x00007f49585b77c7: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%           │  0x00007f49585b77ca: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.11%    0.09%  │  0x00007f49585b77ce: vmovq  %xmm4,%rcx
  0.12%    0.19%  │  0x00007f49585b77d3: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 268)
  0.33%    0.36%  │  0x00007f49585b77d6: mov    %r9,%rdi
  0.04%    0.06%  │  0x00007f49585b77d9: add    $0x18,%rdi
  0.09%    0.07%  │  0x00007f49585b77dd: vmovq  %xmm1,%rsi
  0.16%    0.17%  │  0x00007f49585b77e2: mov    %rsi,%rcx
  0.32%    0.39%  │  0x00007f49585b77e5: shr    $0x3,%rcx
  0.04%    0.05%  │  0x00007f49585b77e9: mov    %ecx,(%rdi)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.12%    0.07%  │  0x00007f49585b77eb: mov    0x18(%rsp),%ecx
  0.13%    0.19%  │  0x00007f49585b77ef: add    $0x3,%ecx
  0.37%    0.40%  │  0x00007f49585b77f2: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.06%    0.04%  │  0x00007f49585b77f5: shr    $0x9,%rdi
  0.13%    0.05%  │  0x00007f49585b77f9: mov    %r12b,(%rbx,%rdi,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@71 (line 267)
  0.20%    0.20%  │  0x00007f49585b77fd: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f49585b7fe5
  0.38%    0.46%  │  0x00007f49585b7802: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f49585b7808: jne    0x00007f49585b7a3d
  0.03%    0.09%  │  0x00007f49585b780e: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.12%    0.13%  │  0x00007f49585b7812: vmovq  %rcx,%xmm1
  0.14%    0.15%  │  0x00007f49585b7817: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.32%    0.47%  │  0x00007f49585b781a: vmovd  %ecx,%xmm3
  0.05%    0.04%  │  0x00007f49585b781e: cmp    $0x40,%ecx
                  │  0x00007f49585b7821: jg     0x00007f49585b7ddd  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.18%    0.09%  │  0x00007f49585b7827: mov    $0x1,%edi
  0.19%    0.20%  │  0x00007f49585b782c: shl    %cl,%rdi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.63%    0.51%  │  0x00007f49585b782f: mov    %r8,%rcx
  0.17%    0.05%  │  0x00007f49585b7832: and    %rdi,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.36%    0.26%  │  0x00007f49585b7835: test   %rcx,%rcx
                  │  0x00007f49585b7838: jne    0x00007f49585b7e1d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.08%    0.09%  │  0x00007f49585b783e: vmovd  %xmm3,%ecx
  0.10%    0.11%  │  0x00007f49585b7842: cmp    $0x40,%ecx
                  │  0x00007f49585b7845: jge    0x00007f49585b7e69  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.15%    0.27%  │  0x00007f49585b784b: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.27%    0.52%  │  0x00007f49585b784f: vmovq  %xmm4,%r10
  0.07%    0.07%  │  0x00007f49585b7854: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@95 (line 269)
  0.10%    0.15%  │  0x00007f49585b7858: mov    %r9,%rcx
  0.17%    0.20%  │  0x00007f49585b785b: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.31%    0.35%  │  0x00007f49585b785f: or     %rdi,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.03%    0.06%  │  0x00007f49585b7862: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.13%    0.10%  │  0x00007f49585b7866: vmovq  %xmm1,%r10
  0.15%    0.26%  │  0x00007f49585b786b: shr    $0x3,%r10
  0.37%    0.35%  │  0x00007f49585b786f: mov    %r10d,(%rcx)
  0.04%    0.06%  │  0x00007f49585b7872: mov    %rcx,%r10
  0.10%    0.13%  │  0x00007f49585b7875: shr    $0x9,%r10
  0.13%    0.18%  │  0x00007f49585b7879: mov    %r12b,(%rbx,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@89 (line 268)
  0.35%    0.41%  │  0x00007f49585b787d: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f49585b800d
  0.05%    0.06%  │  0x00007f49585b7882: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f49585b7889: jne    0x00007f49585b7a71
  0.12%    0.10%  │  0x00007f49585b788f: lea    (%r12,%rbp,8),%rdi  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.22%    0.22%  │  0x00007f49585b7893: mov    0x18(%rdi),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.40%    0.41%  │  0x00007f49585b7896: cmp    $0x40,%ecx
                  │  0x00007f49585b7899: jg     0x00007f49585b7ea9  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.06%    0.07%  │  0x00007f49585b789f: shl    %cl,%rax           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.52%    0.68%  │  0x00007f49585b78a2: mov    %r8,%r10
  0.05%    0.05%  │  0x00007f49585b78a5: and    %rax,%r10          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.16%    0.07%  │  0x00007f49585b78a8: test   %r10,%r10
                  │  0x00007f49585b78ab: jne    0x00007f49585b7ed1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.16%    0.15%  │  0x00007f49585b78b1: cmp    $0x40,%ecx
                  │  0x00007f49585b78b4: jge    0x00007f49585b7f09  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.36%    0.50%  │  0x00007f49585b78ba: or     %rax,%r8
  0.04%    0.06%  │  0x00007f49585b78bd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.15%    0.17%  │  0x00007f49585b78c1: add    $0x20,%r9
  0.17%    0.17%  │  0x00007f49585b78c5: mov    %rdi,%r10
  0.46%    0.49%  │  0x00007f49585b78c8: shr    $0x3,%r10
  0.02%    0.04%  │  0x00007f49585b78cc: mov    %r10d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.11%    0.11%  │  0x00007f49585b78cf: mov    %r9,%r10
  0.13%    0.17%  │  0x00007f49585b78d2: mov    0x18(%rsp),%r11d
  0.37%    0.23%  │  0x00007f49585b78d7: add    $0x5,%r11d
  0.04%    0.04%  │  0x00007f49585b78db: mov    %r11d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@107 (line 269)
  0.10%    0.09%  │  0x00007f49585b78df: shr    $0x9,%r10
  0.22%    0.21%  │  0x00007f49585b78e3: mov    %r12b,(%rbx,%r10,1)  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.42%    0.48%  │  0x00007f49585b78e7: xor    %eax,%eax
  0.04%    0.07%  │  0x00007f49585b78e9: add    $0x60,%rsp
  0.16%    0.17%  │  0x00007f49585b78ed: pop    %rbp
  0.20%    0.22%  │  0x00007f49585b78ee: test   %eax,0x15e8470c(%rip)        # 0x00007f496e43c000
                  │                                                ;   {poll_return}
  0.38%    0.43%  │  0x00007f49585b78f4: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@75 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@35 (line 265)
                  ↘  0x00007f49585b78f5: mov    $0xffffffe4,%esi
                     0x00007f49585b78fa: vmovq  %xmm4,%rbp
                     0x00007f49585b78ff: mov    %rdx,0x70(%rsp)
                     0x00007f49585b7904: vmovss %xmm0,(%rsp)
                     0x00007f49585b7909: vmovsd %xmm6,0x8(%rsp)
                     0x00007f49585b790f: mov    %r9d,0x4(%rsp)
....................................................................................................
 36.39%   36.36%  <total for region 2>

....[Hottest Regions]...............................................................................
 59.30%   60.69%         C2, level 4  com.google.re2j.Machine::match, version 587 (1400 bytes) 
 36.39%   36.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 543 (852 bytes) 
  0.29%    0.28%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.27%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 590 (137 bytes) 
  0.19%    0.16%         C2, level 4  com.google.re2j.Machine::match, version 587 (313 bytes) 
  0.18%    0.11%         C2, level 4  java.util.Collections::shuffle, version 597 (214 bytes) 
  0.17%    0.11%         C2, level 4  com.google.re2j.RE2::match, version 590 (20 bytes) 
  0.17%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 590 (33 bytes) 
  0.11%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 590 (0 bytes) 
  0.11%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.10%    0.06%         C2, level 4  com.google.re2j.RE2::match, version 590 (5 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.07%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 590 (149 bytes) 
  0.07%                  C2, level 4  com.google.re2j.RE2::match, version 590 (81 bytes) 
  0.07%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 629 (81 bytes) 
  0.07%    0.03%              [vdso]  [unknown] (9 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.05%                  C2, level 4  java.util.Collections::shuffle, version 597 (72 bytes) 
  0.04%    0.01%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 629 (58 bytes) 
  0.03%                  C2, level 4  com.google.re2j.RE2::match, version 590 (40 bytes) 
  2.19%    1.95%  <...other 424 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.53%   60.86%         C2, level 4  com.google.re2j.Machine::match, version 587 
 36.39%   36.36%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 543 
  1.37%    1.12%   [kernel.kallsyms]  [unknown] 
  1.13%    0.36%         C2, level 4  com.google.re2j.RE2::match, version 590 
  0.29%    0.13%         C2, level 4  java.util.Collections::shuffle, version 597 
  0.16%    0.07%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 629 
  0.07%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.07%    0.03%              [vdso]  [unknown] 
  0.06%    0.02%              [vdso]  __vdso_clock_gettime 
  0.05%    0.01%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.09%        libc-2.26.so  vfprintf 
  0.03%    0.00%        libc-2.26.so  __strchr_avx2 
  0.03%    0.05%           libjvm.so  InstanceKlass::oop_push_contents 
  0.03%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 594 
  0.03%    0.02%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.02%    0.05%        libc-2.26.so  _IO_fwrite 
  0.02%    0.02%           libjvm.so  fileStream::write 
  0.02%    0.03%           libjvm.so  outputStream::update_position 
  0.02%    0.01%           libjvm.so  Monitor::ILock 
  0.57%    0.45%  <...other 85 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.54%   97.78%         C2, level 4
  1.37%    1.12%   [kernel.kallsyms]
  0.55%    0.57%           libjvm.so
  0.19%    0.31%        libc-2.26.so
  0.13%    0.05%              [vdso]
  0.09%    0.11%  libpthread-2.26.so
  0.06%    0.03%      hsdis-amd64.so
  0.04%    0.00%         interpreter
  0.01%    0.01%         C1, level 3
  0.00%    0.01%        runtime stub
  0.00%               perf-24632.map
  0.00%             Unknown, level 0
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score      Error  Units
Re2jFindRegex.testExp2       thrpt   20  24677.920 ± 1786.338  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN               ---
