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
# Warmup Iteration   1: 13481.210 ops/s
# Warmup Iteration   2: 25074.114 ops/s
# Warmup Iteration   3: 25187.253 ops/s
# Warmup Iteration   4: 25312.979 ops/s
# Warmup Iteration   5: 25384.537 ops/s
# Warmup Iteration   6: 25174.825 ops/s
# Warmup Iteration   7: 26231.008 ops/s
# Warmup Iteration   8: 26007.757 ops/s
# Warmup Iteration   9: 26341.021 ops/s
# Warmup Iteration  10: 26164.237 ops/s
# Warmup Iteration  11: 26092.887 ops/s
# Warmup Iteration  12: 26168.571 ops/s
# Warmup Iteration  13: 25965.380 ops/s
# Warmup Iteration  14: 26014.693 ops/s
# Warmup Iteration  15: 26092.962 ops/s
# Warmup Iteration  16: 25998.772 ops/s
# Warmup Iteration  17: 25074.851 ops/s
# Warmup Iteration  18: 25127.402 ops/s
# Warmup Iteration  19: 25892.825 ops/s
# Warmup Iteration  20: 25839.013 ops/s
Iteration   1: 25943.293 ops/s
Iteration   2: 25723.768 ops/s
Iteration   3: 25595.886 ops/s
Iteration   4: 25863.653 ops/s
Iteration   5: 25961.190 ops/s
Iteration   6: 25474.494 ops/s
Iteration   7: 25416.713 ops/s
Iteration   8: 25317.809 ops/s
Iteration   9: 25427.510 ops/s
Iteration  10: 24907.256 ops/s
Iteration  11: 24727.332 ops/s
Iteration  12: 25600.497 ops/s
Iteration  13: 26180.118 ops/s
Iteration  14: 26205.873 ops/s
Iteration  15: 26207.654 ops/s
Iteration  16: 26112.546 ops/s
Iteration  17: 26051.710 ops/s
Iteration  18: 25928.964 ops/s
Iteration  19: 25919.123 ops/s
Iteration  20: 25958.907 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  25726.215 ±(99.9%) 361.518 ops/s [Average]
  (min, avg, max) = (24727.332, 25726.215, 26207.654), stdev = 416.325
  CI (99.9%): [25364.696, 26087.733] (assumes normal distribution)

Secondary result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2:·asm":
PrintAssembly processed: 202289 total address lines.
Perf output processed (skipped 22.921 seconds):
 Column 1: cycles (20486 events)
 Column 2: instructions (20578 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.google.re2j.Machine::match, version 567 (1176 bytes) 

  0.01%                                0x00007f5ecce215fd: mov    %r8d,0x24(%rsp)
                                       0x00007f5ecce21602: mov    0x6c(%rsp),%r10d
                                       0x00007f5ecce21607: and    $0x4,%r10d         ;*iand
                                                                                     ; - com.google.re2j.Machine::match@147 (line 212)
                                       0x00007f5ecce2160b: mov    %r10d,0x34(%rsp)
                                       0x00007f5ecce21610: mov    %r13,%r10
                                       0x00007f5ecce21613: shl    $0x3,%r10          ;*getfield q1
                                                                                     ; - com.google.re2j.Machine::match@53 (line 192)
                                       0x00007f5ecce21617: mov    %r10,0x50(%rsp)
                                       0x00007f5ecce2161c: xor    %eax,%eax
  0.00%    0.00%                       0x00007f5ecce2161e: xor    %r10d,%r10d
                                       0x00007f5ecce21621: mov    %r10d,0x38(%rsp)
                  ╭                    0x00007f5ecce21626: jmpq   0x00007f5ecce21946
  0.39%    0.43%  │  ↗↗↗               0x00007f5ecce2162b: mov    0x2c(%r12,%rcx,8),%ebp  ;*getfield outInst
                  │  │││                                                             ; - com.google.re2j.Machine::step@191 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.40%    0.34%  │  │││               0x00007f5ecce21630: mov    0x8(%r12,%rbp,8),%ebx  ; implicit exception: dispatches to 0x00007f5ecce22acd
  0.29%    0.13%  │  │││               0x00007f5ecce21635: cmp    $0xf8019909,%ebx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  │││               0x00007f5ecce2163b: jne    0x00007f5ecce22359
  0.15%    0.04%  │  │││               0x00007f5ecce21641: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.00%           │  │││               0x00007f5ecce21645: vmovq  %rcx,%xmm1
  0.01%    0.01%  │  │││               0x00007f5ecce2164a: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.02%  │  │││               0x00007f5ecce2164d: vmovd  %ecx,%xmm2
  0.11%    0.10%  │  │││               0x00007f5ecce21651: mov    0x50(%rsp),%rcx
  0.00%    0.01%  │  │││               0x00007f5ecce21656: mov    0x10(%rcx),%rbx    ;*getfield pcsl
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
                  │  │││                                                             ; implicit exception: dispatches to 0x00007f5ecce22ae9
  0.01%    0.01%  │  │││               0x00007f5ecce2165a: vmovd  %xmm2,%ecx
  0.12%    0.08%  │  │││               0x00007f5ecce2165e: cmp    $0x40,%ecx
                  │  │││               0x00007f5ecce21661: jg     0x00007f5ecce22419  ;*if_icmpgt
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.09%    0.13%  │  │││               0x00007f5ecce21667: mov    $0x1,%edx
  0.00%    0.01%  │  │││               0x00007f5ecce2166c: shl    %cl,%rdx           ;*lshl
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.26%  │  │││               0x00007f5ecce2166f: mov    %rbx,%rcx
                  │  │││               0x00007f5ecce21672: and    %rdx,%rcx          ;*land
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
           0.00%  │  │││               0x00007f5ecce21675: test   %rcx,%rcx
                  │  │││               0x00007f5ecce21678: jne    0x00007f5ecce22485  ;*ifeq
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.11%    0.13%  │  │││               0x00007f5ecce2167e: vmovd  %xmm2,%ecx
  0.02%    0.01%  │  │││               0x00007f5ecce21682: cmp    $0x40,%ecx
                  │  │││               0x00007f5ecce21685: jge    0x00007f5ecce224f9  ;*if_icmpge
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.11%  │  │││               0x00007f5ecce2168b: mov    0x50(%rsp),%rcx
  0.00%    0.01%  │  │││               0x00007f5ecce21690: mov    %r12b,0x18(%rcx)   ;*putfield empty
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.01%  │  │││               0x00007f5ecce21694: mov    0x20(%rcx),%ecx    ;*getfield denseThreadsInstructions
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.06%           │  │││               0x00007f5ecce21697: vmovd  %ecx,%xmm3
  0.11%    0.09%  │  │││               0x00007f5ecce2169b: mov    0x50(%rsp),%rcx
                  │  │││               0x00007f5ecce216a0: mov    0xc(%rcx),%ebp     ;*getfield size
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.02%    0.03%  │  │││               0x00007f5ecce216a3: or     %rbx,%rdx
           0.01%  │  │││               0x00007f5ecce216a6: mov    %rdx,0x10(%rcx)    ;*putfield pcsl
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.10%  │  │││               0x00007f5ecce216aa: mov    %ebp,%ebx
  0.01%           │  │││               0x00007f5ecce216ac: inc    %ebx
  0.02%    0.02%  │  │││               0x00007f5ecce216ae: mov    %ebx,0xc(%rcx)     ;*putfield size
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.01%    0.00%  │  │││               0x00007f5ecce216b1: vmovd  %xmm3,%ecx
  0.11%    0.09%  │  │││               0x00007f5ecce216b5: mov    0xc(%r12,%rcx,8),%ecx  ; implicit exception: dispatches to 0x00007f5ecce22afd
  0.19%    0.03%  │  │││               0x00007f5ecce216ba: cmp    %ecx,%ebp
                  │  │││               0x00007f5ecce216bc: jae    0x00007f5ecce222ed
  0.25%    0.19%  │  │││               0x00007f5ecce216c2: vmovd  %xmm3,%ecx
  0.00%    0.00%  │  │││               0x00007f5ecce216c6: mov    0x8(%r12,%rcx,8),%ebx
  0.01%    0.05%  │  │││               0x00007f5ecce216cb: cmp    $0xf8019807,%ebx   ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  │││               0x00007f5ecce216d1: jne    0x00007f5ecce223ad  ;*aastore
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.05%    0.05%  │  │││               0x00007f5ecce216d7: shl    $0x3,%rcx          ;*getfield denseThreadsInstructions
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.04%    0.05%  │  │││               0x00007f5ecce216db: lea    0x10(%rcx,%rbp,4),%rcx
                  │  │││               0x00007f5ecce216e0: vmovq  %xmm1,%rbx
  0.06%    0.06%  │  │││               0x00007f5ecce216e5: shr    $0x3,%rbx
  0.05%    0.08%  │  │││               0x00007f5ecce216e9: mov    %ebx,(%rcx)
  0.31%    0.34%  │  │││               0x00007f5ecce216eb: shr    $0x9,%rcx
  0.00%           │  │││               0x00007f5ecce216ef: movabs $0x7f5ec8601000,%rbx
  0.02%    0.02%  │  │││               0x00007f5ecce216f9: mov    %r12b,(%rbx,%rcx,1)  ;*aastore
                  │  │││                                                             ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │  │││                                                             ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │  │││                                                             ; - com.google.re2j.Machine::step@206 (line 314)
                  │  │││                                                             ; - com.google.re2j.Machine::match@359 (line 246)
  0.17%    0.17%  │╭ │││               0x00007f5ecce216fd: jmpq   0x00007f5ecce217fb
  0.22%    0.19%  ││ │││         ↗     0x00007f5ecce21702: or     $0x20,%r9d         ;*iload_2
                  ││ │││         │                                                   ; - com.google.re2j.Utils::emptyOpContext@63 (line 190)
                  ││ │││         │                                                   ; - com.google.re2j.Machine::match@326 (line 245)
  0.30%    0.25%  ││ │││         │↗    0x00007f5ecce21706: mov    0x60(%rsp),%r10
  0.11%    0.08%  ││ │││         ││    0x00007f5ecce2170b: mov    0x14(%r10),%r10d   ;*getfield re2
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::step@1 (line 280)
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.19%  ││ │││         ││    0x00007f5ecce2170f: movzbl 0x18(%r12,%r10,8),%r14d  ;*getfield longest
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::step@4 (line 280)
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                  ││ │││         ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22a69
  0.43%    0.30%  ││ │││         ││    0x00007f5ecce21715: mov    0x2c(%rsp),%r10d
  0.28%    0.36%  ││ │││         ││    0x00007f5ecce2171a: mov    0xc(%r12,%r10,8),%r11d  ;*getfield size
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::step@10 (line 281)
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.07%    0.11%  ││ │││         ││    0x00007f5ecce2171f: mov    0x38(%rsp),%r8d
  0.10%    0.10%  ││ │││         ││    0x00007f5ecce21724: add    0x20(%rsp),%r8d    ;*iadd
                  ││ │││         ││                                                  ; - com.google.re2j.Machine::match@340 (line 246)
  0.21%    0.29%  ││ │││         ││    0x00007f5ecce21729: test   %r11d,%r11d
                  ││╭│││         ││    0x00007f5ecce2172c: jle    0x00007f5ecce21803  ;*if_icmpge
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@28 (line 283)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.32%    0.23%  ││││││         ││    0x00007f5ecce21732: mov    0x70(%rsp),%r10
  0.08%    0.05%  ││││││         ││    0x00007f5ecce21737: mov    0x10(%r10),%ecx
  0.15%    0.10%  ││││││         ││    0x00007f5ecce2173b: mov    0x60(%rsp),%r10
  0.24%    0.17%  ││││││         ││    0x00007f5ecce21740: movzbl 0x11(%r10),%ebx    ;*getfield captures
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@16 (line 282)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.27%    0.31%  ││││││         ││    0x00007f5ecce21745: mov    0x38(%rsp),%edi
  0.09%    0.05%  ││││││         ││    0x00007f5ecce21749: mov    $0x1,%r10d
  0.13%    0.11%  ││││││         ││    0x00007f5ecce2174f: xor    %esi,%esi
  0.23%    0.21%  ││││││         ││    0x00007f5ecce21751: cmp    %ecx,%edi
  0.23%    0.30%  ││││││         ││    0x00007f5ecce21753: cmovne %esi,%r10d         ;*invokespecial step
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.22%    0.13%  ││││││         ││    0x00007f5ecce21757: vmovd  %r10d,%xmm0
  0.23%    0.31%  ││││││         ││    0x00007f5ecce2175c: test   %ebx,%ebx
                  ││││││         ││    0x00007f5ecce2175e: jne    0x00007f5ecce21efd  ;*iload
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@31 (line 286)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.29%    0.24%  ││││││         ││    0x00007f5ecce21764: mov    0x2c(%rsp),%ecx
  0.07%    0.07%  ││││││         ││    0x00007f5ecce21768: mov    0x20(%r12,%rcx,8),%ecx  ;*getfield denseThreadsInstructions
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@86 (line 296)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.12%    0.06%  ││││││         ││    0x00007f5ecce2176d: mov    0xc(%r12,%rcx,8),%r10d  ;*aaload
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@91 (line 296)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                  ││││││         ││                                                  ; implicit exception: dispatches to 0x00007f5ecce21efd
  0.43%    0.27%  ││││││         ││    0x00007f5ecce21772: test   %r10d,%r10d
                  ││││││         ││    0x00007f5ecce21775: jbe    0x00007f5ecce21efd
  0.28%    0.32%  ││││││         ││    0x00007f5ecce2177b: mov    %r11d,%edi
  0.03%    0.07%  ││││││         ││    0x00007f5ecce2177e: dec    %edi
  0.06%    0.07%  ││││││         ││    0x00007f5ecce21780: cmp    %r10d,%edi
                  ││││││         ││    0x00007f5ecce21783: jae    0x00007f5ecce21efd
  0.24%    0.18%  ││││││         ││    0x00007f5ecce21789: lea    (%r12,%rcx,8),%rdi
  0.22%    0.33%  ││││││         ││    0x00007f5ecce2178d: xor    %r10d,%r10d        ;*iload
                  ││││││         ││                                                  ; - com.google.re2j.Machine::step@31 (line 286)
                  ││││││         ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.45%    1.75%  ││││││↗        ││    0x00007f5ecce21790: mov    0x10(%rdi,%r10,4),%ecx  ;*aaload
                  │││││││        ││                                                  ; - com.google.re2j.Machine::step@91 (line 296)
                  │││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.37%    0.34%  │││││││        ││    0x00007f5ecce21795: mov    0xc(%r12,%rcx,8),%ebx  ;*getfield op
                  │││││││        ││                                                  ; - com.google.re2j.Machine::step@96 (line 298)
                  │││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
                  │││││││        ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22a19
  2.44%    2.21%  │││││││        ││    0x00007f5ecce2179a: cmp    $0x6,%ebx
                  │││││││        ││    0x00007f5ecce2179d: je     0x00007f5ecce21b6e  ;*if_icmpne
                  │││││││        ││                                                  ; - com.google.re2j.Machine::step@101 (line 298)
                  │││││││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.49%    1.37%  │││││││        ││    0x00007f5ecce217a3: cmp    $0xa,%ebx
                  │││╰│││        ││    0x00007f5ecce217a6: je     0x00007f5ecce2162b  ;*if_icmpne
                  │││ │││        ││                                                  ; - com.google.re2j.Inst::matchRune@6 (line 90)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.54%    1.45%  │││ │││        ││    0x00007f5ecce217ac: cmp    $0xb,%ebx
                  │││ │││        ││    0x00007f5ecce217af: je     0x00007f5ecce21c69  ;*if_icmpne
                  │││ │││        ││                                                  ; - com.google.re2j.Inst::matchRune@17 (line 94)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.08%    1.13%  │││ │││        ││    0x00007f5ecce217b5: cmp    $0x9,%ebx
                  │││ │││        ││    0x00007f5ecce217b8: je     0x00007f5ecce21cd5  ;*if_icmpne
                  │││ │││        ││                                                  ; - com.google.re2j.Inst::matchRune@38 (line 98)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.00%    0.98%  │││ │││        ││    0x00007f5ecce217be: cmp    $0xc,%ebx
                  │││ │││        ││    0x00007f5ecce217c1: jne    0x00007f5ecce21bfb  ;*if_icmpne
                  │││ │││        ││                                                  ; - com.google.re2j.Inst::matchRune@61 (line 102)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.92%    1.81%  │││ │││        ││    0x00007f5ecce217c7: mov    0x1c(%r12,%rcx,8),%edx  ;*getfield f0
                  │││ │││        ││                                                  ; - com.google.re2j.Inst::matchRune@65 (line 103)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││ │││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.94%    1.05%  │││ │││        ││    0x00007f5ecce217cc: cmp    %eax,%edx
                  │││ ╰││        ││    0x00007f5ecce217ce: je     0x00007f5ecce2162b  ;*if_icmpeq
                  │││  ││        ││                                                  ; - com.google.re2j.Inst::matchRune@69 (line 103)
                  │││  ││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││  ││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.71%    1.68%  │││  ││        ││    0x00007f5ecce217d4: mov    0x20(%r12,%rcx,8),%edx  ;*getfield f1
                  │││  ││        ││                                                  ; - com.google.re2j.Inst::matchRune@73 (line 103)
                  │││  ││        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││  ││        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.41%    0.52%  │││  ││        ││    0x00007f5ecce217d9: cmp    %eax,%edx
                  │││  ╰│        ││    0x00007f5ecce217db: je     0x00007f5ecce2162b  ;*if_icmpeq
                  │││   │        ││                                                  ; - com.google.re2j.Inst::matchRune@77 (line 103)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.13%    1.18%  │││   │        ││    0x00007f5ecce217e1: mov    0x24(%r12,%rcx,8),%edx  ;*getfield f2
                  │││   │        ││                                                  ; - com.google.re2j.Inst::matchRune@81 (line 103)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.84%    0.96%  │││   │        ││    0x00007f5ecce217e6: cmp    %eax,%edx
                  │││   │        ││    0x00007f5ecce217e8: je     0x00007f5ecce21d41  ;*if_icmpeq
                  │││   │        ││                                                  ; - com.google.re2j.Inst::matchRune@85 (line 103)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.67%    1.96%  │││   │        ││    0x00007f5ecce217ee: mov    0x28(%r12,%rcx,8),%ebx  ;*getfield f3
                  │││   │        ││                                                  ; - com.google.re2j.Inst::matchRune@89 (line 103)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::step@183 (line 313)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.45%    0.39%  │││   │        ││    0x00007f5ecce217f3: cmp    %eax,%ebx
                  │││   │        ││    0x00007f5ecce217f5: je     0x00007f5ecce21db1  ;*aload
                  │││   │        ││                                                  ; - com.google.re2j.Machine::step@211 (line 316)
                  │││   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  1.03%    1.11%  │↘│   │        ││    0x00007f5ecce217fb: inc    %r10d              ;*iinc
                  │ │   │        ││                                                  ; - com.google.re2j.Machine::step@222 (line 283)
                  │ │   │        ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.93%    0.94%  │ │   │        ││    0x00007f5ecce217fe: cmp    %r11d,%r10d
                  │ │   ╰        ││    0x00007f5ecce21801: jl     0x00007f5ecce21790  ;*if_icmpge
                  │ │            ││                                                  ; - com.google.re2j.Machine::step@28 (line 283)
                  │ │            ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.21%    0.21%  │ ↘            ││    0x00007f5ecce21803: mov    0x2c(%rsp),%r10d
  0.16%    0.21%  │              ││    0x00007f5ecce21808: movzbl 0x18(%r12,%r10,8),%r10d
  0.21%    0.30%  │              ││    0x00007f5ecce2180e: test   %r10d,%r10d
                  │      ╭       ││    0x00007f5ecce21811: jne    0x00007f5ecce21835  ;*ifeq
                  │      │       ││                                                  ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.44%  │      │       ││    0x00007f5ecce21813: mov    0x2c(%rsp),%r11d
  0.09%    0.06%  │      │       ││    0x00007f5ecce21818: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield pcs
                  │      │       ││                                                  ; - com.google.re2j.Machine$Queue::clear@29 (line 73)
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.16%    0.10%  │      │       ││    0x00007f5ecce2181d: movb   $0x1,0x18(%r12,%r11,8)  ;*putfield empty
                  │      │       ││                                                  ; - com.google.re2j.Machine$Queue::clear@15 (line 71)
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.53%    0.75%  │      │       ││    0x00007f5ecce21823: mov    %r12,0x10(%r12,%r11,8)  ;*putfield pcsl
                  │      │       ││                                                  ; - com.google.re2j.Machine$Queue::clear@25 (line 72)
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.85%    1.12%  │      │       ││    0x00007f5ecce21828: mov    %r12d,0xc(%r12,%r11,8)  ;*putfield size
                  │      │       ││                                                  ; - com.google.re2j.Machine$Queue::clear@10 (line 70)
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.33%    0.44%  │      │       ││    0x00007f5ecce2182d: test   %ebp,%ebp
                  │      │       ││    0x00007f5ecce2182f: jne    0x00007f5ecce2213d  ;*invokevirtual clear
                  │      │       ││                                                  ; - com.google.re2j.Machine::step@229 (line 320)
                  │      │       ││                                                  ; - com.google.re2j.Machine::match@359 (line 246)
  0.08%    0.03%  │      ↘       ││    0x00007f5ecce21835: mov    0x60(%rsp),%r10
  0.10%    0.18%  │              ││    0x00007f5ecce2183a: movzbl 0x10(%r10),%eax    ;*getfield matched
                  │              ││                                                  ; - com.google.re2j.Machine::match@378 (line 250)
  0.38%    0.52%  │              ││    0x00007f5ecce2183f: mov    0x60(%rsp),%r10
  0.21%    0.27%  │              ││    0x00007f5ecce21844: movzbl 0x11(%r10),%ebp    ;*getfield captures
                  │              ││                                                  ; - com.google.re2j.Machine::match@371 (line 250)
  0.06%    0.05%  │              ││    0x00007f5ecce21849: mov    0x20(%rsp),%r11d
  0.15%    0.15%  │              ││    0x00007f5ecce2184e: test   %r11d,%r11d
                  │       ╭      ││    0x00007f5ecce21851: je     0x00007f5ecce21aae  ;*ifne
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@364 (line 247)
  0.33%    0.52%  │       │      ││    0x00007f5ecce21857: test   %ebp,%ebp
                  │       │      ││    0x00007f5ecce21859: jne    0x00007f5ecce22021  ;*ifne
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@374 (line 250)
  0.16%    0.22%  │       │      ││    0x00007f5ecce2185f: test   %eax,%eax
                  │       │      ││    0x00007f5ecce21861: jne    0x00007f5ecce220fd  ;*ifeq
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@381 (line 250)
  0.06%    0.08%  │       │      ││    0x00007f5ecce21867: cmp    $0xffffffff,%r13d
                  │       │      ││    0x00007f5ecce2186b: je     0x00007f5ecce21aed  ;*if_icmpeq
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@403 (line 258)
  0.12%    0.15%  │       │      ││    0x00007f5ecce21871: mov    %r13d,0x24(%rsp)
  0.31%    0.42%  │       │      ││    0x00007f5ecce21876: mov    0x70(%rsp),%r10
  0.18%    0.17%  │       │      ││    0x00007f5ecce2187b: mov    0x10(%r10),%r11d   ;*getfield end
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@9 (line 186)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.08%    0.07%  │       │      ││    0x00007f5ecce2187f: mov    0x30(%rsp),%ecx
  0.13%    0.21%  │       │      ││    0x00007f5ecce21883: add    %r8d,%ecx
  0.33%    0.49%  │       │      ││    0x00007f5ecce21886: add    0xc(%r10),%ecx     ;*iadd
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@5 (line 185)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.37%    0.49%  │       │      ││    0x00007f5ecce2188a: cmp    %r11d,%ecx
                  │       │      ││    0x00007f5ecce2188d: jge    0x00007f5ecce21b01  ;*if_icmpge
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@12 (line 186)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.25%    0.27%  │       │      ││    0x00007f5ecce21893: mov    0x14(%r10),%ebp    ;*getfield str
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@16 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.12%    0.20%  │       │      ││    0x00007f5ecce21897: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00007f5ecce22a79
  0.34%    0.46%  │       │      ││    0x00007f5ecce2189c: cmp    $0xf80002da,%r11d  ;   {metadata(&apos;java/lang/String&apos;)}
                  │       │      ││    0x00007f5ecce218a3: jne    0x00007f5ecce21ec1
  0.34%    0.52%  │       │      ││    0x00007f5ecce218a9: lea    (%r12,%rbp,8),%rbx  ;*invokeinterface charAt
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.05%    0.05%  │       │      ││    0x00007f5ecce218ad: test   %ecx,%ecx
                  │       │      ││    0x00007f5ecce218af: jl     0x00007f5ecce22065  ;*iflt
                  │       │      ││                                                  ; - java.lang.String::charAt@1 (line 657)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.07%    0.13%  │       │      ││    0x00007f5ecce218b5: mov    0xc(%rbx),%edi     ;*getfield value
                  │       │      ││                                                  ; - java.lang.String::charAt@6 (line 657)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.25%    0.39%  │       │      ││    0x00007f5ecce218b8: mov    0xc(%r12,%rdi,8),%ebp  ;*arraylength
                  │       │      ││                                                  ; - java.lang.String::charAt@9 (line 657)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
                  │       │      ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22a8d
  2.32%    3.22%  │       │      ││    0x00007f5ecce218bd: cmp    %ebp,%ecx
                  │       │      ││    0x00007f5ecce218bf: jge    0x00007f5ecce22175  ;*if_icmplt
                  │       │      ││                                                  ; - java.lang.String::charAt@10 (line 657)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.62%    0.92%  │       │      ││    0x00007f5ecce218c5: cmp    %ebp,%ecx
                  │       │      ││    0x00007f5ecce218c7: jae    0x00007f5ecce21e75
  0.06%    0.08%  │       │      ││    0x00007f5ecce218cd: lea    (%r12,%rdi,8),%r10
  0.04%    0.01%  │       │      ││    0x00007f5ecce218d1: movzwl 0x10(%r10,%rcx,2),%r10d  ;*caload
                  │       │      ││                                                  ; - java.lang.String::charAt@27 (line 660)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@2 (line 4866)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.01%  │       │      ││    0x00007f5ecce218d7: cmp    $0xd800,%r10d
                  │       │      ││    0x00007f5ecce218de: jge    0x00007f5ecce221c1  ;*if_icmplt
                  │       │      ││                                                  ; - java.lang.Character::isHighSurrogate@3 (line 4729)
                  │       │      ││                                                  ; - java.lang.Character::codePointAt@9 (line 4867)
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@20 (line 187)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.61%    0.81%  │       │      ││    0x00007f5ecce218e4: shl    $0x3,%r10d         ;*ishl
                  │       │      ││                                                  ; - com.google.re2j.MachineInput$UTF16Input::step@38 (line 190)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.03%    0.02%  │       │      ││    0x00007f5ecce218e8: mov    %r10d,%edi
  0.04%    0.00%  │       │      ││    0x00007f5ecce218eb: and    $0x7,%edi
  0.60%    0.80%  │       │      ││    0x00007f5ecce218ee: or     $0x1,%r10d
  0.06%    0.04%  │       │      ││    0x00007f5ecce218f2: or     $0x1,%edi          ;*ior  ; - com.google.re2j.MachineInput$UTF16Input::step@41 (line 190)
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@411 (line 259)
  0.50%    0.75%  │       │      ││    0x00007f5ecce218f5: sar    $0x3,%r10d         ; OopMap{[16]=Oop [80]=Oop [96]=Oop [112]=Oop off=1273}
                  │       │      ││                                                  ;*goto
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
  0.04%    0.00%  │       │      ││    0x00007f5ecce218f9: test   %eax,0x15e2e701(%rip)        # 0x00007f5ee2c50000
                  │       │      ││                                                  ;*goto
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@441 (line 266)
                  │       │      ││                                                  ;   {poll}
  0.08%    0.07%  │       │      ││    0x00007f5ecce218ff: mov    0x60(%rsp),%r11
  0.06%    0.06%  │       │      ││    0x00007f5ecce21904: mov    0x14(%r11),%ecx    ;*getfield re2
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@169 (line 220)
  0.62%    0.70%  │       │      ││    0x00007f5ecce21908: vmovd  %ecx,%xmm4
  0.02%    0.03%  │       │      ││    0x00007f5ecce2190c: mov    0x28(%r11),%ebx    ;*getfield matchcap
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.06%    0.01%  │       │      ││    0x00007f5ecce21910: mov    0x50(%rsp),%r11
  0.03%    0.06%  │       │      ││    0x00007f5ecce21915: mov    %r11,%rcx
  0.52%    0.49%  │       │      ││    0x00007f5ecce21918: shr    $0x3,%rcx
  0.04%    0.01%  │       │      ││    0x00007f5ecce2191c: mov    %ecx,0x2c(%rsp)
  0.04%    0.04%  │       │      ││    0x00007f5ecce21920: mov    0x30(%rsp),%r11d
  0.04%    0.04%  │       │      ││    0x00007f5ecce21925: mov    %r11d,0x20(%rsp)
  0.59%    0.34%  │       │      ││    0x00007f5ecce2192a: mov    %r8d,0x38(%rsp)
  0.04%    0.04%  │       │      ││    0x00007f5ecce2192f: mov    %edi,0x30(%rsp)
  0.04%    0.05%  │       │      ││    0x00007f5ecce21933: mov    %r10d,0x28(%rsp)
  0.04%    0.07%  │       │      ││    0x00007f5ecce21938: mov    0x10(%rsp),%r10
  0.53%    0.35%  │       │      ││    0x00007f5ecce2193d: mov    %r10,0x50(%rsp)
  0.04%    0.04%  │       │      ││    0x00007f5ecce21942: vmovd  %ebx,%xmm0         ;*aload
                  │       │      ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.05%    0.04%  ↘       │      ││    0x00007f5ecce21946: mov    0x2c(%rsp),%r10d
  0.06%    0.05%          │      ││    0x00007f5ecce2194b: movzbl 0x18(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007f5ecce22a29
  0.61%    0.61%          │      ││    0x00007f5ecce21951: test   %r11d,%r11d
                          │╭     ││    0x00007f5ecce21954: je     0x00007f5ecce21988  ;*ifeq
                          ││     ││                                                  ; - com.google.re2j.Machine::match@141 (line 211)
  0.03%    0.04%          ││     ││    0x00007f5ecce21956: mov    0x34(%rsp),%r11d
  0.03%    0.04%          ││     ││    0x00007f5ecce2195b: test   %r11d,%r11d
                          ││     ││    0x00007f5ecce2195e: jne    0x00007f5ecce22259  ;*ifeq
                          ││     ││                                                  ; - com.google.re2j.Machine::match@148 (line 212)
  0.01%    0.02%          ││     ││    0x00007f5ecce21964: test   %eax,%eax
                          ││     ││    0x00007f5ecce21966: jne    0x00007f5ecce222a1  ;*ifeq
                          ││     ││                                                  ; - com.google.re2j.Machine::match@162 (line 216)
  0.48%    0.42%          ││     ││    0x00007f5ecce2196c: vmovd  %xmm4,%r10d
  0.02%    0.04%          ││     ││    0x00007f5ecce21971: mov    0x24(%r12,%r10,8),%r10d  ;*getfield prefix
                          ││     ││                                                  ; - com.google.re2j.Machine::match@172 (line 220)
                          ││     ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22a9d
  0.03%    0.07%          ││     ││    0x00007f5ecce21976: mov    0xc(%r12,%r10,8),%r11d  ;*getfield value
                          ││     ││                                                  ; - java.lang.String::isEmpty@1 (line 635)
                          ││     ││                                                  ; - com.google.re2j.Machine::match@175 (line 220)
                          ││     ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22aad
  0.04%    0.03%          ││     ││    0x00007f5ecce2197b: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength
                          ││     ││                                                  ; - java.lang.String::isEmpty@4 (line 635)
                          ││     ││                                                  ; - com.google.re2j.Machine::match@175 (line 220)
                          ││     ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22abd
  1.32%    1.59%          ││     ││    0x00007f5ecce21980: test   %ebp,%ebp
                          ││     ││    0x00007f5ecce21982: jne    0x00007f5ecce22211  ;*aload_0
                          ││     ││                                                  ; - com.google.re2j.Machine::match@267 (line 237)
  0.58%    0.49%          │↘     ││    0x00007f5ecce21988: test   %eax,%eax
                          │      ││    0x00007f5ecce2198a: jne    0x00007f5ecce21f7d  ;*ifne
                          │      ││                                                  ; - com.google.re2j.Machine::match@271 (line 237)
  0.01%    0.01%          │      ││    0x00007f5ecce21990: mov    0x38(%rsp),%r10d
  0.26%    0.14%          │      ││    0x00007f5ecce21995: test   %r10d,%r10d
                          │ ╭    ││    0x00007f5ecce21998: je     0x00007f5ecce219a8  ;*ifeq
                          │ │    ││                                                  ; - com.google.re2j.Machine::match@275 (line 237)
  0.10%    0.09%          │ │    ││    0x00007f5ecce2199a: mov    0x68(%rsp),%r11d
  0.58%    0.38%          │ │    ││    0x00007f5ecce2199f: test   %r11d,%r11d
                          │ │    ││    0x00007f5ecce219a2: jne    0x00007f5ecce21fcd  ;*aload_0
                          │ │    ││                                                  ; - com.google.re2j.Machine::match@282 (line 240)
  0.01%    0.02%          │ ↘    ││    0x00007f5ecce219a8: mov    0x60(%rsp),%r10
  0.02%    0.01%          │      ││    0x00007f5ecce219ad: movzbl 0x11(%r10),%ebx    ;*getfield captures
                          │      ││                                                  ; - com.google.re2j.Machine::match@283 (line 240)
  0.09%    0.12%          │      ││    0x00007f5ecce219b2: test   %ebx,%ebx
                          │      ││    0x00007f5ecce219b4: jne    0x00007f5ecce220ad  ;*ifeq
                          │      ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.52%    0.11%          │      ││    0x00007f5ecce219ba: mov    0x18(%r10),%r11d   ;*getfield prog
                          │      ││                                                  ; - com.google.re2j.Machine::match@297 (line 243)
  0.01%    0.03%          │      ││    0x00007f5ecce219be: mov    0x1c(%r12,%r11,8),%ebp  ;*getfield startInst
                          │      ││                                                  ; - com.google.re2j.Machine::match@300 (line 243)
                          │      ││                                                  ; implicit exception: dispatches to 0x00007f5ecce22a39
  0.05%    0.04%          │      ││    0x00007f5ecce219c3: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5ecce22a49
  0.30%    0.24%          │      ││    0x00007f5ecce219c8: cmp    $0xf8019a09,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$Alt5Inst&apos;)}
                          │      ││    0x00007f5ecce219cf: jne    0x00007f5ecce21e19  ;*ifeq
                          │      ││                                                  ; - com.google.re2j.Machine::match@286 (line 240)
  0.55%    0.29%          │      ││    0x00007f5ecce219d5: lea    (%r12,%rbp,8),%rsi  ;*invokevirtual add
                          │      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
  0.01%    0.01%          │      ││    0x00007f5ecce219d9: mov    0x2c(%rsp),%r10d
  0.00%    0.02%          │      ││    0x00007f5ecce219de: shl    $0x3,%r10          ;*aload
                          │      ││                                                  ; - com.google.re2j.Machine::match@136 (line 211)
  0.06%    0.05%          │      ││    0x00007f5ecce219e2: mov    %r10,0x10(%rsp)
  0.60%    0.27%          │      ││    0x00007f5ecce219e7: vmovd  %xmm0,%r11d
  0.00%                   │      ││    0x00007f5ecce219ec: mov    %r11,%r8
  0.01%    0.02%          │      ││    0x00007f5ecce219ef: shl    $0x3,%r8           ;*getfield matchcap
                          │      ││                                                  ; - com.google.re2j.Machine::match@307 (line 243)
  0.09%    0.04%          │      ││    0x00007f5ecce219f3: mov    %r10,%rdx
  0.68%    0.44%          │      ││    0x00007f5ecce219f6: mov    0x38(%rsp),%ecx
  0.02%                   │      ││    0x00007f5ecce219fa: xor    %edi,%edi
  0.01%    0.01%          │      ││    0x00007f5ecce219fc: mov    0x60(%rsp),%r10
  0.04%    0.06%          │      ││    0x00007f5ecce21a01: mov    %r10,(%rsp)
  0.56%    0.62%          │      ││    0x00007f5ecce21a05: mov    %ebx,0x8(%rsp)
  0.00%    0.00%          │      ││    0x00007f5ecce21a09: xchg   %ax,%ax
  0.02%                   │      ││    0x00007f5ecce21a0b: callq  0x00007f5eccc19020  ; OopMap{[16]=Oop [44]=NarrowOop [80]=Oop [96]=Oop [112]=Oop off=1552}
                          │      ││                                                  ;*invokevirtual add
                          │      ││                                                  ; - com.google.re2j.Machine::match@318 (line 243)
                          │      ││                                                  ;   {optimized virtual_call}
  0.31%    0.37%          │      ││    0x00007f5ecce21a10: mov    0x24(%rsp),%eax
  0.14%    0.17%          │      ││    0x00007f5ecce21a14: test   %eax,%eax
                          │  ╭   ││    0x00007f5ecce21a16: jl     0x00007f5ecce21a9d  ;*ifge
                          │  │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@3 (line 173)
                          │  │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.30%    0.27%          │  │   ││    0x00007f5ecce21a1c: xor    %r9d,%r9d          ;*iload_0
                          │  │   ││                                                  ; - com.google.re2j.Utils::emptyOpContext@10 (line 176)
                          │  │   ││                                                  ; - com.google.re2j.Machine::match@326 (line 245)
  0.34%    0.30%          │  │   ││↗   0x00007f5ecce21a1f: cmp    $0xa,%eax
                          │  │   │││   0x00007f5ecce21a22: je     0x00007f5ecce21b0e  ;*iload_1
                          │  │   │││                                                 ; - com.google.re2j.Utils::emptyOpContext@20 (line 179)
                          │  │   │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.04%    0.04%          │  │   │││   0x00007f5ecce21a28: mov    0x28(%rsp),%r13d
  0.13%    0.10%          │  │   │││   0x00007f5ecce21a2d: test   %r13d,%r13d
                          │  │╭  │││   0x00007f5ecce21a30: jl     0x00007f5ecce21aa8  ;*iload_1
                          │  ││  │││                                                 ; - com.google.re2j.Utils::emptyOpContext@29 (line 182)
                          │  ││  │││                                                 ; - com.google.re2j.Machine::match@326 (line 245)
  0.31%    0.34%          │  ││  │││↗  0x00007f5ecce21a32: cmp    $0xa,%r13d
                          │  ││  ││││  0x00007f5ecce21a36: je     0x00007f5ecce21b17  ;*iload_0
                          │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@39 (line 185)
                          │  ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.28%    0.36%          │  ││  ││││  0x00007f5ecce21a3c: mov    0x24(%rsp),%r10d
  0.08%    0.07%          │  ││  ││││  0x00007f5ecce21a41: add    $0xffffffbf,%r10d
  0.05%    0.09%          │  ││  ││││  0x00007f5ecce21a45: cmp    $0x1a,%r10d
                          │  ││╭ ││││  0x00007f5ecce21a49: jb     0x00007f5ecce21a5e  ;*if_icmple
                          │  │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                          │  │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                          │  │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.27%    0.24%          │  │││ ││││  0x00007f5ecce21a4b: mov    0x24(%rsp),%r11d
  0.29%    0.33%          │  │││ ││││  0x00007f5ecce21a50: add    $0xffffff9f,%r11d
  0.04%    0.05%          │  │││ ││││  0x00007f5ecce21a54: cmp    $0x1a,%r11d
                          │  │││ ││││  0x00007f5ecce21a58: jae    0x00007f5ecce21b20  ;*iconst_1
                          │  │││ ││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                          │  │││ ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                          │  │││ ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.09%          │  ││↘ ││││  0x00007f5ecce21a5e: mov    $0x1,%ebp          ;*ireturn
                          │  ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                          │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@40 (line 185)
                          │  ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.22%    0.27%          │  ││  ││││  0x00007f5ecce21a63: mov    0x28(%rsp),%r10d
  0.26%    0.39%          │  ││  ││││  0x00007f5ecce21a68: add    $0xffffffbf,%r10d
  0.09%    0.06%          │  ││  ││││  0x00007f5ecce21a6c: cmp    $0x1a,%r10d
                          │  ││ ╭││││  0x00007f5ecce21a70: jb     0x00007f5ecce21a85  ;*if_icmple
                          │  ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@9 (line 149)
                          │  ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                          │  ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.16%    0.10%          │  ││ │││││  0x00007f5ecce21a72: mov    0x28(%rsp),%r11d
  0.21%    0.29%          │  ││ │││││  0x00007f5ecce21a77: add    $0xffffff9f,%r11d
  0.31%    0.32%          │  ││ │││││  0x00007f5ecce21a7b: cmp    $0x1a,%r11d
                          │  ││ │││││  0x00007f5ecce21a7f: jae    0x00007f5ecce21b49  ;*iconst_1
                          │  ││ │││││                                                ; - com.google.re2j.Utils::isWordRune@42 (line 149)
                          │  ││ │││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                          │  ││ │││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.10%    0.12%          │  ││ ↘││││  0x00007f5ecce21a85: mov    $0x1,%r10d         ;*ireturn
                          │  ││  ││││                                                ; - com.google.re2j.Utils::isWordRune@47 (line 149)
                          │  ││  ││││                                                ; - com.google.re2j.Utils::emptyOpContext@44 (line 185)
                          │  ││  ││││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.17%    0.23%          │  ││  ││││  0x00007f5ecce21a8b: cmp    %r10d,%ebp
                          │  ││  ╰│││  0x00007f5ecce21a8e: je     0x00007f5ecce21702  ;*if_icmpeq
                          │  ││   │││                                                ; - com.google.re2j.Utils::emptyOpContext@47 (line 185)
                          │  ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.05%    0.10%          │  ││   │││  0x00007f5ecce21a94: or     $0x10,%r9d         ;*ior  ; - com.google.re2j.Utils::emptyOpContext@53 (line 186)
                          │  ││   │││                                                ; - com.google.re2j.Machine::match@326 (line 245)
  0.03%    0.02%          │  ││   ╰││  0x00007f5ecce21a98: jmpq   0x00007f5ecce21706
                          │  ↘│    ││  0x00007f5ecce21a9d: mov    $0x5,%r9d
                          │   │    ╰│  0x00007f5ecce21aa3: jmpq   0x00007f5ecce21a1f
  0.00%    0.00%          │   ↘     │  0x00007f5ecce21aa8: or     $0xa,%r9d          ;*ior  ; - com.google.re2j.Utils::emptyOpContext@27 (line 180)
                          │         │                                                ; - com.google.re2j.Machine::match@326 (line 245)
                          │         ╰  0x00007f5ecce21aac: jmp    0x00007f5ecce21a32
  0.00%    0.00%          ↘            0x00007f5ecce21aae: test   %ebp,%ebp
                                       0x00007f5ecce21ab0: jne    0x00007f5ecce22871  ;*ifeq
                                                                                     ; - com.google.re2j.Machine::freeQueue@4 (line 150)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@447 (line 267)
  0.00%    0.01%                       0x00007f5ecce21ab6: mov    0x50(%rsp),%r11
                                       0x00007f5ecce21abb: movzbl 0x18(%r11),%r10d   ; implicit exception: dispatches to 0x00007f5ecce22b6d
                                       0x00007f5ecce21ac0: test   %r10d,%r10d
                                       0x00007f5ecce21ac3: jne    0x00007f5ecce21ade  ;*ifeq
                                                                                     ; - com.google.re2j.Machine$Queue::clear@4 (line 69)
                                                                                     ; - com.google.re2j.Machine::freeQueue@26 (line 156)
                                                                                     ; - com.google.re2j.Machine::freeQueue@3 (line 146)
                                                                                     ; - com.google.re2j.Machine::match@447 (line 267)
....................................................................................................
 57.47%   59.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.google.re2j.Inst$Alt5Inst::add, version 532 (839 bytes) 

                     # parm5:    [sp+0x80]   = &apos;com/google/re2j/Machine&apos;  (sp of caller)
                     # parm6:    [sp+0x88]   = boolean
                     0x00007f5ecce09a00: mov    0x8(%rsi),%r10d
                     0x00007f5ecce09a04: shl    $0x3,%r10
                     0x00007f5ecce09a08: cmp    %r10,%rax
                     0x00007f5ecce09a0b: jne    0x00007f5eccc18e20  ;   {runtime_call}
                     0x00007f5ecce09a11: data16 xchg %ax,%ax
                     0x00007f5ecce09a14: nopl   0x0(%rax,%rax,1)
                     0x00007f5ecce09a1c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.69%    0.66%     0x00007f5ecce09a20: mov    %eax,-0x14000(%rsp)
  0.02%    0.03%     0x00007f5ecce09a27: push   %rbp
  0.05%    0.04%     0x00007f5ecce09a28: sub    $0x70,%rsp         ;*synchronization entry
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@-1 (line 260)
  0.60%    0.53%     0x00007f5ecce09a2c: vmovq  %r8,%xmm5
  0.02%    0.03%     0x00007f5ecce09a31: vmovq  %rsi,%xmm4
  0.03%    0.04%     0x00007f5ecce09a36: mov    %ecx,%r14d
  0.64%    0.61%     0x00007f5ecce09a39: mov    0x18(%rsi),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@2 (line 260)
  0.00%    0.00%     0x00007f5ecce09a3c: mov    0x10(%rdx),%r11    ;*getfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::contains@7 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
                                                                   ; implicit exception: dispatches to 0x00007f5ecce0a359
  0.11%    0.10%     0x00007f5ecce09a40: cmp    $0x40,%ecx
                     0x00007f5ecce09a43: jg     0x00007f5ecce09f01  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.04%    0.11%     0x00007f5ecce09a49: mov    $0x1,%esi
  0.62%    0.58%     0x00007f5ecce09a4e: mov    $0x1,%r8d
           0.00%     0x00007f5ecce09a54: shl    %cl,%r8            ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.72%    0.68%     0x00007f5ecce09a57: mov    %r11,%r10
  0.01%    0.00%     0x00007f5ecce09a5a: and    %r8,%r10           ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.06%    0.06%     0x00007f5ecce09a5d: xor    %r13d,%r13d
  0.05%    0.04%     0x00007f5ecce09a60: test   %r10,%r10
                     0x00007f5ecce09a63: jne    0x00007f5ecce09f35  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@5 (line 260)
  0.59%    0.52%     0x00007f5ecce09a69: cmp    $0x40,%ecx
                     0x00007f5ecce09a6c: jge    0x00007f5ecce09f75  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007f5ecce09a72: mov    %r12b,0x18(%rdx)   ;*putfield empty
                                                                   ; - com.google.re2j.Machine$Queue::add@33 (line 56)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.04%    0.03%     0x00007f5ecce09a76: vmovq  %xmm4,%r10
  0.04%    0.05%     0x00007f5ecce09a7b: mov    0x2c(%r10),%ebp    ;*getfield outInst
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@23 (line 265)
  0.67%    0.63%     0x00007f5ecce09a7f: or     %r11,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.01%     0x00007f5ecce09a82: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@19 (line 263)
  0.01%    0.03%     0x00007f5ecce09a86: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5ecce0a36d
  0.08%    0.06%     0x00007f5ecce09a8b: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                     0x00007f5ecce09a92: jne    0x00007f5ecce09de5
  0.59%    0.59%     0x00007f5ecce09a98: lea    (%r12,%rbp,8),%r11  ;*invokevirtual add
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f5ecce09a9c: mov    0x18(%r11),%ecx    ;*getfield pc
                                                                   ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.06%    0.02%     0x00007f5ecce09aa0: cmp    $0x40,%ecx
                     0x00007f5ecce09aa3: jg     0x00007f5ecce09fa9  ;*if_icmpgt
                                                                   ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.04%    0.08%     0x00007f5ecce09aa9: mov    $0x1,%r10d
  0.61%    0.44%     0x00007f5ecce09aaf: shl    %cl,%r10           ;*lshl
                                                                   ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.11%    0.11%     0x00007f5ecce09ab2: mov    %r8,%rbx
  0.56%    0.30%     0x00007f5ecce09ab5: and    %r10,%rbx          ;*land
                                                                   ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.00%    0.01%     0x00007f5ecce09ab8: test   %rbx,%rbx
                     0x00007f5ecce09abb: jne    0x00007f5ecce09fe5  ;*ifeq
                                                                   ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.06%     0x00007f5ecce09ac1: cmp    $0x40,%ecx
                     0x00007f5ecce09ac4: jge    0x00007f5ecce0a02d  ;*if_icmpge
                                                                   ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.07%    0.04%     0x00007f5ecce09aca: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.76%    0.28%     0x00007f5ecce09acd: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                                                                   ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.01%     0x00007f5ecce09ad1: mov    0x88(%rsp),%ecx
  0.05%    0.09%     0x00007f5ecce09ad8: test   %ecx,%ecx
                     0x00007f5ecce09ada: jne    0x00007f5ecce0a069  ;*ifeq
                                                                   ; - com.google.re2j.Inst$MatchInst::add@24 (line 149)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.05%    0.09%     0x00007f5ecce09ae0: mov    0xc(%rdx),%edi     ;*getfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@6 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.51%    1.00%     0x00007f5ecce09ae3: mov    0x20(%rdx),%eax    ;*getfield denseThreadsInstructions
                                                                   ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.01%    0.04%     0x00007f5ecce09ae6: mov    %edi,%r10d
  0.05%    0.09%     0x00007f5ecce09ae9: inc    %r10d              ;*iadd
                                                                   ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.03%    0.08%     0x00007f5ecce09aec: mov    %r10d,0xc(%rdx)    ;*putfield size
                                                                   ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                                                                   ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                                                                   ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.68%    0.70%     0x00007f5ecce09af0: mov    0xc(%r12,%rax,8),%ebx  ; implicit exception: dispatches to 0x00007f5ecce0a395
  0.13%    0.10%     0x00007f5ecce09af5: cmp    %ebx,%edi
                  ╭  0x00007f5ecce09af7: jae    0x00007f5ecce09d68
  0.27%    0.30%  │  0x00007f5ecce09afd: vmovd  %r10d,%xmm2
  0.04%    0.06%  │  0x00007f5ecce09b02: vmovd  %eax,%xmm0
  0.51%    0.61%  │  0x00007f5ecce09b06: mov    %edi,%eax
  0.02%    0.02%  │  0x00007f5ecce09b08: vmovd  %xmm0,%r10d
  0.14%    0.14%  │  0x00007f5ecce09b0d: mov    0x8(%r12,%r10,8),%r10d
  0.02%    0.07%  │  0x00007f5ecce09b12: cmp    $0xf8019807,%r10d  ;   {metadata(&apos;com/google/re2j/Inst&apos;[])}
                  │  0x00007f5ecce09b19: jne    0x00007f5ecce09e15  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.50%    0.69%  │  0x00007f5ecce09b1f: vmovq  %xmm4,%r10
  0.01%    0.01%  │  0x00007f5ecce09b24: mov    0x34(%r10),%ebp    ;*getfield inst2
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@43 (line 266)
  0.15%    0.11%  │  0x00007f5ecce09b28: mov    %r11,%rcx
  0.03%    0.04%  │  0x00007f5ecce09b2b: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.55%    0.47%  │  0x00007f5ecce09b2f: vmovd  %xmm0,%r10d
  0.01%    0.01%  │  0x00007f5ecce09b34: lea    (%r12,%r10,8),%r11  ;*getfield denseThreadsInstructions
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@1 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.14%    0.06%  │  0x00007f5ecce09b38: lea    0x10(%r11,%rdi,4),%r10
  0.06%    0.05%  │  0x00007f5ecce09b3d: mov    %ecx,(%r10)
  1.14%    1.03%  │  0x00007f5ecce09b40: shr    $0x9,%r10
  0.01%    0.02%  │  0x00007f5ecce09b44: movabs $0x7f5ec8601000,%rdi
  0.05%    0.01%  │  0x00007f5ecce09b4e: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
  0.40%    0.44%  │  0x00007f5ecce09b52: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5ecce0a3b1
  0.43%    0.36%  │  0x00007f5ecce09b57: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f5ecce09b5e: jne    0x00007f5ecce09e55
  0.02%    0.03%  │  0x00007f5ecce09b64: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.03%  │  0x00007f5ecce09b68: vmovq  %r10,%xmm1
  0.27%    0.25%  │  0x00007f5ecce09b6d: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.78%    0.76%  │  0x00007f5ecce09b71: vmovd  %ecx,%xmm3
  0.07%    0.07%  │  0x00007f5ecce09b75: cmp    $0x40,%ecx
                  │  0x00007f5ecce09b78: jg     0x00007f5ecce0a0a5  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.04%  │  0x00007f5ecce09b7e: mov    $0x1,%r10d
  0.24%    0.23%  │  0x00007f5ecce09b84: shl    %cl,%r10           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.64%    0.60%  │  0x00007f5ecce09b87: mov    %r8,%rcx
  0.21%    0.23%  │  0x00007f5ecce09b8a: and    %r10,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.43%    0.46%  │  0x00007f5ecce09b8d: test   %rcx,%rcx
                  │  0x00007f5ecce09b90: jne    0x00007f5ecce0a0e1  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.06%    0.08%  │  0x00007f5ecce09b96: vmovd  %xmm3,%ecx
  0.04%    0.03%  │  0x00007f5ecce09b9a: cmp    $0x40,%ecx
                  │  0x00007f5ecce09b9d: jge    0x00007f5ecce0a125  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.29%    0.27%  │  0x00007f5ecce09ba3: or     %r10,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.42%    0.16%  │  0x00007f5ecce09ba6: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.03%    0.02%  │  0x00007f5ecce09baa: mov    %eax,%ecx
  0.02%    0.03%  │  0x00007f5ecce09bac: add    $0x2,%ecx
  0.24%    0.33%  │  0x00007f5ecce09baf: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.45%    0.32%  │  0x00007f5ecce09bb2: mov    %eax,%r10d
  0.01%    0.04%  │  0x00007f5ecce09bb5: add    $0x4,%r10d         ;*iadd
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@11 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.02%  │  0x00007f5ecce09bb9: cmp    %ebx,%r10d
                  │  0x00007f5ecce09bbc: jae    0x00007f5ecce09da5  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.27%    0.30%  │  0x00007f5ecce09bc2: vmovd  %r9d,%xmm3
  0.31%    0.47%  │  0x00007f5ecce09bc7: vmovq  %xmm4,%r9
  0.03%    0.01%  │  0x00007f5ecce09bcc: mov    0x38(%r9),%ebp     ;*getfield inst3
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@63 (line 267)
  0.05%    0.06%  │  0x00007f5ecce09bd0: vmovq  %xmm1,%r9
  0.25%    0.28%  │  0x00007f5ecce09bd5: mov    %r9,%rcx
  0.32%    0.39%  │  0x00007f5ecce09bd8: shr    $0x3,%rcx          ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.01%    0.02%  │  0x00007f5ecce09bdc: movslq %eax,%r9
  0.04%    0.06%  │  0x00007f5ecce09bdf: lea    (%r11,%r9,4),%r9   ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.29%    0.29%  │  0x00007f5ecce09be3: mov    %r9,%rbx
  0.37%    0.57%  │  0x00007f5ecce09be6: add    $0x14,%rbx
  0.02%    0.02%  │  0x00007f5ecce09bea: mov    %ecx,(%rbx)
  0.03%    0.03%  │  0x00007f5ecce09bec: mov    %rbx,%rcx
  0.32%    0.28%  │  0x00007f5ecce09bef: shr    $0x9,%rcx
  0.40%    0.20%  │  0x00007f5ecce09bf3: mov    %r12b,(%rdi,%rcx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@57 (line 266)
  0.04%    0.05%  │  0x00007f5ecce09bf7: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f5ecce0a3d5
  0.07%    0.02%  │  0x00007f5ecce09bfc: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f5ecce09c02: jne    0x00007f5ecce09e81
  0.30%    0.29%  │  0x00007f5ecce09c08: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.28%    0.38%  │  0x00007f5ecce09c0c: vmovq  %rcx,%xmm0
  0.03%    0.02%  │  0x00007f5ecce09c11: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │  0x00007f5ecce09c14: vmovd  %ecx,%xmm2
  0.35%    0.29%  │  0x00007f5ecce09c18: cmp    $0x40,%ecx
                  │  0x00007f5ecce09c1b: jg     0x00007f5ecce0a161  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.25%    0.38%  │  0x00007f5ecce09c21: mov    $0x1,%ebx
  0.03%    0.03%  │  0x00007f5ecce09c26: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.75%    0.65%  │  0x00007f5ecce09c29: mov    %r8,%rcx
  0.03%    0.02%  │  0x00007f5ecce09c2c: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.03%  │  0x00007f5ecce09c2f: test   %rcx,%rcx
                  │  0x00007f5ecce09c32: jne    0x00007f5ecce0a19d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.31%    0.28%  │  0x00007f5ecce09c38: vmovd  %xmm2,%ecx
  0.26%    0.35%  │  0x00007f5ecce09c3c: cmp    $0x40,%ecx
                  │  0x00007f5ecce09c3f: jge    0x00007f5ecce0a1e5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.07%    0.06%  │  0x00007f5ecce09c45: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.01%    0.05%  │  0x00007f5ecce09c48: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.25%    0.16%  │  0x00007f5ecce09c4c: vmovq  %xmm4,%rcx
  0.31%    0.21%  │  0x00007f5ecce09c51: mov    0x3c(%rcx),%ebp    ;*getfield inst4
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@83 (line 268)
  0.08%    0.05%  │  0x00007f5ecce09c54: mov    %r9,%rbx
  0.05%    0.04%  │  0x00007f5ecce09c57: add    $0x18,%rbx
  0.32%    0.16%  │  0x00007f5ecce09c5b: vmovq  %xmm0,%rcx
  0.38%    0.38%  │  0x00007f5ecce09c60: shr    $0x3,%rcx
  0.08%    0.03%  │  0x00007f5ecce09c64: mov    %ecx,(%rbx)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.02%    0.03%  │  0x00007f5ecce09c66: mov    %eax,%ecx
  0.28%    0.12%  │  0x00007f5ecce09c68: add    $0x3,%ecx
  0.29%    0.32%  │  0x00007f5ecce09c6b: mov    %ecx,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.06%    0.04%  │  0x00007f5ecce09c6e: shr    $0x9,%rbx
  0.04%    0.04%  │  0x00007f5ecce09c72: mov    %r12b,(%rdi,%rbx,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@77 (line 267)
  0.29%    0.17%  │  0x00007f5ecce09c76: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x00007f5ecce0a3fd
  0.39%    0.35%  │  0x00007f5ecce09c7b: cmp    $0xf8019909,%ecx   ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f5ecce09c81: jne    0x00007f5ecce09ead
  0.08%    0.06%  │  0x00007f5ecce09c87: lea    (%r12,%rbp,8),%rcx  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.03%    0.06%  │  0x00007f5ecce09c8b: vmovq  %rcx,%xmm0
  0.31%    0.31%  │  0x00007f5ecce09c90: mov    0x18(%rcx),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.35%    0.44%  │  0x00007f5ecce09c93: vmovd  %ecx,%xmm1
  0.05%    0.06%  │  0x00007f5ecce09c97: cmp    $0x40,%ecx
                  │  0x00007f5ecce09c9a: jg     0x00007f5ecce0a221  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.05%  │  0x00007f5ecce09ca0: mov    $0x1,%ebx
  0.33%    0.26%  │  0x00007f5ecce09ca5: shl    %cl,%rbx           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.43%    0.48%  │  0x00007f5ecce09ca8: mov    %r8,%rcx
  0.29%    0.14%  │  0x00007f5ecce09cab: and    %rbx,%rcx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.32%    0.15%  │  0x00007f5ecce09cae: test   %rcx,%rcx
                  │  0x00007f5ecce09cb1: jne    0x00007f5ecce0a25d  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.07%    0.04%  │  0x00007f5ecce09cb7: vmovd  %xmm1,%ecx
  0.03%    0.04%  │  0x00007f5ecce09cbb: cmp    $0x40,%ecx
                  │  0x00007f5ecce09cbe: jge    0x00007f5ecce0a2a5  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.25%    0.29%  │  0x00007f5ecce09cc4: mov    %r10d,0xc(%rdx)    ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.40%    0.49%  │  0x00007f5ecce09cc8: vmovq  %xmm4,%r10
  0.04%    0.06%  │  0x00007f5ecce09ccd: mov    0x40(%r10),%ebp    ;*getfield inst5
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@103 (line 269)
  0.07%    0.04%  │  0x00007f5ecce09cd1: mov    %r9,%rcx
  0.28%    0.42%  │  0x00007f5ecce09cd4: add    $0x1c,%rcx         ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.31%    0.27%  │  0x00007f5ecce09cd8: or     %rbx,%r8           ;*lor  ; - com.google.re2j.Machine$Queue::add@14 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.06%    0.03%  │  0x00007f5ecce09cdb: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.05%    0.02%  │  0x00007f5ecce09cdf: vmovq  %xmm0,%r10
  0.24%    0.24%  │  0x00007f5ecce09ce4: shr    $0x3,%r10
  0.32%    0.43%  │  0x00007f5ecce09ce8: mov    %r10d,(%rcx)
  0.06%    0.06%  │  0x00007f5ecce09ceb: mov    %rcx,%r10
  0.04%    0.03%  │  0x00007f5ecce09cee: shr    $0x9,%r10
  0.29%    0.40%  │  0x00007f5ecce09cf2: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@97 (line 268)
  0.38%    0.36%  │  0x00007f5ecce09cf6: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00007f5ecce0a425
  0.08%    0.04%  │  0x00007f5ecce09cfb: cmp    $0xf8019909,%r10d  ;   {metadata(&apos;com/google/re2j/Inst$MatchInst&apos;)}
                  │  0x00007f5ecce09d02: jne    0x00007f5ecce09ed9
  0.04%    0.02%  │  0x00007f5ecce09d08: lea    (%r12,%rbp,8),%r10  ;*invokevirtual add
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.28%    0.29%  │  0x00007f5ecce09d0c: mov    0x18(%r10),%ecx    ;*getfield pc
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@2 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.39%    0.33%  │  0x00007f5ecce09d10: cmp    $0x40,%ecx
                  │  0x00007f5ecce09d13: jg     0x00007f5ecce0a2e1  ;*if_icmpgt
                  │                                                ; - com.google.re2j.Machine$Queue::contains@3 (line 41)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.10%    0.05%  │  0x00007f5ecce09d19: shl    %cl,%rsi           ;*lshl
                  │                                                ; - com.google.re2j.Machine$Queue::contains@12 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.62%    0.78%  │  0x00007f5ecce09d1c: mov    %r8,%rbx
  0.04%    0.04%  │  0x00007f5ecce09d1f: and    %rsi,%rbx          ;*land
                  │                                                ; - com.google.re2j.Machine$Queue::contains@13 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.05%  │  0x00007f5ecce09d22: test   %rbx,%rbx
                  │  0x00007f5ecce09d25: jne    0x00007f5ecce0a305  ;*ifeq
                  │                                                ; - com.google.re2j.Machine$Queue::contains@16 (line 42)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@5 (line 144)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.26%    0.27%  │  0x00007f5ecce09d2b: cmp    $0x40,%ecx
                  │  0x00007f5ecce09d2e: jge    0x00007f5ecce0a335  ;*if_icmpge
                  │                                                ; - com.google.re2j.Machine$Queue::add@3 (line 51)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.43%    0.43%  │  0x00007f5ecce09d34: or     %rsi,%r8
  0.06%    0.04%  │  0x00007f5ecce09d37: mov    %r8,0x10(%rdx)     ;*putfield pcsl
                  │                                                ; - com.google.re2j.Machine$Queue::add@15 (line 52)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@19 (line 147)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.03%  │  0x00007f5ecce09d3b: add    $0x20,%r9
  0.21%    0.31%  │  0x00007f5ecce09d3f: mov    %r10,%r11
  0.33%    0.33%  │  0x00007f5ecce09d42: shr    $0x3,%r11
  0.04%    0.07%  │  0x00007f5ecce09d46: mov    %r11d,(%r9)        ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.04%    0.06%  │  0x00007f5ecce09d49: mov    %r9,%r10
  0.27%    0.25%  │  0x00007f5ecce09d4c: add    $0x5,%eax
  0.30%    0.28%  │  0x00007f5ecce09d4f: mov    %eax,0xc(%rdx)     ;*putfield size
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@12 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.06%    0.04%  │  0x00007f5ecce09d52: shr    $0x9,%r10
  0.03%    0.05%  │  0x00007f5ecce09d56: mov    %r12b,(%rdi,%r10,1)  ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@117 (line 269)
  0.23%    0.27%  │  0x00007f5ecce09d5a: xor    %eax,%eax
  0.32%    0.38%  │  0x00007f5ecce09d5c: add    $0x70,%rsp
  0.05%    0.05%  │  0x00007f5ecce09d60: pop    %rbp
  0.34%    0.39%  │  0x00007f5ecce09d61: test   %eax,0x15e46299(%rip)        # 0x00007f5ee2c50000
                  │                                                ;   {poll_return}
  0.33%    0.46%  │  0x00007f5ecce09d67: retq                      ;*aastore
                  │                                                ; - com.google.re2j.Machine$Queue::addThread@16 (line 66)
                  │                                                ; - com.google.re2j.Inst$MatchInst::add@72 (line 158)
                  │                                                ; - com.google.re2j.Inst$Alt5Inst::add@37 (line 265)
                  ↘  0x00007f5ecce09d68: mov    $0xffffffe4,%esi
                     0x00007f5ecce09d6d: vmovq  %xmm4,%rbp
                     0x00007f5ecce09d72: mov    %rdx,(%rsp)
                     0x00007f5ecce09d76: mov    %r14d,0x88(%rsp)
                     0x00007f5ecce09d7e: vmovsd %xmm5,0x8(%rsp)
                     0x00007f5ecce09d84: mov    %r9d,0x10(%rsp)
....................................................................................................
 37.01%   36.16%  <total for region 2>

....[Hottest Regions]...............................................................................
 57.47%   59.50%         C2, level 4  com.google.re2j.Machine::match, version 567 (1176 bytes) 
 37.01%   36.16%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 532 (839 bytes) 
  1.45%    1.44%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.77%    0.72%         C2, level 4  com.google.re2j.Machine::match, version 567 (139 bytes) 
  0.30%    0.03%         C2, level 4  com.google.re2j.RE2::match, version 578 (84 bytes) 
  0.16%    0.13%         C2, level 4  com.google.re2j.RE2::match, version 578 (33 bytes) 
  0.15%    0.14%         C2, level 4  com.google.re2j.RE2::match, version 578 (20 bytes) 
  0.14%    0.07%         C2, level 4  com.google.re2j.Machine::match, version 567 (211 bytes) 
  0.11%    0.08%         C2, level 4  com.google.re2j.RE2::match, version 578 (0 bytes) 
  0.11%    0.04%         C2, level 4  java.util.Collections::shuffle, version 586 (54 bytes) 
  0.10%    0.01%         C2, level 4  com.google.re2j.RE2::match, version 578 (92 bytes) 
  0.09%    0.05%         C2, level 4  com.google.re2j.RE2::match, version 578 (0 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.06%    0.02%         C2, level 4  com.google.re2j.RE2::match, version 578 (125 bytes) 
  0.06%    0.00%   [kernel.kallsyms]  [unknown] (22 bytes) 
  0.06%    0.01%         C2, level 4  com.google.re2j.Machine::match, version 567 (74 bytes) 
  0.06%    0.01%              [vdso]  [unknown] (9 bytes) 
  0.05%                  C2, level 4  com.google.re2j.Machine::match, version 567 (75 bytes) 
  0.05%                  C2, level 4  com.google.re2j.RE2::match, version 578 (79 bytes) 
  1.64%    1.55%  <...other 333 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 58.50%   60.31%         C2, level 4  com.google.re2j.Machine::match, version 567 
 37.01%   36.16%         C2, level 4  com.google.re2j.Inst$Alt5Inst::add, version 532 
  2.15%    1.94%   [kernel.kallsyms]  [unknown] 
  1.16%    0.48%         C2, level 4  com.google.re2j.RE2::match, version 578 
  0.20%    0.09%         C2, level 4  java.util.Collections::shuffle, version 586 
  0.09%    0.05%         C2, level 4  com.github.arnaudroger.re2j.generated.Re2jFindRegex_testExp2_jmhTest::testExp2_thrpt_jmhStub, version 618 
  0.06%    0.01%              [vdso]  [unknown] 
  0.05%    0.06%           libjvm.so  PSPromotionManager::copy_to_survivor_space<false> 
  0.05%    0.05%      hsdis-amd64.so  decode_instructions 
  0.05%    0.03%           libjvm.so  GenericTaskQueueSet<OverflowTaskQueue<StarTask, (MemoryType)1, 131072u>, (MemoryType)1>::steal_best_of_2 
  0.05%    0.01%              [vdso]  __vdso_clock_gettime 
  0.03%    0.04%           libjvm.so  PSPromotionManager::drain_stacks_depth 
  0.03%    0.03%           libjvm.so  RelocIterator::initialize 
  0.03%    0.04%        libc-2.26.so  _IO_fwrite 
  0.03%    0.07%           libjvm.so  InstanceKlass::oop_push_contents 
  0.02%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 584 
  0.02%    0.06%        libc-2.26.so  vfprintf 
  0.02%    0.03%        libc-2.26.so  __strlen_avx2 
  0.02%    0.00%        libc-2.26.so  __memmove_sse2_unaligned_erms 
  0.02%    0.03%           libjvm.so  xmlTextStream::write 
  0.39%    0.21%  <...other 51 warm methods...>
....................................................................................................
 99.99%   99.71%  <totals>

....[Distribution by Source]........................................................................
 96.98%   97.09%         C2, level 4
  2.15%    1.94%   [kernel.kallsyms]
  0.42%    0.58%           libjvm.so
  0.19%    0.26%        libc-2.26.so
  0.11%    0.02%              [vdso]
  0.05%    0.03%  libpthread-2.26.so
  0.05%    0.05%      hsdis-amd64.so
  0.01%    0.00%        runtime stub
  0.01%    0.01%         interpreter
  0.00%    0.00%         C1, level 3
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                     Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2       thrpt   20  25726.215 ± 361.518  ops/s
Re2jFindRegex.testExp2:·asm  thrpt             NaN              ---
